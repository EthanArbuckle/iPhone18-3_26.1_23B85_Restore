size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t specialized enumerateCore #1 (entity:recursive:block:) in Entity.__remapUUIDs(entityIdentifierMapping:interactionIdentifierMapping:)(uint64_t a1, int a2, uint64_t a3)
{
  v68 = a2;
  v66 = type metadata accessor for Data.Deallocator();
  v5 = *(v66 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  v9 = *(a1 + 16);
  if (REEntityGetChildCount() < 1)
  {
LABEL_44:
  }

  v10 = 0;
  v65 = 0;
  v64 = *MEMORY[0x1E6969010];
  v62 = (v5 + 8);
  v63 = (v5 + 104);
  v67 = v8;
  while (1)
  {
    v12 = *(a1 + 16);
    if (v10 >= REEntityGetChildCount())
    {
      break;
    }

    v13 = *(a1 + 16);
    Child = REEntityGetChild();
    if (!Child)
    {
      goto LABEL_50;
    }

    v15 = Child;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v16 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      if (REEntityIsBeingDestroyed())
      {
        goto LABEL_48;
      }

      v18 = specialized static Entity.entityInfoType(_:)();
      if (v18)
      {
        v17 = (*(v18 + 232))();
        v19 = *(v17 + 16);

        MEMORY[0x1C68F9740](v19, 0);
        *(v17 + 16) = v15;
        MEMORY[0x1C68F9740](v15, v17);

        goto LABEL_13;
      }

      v16 = makeEntity(for:)(v15);
    }

    v17 = v16;
LABEL_13:
    v20 = *(a1 + 16);
    if (v10 >= REEntityGetChildCount())
    {
      goto LABEL_46;
    }

    swift_beginAccess();
    if (!static __RKEntityInteractionsComponent.registration)
    {
      goto LABEL_23;
    }

    v21 = *(static __RKEntityInteractionsComponent.registration + 3);
    v22 = *(v17 + 16);
    if (!REEntityGetCustomComponent())
    {
      goto LABEL_23;
    }

    Object = RECustomComponentGetObject();
    if (!Object)
    {
      goto LABEL_23;
    }

    v24 = *(Object + 16);
    if (v24)
    {
      v25 = *(Object + 16);

      goto LABEL_24;
    }

    v26 = *Object;
    if (*Object)
    {
      v27 = strlen(*Object);
      (*v63)(v8, v64, v66);
      Data.Deallocator._deallocator.getter();
      if (v27)
      {
        v28 = type metadata accessor for __DataStorage();
        v29 = *(v28 + 48);
        v30 = *(v28 + 52);
        swift_allocObject();

        v31 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
        v32 = __DataStorage._capacity.modify();
        *v33 |= 0x8000000000000000;
        v32(v69, 0);
        v34 = specialized Data._Representation.init(_:count:)(v31, v27);
        v36 = v35;
        v37 = v34;

        v38 = v67;
      }

      else
      {
        v53 = Data.Deallocator._deallocator.getter();
        v53(v26, 0);

        v37 = 0;
        v36 = 0xC000000000000000;
        v38 = v8;
      }

      (*v62)(v38, v66);
      v54 = type metadata accessor for JSONDecoder();
      v55 = *(v54 + 48);
      v56 = *(v54 + 52);
      swift_allocObject();
      JSONDecoder.init()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit34__RKEntityInteractionSpecificationVGMd, &_sSay10RealityKit34__RKEntityInteractionSpecificationVGMR);
      lazy protocol witness table accessor for type [__RKEntityInteractionSpecification] and conformance <A> [A]();
      v57 = v65;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      if (v57)
      {

        outlined consume of Data._Representation(v37, v36);

        v65 = 0;
        v24 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v65 = 0;

        outlined consume of Data._Representation(v37, v36);
        v24 = v69[0];
      }

      v8 = v67;
    }

    else
    {
LABEL_23:
      v24 = MEMORY[0x1E69E7CC0];
    }

LABEL_24:
    if (!*(v24 + 16))
    {

      if ((v68 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_3;
    }

    swift_beginAccess();

    v39 = *(a3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = *(a3 + 16);
    v41 = v70;
    *(a3 + 16) = 0x8000000000000000;
    v42 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
    v44 = v41[2];
    v45 = (v43 & 1) == 0;
    v46 = __OFADD__(v44, v45);
    v47 = v44 + v45;
    if (v46)
    {
      goto LABEL_47;
    }

    v48 = v43;
    if (v41[3] < v47)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v47, isUniquelyReferenced_nonNull_native);
      v42 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
      if ((v48 & 1) != (v49 & 1))
      {
        goto LABEL_51;
      }

LABEL_32:
      v50 = v70;
      if (v48)
      {
        goto LABEL_33;
      }

      goto LABEL_40;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_32;
    }

    v58 = v42;
    specialized _NativeDictionary.copy()();
    v42 = v58;
    v50 = v70;
    if (v48)
    {
LABEL_33:
      v51 = v50[7];
      v52 = *(v51 + 8 * v42);
      *(v51 + 8 * v42) = v24;

      goto LABEL_42;
    }

LABEL_40:
    v50[(v42 >> 6) + 8] |= 1 << v42;
    *(v50[6] + 8 * v42) = v17;
    *(v50[7] + 8 * v42) = v24;
    v59 = v50[2];
    v46 = __OFADD__(v59, 1);
    v60 = v59 + 1;
    if (v46)
    {
      goto LABEL_49;
    }

    v50[2] = v60;
LABEL_42:
    *(a3 + 16) = v50;
    swift_endAccess();
    v8 = v67;
    if ((v68 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_3:

    specialized enumerateCore #1 (entity:recursive:block:) in Entity.__remapUUIDs(entityIdentifierMapping:interactionIdentifierMapping:)(v17, 1, a3);

LABEL_4:
    ++v10;

    v11 = *(a1 + 16);
    if (v10 >= REEntityGetChildCount())
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:

  __break(1u);
LABEL_51:
  type metadata accessor for Entity();
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t _s10RealityKit29__RKEntityHideActionArgumentsVWOdTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of __RKEntityInteractionSpecification(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of __RKEntityInteractionSpecification(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of __RKEntityInteractionSpecification(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type [__RKEntityInteractionSpecification] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [__RKEntityInteractionSpecification] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [__RKEntityInteractionSpecification] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10RealityKit34__RKEntityInteractionSpecificationVGMd, &_sSay10RealityKit34__RKEntityInteractionSpecificationVGMR);
    lazy protocol witness table accessor for type __RKEntityInteractionSpecification and conformance __RKEntityInteractionSpecification();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [__RKEntityInteractionSpecification] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityInteractionSpecification and conformance __RKEntityInteractionSpecification()
{
  result = lazy protocol witness table cache variable for type __RKEntityInteractionSpecification and conformance __RKEntityInteractionSpecification;
  if (!lazy protocol witness table cache variable for type __RKEntityInteractionSpecification and conformance __RKEntityInteractionSpecification)
  {
    type metadata accessor for __RKEntityInteractionSpecification(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityInteractionSpecification and conformance __RKEntityInteractionSpecification);
  }

  return result;
}

uint64_t static __RERenderGraphEmitter.firstUsedEmitter()()
{
  v8 = 0;
  if (one-time initialization token for dispatchQueue != -1)
  {
    swift_once();
  }

  v1 = static __RERenderGraphEmitter.dispatchQueue;
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in static __RERenderGraphEmitter.firstUsedEmitter();
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_28;
  v4 = _Block_copy(aBlock);

  dispatch_sync(v1, v4);
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    return v6;
  }

  return result;
}

uint64_t __RERenderGraphEmitter.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t one-time initialization function for dispatchQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v10[1] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static __RERenderGraphEmitter.dispatchQueue = result;
  return result;
}

void *one-time initialization function for activeEmitters()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15EmitterAssetKey33_FBB855774C32D6121558AC20A575B6E9LLV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static __RERenderGraphEmitter.activeEmitters = result;
  return result;
}

unint64_t protocol witness for LocalizedError.errorDescription.getter in conformance __RERenderGraphEmitter.LoadError()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(48);

  MEMORY[0x1C68F3410](v1, v2);
  MEMORY[0x1C68F3410](0x6E7562206E692022, 0xEB00000000656C64);
  return 0xD000000000000023;
}

uint64_t static __RERenderGraphEmitter.__load(named:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = [objc_opt_self() mainBundle];
  }

  v7 = a3;
  v8 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v8 + 120, v18);
  v9 = v19;
  v10 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v11 = *(v10 + 32);

  v11(v9, v10);
  v12 = MEMORY[0x1C68F3280](a1, a2);
  v13 = MEMORY[0x1C68F3280](0xD000000000000014, 0x80000001C18E3130);
  v14 = REAssetManagerAssetHandleCreateWithBundleResource();

  __swift_destroy_boxed_opaque_existential_1(v18);
  if (v14)
  {
    type metadata accessor for __RERenderGraphEmitter();
    a2 = swift_allocObject();
    RERetain();
    type metadata accessor for __REAsset();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(a2 + 16) = v15;
    RERelease();
  }

  else
  {
    lazy protocol witness table accessor for type __RERenderGraphEmitter.LoadError and conformance __RERenderGraphEmitter.LoadError();
    swift_allocError();
    *v16 = a1;
    v16[1] = a2;
    swift_willThrow();
  }

  return a2;
}

uint64_t closure #1 in static __RERenderGraphEmitter.firstUsedEmitter()(uint64_t a1, uint64_t *a2)
{
  if (one-time initialization token for activeEmitters != -1)
  {
LABEL_16:
    swift_once();
  }

  v2 = static __RERenderGraphEmitter.activeEmitters + 64;
  v3 = 1 << *(static __RERenderGraphEmitter.activeEmitters + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(static __RERenderGraphEmitter.activeEmitters + 8);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = v7; ; v7 = i)
  {
    do
    {
      if (!v5)
      {
        while (1)
        {
          v9 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v9 >= v6)
          {
          }

          v5 = *&v2[8 * v9];
          ++v8;
          if (v5)
          {
            v8 = v9;
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_16;
      }

LABEL_10:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = v10 | (v8 << 6);
    }

    while (*(*(v7 + 56) + 8 * v11) <= 0);
    v23 = *(*(v7 + 48) + 24 * v11 + 16);
    v24 = *(*(v7 + 48) + 24 * v11 + 8);

    v12 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v12 + 120, v25);
    v14 = v26;
    v13 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v15 = *(v13 + 32);

    v15(v14, v13);
    String.utf8CString.getter();

    AssetHandle = REAssetManagerCreateAssetHandle();

    __swift_destroy_boxed_opaque_existential_1(v25);
    if (AssetHandle)
    {
      break;
    }
  }

  type metadata accessor for __RERenderGraphEmitter();
  v17 = swift_allocObject();
  RERetain();

  type metadata accessor for __REAsset();
  v18 = swift_allocObject();
  *(v18 + 16) = AssetHandle;
  *(v17 + 16) = v18;
  v19 = *a2;
  *a2 = v17;
}

uint64_t __RERenderGraphEmitter.unsetup(mgr:)(uint64_t a1)
{
  if (one-time initialization token for dispatchQueue != -1)
  {
    swift_once();
  }

  v3 = static __RERenderGraphEmitter.dispatchQueue;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in __RERenderGraphEmitter.unsetup(mgr:);
  *(v5 + 24) = v4;
  v9[4] = _sIg_Ieg_TRTA_0;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_10;
  v6 = _Block_copy(v9);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in __RERenderGraphEmitter.unsetup(mgr:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 + 16);
  v5 = REAssetHandleCopyAssetIdentifierString();
  v6 = String.init(_:)(v5);
  v7 = *(a1 + 16);
  v8 = OpaquePointer.hashValue.getter();

  if (one-time initialization token for activeEmitters != -1)
  {
    swift_once();
  }

  v9 = static __RERenderGraphEmitter.activeEmitters;

  v10 = Dictionary<>.getCount(_:)(v8, v6._countAndFlagsBits, v6._object, v9);

  v13 = __OFSUB__(v10, 1);
  v14 = v10 - 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    v15 = static __RERenderGraphEmitter.activeEmitters;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v8, v6._countAndFlagsBits, v6._object, isUniquelyReferenced_nonNull_native);
    static __RERenderGraphEmitter.activeEmitters = v15;

    v17 = Dictionary<>.getCount(_:)(v8, v6._countAndFlagsBits, v6._object, v15);

    if (v17 > 0)
    {
      return result;
    }

    v11 = *(v3 + 16);
    v12 = *(a1 + 16);
  }

  return MEMORY[0x1EEDFDFA0](v11, v12);
}

uint64_t Dictionary<>.getCount(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for dispatchQueue != -1)
  {
    swift_once();
  }

  v13 = static __RERenderGraphEmitter.dispatchQueue;
  *v12 = static __RERenderGraphEmitter.dispatchQueue;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v12, v8);
  if (v13)
  {
    if (*(a4 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3), (v17 & 1) != 0))
    {
      return *(*(a4 + 56) + 8 * v16);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t __RERenderGraphEmitter.setup(mgr:)(uint64_t a1)
{
  if (one-time initialization token for dispatchQueue != -1)
  {
    swift_once();
  }

  v3 = static __RERenderGraphEmitter.dispatchQueue;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in __RERenderGraphEmitter.setup(mgr:);
  *(v5 + 24) = v4;
  v9[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_13_0;
  v6 = _Block_copy(v9);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in __RERenderGraphEmitter.setup(mgr:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 + 16);
  v5 = REAssetHandleCopyAssetIdentifierString();
  v6 = String.init(_:)(v5);
  v7 = *(a1 + 16);
  v8 = OpaquePointer.hashValue.getter();

  if (one-time initialization token for activeEmitters != -1)
  {
    swift_once();
  }

  v9 = static __RERenderGraphEmitter.activeEmitters;

  v10 = Dictionary<>.getCount(_:)(v8, v6._countAndFlagsBits, v6._object, v9);

  if (!v10)
  {
    v11 = *(v3 + 16);
    v12 = *(a1 + 16);
    RERenderGraphEmitterAssetRegisterProviders();
  }

  v13 = static __RERenderGraphEmitter.activeEmitters;

  v14 = Dictionary<>.getCount(_:)(v8, v6._countAndFlagsBits, v6._object, v13);

  v16 = __OFADD__(v14, 1);
  v17 = v14 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v18 = static __RERenderGraphEmitter.activeEmitters;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, v8, v6._countAndFlagsBits, v6._object, isUniquelyReferenced_nonNull_native);

    static __RERenderGraphEmitter.activeEmitters = v18;
  }

  return result;
}

uint64_t __RERenderGraphEmitter.execute(mgr:)(uint64_t a1)
{
  v2 = *(*(v1 + 16) + 16);
  v3 = *(a1 + 16);
  return RERenderGraphEmitterAssetExecute();
}

uint64_t __RERenderGraphEmitter.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t __RERenderGraphEmitter.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EmitterAssetKey()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance EmitterAssetKey()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  String.hash(into:)();
  return MEMORY[0x1C68F4C10](v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EmitterAssetKey()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance EmitterAssetKey(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t lazy protocol witness table accessor for type __RERenderGraphEmitter.LoadError and conformance __RERenderGraphEmitter.LoadError()
{
  result = lazy protocol witness table cache variable for type __RERenderGraphEmitter.LoadError and conformance __RERenderGraphEmitter.LoadError;
  if (!lazy protocol witness table cache variable for type __RERenderGraphEmitter.LoadError and conformance __RERenderGraphEmitter.LoadError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RERenderGraphEmitter.LoadError and conformance __RERenderGraphEmitter.LoadError);
  }

  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EmitterAssetKey(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for EmitterAssetKey(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmitterAssetKey and conformance EmitterAssetKey()
{
  result = lazy protocol witness table cache variable for type EmitterAssetKey and conformance EmitterAssetKey;
  if (!lazy protocol witness table cache variable for type EmitterAssetKey and conformance EmitterAssetKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmitterAssetKey and conformance EmitterAssetKey);
  }

  return result;
}

uint64_t Material.name.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  swift_beginAccess();
  v3 = *(v2 + 16);

  result = REMaterialAssetGetSourceName();
  if (result)
  {
    return String.init(cString:)();
  }

  return result;
}

void *SimpleMaterial.color.getter@<X0>(void *a1@<X8>)
{
  v6[3] = &type metadata for SimpleMaterial;
  v6[4] = &protocol witness table for SimpleMaterial;
  v6[0] = swift_allocObject();
  outlined init with copy of SimpleMaterial(v1, v6[0] + 16);
  v4 = *(v1 + 80);
  v3 = *(v1 + 88);

  return PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(a1, v6, v4, v3);
}

uint64_t SimpleMaterial.metallic.getter@<X0>(unint64_t *a1@<X8>)
{
  result = specialized Material.getScalarParameter(_:)(1, &v4);
  v3 = v4;
  if (v4 >> 60 == 15)
  {
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

uint64_t SimpleMaterial.roughness.getter@<X0>(unint64_t *a1@<X8>)
{
  result = specialized Material.getScalarParameter(_:)(0, &v4);
  v3 = v4;
  if (v4 >> 60 == 15)
  {
    v3 = 1065353216;
  }

  *a1 = v3;
  return result;
}

void __MaterialResource.CoreMaterialFunction.getSurfaceShader()(uint64_t a1@<X8>)
{
  v4 = v1[1];
  v3 = v1[2];
  v6 = v1[3];
  v5 = v1[4];
  v7 = v1[5];
  v8 = *(v5 + 16);
  v9 = (v5 + 32);
  do
  {
    v10 = v8-- != 0;
    v11 = v10;
    if (!v10)
    {
      break;
    }

    v12 = *v9++;
  }

  while (v12 != 2);
  v13 = v1[2];

  v14 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of [String : String](v14 + 40, &v20, &_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
  if (v21)
  {
    outlined init with take of ForceEffectBase(&v20, v22);
    v15 = v23;
    v16 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    (*(v16 + 24))(v15, v16);
    v17 = REShaderLibraryAssetGetMetalLibrary();
    __swift_destroy_boxed_opaque_existential_1(v22);
    if (v17)
    {
      v18 = [objc_allocWithZone(MEMORY[0x1E6974060]) init];
      if (v3)
      {
        v19 = v7;

        v18 = v19;
      }
    }

    else
    {

      v11 = 0;
      v6 = 0;
      v3 = 0;
      v4 = 0;
      v18 = 0;
    }

    *a1 = v4;
    *(a1 + 8) = v3;
    *(a1 + 16) = v17;
    *(a1 + 24) = v6;
    *(a1 + 32) = v18;
    *(a1 + 40) = v11;
  }

  else
  {
    __break(1u);
  }
}

void __MaterialResource.CoreMaterialFunction.getGeometryModifier()(uint64_t a1@<X8>)
{
  v4 = v1[1];
  v3 = v1[2];
  v6 = v1[3];
  v5 = v1[4];
  v7 = v1[5];
  v8 = *(v5 + 16);
  v9 = (v5 + 32);
  do
  {
    v10 = v8-- != 0;
    v11 = v10;
    if (!v10)
    {
      break;
    }

    v12 = *v9++;
  }

  while (v12 != 8);
  v13 = objc_allocWithZone(MEMORY[0x1E6974060]);

  v14 = [v13 init];
  v15 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of [String : String](v15 + 40, &v20, &_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
  if (v21)
  {
    outlined init with take of ForceEffectBase(&v20, v22);
    v16 = v23;
    v17 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    (*(v17 + 24))(v16, v17);
    v18 = REShaderLibraryAssetGetMetalLibrary();
    __swift_destroy_boxed_opaque_existential_1(v22);
    if (v18)
    {
      if (v3)
      {
        v19 = v7;

        v14 = v19;
      }
    }

    else
    {

      v11 = 0;
      v6 = 0;
      v3 = 0;
      v4 = 0;
      v14 = 0;
    }

    *a1 = v4;
    *(a1 + 8) = v3;
    *(a1 + 16) = v18;
    *(a1 + 24) = v6;
    *(a1 + 32) = v14;
    *(a1 + 40) = v11;
  }

  else
  {
    __break(1u);
  }
}

uint64_t specialized SIMD4<>.cgColor.getter(__n128 a1)
{
  v19 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v1 = v19;
  v3 = *(v19 + 16);
  v2 = *(v19 + 24);
  v4 = v2 >> 1;
  v5 = v3 + 1;
  if (v2 >> 1 <= v3)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1);
    v1 = v19;
    v2 = *(v19 + 24);
    v4 = v2 >> 1;
  }

  v6 = a1;
  *(v1 + 16) = v5;
  *(v1 + 8 * v3 + 32) = a1.n128_f32[0];
  v7 = v3 + 2;
  if (v4 < v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v7, 1);
    v6 = a1;
    v1 = v19;
  }

  *(v1 + 16) = v7;
  *(v1 + 8 * v5 + 32) = v6.n128_f32[1];
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
    v6.n128_u64[1] = a1.n128_u64[1];
  }

  v11 = v19;
  *(v19 + 16) = v10;
  *(v19 + 8 * v9 + 32) = v6.n128_f32[2];
  v12 = *(v19 + 24);
  v13 = v9 + 2;
  if (v13 > (v12 >> 1))
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13, 1);
    v6.n128_u32[3] = a1.n128_u32[3];
    v11 = v19;
  }

  *(v11 + 16) = v13;
  v14 = (v11 + 32);
  *(v11 + 32 + 8 * v10) = v6.n128_f32[3];
  if (one-time initialization token for linearSRGBColorSpace != -1)
  {
    swift_once();
    v14 = (v11 + 32);
  }

  v15 = CGColorCreate(static CGColorSpaceRef.linearSRGBColorSpace, v14);
  if (v15)
  {
    v16 = v15;

    return v16;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

CGColorRef_optional __swiftcall Material.getColorParameter(key:)(Swift::String key)
{
  Material.subscript.getter(key._countAndFlagsBits, key._object, v1, v2, v5);
  if (v6 != 255)
  {
    result.value = v5[0].n128_u64[0];
    if (v6 == 6)
    {
      return result;
    }

    if (v6 == 5)
    {
      v4 = specialized SIMD4<>.cgColor.getter(v5[0]);
      outlined destroy of BodyTrackingComponent?(v5, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
      return v4;
    }

    outlined destroy of BodyTrackingComponent?(v5, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  }

  return 0;
}

uint64_t Material.getTextureParameter(key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = Material.subscript.getter(a1, a2, a3, a4, &v9);
  if (v12 != 255)
  {
    if (v12 == 1)
    {
      v8 = v10;
      v7 = v11;
      *a5 = v9;
      *(a5 + 16) = v8;
      *(a5 + 24) = v7;
      return result;
    }

    result = outlined destroy of BodyTrackingComponent?(&v9, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 24) = 0;
  *(a5 + 16) = 0;
  return result;
}

void __swiftcall Material.getFloatParameter(key:)(Swift::Float_optional *__return_ptr retstr, Swift::String key)
{
  Material.subscript.getter(key._countAndFlagsBits, key._object, v2, v3, v4);
  if (v5 != 255 && v5 != 2)
  {
    outlined destroy of BodyTrackingComponent?(v4, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  }
}

uint64_t (*Material.__triangleFillMode.modify(void *a1))()
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
  v2[4] = Material.__triangleFillMode.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*Material.__writesDepthInternal.modify(uint64_t *a1))()
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
  *(v2 + 32) = Material.__writesDepthInternal.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*Material.__readsDepthInternal.modify(uint64_t *a1))()
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
  *(v2 + 32) = Material.__readsDepthInternal.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t Material.__faceCullMode.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(a3, a4);
}

{
  return destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(a3, a4);
}

uint64_t (*Material.__faceCullMode.modify(uint64_t *a1))()
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
  *(v2 + 32) = Material.__faceCullMode.modify(v2);
  return protocol witness for AnimationDefinition.bindTarget.modify in conformance FromToByAnimation<A>;
}

uint64_t (*Material.__faceCullMode.modify(uint64_t a1))(void, void)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  return destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
}

double Material.__directUniformsState.getter@<D0>(_OWORD *a1@<X8>)
{
  return Material.__directUniformsState.getter(a1);
}

{
  *a1 = 0u;
  a1[1] = 0u;
  result = 1.49166815e-154;
  a1[2] = xmmword_1C18A9570;
  return result;
}

uint64_t Material.parameters.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_1, v3, a1);
}

uint64_t Material.parameters.setter(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = (*(a3 + 8))(a2, a3);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = (*(v10 + 8))(v9, v10);

  if (v8 == v11)
  {
    v42 = a1[3];
    v43 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v42);
    (*(v43 + 16))(&v65, v42, v43);
    *&v60 = v65;
    BYTE8(v60) = BYTE8(v65);
    v61 = v66;
    (*(v5 + 24))(&v60, a2, v5);
  }

  else
  {
    v12 = MaterialParameters.allKeys.getter();
    v13 = *(v12 + 16);
    if (v13)
    {
      v48 = v13 - 1;
      v49 = v4;
      v14 = (v12 + 40);
      v45 = a1;
      while (1)
      {
        v15 = v5;
        v16 = *(v14 - 1);
        v17 = *v14;
        v18 = a1[3];
        v19 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v18);

        Material.subscript.getter(v16, v17, v18, v19, &v60);
        if (v64 == 255)
        {
          v23 = 0;
          v22 = 0;
          v20 = 0;
          v21 = 0;
          v67 = 0u;
          v68 = 0u;
          v51 = 0u;
          v24 = 255;
          v65 = 0u;
          v66 = 0u;
        }

        else
        {
          v52 = v60;
          v53 = v61;
          v54 = v62;
          v55 = v63;
          v56 = v64;
          MaterialParameters.Value.init(_:)(&v52, &v65);
          v20 = *(&v65 + 1);
          v21 = v65;
          v23 = *(&v66 + 1);
          v22 = v66;
          v51 = v67;
          v24 = v69;
        }

        v50 = v68;
        v58 = a2;
        v59 = v15;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
        (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, v49, a2);
        switch(v24)
        {
          case 0:
            *&v27 = v21;
            *(&v27 + 1) = v20;
            HIDWORD(v28) = -1;
            *&v28 = v22;
            WORD4(v28) = v23;
            v29 = vmovn_s64(vshlq_u64(vdupq_n_s64(v23), xmmword_1C18A9580));
            v29.i8[1] = v29.i8[4];
            WORD5(v28) = v29.i16[0];
            v46 = v28;
            v47 = v27;
            v30 = 1;
            break;
          case 1:
            v30 = 0;
            *&v26 = v21;
            v47 = v26;
            break;
          case 2:
            LODWORD(v26) = v21;
            v47 = v26;
            v30 = 2;
            break;
          case 3:
            *&v26 = v21;
            v47 = v26;
            v30 = 3;
            break;
          case 4:
            *&v32 = v21;
            *(&v32 + 1) = v20;
            v47 = v32;
            v30 = 4;
            break;
          case 5:
            *&v36 = v21;
            *(&v36 + 1) = v20;
            v47 = v36;
            v30 = 5;
            break;
          case 6:
            *&v26 = v21;
            v47 = v26;
            v30 = 6;
            break;
          case 7:
            *&v34 = v21;
            *(&v34 + 1) = v20;
            v47 = v34;
            v30 = 7;
            break;
          case 8:
            *&v41 = v21;
            *(&v41 + 1) = v20;
            v47 = v41;
            *&v41 = v22;
            *(&v41 + 1) = v23;
            v46 = v41;
            v30 = 8;
            break;
          case 9:
            *&v33 = v21;
            *(&v33 + 1) = v20;
            v47 = v33;
            *&v33 = v22;
            *(&v33 + 1) = v23;
            v46 = v33;
            v30 = 9;
            break;
          case 10:
            LODWORD(v26) = v21 & 1;
            v47 = v26;
            v30 = 10;
            break;
          case 11:
            LODWORD(v26) = v21;
            v47 = v26;
            v30 = 11;
            break;
          case 12:
            *&v26 = v21;
            v47 = v26;
            v30 = 12;
            break;
          case 13:
            *&v37 = v21;
            *(&v37 + 1) = v20;
            v47 = v37;
            v30 = 13;
            break;
          case 14:
            *&v31 = v21;
            *(&v31 + 1) = v20;
            v47 = v31;
            v30 = 14;
            break;
          case 15:
            LODWORD(v26) = v21;
            v47 = v26;
            v30 = 15;
            break;
          case 16:
            *&v26 = v21;
            v47 = v26;
            v30 = 16;
            break;
          case 17:
            *&v35 = v21;
            *(&v35 + 1) = v20;
            v47 = v35;
            v30 = 17;
            break;
          case 18:
            *&v38 = v21;
            *(&v38 + 1) = v20;
            v47 = v38;
            v30 = 18;
            break;
          default:
            v30 = 19;
            v50 = 0u;
            v51 = 0u;
            v46 = 0u;
            v47 = 0u;
            break;
        }

        a1 = v45;
        v39 = v58;
        v40 = v59;
        __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
        v52 = v47;
        v53 = v46;
        v54 = v51;
        v55 = v50;
        v56 = v30;
        Material.subscript.setter(&v52, v16, v17, v39, v40);
        v5 = v15;
        Material.parameters.setter(v57, a2, v15);
        if (!v48)
        {
          break;
        }

        --v48;
        v14 += 2;
      }
    }
  }

  return outlined destroy of MaterialParameters(a1);
}

void (*Material.parameters.modify(uint64_t **a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x68uLL);
  }

  *a1 = v7;
  v7[11] = a3;
  v7[12] = v3;
  v7[10] = a2;
  v7[3] = a2;
  v7[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, v3, a2);
  return Material.parameters.modify;
}

void Material.parameters.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[11];
    v3 = v2[12];
    v5 = v2[10];
    outlined init with copy of MaterialParameters(*a1, (v2 + 5));
    Material.parameters.setter(v2 + 5, v5, v4);
    outlined destroy of MaterialParameters(v2);
  }

  else
  {
    v6 = v2[12];
    Material.parameters.setter(*a1, v2[10], v2[11]);
  }

  free(v2);
}

uint64_t Material.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(a4 + 16))(v16, a3, a4);
  v10 = v16[3];

  v11 = v10;

  specialized String.withCString<A>(_:)(a1, a2, v11, v17);

  v13 = v18;
  if (v18 == 255)
  {
    (*(a4 + 8))(a3, a4);
    __MaterialResource.subscript.getter(a5);
  }

  else
  {
    v14 = v17[1];
    *a5 = v17[0];
    *(a5 + 16) = v14;
    v15 = v17[3];
    *(a5 + 32) = v17[2];
    *(a5 + 48) = v15;
    *(a5 + 64) = v13;
  }

  return result;
}

uint64_t Material.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 48);
  v27[2] = *(a1 + 32);
  v27[3] = v7;
  v28 = *(a1 + 64);
  v8 = v28;
  v9 = *(a1 + 16);
  v27[0] = *a1;
  v27[1] = v9;
  v10 = *(a5 + 32);
  if (v28 == 255)
  {
    v17 = v10(v24, a4, a5);
    v19 = v18;
    v20 = *(v18 + 24);
    if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      v21 = *(v19 + 24);
      v22 = REMaterialParameterBlockValueCopy();
      v23 = *(v19 + 24);
      *(v19 + 24) = v22;
    }

    specialized String.withCString<A>(_:)(a2, a3, v19);

    return v17(v24, 0);
  }

  else
  {
    v12 = v10(v26, a4, a5);
    v13 = *(a1 + 16);
    v24[0] = *a1;
    v24[1] = v13;
    v14 = *(a1 + 48);
    v24[2] = *(a1 + 32);
    v24[3] = v14;
    v25 = v8;
    v15 = String.utf8CString.getter();

    __RKMaterialParameterBlock.unsafeSet(parameter:value:)((v15 + 32), v24);

    v12(v26, 0);
    return outlined destroy of BodyTrackingComponent?(v27, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  }
}

RealityFoundation::MaterialParameters::Metadata_optional __swiftcall Material.metadata(for:)(Swift::String a1)
{
  v3 = v2;
  v4 = (*(v1 + 8))();
  swift_beginAccess();
  v5 = *(v4 + 16);

  REMaterialAssetGetMaterialDefinition();
  String.utf8CString.getter();
  ParameterDisplayName = REMaterialDefinitionAssetGetParameterDisplayName();

  if (ParameterDisplayName)
  {
    v8 = String.init(cString:)();
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  *v3 = v8;
  v3[1] = v9;
  result.value.displayName.value._object = v9;
  result.value.displayName.value._countAndFlagsBits = v8;
  result.is_nil = v7;
  return result;
}

uint64_t Material.allKeys.getter(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E695DFA8]) init];
  v5 = (*(a2 + 8))(a1, a2);
  swift_beginAccess();
  v6 = *(v5 + 16);

  REMaterialAssetGetMaterialDefinition();
  REMaterialDefinitionAssetGetParameterKeys();
  v4;
  result = static Set._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
  return result;
}

uint64_t specialized Material.makeMaterialParametersTextureFromTextureResource(_:textureKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 56);
  v11 = *(v4 + 64);
  v12 = *(v4 + 72);

  v13 = v12;

  specialized String.withCString<A>(_:)(a2, a3, v13, v23);
  if (v24 != 255)
  {
    if (v24 == 1)
    {
      if (v23[0])
      {
        v14 = v23[0];
      }

      else
      {
        v14 = REMaterialCreateDefaultSamplerDescriptor();
      }

      v18 = v14;
      v19 = v23;
LABEL_16:
      outlined destroy of BodyTrackingComponent?(v19, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
      *(a4 + 8) = a1;
      *(a4 + 16) = 0;
      *(a4 + 24) = 84148994;
      *a4 = v18;
    }

    outlined destroy of BodyTrackingComponent?(v23, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  }

  v15 = *(v4 + 40);
  __MaterialResource.subscript.getter(v21);
  if (v22 == 1)
  {
    if (v21[0])
    {
      v17 = v21[0];
    }

    else
    {
      v17 = REMaterialCreateDefaultSamplerDescriptor();
    }

    v18 = v17;
    v19 = v21;
    goto LABEL_16;
  }

  if (v22 != 255)
  {
    outlined destroy of BodyTrackingComponent?(v21, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  }

  v16 = REMaterialCreateDefaultSamplerDescriptor();
  *(a4 + 8) = a1;
  *(a4 + 16) = 0;
  *(a4 + 24) = 84148994;
  *a4 = v16;
}

uint64_t specialized Material.setParameter<A>(_:alternateTintKey:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  return specialized Material.setParameter<A>(_:alternateTintKey:)(a1, a2, a3, a4, a5, CustomMaterial.BaseColor.getCurrentValues(alternateTintKey:));
}

{
  return specialized Material.setParameter<A>(_:alternateTintKey:)(a1, a2, a3, a4, a5, CustomMaterial.EmissiveColor.getCurrentValues(alternateTintKey:));
}

uint64_t specialized Material.setParameter<A>(_:alternateTintKey:)(uint64_t a1, uint64_t a2, float a3)
{
  *&v8[18] = a3;
  v9 = a1;
  v10 = a2;
  v11 = BYTE4(a2);
  CustomMaterial.Opacity.getCurrentValues(alternateTintKey:)(v16, &v19);
  v3 = v16[0];
  v4 = v16[1];
  v14[2] = v17[2];
  v14[3] = v17[3];
  v15 = v18;
  v14[0] = v17[0];
  v14[1] = v17[1];

  outlined init with copy of [String : String](v17, &v25, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  specialized Material.subscript.setter(v14, v3, v4);
  v26[1] = v21;
  v26[2] = v22;
  v26[3] = v23;
  v27 = v24;
  v25 = v19;
  v26[0] = v20;
  v5 = *(&v19 + 1);
  if (*(&v19 + 1))
  {
    v6 = v25;
    v12[2] = v22;
    v12[3] = v23;
    v13 = v24;
    v12[0] = v20;
    v12[1] = v21;

    outlined init with copy of [String : String](v26, v8, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
    specialized Material.subscript.setter(v12, v6, v5);
    outlined destroy of BodyTrackingComponent?(&v19, &_s17RealityFoundation25MaterialParameterKeyValueVSgMd, &_s17RealityFoundation25MaterialParameterKeyValueVSgMR);
  }

  return outlined destroy of MaterialParameterKeyValue(v16);
}

uint64_t specialized Material.setParameter<A>(_:alternateTintKey:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 16);
  v9[5] = *a1;
  v9[6] = v3;
  v10 = *(a1 + 32);
  PhysicallyBasedMaterial.BaseColor.getCurrentValues(alternateTintKey:)(v15, &v18, a2, a3);
  v4 = v15[0];
  v5 = v15[1];
  v13[2] = v16[2];
  v13[3] = v16[3];
  v14 = v17;
  v13[0] = v16[0];
  v13[1] = v16[1];

  outlined init with copy of [String : String](v16, &v24, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  specialized Material.subscript.setter(v13, v4, v5);
  v25[1] = v20;
  v25[2] = v21;
  v25[3] = v22;
  v26 = v23;
  v24 = v18;
  v25[0] = v19;
  v6 = *(&v18 + 1);
  if (*(&v18 + 1))
  {
    v7 = v24;
    v11[2] = v21;
    v11[3] = v22;
    v12 = v23;
    v11[0] = v19;
    v11[1] = v20;

    outlined init with copy of [String : String](v25, v9, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
    specialized Material.subscript.setter(v11, v7, v6);
    outlined destroy of BodyTrackingComponent?(&v18, &_s17RealityFoundation25MaterialParameterKeyValueVSgMd, &_s17RealityFoundation25MaterialParameterKeyValueVSgMR);
  }

  return outlined destroy of MaterialParameterKeyValue(v15);
}

{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  if (v5)
  {
    v8 = 1;
    v9 = *(a1 + 8);
    v10 = *(a1 + 24);
    v11 = *(a1 + 32);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v8 = -1;
  }

  v12 = *a1;
  v13 = 0x6576697373696D65;
  if (a3)
  {
    v13 = a2;
  }

  v14 = 0xED0000726F6C6F43;
  if (a3)
  {
    v14 = a3;
  }

  v26 = v13;
  v27 = v14;
  *&v28[0] = v12;
  v29 = 6;
  v30[0] = 0x4565727574786574;
  v30[1] = 0xEF6576697373696DLL;
  *&v31 = v9;
  *(&v31 + 1) = v5;
  *&v32 = v10;
  *(&v32 + 1) = v11;
  v33 = 0u;
  v34 = 0u;
  v35 = v8;
  v37 = v8;
  memset(&v36[2], 0, 32);
  v36[0] = v31;
  v36[1] = v32;
  v15 = v12;

  outlined copy of MaterialParameters.Texture?(v4, v5);

  outlined init with copy of [String : String](&v31, v24, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  specialized Material.subscript.setter(v36, 0x4565727574786574, 0xEF6576697373696DLL);
  v17 = v26;
  v16 = v27;
  if (v29 == 255)
  {

    v19 = *(v3 + 32);
    if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      v20 = *(v3 + 32);
      v21 = REMaterialParameterBlockValueCopy();

      *(v3 + 32) = v21;
    }

    specialized String.withCString<A>(_:)(v17, v16, v3 + 8);
  }

  else
  {
    v24[0] = v28[0];
    v24[1] = v28[1];
    v24[2] = v28[2];
    v24[3] = v28[3];
    v25 = v29;
    v18 = String.utf8CString.getter();
    outlined init with copy of [String : String](v28, &v23, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
    __RKMaterialParameterBlock.unsafeSet(parameter:value:)((v18 + 32), v24);

    outlined destroy of BodyTrackingComponent?(v28, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  }

  outlined destroy of MaterialParameterKeyValue(&v26);
  return outlined destroy of MaterialParameterKeyValue(v30);
}

uint64_t specialized Material.setParameter<A>(_:alternateTintKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized Material.setParameter<A>(_:alternateTintKey:)(a1, a2, a3, PhysicallyBasedMaterial.BaseColor.getCurrentValues(alternateTintKey:));
}

{
  return specialized Material.setParameter<A>(_:alternateTintKey:)(a1, a2, a3, PhysicallyBasedMaterial.SheenColor.getCurrentValues(alternateTintKey:));
}

uint64_t specialized Material.setParameter<A>(_:alternateTintKey:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, __int128 *, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  v10[5] = *a1;
  v10[6] = v4;
  v11 = *(a1 + 32);
  a4(v16, &v19, a2, a3);
  v5 = v16[0];
  v6 = v16[1];
  v14[2] = v17[2];
  v14[3] = v17[3];
  v15 = v18;
  v14[0] = v17[0];
  v14[1] = v17[1];

  outlined init with copy of [String : String](v17, &v25, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  specialized Material.subscript.setter(v14, v5, v6);
  v26[1] = v21;
  v26[2] = v22;
  v26[3] = v23;
  v27 = v24;
  v25 = v19;
  v26[0] = v20;
  v7 = *(&v19 + 1);
  if (*(&v19 + 1))
  {
    v8 = v25;
    v12[2] = v22;
    v12[3] = v23;
    v13 = v24;
    v12[0] = v20;
    v12[1] = v21;

    outlined init with copy of [String : String](v26, v10, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
    specialized Material.subscript.setter(v12, v8, v7);
    outlined destroy of BodyTrackingComponent?(&v19, &_s17RealityFoundation25MaterialParameterKeyValueVSgMd, &_s17RealityFoundation25MaterialParameterKeyValueVSgMR);
  }

  return outlined destroy of MaterialParameterKeyValue(v16);
}

uint64_t specialized Material.setParameter<A>(_:alternateTintKey:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, float a5)
{
  return specialized Material.setParameter<A>(_:alternateTintKey:)(a1, a2, a5, a3, a4, CustomMaterial.Roughness.getCurrentValues(alternateTintKey:));
}

{
  return specialized Material.setParameter<A>(_:alternateTintKey:)(a1, a2, a5, a3, a4, CustomMaterial.Metallic.getCurrentValues(alternateTintKey:));
}

{
  return specialized Material.setParameter<A>(_:alternateTintKey:)(a1, a2, a5, a3, a4, CustomMaterial.Specular.getCurrentValues(alternateTintKey:));
}

{
  return specialized Material.setParameter<A>(_:alternateTintKey:)(a1, a2, a5, a3, a4, CustomMaterial.Clearcoat.getCurrentValues(alternateTintKey:));
}

{
  return specialized Material.setParameter<A>(_:alternateTintKey:)(a1, a2, a5, a3, a4, CustomMaterial.ClearcoatRoughness.getCurrentValues(alternateTintKey:));
}

uint64_t specialized Material.setParameter<A>(_:alternateTintKey:)(uint64_t a1, int a2, float a3, uint64_t a4, uint64_t a5, void (*a6)(void *, __int128 *))
{
  *&v11[18] = a3;
  v12 = a1;
  v13 = a2;
  a6(v18, &v21);
  v6 = v18[0];
  v7 = v18[1];
  v16[2] = v19[2];
  v16[3] = v19[3];
  v17 = v20;
  v16[0] = v19[0];
  v16[1] = v19[1];

  outlined init with copy of [String : String](v19, &v27, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  specialized Material.subscript.setter(v16, v6, v7);
  v28[1] = v23;
  v28[2] = v24;
  v28[3] = v25;
  v29 = v26;
  v27 = v21;
  v28[0] = v22;
  v8 = *(&v21 + 1);
  if (*(&v21 + 1))
  {
    v9 = v27;
    v14[2] = v24;
    v14[3] = v25;
    v15 = v26;
    v14[0] = v22;
    v14[1] = v23;

    outlined init with copy of [String : String](v28, v11, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
    specialized Material.subscript.setter(v14, v9, v8);
    outlined destroy of BodyTrackingComponent?(&v21, &_s17RealityFoundation25MaterialParameterKeyValueVSgMd, &_s17RealityFoundation25MaterialParameterKeyValueVSgMR);
  }

  return outlined destroy of MaterialParameterKeyValue(v18);
}

uint64_t specialized Material.setParameter<A>(_:alternateTintKey:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void (*a6)(void *, __int128 *, uint64_t, uint64_t))
{
  v11[9] = a1;
  v11[10] = a2;
  v12 = a3;
  a6(v17, &v20, a4, a5);
  v6 = v17[0];
  v7 = v17[1];
  v15[2] = v18[2];
  v15[3] = v18[3];
  v16 = v19;
  v15[0] = v18[0];
  v15[1] = v18[1];

  outlined init with copy of [String : String](v18, &v26, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  specialized Material.subscript.setter(v15, v6, v7);
  v27[1] = v22;
  v27[2] = v23;
  v27[3] = v24;
  v28 = v25;
  v26 = v20;
  v27[0] = v21;
  v8 = *(&v20 + 1);
  if (*(&v20 + 1))
  {
    v9 = v26;
    v13[2] = v23;
    v13[3] = v24;
    v14 = v25;
    v13[0] = v21;
    v13[1] = v22;

    outlined init with copy of [String : String](v27, v11, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
    specialized Material.subscript.setter(v13, v9, v8);
    outlined destroy of BodyTrackingComponent?(&v20, &_s17RealityFoundation25MaterialParameterKeyValueVSgMd, &_s17RealityFoundation25MaterialParameterKeyValueVSgMR);
  }

  return outlined destroy of MaterialParameterKeyValue(v17);
}

uint64_t specialized Material.setParameter<A>(_:alternateTintKey:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  return specialized Material.setParameter<A>(_:alternateTintKey:)(a1, a2, a3, a4, CustomMaterial.Normal.getCurrentValues(alternateTintKey:));
}

{
  return specialized Material.setParameter<A>(_:alternateTintKey:)(a1, a2, a3, a4, CustomMaterial.AmbientOcclusion.getCurrentValues(alternateTintKey:));
}

{
  return specialized Material.setParameter<A>(_:alternateTintKey:)(a1, a2, a3, a4, CustomMaterial.ClearcoatNormal.getCurrentValues(alternateTintKey:));
}

uint64_t specialized Material.setParameter<A>(_:alternateTintKey:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void (*a5)(void *, __int128 *))
{
  v10[10] = a1;
  v11 = a2;
  a5(v16, &v19);
  v5 = v16[0];
  v6 = v16[1];
  v14[2] = v17[2];
  v14[3] = v17[3];
  v15 = v18;
  v14[0] = v17[0];
  v14[1] = v17[1];

  outlined init with copy of [String : String](v17, &v25, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  specialized Material.subscript.setter(v14, v5, v6);
  v26[1] = v21;
  v26[2] = v22;
  v26[3] = v23;
  v27 = v24;
  v25 = v19;
  v26[0] = v20;
  v7 = *(&v19 + 1);
  if (*(&v19 + 1))
  {
    v8 = v25;
    v12[2] = v22;
    v12[3] = v23;
    v13 = v24;
    v12[0] = v20;
    v12[1] = v21;

    outlined init with copy of [String : String](v26, v10, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
    specialized Material.subscript.setter(v12, v8, v7);
    outlined destroy of BodyTrackingComponent?(&v19, &_s17RealityFoundation25MaterialParameterKeyValueVSgMd, &_s17RealityFoundation25MaterialParameterKeyValueVSgMR);
  }

  return outlined destroy of MaterialParameterKeyValue(v16);
}

uint64_t specialized Material.setParameter<A>(_:alternateTintKey:)(uint64_t a1, int a2, __n128 a3)
{
  v8[5] = a3;
  v9 = a1;
  v10 = a2;
  CustomMaterial.Custom.getCurrentValues(alternateTintKey:)(v15, &v18);
  v3 = v15[0];
  v4 = v15[1];
  v13[2] = v16[2];
  v13[3] = v16[3];
  v14 = v17;
  v13[0] = v16[0];
  v13[1] = v16[1];

  outlined init with copy of [String : String](v16, &v24, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  specialized Material.subscript.setter(v13, v3, v4);
  v25[1] = v20;
  v25[2] = v21;
  v25[3] = v22;
  v26 = v23;
  v24 = v18;
  v25[0] = v19;
  v5 = *(&v18 + 1);
  if (*(&v18 + 1))
  {
    v6 = v24;
    v11[2] = v21;
    v11[3] = v22;
    v12 = v23;
    v11[0] = v19;
    v11[1] = v20;

    outlined init with copy of [String : String](v25, v8, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
    specialized Material.subscript.setter(v11, v6, v5);
    outlined destroy of BodyTrackingComponent?(&v18, &_s17RealityFoundation25MaterialParameterKeyValueVSgMd, &_s17RealityFoundation25MaterialParameterKeyValueVSgMR);
  }

  return outlined destroy of MaterialParameterKeyValue(v15);
}

uint64_t Material.getFloat4Parameter(key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Material.subscript.getter(a1, a2, a3, a4, &v5);
  if (v6 != 255)
  {
    if (v6 == 5)
    {
      return v5;
    }

    outlined destroy of BodyTrackingComponent?(&v5, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  }

  return 0;
}

Swift::Bool __swiftcall Material.syncMaterialRenderStateToCore(_:index:)(Swift::OpaquePointer _, Swift::Int index)
{
  v4 = v3;
  v5 = v2;
  v26 = *MEMORY[0x1E69E9840];
  REMaterialRenderStateArrayComponentGetTriangleFillModeAtIndex();
  CullModeAtIndex = REMaterialRenderStateArrayComponentGetCullModeAtIndex();
  REMaterialRenderStateArrayComponentGetWritesDepthAtIndex();
  REMaterialRenderStateArrayComponentGetReadsDepthAtIndex();
  v7 = v4[5];
  v23 = v7(v5, v4);
  if (CullModeAtIndex)
  {
    v22 = v4[14];
    v8 = (v22)(v5, v4) != 2;
    v10 = (v9 & 1) != 0 || v8;
  }

  else
  {
    v22 = v4[14];
    v22(v5, v4);
    v10 = v11 ^ 1;
  }

  v25 = v10;
  v21 = v4[8];
  v12 = v21(v5, v4) ^ 1;
  v20 = v4[11];
  v13 = v20(v5, v4) ^ 1;
  if (v23)
  {
    v24 = v12;
    if (v7(v5, v4))
    {
      v7(v5, v4);
      REMaterialRenderStateArrayComponentSetTriangleFillModeAtIndex();
    }

    else
    {
      REMaterialRenderStateArrayComponentClearTriangleFillModeAtIndex();
    }

    v14 = 1;
    v15 = v22;
    if ((v25 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (!(v25 & 1 | ((v12 & 1) == 0)))
    {
      v14 = 1;
LABEL_20:
      if ((v21(v5, v4) & 1) == 0)
      {
        REMaterialRenderStateArrayComponentSetWritesDepthAtIndex();
        if ((v13 & 1) == 0)
        {
LABEL_28:
          v19 = *MEMORY[0x1E69E9840];
          return v14 & 1;
        }

LABEL_25:
        if (v20(v5, v4))
        {
          REMaterialRenderStateArrayComponentClearReadsDepthAtIndex();
        }

        else
        {
          REMaterialRenderStateArrayComponentSetReadsDepthAtIndex();
        }

        goto LABEL_28;
      }

      REMaterialRenderStateArrayComponentClearWritesDepthAtIndex();
LABEL_22:
      if ((v13 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }

    v24 = v12;
    v14 = v25 | v13;
    v15 = v22;
    if ((v25 & 1) == 0)
    {
LABEL_19:
      if ((v24 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }
  }

  v15(v5, v4);
  if (v16)
  {
    REMaterialRenderStateArrayComponentClearCullModeAtIndex();
    goto LABEL_19;
  }

  result = (v15)(v5, v4);
  if ((v18 & 1) == 0)
  {
    REMaterialRenderStateArrayComponentSetCullModeAtIndex();
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall Material.syncMaterialRenderStateFromCore(coreComponent:index:)(Swift::OpaquePointer coreComponent, Swift::Int index)
{
  v4 = v3;
  v5 = v2;
  v7 = *MEMORY[0x1E69E9840];
  if (REMaterialRenderStateArrayComponentGetTriangleFillModeAtIndex())
  {
    (*(v4 + 48))(0, v5, v4);
  }

  if (REMaterialRenderStateArrayComponentGetWritesDepthAtIndex())
  {
    (*(v4 + 72))(1, v5, v4);
  }

  if (REMaterialRenderStateArrayComponentGetReadsDepthAtIndex())
  {
    (*(v4 + 96))(1, v5, v4);
  }

  if (REMaterialRenderStateArrayComponentGetCullModeAtIndex())
  {
    (*(v4 + 120))(2, 0, v5, v4);
  }

  else
  {
    (*(v4 + 120))(0, 1, v5, v4);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __MaterialResource.CoreMaterialFunction.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  Hasher._combine(_:)(*v0);
  String.hash(into:)();
  v6 = REAssetHandleCopyAssetIdentifierString();
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  _CFObject.hash(into:)();

  MEMORY[0x1C68F4C10](*(v4 + 16));
  v7 = *(v4 + 16);
  if (v7)
  {
    v8 = (v4 + 32);
    do
    {
      v9 = *v8++;
      Hasher._combine(_:)(v9);
      --v7;
    }

    while (v7);
  }

  return NSObject.hash(into:)();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __MaterialResource.CoreMaterialFunction()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  Hasher.init(_seed:)();
  __MaterialResource.CoreMaterialFunction.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __MaterialResource.CoreMaterialFunction()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  Hasher.init(_seed:)();
  __MaterialResource.CoreMaterialFunction.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance __MaterialResource.CoreMaterialFunction(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v6 = a2[3];
  v5 = a2[4];
  v7 = a2[5];
  if ((a1[1] != a2[1] || a1[2] != a2[2]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 != v6 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSo11REShaderAPIV_Tt1g5(v3, v5) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for NSObject();
  v8 = v4;
  v9 = v7;
  v10 = static NSObject.== infix(_:_:)();

  return v10 & 1;
}

uint64_t __MaterialResource.coreAsset.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t __MaterialResource.__coreAsset.getter@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t __MaterialResource.name.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  REMaterialAssetGetName();
  return String.init(cString:)();
}

uint64_t __MaterialResource.cullMode.getter()
{
  v6 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v1 = *(v0 + 16);
  CullMode = REMaterialAssetGetCullMode();
  v3 = 2;
  if (!CullMode)
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

void *one-time initialization function for mapping()
{
  result = closure #1 in variable initialization expression of static __MaterialResource.mapping();
  static __MaterialResource.mapping = result;
  return result;
}

void *closure #1 in variable initialization expression of static __MaterialResource.mapping()
{
  v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v1 > 1), v2 + 1, 1, v0);
    v1 = v0[3];
    v3 = v1 >> 1;
  }

  v0[2] = v4;
  v5 = &v0[3 * v2];
  *(v5 + 32) = 1;
  v5[5] = specialized thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @in_guaranteed __RKMaterialParameterBlock, @in_guaranteed DirectUniformsState?) -> (@out Material);
  v5[6] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v1 > 1), v2 + 2, 1, v0);
  }

  v0[2] = v6;
  v7 = &v0[3 * v4];
  *(v7 + 32) = 7;
  v7[5] = specialized thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @in_guaranteed __RKMaterialParameterBlock, @in_guaranteed DirectUniformsState?) -> (@out Material);
  v7[6] = 0;
  v8 = v0[3];
  v9 = v2 + 3;
  if ((v2 + 3) > (v8 >> 1))
  {
    v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v2 + 3, 1, v0);
  }

  v0[2] = v9;
  v10 = &v0[3 * v6];
  *(v10 + 32) = 2;
  v10[5] = specialized thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @in_guaranteed __RKMaterialParameterBlock, @in_guaranteed DirectUniformsState?) -> (@out Material);
  v10[6] = 0;
  v11 = v0[3];
  v12 = v2 + 4;
  if ((v2 + 4) > (v11 >> 1))
  {
    v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v2 + 4, 1, v0);
  }

  v0[2] = v12;
  v13 = &v0[3 * v9];
  *(v13 + 32) = 6;
  v13[5] = specialized thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @in_guaranteed __RKMaterialParameterBlock, @in_guaranteed DirectUniformsState?) -> (@out Material);
  v13[6] = 0;
  v14 = v0[3];
  v15 = v2 + 5;
  if ((v2 + 5) > (v14 >> 1))
  {
    v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v2 + 5, 1, v0);
  }

  v0[2] = v15;
  v16 = &v0[3 * v12];
  *(v16 + 32) = 3;
  v16[5] = specialized thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @in_guaranteed __RKMaterialParameterBlock, @in_guaranteed DirectUniformsState?) -> (@out Material);
  v16[6] = 0;
  v17 = v0[3];
  v18 = v2 + 6;
  if ((v2 + 6) > (v17 >> 1))
  {
    v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v2 + 6, 1, v0);
  }

  v0[2] = v18;
  v19 = &v0[3 * v15];
  *(v19 + 32) = 4;
  v19[5] = specialized thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @in_guaranteed __RKMaterialParameterBlock, @in_guaranteed DirectUniformsState?) -> (@out Material);
  v19[6] = 0;
  v20 = v0[3];
  v21 = v2 + 7;
  if ((v2 + 7) > (v20 >> 1))
  {
    v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v2 + 7, 1, v0);
  }

  v0[2] = v21;
  v22 = &v0[3 * v18];
  *(v22 + 32) = 8;
  v22[5] = specialized thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @in_guaranteed __RKMaterialParameterBlock, @in_guaranteed DirectUniformsState?) -> (@out Material);
  v22[6] = 0;
  v23 = v0[3];
  if ((v2 + 8) > (v23 >> 1))
  {
    v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v2 + 8, 1, v0);
  }

  v0[2] = v2 + 8;
  v24 = &v0[3 * v21];
  *(v24 + 32) = 0;
  v24[5] = specialized thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @in_guaranteed __RKMaterialParameterBlock, @in_guaranteed DirectUniformsState?) -> (@out Material);
  v24[6] = 0;
  return v0;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @in_guaranteed __RKMaterialParameterBlock, @in_guaranteed DirectUniformsState?) -> (@out Material)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v11 = *a2;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  a3[3] = &type metadata for PhysicallyBasedMaterial;
  a3[4] = &protocol witness table for PhysicallyBasedMaterial;
  v8 = swift_allocObject();
  *a3 = v8;

  v9 = v7;

  return PhysicallyBasedMaterial.init(_:_:)(v4, &v11, v8 + 16);
}

{
  v4 = *a1;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v11 = *a2;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  a3[3] = &type metadata for UnlitMaterial;
  a3[4] = &protocol witness table for UnlitMaterial;
  v8 = swift_allocObject();
  *a3 = v8;

  v9 = v7;

  return UnlitMaterial.init(_:_:)(v4, &v11, v8 + 16);
}

{
  v4 = *a1;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v11 = *a2;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  a3[3] = &type metadata for SimpleMaterial;
  a3[4] = &protocol witness table for SimpleMaterial;
  v8 = swift_allocObject();
  *a3 = v8;

  v9 = v7;

  return SimpleMaterial.init(_:_:)(v4, &v11, v8 + 16);
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @in_guaranteed __RKMaterialParameterBlock, @in_guaranteed DirectUniformsState?) -> (@out Material)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return closure #6 in closure #1 in variable initialization expression of static __MaterialResource.mapping(*a1, a2, a3);
}

{
  return closure #7 in closure #1 in variable initialization expression of static __MaterialResource.mapping(*a1, a2, a3);
}

{
  return closure #8 in closure #1 in variable initialization expression of static __MaterialResource.mapping(*a1, a2, a3);
}

uint64_t closure #2 in closure #1 in variable initialization expression of static __MaterialResource.mapping@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v28 = *a2;
  v26 = *(a2 + 8);
  v6 = a2[2];
  v5 = a2[3];
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  v11 = *(a3 + 32);
  v12 = *(a3 + 40);
  a4[3] = &type metadata for ShaderGraphMaterial;
  a4[4] = &protocol witness table for ShaderGraphMaterial;
  v13 = swift_allocObject();
  *a4 = v13;
  v27 = v6;

  v25 = v5;

  outlined copy of DirectUniformsState?(v7, v8, v9, v10, v11, v12);
  v14 = _s17RealityFoundation16LoadableResourcePAAE8fromCore8assetRefxSgs13OpaquePointerV_tFZ0A3Kit010__MaterialD0C_Tt1g5(a1);
  if (v14)
  {
    v15 = (~(v8 & v11) & 0x3000000000000000) == 0;
    if ((~(v8 & v11) & 0x3000000000000000) != 0)
    {
      v16 = v7;
    }

    else
    {
      v16 = 0;
    }

    if ((~(v8 & v11) & 0x3000000000000000) != 0)
    {
      v17 = v8;
    }

    else
    {
      v17 = 0;
    }

    if ((~(v8 & v11) & 0x3000000000000000) != 0)
    {
      v18 = v9;
    }

    else
    {
      v18 = 0;
    }

    if (v15)
    {
      v19 = 0;
    }

    else
    {
      v19 = v10;
    }

    if (v15)
    {
      v20 = 0x2000000000000000;
    }

    else
    {
      v20 = v11;
    }

    if (v15)
    {
      v21 = 0;
    }

    else
    {
      v21 = v12;
    }

    v22 = v14;
    swift_beginAccess();
    v23 = *(v22 + 16);
    result = REMaterialAssetGetByteSizeOfSGUniforms();
    if ((result & 0x8000000000000000) == 0)
    {
      *(v13 + 16) = v22;
      *(v13 + 24) = v28;
      *(v13 + 32) = v26;
      *(v13 + 40) = v27;
      *(v13 + 48) = v25;
      *(v13 + 56) = v16;
      *(v13 + 64) = v17;
      *(v13 + 72) = v18;
      *(v13 + 80) = v19;
      *(v13 + 88) = v20;
      *(v13 + 96) = v21;
      *(v13 + 104) = result;
      *(v13 + 112) = 0;
      *(v13 + 120) = 257;
      *(v13 + 128) = 0;
      *(v13 + 136) = 1;
      return result;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #4 in closure #1 in variable initialization expression of static __MaterialResource.mapping@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *a3;
  v10 = *(a3 + 8);
  v11 = *(a3 + 16);
  v12 = *(a3 + 24);
  v13 = *(a3 + 32);
  v25 = *(a3 + 40);
  v26 = v5;
  v27 = v6;
  v28 = v7;
  v29 = v8;
  *&v22 = v9;
  *(&v22 + 1) = v10;
  *&v23 = v11;
  *(&v23 + 1) = v12;
  v24 = v13;
  v20 = v7;

  v19 = v8;
  v14 = v5;

  outlined copy of DirectUniformsState?(v9, v10, v11, v12, v13, v25);
  CustomMaterial.init(_:_:_:)(a1, &v26, &v22, __src);
  if (__src[0])
  {
    *(&v23 + 1) = &type metadata for CustomMaterial;
    v24 = &protocol witness table for CustomMaterial;
    *&v22 = swift_allocObject();
    memcpy((v22 + 16), __src, 0x162uLL);
    return outlined init with take of ForceEffectBase(&v22, a4);
  }

  else
  {
    v16 = v6;
    outlined destroy of BodyTrackingComponent?(__src, &_s17RealityFoundation14CustomMaterialVSgMd, &_s17RealityFoundation14CustomMaterialVSgMR);
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    a4[3] = &type metadata for AnyMaterial;
    a4[4] = &protocol witness table for AnyMaterial;
    v17 = swift_allocObject();
    *a4 = v17;

    v18 = v19;
    result = _s17RealityFoundation16LoadableResourcePAAE8fromCore8assetRefxSgs13OpaquePointerV_tFZ0A3Kit010__MaterialD0C_Tt1g5(a1);
    if (result)
    {
      *(v17 + 16) = result;
      *(v17 + 24) = v14;
      *(v17 + 32) = v16;
      *(v17 + 40) = v20;
      *(v17 + 48) = v18;
      if (*(&v23 + 1))
      {
        return outlined destroy of BodyTrackingComponent?(&v22, &_s10RealityKit8Material_pSgMd, &_s10RealityKit8Material_pSgMR);
      }
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t SimpleMaterial.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = a2[2];
  v8 = a2[3];
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  strcpy((a3 + 80), "baseColorTint");
  *(a3 + 94) = -4864;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 136) = 1;
  *(a3 + 137) = 257;
  v9 = _s17RealityFoundation16LoadableResourcePAAE8fromCore8assetRefxSgs13OpaquePointerV_tFZ0A3Kit010__MaterialD0C_Tt1g5(a1);
  if (v9)
  {
    *(a3 + 40) = v9;
    *(a3 + 48) = v5;
    *(a3 + 56) = v6;
    *(a3 + 64) = v7;
    *(a3 + 72) = v8;
    v10 = one-time initialization token for materialMapRegistry;

    if (v10 != -1)
    {
      swift_once();
    }

    SimpleMaterial.assetService.getter(v14);
    v11 = specialized AssetServiceScopedRegistry.instance(for:)(v14);

    __swift_destroy_boxed_opaque_existential_1(v14);
    v12 = *(v11 + 64);

    *(a3 + 112) = v12 == a1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t closure #6 in closure #1 in variable initialization expression of static __MaterialResource.mapping@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = a2[2];
  v8 = a2[3];
  a3[3] = &type metadata for OcclusionMaterial;
  a3[4] = &protocol witness table for OcclusionMaterial;
  v9 = swift_allocObject();
  *a3 = v9;

  v10 = v8;

  v11 = _s17RealityFoundation16LoadableResourcePAAE8fromCore8assetRefxSgs13OpaquePointerV_tFZ0A3Kit010__MaterialD0C_Tt1g5(a1);
  if (v11)
  {
    v12 = v11;
    result = REMaterialAssetGetFeatureFlags();
    *(v9 + 16) = v12;
    *(v9 + 24) = v5;
    *(v9 + 32) = v6;
    *(v9 + 40) = v7;
    *(v9 + 48) = v10;
    *(v9 + 56) = result & 1;
    *(v9 + 57) = 1;
    *(v9 + 64) = 0;
    *(v9 + 72) = 1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t closure #7 in closure #1 in variable initialization expression of static __MaterialResource.mapping@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = a2[2];
  v8 = a2[3];
  a3[3] = &type metadata for PortalMaterial;
  a3[4] = &protocol witness table for PortalMaterial;
  v9 = swift_allocObject();
  *a3 = v9;

  v10 = v8;

  result = _s17RealityFoundation16LoadableResourcePAAE8fromCore8assetRefxSgs13OpaquePointerV_tFZ0A3Kit010__MaterialD0C_Tt1g5(a1);
  if (result)
  {
    *(v9 + 16) = result;
    *(v9 + 24) = v5;
    *(v9 + 32) = v6;
    *(v9 + 40) = v7;
    *(v9 + 48) = v10;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    *(v9 + 72) = 1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t closure #8 in closure #1 in variable initialization expression of static __MaterialResource.mapping@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = a2[2];
  v8 = a2[3];
  a3[3] = &type metadata for AnyMaterial;
  a3[4] = &protocol witness table for AnyMaterial;
  v9 = swift_allocObject();
  *a3 = v9;

  v10 = v8;

  result = _s17RealityFoundation16LoadableResourcePAAE8fromCore8assetRefxSgs13OpaquePointerV_tFZ0A3Kit010__MaterialD0C_Tt1g5(a1);
  if (result)
  {
    *(v9 + 16) = result;
    *(v9 + 24) = v5;
    *(v9 + 32) = v6;
    *(v9 + 40) = v7;
    *(v9 + 48) = v10;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t __MaterialResource.LoadError.errorDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  if (*(v0 + 32) <= 1u)
  {
    if (*(v0 + 32))
    {
      v6 = v0[2];
      v5 = v0[3];
      _StringGuts.grow(_:)(32);

      v8 = 0xD000000000000019;
      MEMORY[0x1C68F3410](v2, v1);
      MEMORY[0x1C68F3410](2112034, 0xE300000000000000);
      v3 = v6;
      v4 = v5;
    }

    else
    {
      _StringGuts.grow(_:)(48);

      v8 = 0xD000000000000023;
      MEMORY[0x1C68F3410](v2, v1);
      v3 = 0x6E7562206E692022;
      v4 = 0xEB00000000656C64;
    }

    goto LABEL_7;
  }

  if (*(v0 + 32) == 2)
  {
    _StringGuts.grow(_:)(38);

    v8 = 0xD000000000000012;
    MEMORY[0x1C68F3410](v2, v1);
    v4 = 0x80000001C18E3540;
    v3 = 0xD000000000000012;
LABEL_7:
    MEMORY[0x1C68F3410](v3, v4);
    return v8;
  }

  return 0xD000000000000024;
}

unint64_t protocol witness for LocalizedError.errorDescription.getter in conformance __MaterialResource.LoadError()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return __MaterialResource.LoadError.errorDescription.getter();
}

uint64_t static __MaterialResource.createMaterial(assetPath:in:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  return static __MaterialResource.createMaterial(assetPath:in:)(a1, a2, a3, a4);
}

{
  result = specialized static __MaterialResource.createAssetRef(named:in:)(a1, a2, a3);
  if (!v4)
  {
    v9 = result;
    REAssetHandleLoadNow();
    if (REAssetHandleLoadFailed())
    {

      FailedMessage = REAssetHandleCopyLoadFailedMessage();
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      lazy protocol witness table accessor for type __MaterialResource.LoadError and conformance __MaterialResource.LoadError();
      swift_allocError();
      *v14 = a1;
      *(v14 + 8) = a2;
      *(v14 + 16) = v11;
      *(v14 + 24) = v13;
      *(v14 + 32) = 1;
      swift_willThrow();
      return RERelease();
    }

    else
    {
      v15 = REMaterialParameterBlockValueCreate();
      Type = REMaterialAssetGetType();
      if (one-time initialization token for mapping != -1)
      {
        v28 = Type;
        swift_once();
        Type = v28;
      }

      v17 = static __MaterialResource.mapping + 32;
      v18 = *(static __MaterialResource.mapping + 2) + 1;
      while (--v18)
      {
        v19 = v17 + 24;
        v20 = *v17;
        v17 += 24;
        if (v20 == Type)
        {
          v21 = *(v19 - 2);
          v22 = *(v19 - 1);
          v34 = MEMORY[0x1E69E7CC0];
          v35 = 0;
          v36 = 0;
          v37 = v15;
          v30 = xmmword_1C18A9590;
          v31 = 0;
          v32 = 0;
          v33 = xmmword_1C18A95A0;
          v29 = v9;

          v21(&v29, &v34, &v30);

          return RERelease();
        }
      }

      a4[3] = &type metadata for AnyMaterial;
      a4[4] = &protocol witness table for AnyMaterial;
      v23 = swift_allocObject();
      *a4 = v23;
      v24 = MEMORY[0x1E69E7CC0];

      v25 = v15;
      v26 = _s17RealityFoundation16LoadableResourcePAAE8fromCore8assetRefxSgs13OpaquePointerV_tFZ0A3Kit010__MaterialD0C_Tt1g5(v9);
      if (v26)
      {
        v27 = v26;

        *(v23 + 16) = v27;
        *(v23 + 24) = v24;
        *(v23 + 32) = 0;
        *(v23 + 40) = 0;
        *(v23 + 48) = v25;
        return RERelease();
      }

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t static __MaterialResource.createMaterial(_:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  v28 = *a1;
  v29 = v3;
  v4 = a1[3];
  v30 = a1[2];
  v31 = v4;
  v5 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v5 + 120, &v24);
  v6 = specialized static __MaterialResource.buildCoreAsset(_:assetService:)(&v28, &v24);
  __swift_destroy_boxed_opaque_existential_1(&v24);
  REAssetHandleLoadNow();
  if (REAssetHandleLoadFailed())
  {
    lazy protocol witness table accessor for type __MaterialResource.LoadError and conformance __MaterialResource.LoadError();
    swift_allocError();
    *v7 = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 3;
    swift_willThrow();
    return RERelease();
  }

  v8 = REMaterialParameterBlockValueCreate();
  Type = REMaterialAssetGetType();
  if (one-time initialization token for mapping != -1)
  {
    v22 = Type;
    swift_once();
    Type = v22;
  }

  v10 = static __MaterialResource.mapping + 32;
  v11 = *(static __MaterialResource.mapping + 2) + 1;
  while (--v11)
  {
    v12 = v10 + 24;
    v13 = *v10;
    v10 += 24;
    if (v13 == Type)
    {
      v14 = *(v12 - 2);
      v15 = *(v12 - 1);
      v24 = MEMORY[0x1E69E7CC0];
      v25 = 0;
      v26 = 0;
      v27 = v8;
      v28 = xmmword_1C18A9590;
      v29 = 0uLL;
      v30 = xmmword_1C18A95A0;
      v23 = v6;

      v14(&v23, &v24, &v28);

      return RERelease();
    }
  }

  a2[3] = &type metadata for AnyMaterial;
  a2[4] = &protocol witness table for AnyMaterial;
  v16 = swift_allocObject();
  *a2 = v16;
  v17 = MEMORY[0x1E69E7CC0];

  v18 = v8;
  v19 = _s17RealityFoundation16LoadableResourcePAAE8fromCore8assetRefxSgs13OpaquePointerV_tFZ0A3Kit010__MaterialD0C_Tt1g5(v6);
  if (v19)
  {
    v20 = v19;

    *(v16 + 16) = v20;
    *(v16 + 24) = v17;
    *(v16 + 32) = 0;
    *(v16 + 40) = 0;
    *(v16 + 48) = v18;
    return RERelease();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t static __MaterialResource.loadAsync(named:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = a3;

  v9 = specialized static __ServiceLocator.shared.getter();

  v10 = static __MaterialResource.loadAsync(_:services:)(partial apply for closure #1 in static __MaterialResource.loadAsync(named:in:), v7, v9);

  return v10;
}

uint64_t static __MaterialResource.loadAsync(_:services:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  outlined init with copy of __REAssetService(a3 + 120, v20);
  outlined init with copy of __REAssetService(a3 + 120, v17);
  v8 = v18;
  v9 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  LOBYTE(v8) = (*(v9 + 56))(v8, v9);
  v10 = v21;
  v11 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  (*(v11 + 32))(v10, v11);
  AssetRequest = REAssetManagerCreateAssetRequest();
  type metadata accessor for __AssetLoadRequest();
  v13 = swift_allocObject();
  *(v13 + 16) = AssetRequest;
  if (v8)
  {
    REAssetLoadRequestSetLoadAndWaitForResourceSharingClients();
  }

  v14 = swift_allocObject();
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v17);
  *(v14 + 16) = v13;
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = v14;
  v15[5] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA8Material_pGMd, &_s10RealityKit11LoadRequestCyAA8Material_pGMR);
  swift_allocObject();

  return specialized LoadRequest.init(_:dependencies:)(partial apply for closure #1 in static __MaterialResource.loadAsync(_:services:), v15, 0);
}

uint64_t closure #1 in static __MaterialResource.loadAsync(_:services:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a3();
  type metadata accessor for __REAsset();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  swift_beginAccess();
  v12 = *(a5 + 16);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a6;
  v13[5] = v11;
  v13[6] = a5;
  aBlock[4] = partial apply for closure #1 in closure #1 in static __MaterialResource.loadAsync(_:services:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_212;
  v14 = _Block_copy(aBlock);
  v15 = _Block_copy(v14);
  v16 = *(v12 + 16);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  v22[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
  v22[5] = v17;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v22[3] = &block_descriptor_219;
  v18 = _Block_copy(v22);
  swift_retain_n();

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v18);

  _Block_release(v14);

  swift_beginAccess();
  v19 = *(v11 + 16);
  v20 = *(*(a5 + 16) + 16);

  REAssetLoadRequestAddAsset();
}

void closure #1 in closure #1 in static __MaterialResource.loadAsync(_:services:)(char a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v8 = *(a5 + 16);
    v9 = REMaterialParameterBlockValueCreate();
    Type = REMaterialAssetGetType();
    if (one-time initialization token for mapping != -1)
    {
      v34 = Type;
      swift_once();
      Type = v34;
    }

    v11 = static __MaterialResource.mapping + 32;
    v12 = *(static __MaterialResource.mapping + 2) + 1;
    while (--v12)
    {
      v13 = v11 + 24;
      v14 = *v11;
      v11 += 24;
      if (v14 == Type)
      {
        v16 = *(v13 - 2);
        v15 = *(v13 - 1);
        v35 = v8;
        v36 = MEMORY[0x1E69E7CC0];
        v37 = 0;
        v38 = 0;
        v39 = v9;
        aBlock = xmmword_1C18A9590;
        v45 = 0;
        v46 = 0;
        v47 = xmmword_1C18A95A0;

        v16(v40, &v35, &v36, &aBlock);

LABEL_11:
        LOBYTE(v43) = 0;
        a2(v40);
        p_aBlock = v40;
        goto LABEL_12;
      }
    }

    v41 = &type metadata for AnyMaterial;
    v42 = &protocol witness table for AnyMaterial;
    v23 = swift_allocObject();
    v40[0] = v23;
    v24 = MEMORY[0x1E69E7CC0];

    v25 = v9;
    v26 = _s17RealityFoundation16LoadableResourcePAAE8fromCore8assetRefxSgs13OpaquePointerV_tFZ0A3Kit010__MaterialD0C_Tt1g5(v8);
    if (v26)
    {
      v27 = v26;

      *(v23 + 16) = v27;
      *(v23 + 24) = v24;
      *(v23 + 32) = 0;
      *(v23 + 40) = 0;
      *(v23 + 48) = v25;
      goto LABEL_11;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v17 = *(a5 + 16);
    v18 = REAssetHandleCopyAssetIdentifierString();
    v19 = String.init(_:)(v18);
    lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
    v20 = swift_allocError();
    *v21 = v19;
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    *&aBlock = v20;
    BYTE8(v47) = 1;
    a2(&aBlock);
    p_aBlock = &aBlock;
LABEL_12:
    outlined destroy of BodyTrackingComponent?(p_aBlock, &_ss6ResultOy10RealityKit8Material_ps5Error_pGMd, &_ss6ResultOy10RealityKit8Material_ps5Error_pGMR);
    swift_beginAccess();
    v28 = *(a6 + 16);
    *&v47 = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
    *(&v47 + 1) = 0;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v45 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v46 = &block_descriptor_222;
    v29 = _Block_copy(&aBlock);
    v30 = _Block_copy(v29);
    v31 = *(v28 + 16);
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    v42 = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
    v43 = v32;
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 1107296256;
    v40[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v41 = &block_descriptor_229;
    v33 = _Block_copy(v40);

    REAssetLoadRequestSetCompletionHandler();
    _Block_release(v33);

    _Block_release(v29);
  }
}

uint64_t __MaterialResource.BuildParameters.Value.asString.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      MEMORY[0x1C68F3410](91, 0xE100000000000000);
      Float.write<A>(to:)();
      MEMORY[0x1C68F3410](8236, 0xE200000000000000);
    }

    else
    {
      v4 = *v0;
      v5 = v0[1];
      if (v2 == 4)
      {
        MEMORY[0x1C68F3410](91, 0xE100000000000000);
      }

      else
      {
        _StringGuts.grow(_:)(16);
        MEMORY[0x1C68F3410](91, 0xE100000000000000);
        Float.write<A>(to:)();
        MEMORY[0x1C68F3410](8236, 0xE200000000000000);
      }

      Float.write<A>(to:)();
      MEMORY[0x1C68F3410](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x1C68F3410](8236, 0xE200000000000000);
    }

    Float.write<A>(to:)();
    MEMORY[0x1C68F3410](93, 0xE100000000000000);
  }

  else if (*(v0 + 16))
  {
    if (v2 == 1)
    {
      v8 = *v0;
      return dispatch thunk of CustomStringConvertible.description.getter();
    }

    Float.write<A>(to:)();
  }

  else
  {
    if (v1)
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if (v1)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    MEMORY[0x1C68F3410](v6, v7);
  }

  return 0;
}

void __MaterialResource.BuildParameters.Value.hash(into:)()
{
  v1 = v0->n128_u64[0];
  v2 = v0[1].n128_u8[0];
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      MEMORY[0x1C68F4C10](3);
      v3 = *&v1;
      if (*&v1 == 0.0)
      {
        v3 = 0.0;
      }

      Hasher._combine(_:)(LODWORD(v3));
      v4 = *(&v1 + 1);
      if (*(&v1 + 1) == 0.0)
      {
        v4 = 0.0;
      }

      Hasher._combine(_:)(LODWORD(v4));
    }

    else
    {
      v7 = *v0;
      if (v2 == 4)
      {
        MEMORY[0x1C68F4C10](4);
        specialized SIMD.hash(into:)(v7);
      }

      else
      {
        MEMORY[0x1C68F4C10](5);
        specialized SIMD.hash(into:)(v7);
      }
    }
  }

  else if (v0[1].n128_u8[0])
  {
    if (v2 == 1)
    {
      MEMORY[0x1C68F4C10](1);
      MEMORY[0x1C68F4C10](v1);
    }

    else
    {
      MEMORY[0x1C68F4C10](2);
      if ((v1 & 0x7FFFFF) == 0 && (v1 & 0x7F800000) == 0)
      {
        v6 = 0;
      }

      else
      {
        v6 = v1;
      }

      Hasher._combine(_:)(v6);
    }
  }

  else
  {
    MEMORY[0x1C68F4C10](0);
    Hasher._combine(_:)(v1 & 1);
  }
}

Swift::Int __MaterialResource.BuildParameters.Value.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  __MaterialResource.BuildParameters.Value.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __MaterialResource.BuildParameters.Value()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  __MaterialResource.BuildParameters.Value.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __MaterialResource.BuildParameters.Value()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  __MaterialResource.BuildParameters.Value.hash(into:)();
  return Hasher._finalize()();
}

uint64_t __MaterialResource.BuildParameters.materialDefinition.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t __MaterialResource.BuildParameters.functionConstants.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t __MaterialResource.BuildParameters.cullMode.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t __MaterialResource.BuildParameters.cullMode.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t __MaterialResource.BuildParameters.materialParameters.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t __MaterialResource.BuildParameters.materialTextureParameterBindings.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t __MaterialResource.BuildParameters.materialBufferParameterBindings.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t __MaterialResource.BuildParameters.init(materialDefinition:functionConstants:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  *(a3 + 25) = 33686018;
  *(a3 + 29) = 514;
  *a3 = a1;
  *(a3 + 8) = a2;
  v4 = MEMORY[0x1E69E7CC0];
  *(a3 + 56) = MEMORY[0x1E69E7CC0];

  *(a3 + 32) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17RealityFoundation18MaterialParametersV5ValueOTt0g5Tf4g_n(v4);
  *(a3 + 40) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v4);
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v4);

  *(a3 + 48) = v5;
  return result;
}

uint64_t static __MaterialResource.load(_:services:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[1];
  v29 = *a1;
  v30 = v5;
  v6 = a1[3];
  v31 = a1[2];
  v32 = v6;
  swift_beginAccess();
  outlined init with copy of __REAssetService(a2 + 120, &v25);
  v7 = specialized static __MaterialResource.buildCoreAsset(_:assetService:)(&v29, &v25);
  __swift_destroy_boxed_opaque_existential_1(&v25);
  REAssetHandleLoadNow();
  if (REAssetHandleLoadFailed())
  {
    lazy protocol witness table accessor for type __MaterialResource.LoadError and conformance __MaterialResource.LoadError();
    swift_allocError();
    *v8 = 0u;
    *(v8 + 16) = 0u;
    *(v8 + 32) = 3;
    swift_willThrow();
    return RERelease();
  }

  v9 = REMaterialParameterBlockValueCreate();
  Type = REMaterialAssetGetType();
  if (one-time initialization token for mapping != -1)
  {
    v23 = Type;
    swift_once();
    Type = v23;
  }

  v11 = static __MaterialResource.mapping + 32;
  v12 = *(static __MaterialResource.mapping + 2) + 1;
  while (--v12)
  {
    v13 = v11 + 24;
    v14 = *v11;
    v11 += 24;
    if (v14 == Type)
    {
      v15 = *(v13 - 2);
      v16 = *(v13 - 1);
      v25 = MEMORY[0x1E69E7CC0];
      v26 = 0;
      v27 = 0;
      v28 = v9;
      v29 = xmmword_1C18A9590;
      v30 = 0uLL;
      v31 = xmmword_1C18A95A0;
      v24 = v7;

      v15(&v24, &v25, &v29);

      return RERelease();
    }
  }

  a3[3] = &type metadata for AnyMaterial;
  a3[4] = &protocol witness table for AnyMaterial;
  v17 = swift_allocObject();
  *a3 = v17;
  v18 = MEMORY[0x1E69E7CC0];

  v19 = v9;
  v20 = _s17RealityFoundation16LoadableResourcePAAE8fromCore8assetRefxSgs13OpaquePointerV_tFZ0A3Kit010__MaterialD0C_Tt1g5(v7);
  if (v20)
  {
    v21 = v20;

    *(v17 + 16) = v21;
    *(v17 + 24) = v18;
    *(v17 + 32) = 0;
    *(v17 + 40) = 0;
    *(v17 + 48) = v19;
    return RERelease();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t static __MaterialResource.loadAsync(_:services:)(_OWORD *a1, uint64_t a2)
{
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  v8 = a1[1];
  *(v7 + 24) = *a1;
  *(v7 + 40) = v8;
  v9 = a1[3];
  *(v7 + 56) = a1[2];
  *(v7 + 72) = v9;
  *(v7 + 88) = a2;
  outlined init with copy of __MaterialResource.BuildParameters(v13, &v12);

  v10 = static __MaterialResource.loadAsync(_:services:)(partial apply for closure #1 in static __MaterialResource.loadAsync(_:services:), v7, a2);

  return v10;
}

uint64_t closure #1 in static __MaterialResource.loadAsync(_:services:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v4 = a2[1];
  v9[0] = *a2;
  v9[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  swift_beginAccess();
  outlined init with copy of __REAssetService(a3 + 120, v8);
  v6 = specialized static __MaterialResource.buildCoreAsset(_:assetService:)(v9, v8);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t static __MaterialResource.load(named:in:services:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  v9 = a3[19];
  __swift_project_boxed_opaque_existential_1(a3 + 15, a3[18]);
  result = specialized __REAssetService.assetRef(named:in:)(a1, a2);
  if (!v4)
  {
    v11 = *(result + 16);
    RERetain();

    REAssetHandleLoadNow();
    if (REAssetHandleLoadFailed())
    {

      FailedMessage = REAssetHandleCopyLoadFailedMessage();
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      lazy protocol witness table accessor for type __MaterialResource.LoadError and conformance __MaterialResource.LoadError();
      swift_allocError();
      *v16 = a1;
      *(v16 + 8) = a2;
      *(v16 + 16) = v13;
      *(v16 + 24) = v15;
      *(v16 + 32) = 1;
      swift_willThrow();
      return RERelease();
    }

    else
    {
      v17 = REMaterialParameterBlockValueCreate();
      Type = REMaterialAssetGetType();
      if (one-time initialization token for mapping != -1)
      {
        v30 = Type;
        swift_once();
        Type = v30;
      }

      v19 = static __MaterialResource.mapping + 32;
      v20 = *(static __MaterialResource.mapping + 2) + 1;
      while (--v20)
      {
        v21 = v19 + 24;
        v22 = *v19;
        v19 += 24;
        if (v22 == Type)
        {
          v23 = *(v21 - 2);
          v24 = *(v21 - 1);
          v36 = MEMORY[0x1E69E7CC0];
          v37 = 0;
          v38 = 0;
          v39 = v17;
          v32 = xmmword_1C18A9590;
          v33 = 0;
          v34 = 0;
          v35 = xmmword_1C18A95A0;
          v31 = v11;

          v23(&v31, &v36, &v32);

          return RERelease();
        }
      }

      a4[3] = &type metadata for AnyMaterial;
      a4[4] = &protocol witness table for AnyMaterial;
      v25 = swift_allocObject();
      *a4 = v25;
      v26 = MEMORY[0x1E69E7CC0];

      v27 = v17;
      v28 = _s17RealityFoundation16LoadableResourcePAAE8fromCore8assetRefxSgs13OpaquePointerV_tFZ0A3Kit010__MaterialD0C_Tt1g5(v11);
      if (v28)
      {
        v29 = v28;

        *(v25 + 16) = v29;
        *(v25 + 24) = v26;
        *(v25 + 32) = 0;
        *(v25 + 40) = 0;
        *(v25 + 48) = v27;
        return RERelease();
      }

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t static __MaterialResource.loadAsync(named:in:services:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  (*(v10 + 16))(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v9, v12);
  v13 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v4;
  *(v14 + 3) = a1;
  *(v14 + 4) = a2;
  (*(v10 + 32))(&v14[v13], &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  *&v14[(v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8] = a4;

  v15 = static __MaterialResource.loadAsync(_:services:)(partial apply for closure #1 in static __MaterialResource.loadAsync(named:in:services:), v14, a4);

  return v15;
}

uint64_t closure #1 in static __MaterialResource.loadAsync(named:in:services:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  swift_beginAccess();
  v10 = a5[19];
  __swift_project_boxed_opaque_existential_1(a5 + 15, a5[18]);
  v11 = specialized __REAssetService.assetRef(named:in:)(a2, a3);
  if (!v5)
  {
    v6 = *(v11 + 16);
    RERetain();
  }

  return v6;
}

uint64_t __MaterialResource.__allocating_init(fromCore:)(uint64_t a1)
{
  v2 = swift_allocObject();
  RERetain();
  *(v2 + 16) = a1;
  REAssetHandleLoadNow();
  REAssetSetSwiftObject();
  return v2;
}

uint64_t __MaterialResource.deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  REAssetSetSwiftObject();
  v2 = *(v0 + 16);
  RERelease();
  return v0;
}

uint64_t __MaterialResource.__deallocating_deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  REAssetSetSwiftObject();
  v2 = *(v0 + 16);
  RERelease();
  return swift_deallocClassInstance();
}

id __MaterialResource.subscript.getter@<X0>(uint64_t a1@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v3 = *(v1 + 16);
  String.utf8CString.getter();
  LODWORD(v3) = REMaterialAssetGetParameterType();

  switch(v3)
  {
    case 1:
      v12 = *(v1 + 16);
      String.utf8CString.getter();
      TextureAsset = REMaterialAssetGetTextureAsset();

      if (!TextureAsset)
      {
        goto LABEL_2;
      }

      type metadata accessor for TextureResource();
      v14 = swift_allocObject();
      *(v14 + 16) = TextureAsset;
      *(v14 + 24) = 0;
      RERetain();
      REAssetSetSwiftObject();
      v15 = *(v1 + 16);
      String.utf8CString.getter();
      SamplerNameBoundToTexture = REMaterialAssetGetSamplerNameBoundToTexture();

      if (!SamplerNameBoundToTexture || (v17 = *(v1 + 16), (result = REMaterialAssetCopySamplerDescriptor()) == 0))
      {
        result = REMaterialCreateDefaultSamplerDescriptor();
      }

      *a1 = result;
      *(a1 + 8) = v14;
      *(a1 + 16) = 0;
      *(a1 + 24) = 84148994;
      v5 = 1;
      break;
    case 2:
      v19 = *(v1 + 16);
      String.utf8CString.getter();
      REMaterialAssetGetFloat();

      *a1 = 0;
      v5 = 2;
      break;
    case 3:
      v9 = *(v1 + 16);
      String.utf8CString.getter();
      REMaterialAssetGetFloat2F();

      *a1 = 0;
      v5 = 3;
      break;
    case 4:
      v23 = *(v1 + 16);
      String.utf8CString.getter();
      REMaterialAssetGetFloat3F();

      *a1 = 0uLL;
      v5 = 4;
      break;
    case 5:
      v25 = *(v1 + 16);
      String.utf8CString.getter();
      REMaterialAssetGetFloat4F();

      *a1 = 0uLL;
      v5 = 5;
      break;
    case 6:
      v20 = *(v1 + 16);
      String.utf8CString.getter();
      REMaterialAssetGetFloat2x2F();

      *a1 = 0;
      *(a1 + 8) = 0;
      v5 = 7;
      break;
    case 7:
      v28 = *(v1 + 16);
      String.utf8CString.getter();
      REMaterialAssetGetFloat3x3F();

      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      v5 = 8;
      break;
    case 8:
      v11 = *(v1 + 16);
      String.utf8CString.getter();
      REMaterialAssetGetFloat4x4F();

      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      v5 = 9;
      break;
    case 9:
      v27 = *(v1 + 16);
      String.utf8CString.getter();
      REMaterialAssetGetBool();

      *a1 = 0;
      v5 = 10;
      break;
    case 11:
      v8 = *(v1 + 16);
      String.utf8CString.getter();
      REMaterialAssetGetInt();

      *a1 = 0;
      v5 = 11;
      break;
    case 12:
      v10 = *(v1 + 16);
      String.utf8CString.getter();
      REMaterialAssetGetUInt();

      *a1 = 0;
      v5 = 15;
      break;
    case 13:
      v24 = *(v1 + 16);
      String.utf8CString.getter();
      REMaterialAssetGetInt2();

      *a1 = 0;
      v5 = 12;
      break;
    case 14:
      v7 = *(v1 + 16);
      String.utf8CString.getter();
      REMaterialAssetGetUInt2();

      *a1 = 0;
      v5 = 16;
      break;
    case 15:
      v18 = *(v1 + 16);
      String.utf8CString.getter();
      REMaterialAssetGetInt3();

      *a1 = 0uLL;
      v5 = 13;
      break;
    case 16:
      v6 = *(v1 + 16);
      String.utf8CString.getter();
      REMaterialAssetGetUInt3();

      *a1 = 0uLL;
      v5 = 17;
      break;
    case 17:
      v21 = *(v1 + 16);
      String.utf8CString.getter();
      REMaterialAssetGetInt4();

      *a1 = 0uLL;
      v5 = 14;
      break;
    case 18:
      v26 = *(v1 + 16);
      String.utf8CString.getter();
      REMaterialAssetGetUInt4();

      *a1 = 0uLL;
      v5 = 18;
      break;
    case 19:
      v29 = *(v1 + 16);
      String.utf8CString.getter();
      REMaterialAssetGetColor3F();

      goto LABEL_26;
    case 20:
      v22 = *(v1 + 16);
      String.utf8CString.getter();
      REMaterialAssetGetColor4F();

LABEL_26:
      result = RECreateCGColorFromColorGamut();
      *a1 = result;
      v5 = 6;
      break;
    default:
LABEL_2:
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v5 = -1;
      break;
  }

  *(a1 + 64) = v5;
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t protocol witness for LoadableResource.init(fromCore:) in conformance __MaterialResource@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 136))();
  *a1 = result;
  return result;
}

uint64_t __MaterialResource.addToLoadRequest(_:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(a1 + 16);
  return REAssetLoadRequestAddAsset();
}

uint64_t protocol witness for RequestLoadable.addToLoadRequest(_:) in conformance __MaterialResource(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(a1 + 16);
  return REAssetLoadRequestAddAsset();
}

uint64_t static __MaterialResource.load(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x1EEE6DFA0](static __MaterialResource.load(_:), 0, 0);
}

uint64_t static __MaterialResource.load(_:)()
{
  v10 = v0;
  v1 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 120, (v0 + 2));
  v9[0] = 0;
  v2 = specialized __AssetLoadRequest.__allocating_init(assetService:resourceSharingScheduling:)(v0 + 2, v9);
  v0[12] = v2;
  v3 = v2;
  v4 = v0[11];
  v5 = swift_task_alloc();
  v0[13] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *(MEMORY[0x1E69E88D0] + 4);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = static __MaterialResource.load(_:);

  return MEMORY[0x1EEE6DDE0]();
}

{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](static __MaterialResource.load(_:), 0, 0);
}

{
  v33 = v0;
  v1 = v0[11];
  v2 = REMaterialParameterBlockValueCreate();
  Type = REMaterialAssetGetType();
  if (one-time initialization token for mapping != -1)
  {
    v23 = Type;
    swift_once();
    Type = v23;
  }

  v4 = static __MaterialResource.mapping + 32;
  v5 = *(static __MaterialResource.mapping + 2) + 1;
  while (--v5)
  {
    v6 = v4 + 24;
    v7 = *v4;
    v4 += 24;
    if (v7 == Type)
    {
      v8 = v0[11];
      v9 = v0[12];
      v10 = v0[10];
      v12 = *(v6 - 2);
      v11 = *(v6 - 1);
      v24 = MEMORY[0x1E69E7CC0];
      v25 = 0;
      v26 = 0;
      v27 = v2;
      v28 = xmmword_1C18A9590;
      v29 = 0;
      v30 = 0;
      v31 = xmmword_1C18A95A0;
      v32 = v8;

      v12(&v32, &v24, &v28);

      goto LABEL_9;
    }
  }

  v13 = v0[10];
  v14 = v0[11];
  v13[3] = &type metadata for AnyMaterial;
  v13[4] = &protocol witness table for AnyMaterial;
  v15 = swift_allocObject();
  *v13 = v15;
  v16 = MEMORY[0x1E69E7CC0];

  v17 = v2;
  v18 = _s17RealityFoundation16LoadableResourcePAAE8fromCore8assetRefxSgs13OpaquePointerV_tFZ0A3Kit010__MaterialD0C_Tt1g5(v14);
  if (!v18)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v19 = v18;
  v20 = v0[12];

  *(v15 + 16) = v19;
  *(v15 + 24) = v16;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  *(v15 + 48) = v17;
LABEL_9:
  v21 = v0[1];

  return v21();
}

uint64_t closure #1 in static __MaterialResource.load(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v18 - v8;
  (*(v5 + 16))(v18 - v8, a1, v4, v7);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v9, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in static __MaterialResource.load(_:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_11;
  v12 = _Block_copy(aBlock);
  v13 = _Block_copy(v12);
  v14 = *(a2 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v18[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ();
  v18[5] = v15;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v18[3] = &block_descriptor_192;
  v16 = _Block_copy(v18);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v16);
  _Block_release(v12);

  return REAssetLoadRequestAddAsset();
}

uint64_t AnyMaterial.__parameterBlock.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;

  v6 = v5;
}

uint64_t AnyMaterial.__parameterBlock.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(v1 + 8);
  v7 = *(v1 + 24);

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  return result;
}

uint64_t _s17RealityFoundation16LoadableResourcePAAE8fromCore8assetRefxSgs13OpaquePointerV_tFZ0A3Kit010__MaterialD0C_Tt1g5(uint64_t a1)
{
  v2 = REAssetGetSwiftObject();
  type metadata accessor for __MaterialResource();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    v4 = swift_allocObject();
    RERetain();
    *(v4 + 16) = a1;
    REAssetHandleLoadNow();
    REAssetSetSwiftObject();
    return v4;
  }

  return result;
}

uint64_t AnyMaterial.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = REMaterialParameterBlockValueCreate();
  result = _s17RealityFoundation16LoadableResourcePAAE8fromCore8assetRefxSgs13OpaquePointerV_tFZ0A3Kit010__MaterialD0C_Tt1g5(v3);
  if (result)
  {
    v6 = MEMORY[0x1E69E7CC0];
    *a2 = result;
    *(a2 + 8) = v6;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = v4;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Material.__parameterBlock.getter in conformance AnyMaterial@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;

  v6 = v5;
}

uint64_t protocol witness for Material.__parameterBlock.setter in conformance AnyMaterial(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(v1 + 8);
  v7 = *(v1 + 24);

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  return result;
}

uint64_t (*protocol witness for Material.__faceCullMode.modify in conformance AnyMaterial(uint64_t a1))(void, void)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  return destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
}

uint64_t specialized Material.getColor(name:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  v8 = *(v2 + 64);
  v7 = *(v2 + 72);

  v9 = v7;

  specialized String.withCString<A>(_:)(a1, a2, v9, v12);
  result = *&v12[0];
  if (v13 > 5u)
  {
    if (v13 == 6)
    {
      return result;
    }

    if (v13 == 255)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (v13 == 4)
  {
    v11.n128_u64[1] = __PAIR64__(1.0, DWORD2(v12[0]));
    v11.n128_u64[0] = *&v12[0];
    return specialized SIMD4<>.cgColor.getter(v11);
  }

  if (v13 != 5)
  {
LABEL_7:
    outlined destroy of BodyTrackingComponent?(v12, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
    return 0;
  }

  v11 = v12[0];
  return specialized SIMD4<>.cgColor.getter(v11);
}

uint64_t specialized Material.getTexture(_:)(char a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = PbrCommonKeys.Textures.rawValue.getter(a1);
  v8 = v7;

  v9 = v5;

  specialized String.withCString<A>(_:)(v6, v8, v9, v12);

  result = 0;
  if (v13 != 255)
  {
    if (v13)
    {
      if (v13 == 1)
      {
        v11 = v12[1];
      }

      else
      {
        v11 = 0;
      }

      outlined destroy of BodyTrackingComponent?(v12, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
      return v11;
    }

    else
    {
      return v12[0];
    }
  }

  return result;
}

void specialized Material.setScalarParameter(_:value:)(char a1, uint64_t a2)
{
  PbrCommonKeys.Constants.rawValue.getter(0x50204u >> (8 * a1));
  if (a2 < 0)
  {
    String.utf8CString.getter();

    v15 = *(v2 + 72);
    isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
    v17 = *(v2 + 72);
    if ((isUniquelyReferenced_nonNull & 1) == 0)
    {
      v18 = *(v2 + 72);
      v19 = REMaterialParameterBlockValueCopy();

      *(v2 + 72) = v19;
    }

    REMaterialParameterBlockValueSetFloat();

    v20 = 10 - a1;
    v21 = PbrCommonKeys.Textures.rawValue.getter(10 - a1);
    v23 = v22;

    specialized Material.makeMaterialParametersTextureFromTextureResource(_:textureKey:)(a2 & 0x7FFFFFFFFFFFFFFFLL, v21, v23, &v33);

    v24 = v34;
    v32 = v33;
    v25 = v35;
    v26.i32[0] = v36;
    v31 = vmovl_u8(v26).u64[0];
    PbrCommonKeys.Textures.rawValue.getter(v20);
    v27 = String.utf8CString.getter();

    v28 = *(v2 + 72);
    if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      v29 = *(v2 + 72);
      v30 = REMaterialParameterBlockValueCopy();

      *(v2 + 72) = v30;
    }

    v33 = v32;
    v34 = v24;
    v35 = v25;
    v36 = vuzp1_s8(v31, v31).u32[0];
    __RKMaterialParameterBlock.setTextureParameter(texture:key:)(&v33, (v27 + 32));
    outlined consume of MaterialScalarParameter(a2);
  }

  else
  {
    String.utf8CString.getter();

    v5 = *(v2 + 72);
    v6 = swift_isUniquelyReferenced_nonNull();
    v7 = *(v2 + 72);
    if ((v6 & 1) == 0)
    {
      v8 = *(v2 + 72);
      v9 = REMaterialParameterBlockValueCopy();

      *(v2 + 72) = v9;
    }

    REMaterialParameterBlockValueSetFloat();

    PbrCommonKeys.Textures.rawValue.getter(10 - a1);
    String.utf8CString.getter();

    v10 = *(v2 + 72);
    v11 = swift_isUniquelyReferenced_nonNull();
    v12 = *(v2 + 72);
    if ((v11 & 1) == 0)
    {
      v13 = *(v2 + 72);
      v14 = REMaterialParameterBlockValueCopy();

      *(v2 + 72) = v14;
    }

    REMaterialParameterBlockValueClearParameter();
  }
}

void specialized Material.setColorParameter(_:value:)(char a1, void *a2, char a3)
{
  v4 = v3;
  PbrCommonKeys.Constants.rawValue.getter(0x50204u >> (8 * a1));
  v8 = 10 - a1;
  if (a3)
  {
    GenericRGB = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
    v31 = GenericRGB;
    v35 = 6;
    v10 = String.utf8CString.getter();

    __RKMaterialParameterBlock.unsafeSet(parameter:value:)((v10 + 32), &v31);

    v11 = PbrCommonKeys.Textures.rawValue.getter(v8);
    v13 = v12;

    specialized Material.makeMaterialParametersTextureFromTextureResource(_:textureKey:)(v14, v11, v13, &v31);

    v15 = v32;
    v30 = v31;
    v16 = v33;
    v17.i32[0] = v34;
    v29 = vmovl_u8(v17).u64[0];
    PbrCommonKeys.Textures.rawValue.getter(v8);
    v18 = String.utf8CString.getter();

    v19 = *(v4 + 72);
    if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      v20 = *(v4 + 72);
      v21 = REMaterialParameterBlockValueCopy();

      *(v4 + 72) = v21;
    }

    v31 = v30;
    v32 = v15;
    v33 = v16;
    v34 = vuzp1_s8(v29, v29).u32[0];
    __RKMaterialParameterBlock.setTextureParameter(texture:key:)(&v31, (v18 + 32));
    outlined consume of __MaterialColorParameter(a2, 1);
  }

  else
  {
    v31 = a2;
    v35 = 6;
    v22 = String.utf8CString.getter();
    v23 = a2;

    __RKMaterialParameterBlock.unsafeSet(parameter:value:)((v22 + 32), &v31);

    outlined consume of __MaterialColorParameter(a2, 0);
    PbrCommonKeys.Textures.rawValue.getter(v8);
    String.utf8CString.getter();

    v24 = *(v3 + 72);
    isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
    v26 = *(v3 + 72);
    if ((isUniquelyReferenced_nonNull & 1) == 0)
    {
      v27 = *(v3 + 72);
      v28 = REMaterialParameterBlockValueCopy();

      *(v3 + 72) = v28;
    }

    REMaterialParameterBlockValueClearParameter();
  }
}

void specialized Material.getLegacyBase(legacy:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v15[3] = &type metadata for SimpleMaterial;
  v15[4] = &protocol witness table for SimpleMaterial;
  v15[0] = swift_allocObject();
  outlined init with copy of SimpleMaterial(v4, v15[0] + 16);

  PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(&v16, v15, a1, a2);
  v9 = v16;
  v8 = v17;
  v10 = v18;
  outlined copy of MaterialParameters.Texture?(v17, v18);

  outlined consume of MaterialParameters.Texture?(v8, v10);
  if (v10)
  {

    outlined consume of MaterialParameters.Texture?(v8, v10);
    *a4 = v10;
    *(a4 + 8) = 1;
  }

  else
  {
    v11 = a3;
    GenericRGB = a3;
    if (!a3)
    {
      GenericRGB = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
      v11 = 0;
    }

    *a4 = GenericRGB;
    *(a4 + 8) = 0;

    v13 = v11;
  }
}

{
  v15[3] = &type metadata for UnlitMaterial;
  v15[4] = &protocol witness table for UnlitMaterial;
  v15[0] = swift_allocObject();
  outlined init with copy of UnlitMaterial(v4, v15[0] + 16);

  PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(&v16, v15, a1, a2);
  v9 = v16;
  v8 = v17;
  v10 = v18;
  outlined copy of MaterialParameters.Texture?(v17, v18);

  outlined consume of MaterialParameters.Texture?(v8, v10);
  if (v10)
  {

    outlined consume of MaterialParameters.Texture?(v8, v10);
    *a4 = v10;
    *(a4 + 8) = 1;
  }

  else
  {
    v11 = a3;
    GenericRGB = a3;
    if (!a3)
    {
      GenericRGB = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
      v11 = 0;
    }

    *a4 = GenericRGB;
    *(a4 + 8) = 0;

    v13 = v11;
  }
}

void specialized Material.setLegacyBase(legacy:value:)(uint64_t *a1, void *a2, char a3)
{
  __asm { FMOV            V0.4S, #1.0 }

  v11 = specialized SIMD4<>.cgColor.getter(_Q0);
  outlined consume of MaterialParameters.Texture?(0, 0);
  v12 = a1[3];
  if (a3)
  {
    v13 = 84148994;

    a1[3] = 0;
    v14 = REMaterialCreateDefaultSamplerDescriptor();
    outlined consume of MaterialParameters.Texture?(0, 0);
    v15 = *a1;
    v16 = a1[1];
    v17 = a1[2];
    if (!v17)
    {
LABEL_12:
      GenericRGB = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
      goto LABEL_13;
    }
  }

  else
  {
    v18 = a2;

    a1[3] = a2;
    v15 = *a1;
    v16 = a1[1];
    v17 = a1[2];
    if (!v17)
    {
      if (a2)
      {
        v24 = v18;
        v13 = 0;
        a2 = 0;
        v14 = 0;
        goto LABEL_14;
      }

      v14 = 0;
      v13 = 0;
      goto LABEL_12;
    }

    if (a2)
    {
      v19 = v17;
      v20 = v18;
      _ss5SIMD4V17RealityFoundationSBRzrlEyAByxGSo10CGColorRefacfCSf_Tt1g5Tf4g_n(v19);
      v27 = v21;

      v22 = v20;
      _ss5SIMD4V17RealityFoundationSBRzrlEyAByxGSo10CGColorRefacfCSf_Tt1g5Tf4g_n(v22);
      v26 = v23;

      v24 = specialized SIMD4<>.cgColor.getter(vmulq_f32(v27, v26));
      v13 = 0;
      a2 = 0;
      v14 = 0;
      v11 = v22;
      goto LABEL_14;
    }

    v14 = 0;
    v13 = 0;
  }

  GenericRGB = v17;
LABEL_13:
  v24 = GenericRGB;
LABEL_14:

  v28[0] = v24;
  v28[1] = v14;
  v28[2] = a2;
  v28[3] = 0;
  v29 = v13;
  specialized Material.setParameter<A>(_:alternateTintKey:)(v28, v15, v16);

  outlined consume of MaterialParameters.Texture?(v14, a2);
}

uint64_t SimpleMaterial.assetService.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of [String : String](v1, &v5, &_s10RealityKit16__REAssetService_pSgMd, _s10RealityKit16__REAssetService_pSgMR);
  if (v6)
  {
    return outlined init with take of ForceEffectBase(&v5, a1);
  }

  outlined destroy of BodyTrackingComponent?(&v5, &_s10RealityKit16__REAssetService_pSgMd, _s10RealityKit16__REAssetService_pSgMR);
  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v4 + 120, a1);
  outlined destroy of BodyTrackingComponent?(v1, &_s10RealityKit16__REAssetService_pSgMd, _s10RealityKit16__REAssetService_pSgMR);
  return outlined init with copy of __REAssetService(a1, v1);
}

uint64_t SimpleMaterial.SimpleMaterialMapping.init(_:)(uint64_t *a1)
{
  outlined init with copy of __REAssetService(a1, v1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 32))(v3, v4);
  AssetHandle = REAssetManagerCreateAssetHandle();
  if (AssetHandle && (*(v1 + 56) = AssetHandle, v6 = a1[3], v7 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v6), (*(v7 + 32))(v6, v7), (v8 = REAssetManagerCreateAssetHandle()) != 0))
  {
    *(v1 + 64) = v8;
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t SimpleMaterial.SimpleMaterialMapping.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t one-time initialization function for materialMapRegistry()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26AssetServiceScopedRegistryCy0A3Kit14SimpleMaterialV0hI7MappingCGMd, &_s17RealityFoundation26AssetServiceScopedRegistryCy0A3Kit14SimpleMaterialV0hI7MappingCGMR);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_10RealityKit14SimpleMaterialV0gH7MappingCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v0 + 24) = result;
  static SimpleMaterial.materialMapRegistry = v0;
  return result;
}

uint64_t SimpleMaterial.__parameterBlock.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;

  v6 = v5;
}

uint64_t SimpleMaterial.__parameterBlock.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(v1 + 48);
  v7 = *(v1 + 64);

  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t _s17RealityFoundation16LoadableResourcePAAE010loadEngineD09assetPathxSS_tFZ0A3Kit010__MaterialD0C_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v4 + 120, &v12);
  v5 = v14;
  v6 = v15;
  __swift_project_boxed_opaque_existential_1(&v12, v14);

  v7 = __REAssetService.asset(_:)(a1, a2, v5, v6);
  if (v7)
  {
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(&v12);
    v9 = _s17RealityFoundation16LoadableResourcePAAE8fromCore8assetRefxSgs13OpaquePointerV_tFZ0A3Kit010__MaterialD0C_Tt1g5(*(v8 + 16));
    if (v9)
    {
      v10 = v9;

      return v10;
    }

    v12 = 0;
    v13 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v12 = 0xD000000000000020;
    v13 = 0x80000001C18E3680;
    MEMORY[0x1C68F3410](a1, a2);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v12);
    v12 = 0;
    v13 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v12 = 0xD000000000000020;
    v13 = 0x80000001C18E3680;
    MEMORY[0x1C68F3410](a1, a2);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double key path getter for SimpleMaterial.color : SimpleMaterial@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9[3] = &type metadata for SimpleMaterial;
  v9[4] = &protocol witness table for SimpleMaterial;
  v9[0] = swift_allocObject();
  outlined init with copy of SimpleMaterial(a1, v9[0] + 16);
  v5 = *(a1 + 80);
  v4 = *(a1 + 88);

  PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(&v10, v9, v5, v4);
  v6 = v12;
  v7 = v13;
  *a2 = v10;
  result = *&v11;
  *(a2 + 8) = v11;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

void key path setter for SimpleMaterial.color : SimpleMaterial(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 80);
  v4 = *(a2 + 88);

  specialized Material.setParameter<A>(_:alternateTintKey:)(v5, v3, v4);

  SimpleMaterial.updateMaterialResource(_:)(0);
}

void SimpleMaterial.color.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);

  specialized Material.setParameter<A>(_:alternateTintKey:)(v5, v3, v4);

  outlined destroy of PhysicallyBasedMaterial.BaseColor(v5);
  SimpleMaterial.updateMaterialResource(_:)(0);
}

void (*SimpleMaterial.color.modify(uint64_t *a1))(unsigned int **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 160) = v1;
  v8[3] = &type metadata for SimpleMaterial;
  v8[4] = &protocol witness table for SimpleMaterial;
  v8[0] = swift_allocObject();
  outlined init with copy of SimpleMaterial(v1, v8[0] + 16);
  v5 = *(v1 + 80);
  v4[21] = v5;
  v6 = *(v1 + 88);
  v4[22] = v6;

  PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(v4 + 10, v8, v5, v6);
  return SimpleMaterial.color.modify;
}

void SimpleMaterial.color.modify(unsigned int **a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 21);
  v3 = *(*a1 + 22);
  v5 = *(*a1 + 20);
  v6 = *(*a1 + 6);
  if (a2)
  {
    *v2 = *(v2 + 5);
    *(v2 + 1) = v6;
    v2[8] = v2[28];

    outlined init with copy of PhysicallyBasedMaterial.BaseColor(v2, (v2 + 30));
    specialized Material.setParameter<A>(_:alternateTintKey:)(v2, v4, v3);

    outlined destroy of PhysicallyBasedMaterial.BaseColor(v2);
    SimpleMaterial.updateMaterialResource(_:)(0);
    v7 = *(v2 + 11);
    v8 = *(v2 + 12);
    v9 = *(v2 + 13);
    v10 = v2[28];

    outlined consume of MaterialParameters.Texture?(v7, v8);
  }

  else
  {
    *(v2 + 10) = *(v2 + 5);
    *(v2 + 14) = v6;
    v2[18] = v2[28];

    specialized Material.setParameter<A>(_:alternateTintKey:)((v2 + 10), v4, v3);

    outlined destroy of PhysicallyBasedMaterial.BaseColor((v2 + 10));
    SimpleMaterial.updateMaterialResource(_:)(0);
  }

  free(v2);
}

CGColorRef SimpleMaterial.__tintColor.getter()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    GenericRGB = *(v0 + 96);
  }

  else
  {
    GenericRGB = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
    v1 = 0;
  }

  v3 = v1;
  return GenericRGB;
}

id key path getter for SimpleMaterial.__tintColor : SimpleMaterial@<X0>(uint64_t a1@<X0>, CGColorRef *a2@<X8>)
{
  v3 = *(a1 + 96);
  if (v3)
  {
    GenericRGB = *(a1 + 96);
  }

  else
  {
    GenericRGB = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
    v3 = 0;
  }

  *a2 = GenericRGB;

  return v3;
}

void SimpleMaterial.__tintColor.setter(void *a1)
{
  v2 = v1;
  v4 = v1[10];
  v3 = v1[11];
  v5 = v1[13];
  if (v5)
  {
    v6 = a1;
    v7 = v5;
    swift_bridgeObjectRetain_n();
    v8 = v6;
    v9 = v7;
    v10 = v8;
    v11 = v9;
    _ss5SIMD4V17RealityFoundationSBRzrlEyAByxGSo10CGColorRefacfCSf_Tt1g5Tf4g_n(v10);
    v20 = v12;

    v13 = v11;
    _ss5SIMD4V17RealityFoundationSBRzrlEyAByxGSo10CGColorRefacfCSf_Tt1g5Tf4g_n(v13);
    v19 = v14;

    v15 = specialized SIMD4<>.cgColor.getter(vmulq_f32(v20, v19));
  }

  else
  {
    v16 = a1;
    swift_bridgeObjectRetain_n();
    v15 = v16;
    v13 = 0;
  }

  v22[0] = v15;
  v23 = 6;
  v17 = String.utf8CString.getter();
  __RKMaterialParameterBlock.unsafeSet(parameter:value:)((v17 + 32), v22);

  v18 = v1[12];

  v2[10] = v4;
  v2[11] = v3;
  v2[12] = a1;
  v2[13] = v5;
  SimpleMaterial.updateMaterialResource(_:)(0);
}

void (*SimpleMaterial.__tintColor.modify(CGColorRef *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = v1[12];
  if (v3)
  {
    GenericRGB = v1[12];
  }

  else
  {
    GenericRGB = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
    v3 = 0;
  }

  *a1 = GenericRGB;
  v5 = v3;
  return SimpleMaterial.__tintColor.modify;
}

void SimpleMaterial.__tintColor.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    v5 = v3;
    SimpleMaterial.__tintColor.setter(v5);
  }

  else
  {
    SimpleMaterial.__tintColor.setter(v3);
  }
}

uint64_t key path setter for SimpleMaterial.__baseColor : SimpleMaterial(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a2 + 88);
  v6 = *(a2 + 96);
  v7 = *(a2 + 104);
  v18 = *(a2 + 80);
  v19 = v5;
  v20 = v6;
  v21 = v7;

  v8 = v6;
  v9 = v7;
  specialized Material.setLegacyBase(legacy:value:)(&v18, v3, v4);
  v11 = v18;
  v10 = v19;
  v12 = v20;
  v13 = v21;
  v14 = *(a2 + 88);
  v15 = v21;

  v16 = v12;

  *(a2 + 80) = v11;
  *(a2 + 88) = v10;
  *(a2 + 96) = v12;
  *(a2 + 104) = v13;
  SimpleMaterial.updateMaterialResource(_:)(0);
}

uint64_t SimpleMaterial.__baseColor.setter(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  v17 = *(v1 + 80);
  v18 = v4;
  v19 = v5;
  v20 = v6;

  v7 = v5;
  v8 = v6;
  specialized Material.setLegacyBase(legacy:value:)(&v17, v2, v3);
  outlined consume of __MaterialColorParameter(v2, v3);
  v10 = v17;
  v9 = v18;
  v11 = v19;
  v12 = v20;
  v13 = *(v1 + 88);
  v14 = v20;

  v15 = v11;

  *(v1 + 80) = v10;
  *(v1 + 88) = v9;
  *(v1 + 96) = v11;
  *(v1 + 104) = v12;
  SimpleMaterial.updateMaterialResource(_:)(0);
}

void (*SimpleMaterial.__baseColor.modify(void *a1))(void ***a1, char a2)
{
  v2 = v1;
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
  v4[2] = v2;
  v6 = v2[10];
  v4[3] = v6;
  v7 = v2[11];
  v4[4] = v7;
  v8 = v2[13];
  v4[5] = v8;
  v15[3] = &type metadata for SimpleMaterial;
  v15[4] = &protocol witness table for SimpleMaterial;
  v15[0] = swift_allocObject();
  outlined init with copy of SimpleMaterial(v2, v15[0] + 16);

  PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(&v16, v15, v6, v7);
  v10 = v16;
  v9 = v17;
  v11 = v18;
  outlined copy of MaterialParameters.Texture?(v17, v18);

  outlined consume of MaterialParameters.Texture?(v9, v11);
  if (v11)
  {

    outlined consume of MaterialParameters.Texture?(v9, v11);
    *v5 = v11;
    *(v5 + 8) = 1;
  }

  else
  {
    GenericRGB = v8;
    if (!v8)
    {
      GenericRGB = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
    }

    *v5 = GenericRGB;
    *(v5 + 8) = 0;
    v13 = v8;
  }

  return SimpleMaterial.__baseColor.modify;
}

void SimpleMaterial.__baseColor.modify(void ***a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(*a1 + 8);
  v5 = (*a1)[4];
  v6 = v2[5];
  v8 = v2[2];
  v7 = v2[3];
  if (a2)
  {
    v9 = *(v8 + 12);
    v29 = v2[3];
    v30 = v5;
    v31 = v9;
    v32 = v6;
    v10 = v6;

    outlined copy of __MaterialColorParameter(v3, v4);
    v11 = v9;
    specialized Material.setLegacyBase(legacy:value:)(&v29, v3, v4);
    outlined consume of __MaterialColorParameter(v3, v4);
    v13 = v29;
    v12 = v30;
    v14 = v31;
    v15 = v32;
    v16 = *(v8 + 11);
    v17 = v32;

    v18 = v14;

    *(v8 + 10) = v13;
    *(v8 + 11) = v12;
    *(v8 + 12) = v14;
    *(v8 + 13) = v15;
    SimpleMaterial.updateMaterialResource(_:)(0);

    outlined consume of __MaterialColorParameter(*v2, *(v2 + 8));
  }

  else
  {
    v19 = *(v8 + 12);
    v29 = v2[3];
    v30 = v5;
    v31 = v19;
    v32 = v6;

    v20 = v6;
    v21 = v19;
    specialized Material.setLegacyBase(legacy:value:)(&v29, v3, v4);
    outlined consume of __MaterialColorParameter(v3, v4);
    v23 = v29;
    v22 = v30;
    v24 = v31;
    v25 = v32;
    v26 = *(v8 + 11);
    v27 = v32;

    v28 = v24;

    *(v8 + 10) = v23;
    *(v8 + 11) = v22;
    *(v8 + 12) = v24;
    *(v8 + 13) = v25;
    SimpleMaterial.updateMaterialResource(_:)(0);
  }

  free(v2);
}

uint64_t key path getter for SimpleMaterial.roughness : SimpleMaterial@<X0>(unint64_t *a1@<X8>)
{
  result = specialized Material.getScalarParameter(_:)(0, &v4);
  v3 = v4;
  if (v4 >> 60 == 15)
  {
    v3 = 1065353216;
  }

  *a1 = v3;
  return result;
}

uint64_t SimpleMaterial.roughness.setter(uint64_t *a1)
{
  v1 = *a1;
  specialized Material.setScalarParameter(_:value:)(0, *a1);

  return outlined consume of MaterialScalarParameter(v1);
}

uint64_t (*SimpleMaterial.roughness.modify(unint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  specialized Material.getScalarParameter(_:)(0, &v5);
  v3 = v5;
  if (v5 >> 60 == 15)
  {
    v3 = 1065353216;
  }

  *a1 = v3;
  return SimpleMaterial.roughness.modify;
}

uint64_t key path getter for SimpleMaterial.metallic : SimpleMaterial@<X0>(unint64_t *a1@<X8>)
{
  result = specialized Material.getScalarParameter(_:)(1, &v4);
  v3 = v4;
  if (v4 >> 60 == 15)
  {
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

uint64_t SimpleMaterial.metallic.setter(uint64_t *a1)
{
  v1 = *a1;
  specialized Material.setScalarParameter(_:value:)(1, *a1);

  return outlined consume of MaterialScalarParameter(v1);
}

uint64_t (*SimpleMaterial.metallic.modify(unint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  specialized Material.getScalarParameter(_:)(1, &v5);
  v3 = v5;
  if (v5 >> 60 == 15)
  {
    v3 = 0;
  }

  *a1 = v3;
  return SimpleMaterial.metallic.modify;
}

uint64_t SimpleMaterial.roughness.modify(uint64_t *a1, char a2, char a3)
{
  v4 = *a1;
  v5 = a1[1];
  if (a2)
  {
    outlined copy of MaterialScalarParameter(*a1);
    specialized Material.setScalarParameter(_:value:)(a3, v4);
    outlined consume of MaterialScalarParameter(v4);
  }

  else
  {
    specialized Material.setScalarParameter(_:value:)(a3, v4);
  }

  return outlined consume of MaterialScalarParameter(v4);
}

uint64_t SimpleMaterial.__emissive.getter@<X0>(uint64_t a1@<X8>)
{
  result = specialized Material.getTexture(_:)(8);
  v3 = result != 0;
  if (!result)
  {
    result = specialized Material.getColor(name:)(0x6576697373696D65, 0xED0000726F6C6F43);
    if (!result)
    {
      result = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 1.0);
    }

    v3 = 0;
  }

  *a1 = result;
  *(a1 + 8) = v3;
  return result;
}

uint64_t key path getter for SimpleMaterial.__emissive : SimpleMaterial@<X0>(uint64_t a1@<X8>)
{
  result = specialized Material.getTexture(_:)(8);
  v3 = result;
  if (!result)
  {
    result = specialized Material.getColor(name:)(0x6576697373696D65, 0xED0000726F6C6F43);
    if (!result)
    {
      result = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 1.0);
    }
  }

  *a1 = result;
  *(a1 + 8) = v3 != 0;
  return result;
}

void SimpleMaterial.__emissive.setter(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  specialized Material.setColorParameter(_:value:)(2, *a1, v2);

  outlined consume of __MaterialColorParameter(v1, v2);
}

void (*SimpleMaterial.__emissive.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  GenericRGB = specialized Material.getTexture(_:)(8);
  v4 = GenericRGB;
  if (!GenericRGB)
  {
    GenericRGB = specialized Material.getColor(name:)(0x6576697373696D65, 0xED0000726F6C6F43);
    if (!GenericRGB)
    {
      GenericRGB = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 1.0);
    }
  }

  *a1 = GenericRGB;
  *(a1 + 8) = v4 != 0;
  return SimpleMaterial.__emissive.modify;
}

void SimpleMaterial.__emissive.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2)
  {
    outlined copy of __MaterialColorParameter(*a1, v3);
    specialized Material.setColorParameter(_:value:)(2, v2, v3);
    outlined consume of __MaterialColorParameter(v2, v3);
  }

  else
  {
    specialized Material.setColorParameter(_:value:)(2, v2, v3);
  }

  outlined consume of __MaterialColorParameter(v2, v3);
}

void SimpleMaterial.updateMaterialResource(_:)(BOOL a1)
{
  v3 = specialized Material.getColor(name:)(*(v1 + 80), *(v1 + 88));
  if (v3)
  {
    v4 = v3;
    Alpha = CGColorGetAlpha(v3);

    a1 = Alpha < 1.0;
  }

  if (a1 != *(v1 + 112))
  {
    v6 = "Unable to create AnyMaterial";
    v7 = a1;
    if (a1)
    {
      v6 = "engine:simple.rematerial";
      v8 = 0xD000000000000023;
    }

    else
    {
      v8 = 0xD000000000000018;
    }

    v9 = _s17RealityFoundation16LoadableResourcePAAE010loadEngineD09assetPathxSS_tFZ0A3Kit010__MaterialD0C_Tt1g5(v8, v6 | 0x8000000000000000);
    v10 = *(v1 + 40);

    *(v1 + 40) = v9;
    *(v1 + 112) = v7;
  }
}

void (*SimpleMaterial.__usesTransparency.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v2 = *(v1 + 112);
  *(a1 + 9) = v2;
  *(a1 + 8) = v2;
  return SimpleMaterial.__usesTransparency.modify;
}

void SimpleMaterial.__usesTransparency.modify(uint64_t *a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  if (a2)
  {
    SimpleMaterial.updateMaterialResource(_:)(*(a1 + 8));
  }

  else
  {
    v5 = specialized Material.getColor(name:)(*(v3 + 80), *(v3 + 88));
    if (v5)
    {
      v6 = v5;
      Alpha = CGColorGetAlpha(v5);

      v2 = Alpha < 1.0;
    }

    if (v2 != *(a1 + 9))
    {
      v8 = "Unable to create AnyMaterial";
      if (v2)
      {
        v8 = "engine:simple.rematerial";
        v9 = 0xD000000000000023;
      }

      else
      {
        v9 = 0xD000000000000018;
      }

      v10 = _s17RealityFoundation16LoadableResourcePAAE010loadEngineD09assetPathxSS_tFZ0A3Kit010__MaterialD0C_Tt1g5(v9, v8 | 0x8000000000000000);
      v11 = *(v3 + 40);

      *(v3 + 40) = v10;
      *(v3 + 112) = v2;
    }
  }
}

uint64_t SimpleMaterial.init(color:roughness:isMetallic:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v8 + 120, v19);
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0;
  strcpy((a4 + 80), "baseColorTint");
  *(a4 + 94) = -4864;
  *(a4 + 96) = 0;
  *(a4 + 104) = 0;
  *(a4 + 112) = 0;
  *(a4 + 136) = 1;
  *(a4 + 137) = 257;
  *(a4 + 120) = 0;
  *(a4 + 128) = 0;
  *(a4 + 40) = _s17RealityFoundation16LoadableResourcePAAE010loadEngineD09assetPathxSS_tFZ0A3Kit010__MaterialD0C_Tt1g5(0xD000000000000018, 0x80000001C18E31F0);
  v9 = REMaterialParameterBlockValueCreate();
  *(a4 + 48) = MEMORY[0x1E69E7CC0];
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 72) = v9;
  v10 = a1;
  outlined consume of MaterialParameters.Texture?(0, 0);
  v20[0] = v10;
  memset(&v20[1], 0, 24);
  v21 = 0;
  specialized Material.setParameter<A>(_:alternateTintKey:)(v20, 0x6F6C6F4365736162, 0xED0000746E695472);
  outlined destroy of PhysicallyBasedMaterial.BaseColor(v20);
  v11 = specialized Material.getColor(name:)(*(a4 + 80), *(a4 + 88));
  if (!v11)
  {
    if ((*(a4 + 112) & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v12 = v11;
  Alpha = CGColorGetAlpha(v11);

  if (Alpha < 1.0 == *(a4 + 112))
  {
    goto LABEL_8;
  }

  if (Alpha >= 1.0)
  {
LABEL_6:
    v14 = _s17RealityFoundation16LoadableResourcePAAE010loadEngineD09assetPathxSS_tFZ0A3Kit010__MaterialD0C_Tt1g5(0xD000000000000018, 0x80000001C18E31F0);
    v15 = 0;
    goto LABEL_7;
  }

  v14 = _s17RealityFoundation16LoadableResourcePAAE010loadEngineD09assetPathxSS_tFZ0A3Kit010__MaterialD0C_Tt1g5(0xD000000000000023, 0x80000001C18E3210);
  v15 = 1;
LABEL_7:
  v16 = *(a4 + 40);

  *(a4 + 40) = v14;
  *(a4 + 112) = v15;
LABEL_8:
  specialized Material.setScalarParameter(_:value:)(0, v7);
  outlined consume of MaterialScalarParameter(v7);
  if (a3)
  {
    v17 = 1065353216;
  }

  else
  {
    v17 = 0;
  }

  specialized Material.setScalarParameter(_:value:)(1, v17);
  outlined consume of MaterialScalarParameter(v17);

  *(a4 + 104) = v10;
  outlined destroy of BodyTrackingComponent?(a4, &_s10RealityKit16__REAssetService_pSgMd, _s10RealityKit16__REAssetService_pSgMR);
  return outlined init with take of ForceEffectBase(v19, a4);
}

uint64_t SimpleMaterial.init(color:roughness:isMetallic:assetService:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0;
  strcpy((a5 + 80), "baseColorTint");
  *(a5 + 94) = -4864;
  *(a5 + 96) = 0;
  *(a5 + 104) = 0;
  *(a5 + 112) = 0;
  *(a5 + 136) = 1;
  *(a5 + 137) = 257;
  *(a5 + 120) = 0;
  *(a5 + 128) = 0;
  *(a5 + 40) = _s17RealityFoundation16LoadableResourcePAAE010loadEngineD09assetPathxSS_tFZ0A3Kit010__MaterialD0C_Tt1g5(0xD000000000000018, 0x80000001C18E31F0);
  v10 = REMaterialParameterBlockValueCreate();
  *(a5 + 48) = MEMORY[0x1E69E7CC0];
  *(a5 + 56) = 0;
  *(a5 + 64) = 0;
  *(a5 + 72) = v10;
  v11 = a1;
  outlined consume of MaterialParameters.Texture?(0, 0);
  v20[0] = v11;
  memset(&v20[1], 0, 24);
  v21 = 0;
  specialized Material.setParameter<A>(_:alternateTintKey:)(v20, 0x6F6C6F4365736162, 0xED0000746E695472);
  outlined destroy of PhysicallyBasedMaterial.BaseColor(v20);
  v12 = specialized Material.getColor(name:)(*(a5 + 80), *(a5 + 88));
  if (!v12)
  {
    if ((*(a5 + 112) & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v13 = v12;
  Alpha = CGColorGetAlpha(v12);

  if (Alpha < 1.0 == *(a5 + 112))
  {
    goto LABEL_8;
  }

  if (Alpha >= 1.0)
  {
LABEL_6:
    v15 = _s17RealityFoundation16LoadableResourcePAAE010loadEngineD09assetPathxSS_tFZ0A3Kit010__MaterialD0C_Tt1g5(0xD000000000000018, 0x80000001C18E31F0);
    v16 = 0;
    goto LABEL_7;
  }

  v15 = _s17RealityFoundation16LoadableResourcePAAE010loadEngineD09assetPathxSS_tFZ0A3Kit010__MaterialD0C_Tt1g5(0xD000000000000023, 0x80000001C18E3210);
  v16 = 1;
LABEL_7:
  v17 = *(a5 + 40);

  *(a5 + 40) = v15;
  *(a5 + 112) = v16;
LABEL_8:
  specialized Material.setScalarParameter(_:value:)(0, v9);
  outlined consume of MaterialScalarParameter(v9);
  if (a3)
  {
    v18 = 1065353216;
  }

  else
  {
    v18 = 0;
  }

  specialized Material.setScalarParameter(_:value:)(1, v18);
  outlined consume of MaterialScalarParameter(v18);

  *(a5 + 104) = v11;
  outlined destroy of BodyTrackingComponent?(a5, &_s10RealityKit16__REAssetService_pSgMd, _s10RealityKit16__REAssetService_pSgMR);
  return outlined init with take of ForceEffectBase(a4, a5);
}

uint64_t SimpleMaterial.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, v7);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  strcpy((a1 + 80), "baseColorTint");
  *(a1 + 94) = -4864;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 136) = 1;
  *(a1 + 137) = 257;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v3 = _s17RealityFoundation16LoadableResourcePAAE010loadEngineD09assetPathxSS_tFZ0A3Kit010__MaterialD0C_Tt1g5(0xD000000000000018, 0x80000001C18E31F0);
  *(a1 + 40) = v3;
  v4 = REMaterialParameterBlockValueCreate();
  *(a1 + 48) = MEMORY[0x1E69E7CC0];
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = v4;
  outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit16__REAssetService_pSgMd, _s10RealityKit16__REAssetService_pSgMR);
  outlined init with take of ForceEffectBase(v7, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  *(inited + 56) = type metadata accessor for __MaterialResource();
  *(inited + 64) = &protocol witness table for __MaterialResource;
  *(inited + 32) = v3;

  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
  swift_setDeallocating();
  return __swift_destroy_boxed_opaque_existential_1((inited + 32));
}

uint64_t SimpleMaterial.init(assetService:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  strcpy((a2 + 80), "baseColorTint");
  *(a2 + 94) = -4864;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 136) = 1;
  *(a2 + 137) = 257;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 40) = _s17RealityFoundation16LoadableResourcePAAE010loadEngineD09assetPathxSS_tFZ0A3Kit010__MaterialD0C_Tt1g5(0xD000000000000018, 0x80000001C18E31F0);
  v4 = REMaterialParameterBlockValueCreate();
  *(a2 + 48) = MEMORY[0x1E69E7CC0];
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = v4;
  outlined destroy of BodyTrackingComponent?(a2, &_s10RealityKit16__REAssetService_pSgMd, _s10RealityKit16__REAssetService_pSgMR);

  return outlined init with take of ForceEffectBase(a1, a2);
}

unsigned __int8 *(*SimpleMaterial.triangleFillMode.modify(uint64_t a1))(unsigned __int8 *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 120) == 1;
  return SimpleMaterial.triangleFillMode.modify;
}

uint64_t SimpleMaterial.__faceCullMode.getter()
{
  result = *(v0 + 128);
  v2 = *(v0 + 136);
  return result;
}

uint64_t SimpleMaterial.__faceCullMode.setter(uint64_t result, char a2)
{
  *(v2 + 128) = result;
  *(v2 + 136) = a2 & 1;
  return result;
}

uint64_t protocol witness for Material.__parameterBlock.getter in conformance SimpleMaterial@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;

  v6 = v5;
}

uint64_t protocol witness for Material.__parameterBlock.setter in conformance SimpleMaterial(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(v1 + 48);
  v7 = *(v1 + 64);

  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t protocol witness for Material.__faceCullMode.getter in conformance SimpleMaterial()
{
  result = *(v0 + 128);
  v2 = *(v0 + 136);
  return result;
}

uint64_t protocol witness for Material.__faceCullMode.setter in conformance SimpleMaterial(uint64_t result, char a2)
{
  *(v2 + 128) = result;
  *(v2 + 136) = a2 & 1;
  return result;
}

_BYTE *(*SimpleMaterial.writesDepth.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 137);
  return BlendTreeAnimation.repeatMode.modify;
}

_BYTE *(*SimpleMaterial.readsDepth.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 138);
  return SimpleMaterial.readsDepth.modify;
}

void SimpleMaterial.faceCulling.getter(char *a1@<X8>)
{
  v2 = 2;
  if ((*(v1 + 136) & 1) == 0)
  {
    if (*(v1 + 128) >= 3uLL)
    {
      v2 = 2;
    }

    else
    {
      v2 = *(v1 + 128);
    }
  }

  *a1 = v2;
}

unsigned __int8 *SimpleMaterial.faceCulling.setter(unsigned __int8 *result)
{
  v2 = *result;
  v3 = v2 == 1;
  v4 = v2 > 1;
  v5 = v3;
  *(v1 + 128) = v5;
  *(v1 + 136) = v4;
  return result;
}

uint64_t *(*SimpleMaterial.faceCulling.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = 2;
  if ((*(v1 + 136) & 1) == 0)
  {
    if (*(v1 + 128) >= 3uLL)
    {
      v2 = 2;
    }

    else
    {
      v2 = *(v1 + 128);
    }
  }

  *(a1 + 8) = v2;
  return SimpleMaterial.faceCulling.modify;
}

uint64_t *SimpleMaterial.faceCulling.modify(uint64_t *result)
{
  v1 = *result;
  v2 = *(result + 8);
  v3 = v2 == 1;
  v4 = v2 > 1;
  v5 = v3;
  *(v1 + 128) = v5;
  *(v1 + 136) = v4;
  return result;
}

uint64_t OcclusionMaterial.init(receivesDynamicLighting:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = "source due to error: ";
  if (a1)
  {
    v4 = " resource due to error: ";
    v5 = 0xD000000000000020;
  }

  else
  {
    v5 = 0xD000000000000023;
  }

  v6 = _s17RealityFoundation16LoadableResourcePAAE010loadEngineD09assetPathxSS_tFZ0A3Kit010__MaterialD0C_Tt1g5(v5, v4 | 0x8000000000000000);

  v7 = REMaterialParameterBlockValueCreate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v9 = type metadata accessor for __MaterialResource();
  *(inited + 32) = v6;
  *(inited + 56) = v9;
  *(inited + 64) = &protocol witness table for __MaterialResource;
  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
  swift_setDeallocating();
  result = __swift_destroy_boxed_opaque_existential_1((inited + 32));
  v11 = MEMORY[0x1E69E7CC0];
  *a2 = v6;
  *(a2 + 8) = v11;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v7;
  *(a2 + 40) = a1 & 1;
  *(a2 + 41) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  return result;
}

uint64_t OcclusionMaterial.__faceCullMode.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t OcclusionMaterial.__faceCullMode.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t OcclusionMaterial.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = _s17RealityFoundation16LoadableResourcePAAE010loadEngineD09assetPathxSS_tFZ0A3Kit010__MaterialD0C_Tt1g5(0xD000000000000023, 0x80000001C18E3280);

  v3 = REMaterialParameterBlockValueCreate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  *(inited + 56) = type metadata accessor for __MaterialResource();
  *(inited + 64) = &protocol witness table for __MaterialResource;
  *(inited + 32) = v2;
  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
  swift_setDeallocating();
  result = __swift_destroy_boxed_opaque_existential_1((inited + 32));
  v6 = MEMORY[0x1E69E7CC0];
  *a1 = v2;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v3;
  *(a1 + 40) = 256;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  return result;
}

_BYTE *(*OcclusionMaterial.readsDepth.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 41);
  return OcclusionMaterial.readsDepth.modify;
}

void OcclusionMaterial.faceCulling.getter(char *a1@<X8>)
{
  v2 = 2;
  if ((*(v1 + 56) & 1) == 0)
  {
    if (*(v1 + 48) >= 3uLL)
    {
      v2 = 2;
    }

    else
    {
      v2 = *(v1 + 48);
    }
  }

  *a1 = v2;
}

unsigned __int8 *OcclusionMaterial.faceCulling.setter(unsigned __int8 *result)
{
  v2 = *result;
  v3 = v2 == 1;
  v4 = v2 > 1;
  v5 = v3;
  *(v1 + 48) = v5;
  *(v1 + 56) = v4;
  return result;
}

uint64_t *(*OcclusionMaterial.faceCulling.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = 2;
  if ((*(v1 + 56) & 1) == 0)
  {
    if (*(v1 + 48) >= 3uLL)
    {
      v2 = 2;
    }

    else
    {
      v2 = *(v1 + 48);
    }
  }

  *(a1 + 8) = v2;
  return OcclusionMaterial.faceCulling.modify;
}

uint64_t *OcclusionMaterial.faceCulling.modify(uint64_t *result)
{
  v1 = *result;
  v2 = *(result + 8);
  v3 = v2 == 1;
  v4 = v2 > 1;
  v5 = v3;
  *(v1 + 48) = v5;
  *(v1 + 56) = v4;
  return result;
}

uint64_t one-time initialization function for __videoMaterialDefinitionResource()
{
  result = specialized MaterialDefinitionResource.__allocating_init(path:)(0xD000000000000029, 0x80000001C18E3620);
  static VideoMaterial.__videoMaterialDefinitionResource = result;
  return result;
}

uint64_t VideoMaterial.__resource.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t VideoMaterial.__parameterBlock.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;

  v6 = v5;
}

uint64_t VideoMaterial.__parameterBlock.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(v1 + 8);
  v7 = *(v1 + 24);

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  return result;
}

uint64_t VideoMaterial.__videoResource.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t static VideoMaterial.__makeVideoMaterial(videoResource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s17RealityFoundation16LoadableResourcePAAE010loadEngineD09assetPathxSS_tFZ0A3Kit010__MaterialD0C_Tt1g5(0xD00000000000001FLL, 0x80000001C18E3320);
  v4 = REMaterialParameterBlockValueCreate();
  v45 = 1;
  type metadata accessor for VideoPlaybackController();
  swift_allocObject();

  v6 = specialized VideoPlaybackController.init(videoResource:)(v5);
  v7 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v7 + 120, v30);
  v8 = v33;
  v9 = v34;
  __swift_project_boxed_opaque_existential_1(v30, v33);
  v10 = *(v9 + 32);

  v10(v8, v9);
  v11 = REAssetManagerCopyVideoMaterialAsset();
  __swift_destroy_boxed_opaque_existential_1(v30);
  if (v11)
  {
LABEL_6:
    type metadata accessor for __MaterialResource();
    v17 = swift_allocObject();
    RERetain();
    *(v17 + 16) = v11;
    REAssetHandleLoadNow();
    REAssetSetSwiftObject();

    *&v24 = v17;
    *(&v24 + 1) = MEMORY[0x1E69E7CC0];
    LOBYTE(v25) = 0;
    *(&v25 + 1) = v43;
    DWORD1(v25) = *(&v43 + 3);
    *(&v25 + 1) = 0;
    *&v26 = v4;
    *(&v26 + 1) = a1;
    v27 = v6;
    LOWORD(v28) = 257;
    *(&v28 + 2) = v46;
    WORD3(v28) = v47;
    *(&v28 + 1) = 0;
    v18 = v6;
    v19 = v4;
    v29 = v45;
    v20 = v45;
    v21 = v27;
    *(a2 + 32) = v26;
    *(a2 + 48) = v21;
    *(a2 + 80) = v20;
    *(a2 + 64) = v28;
    v22 = v25;
    *a2 = v24;
    *(a2 + 16) = v22;
    outlined init with copy of VideoMaterial(&v24, v30);
    RERelease();

    v30[0] = v17;
    v30[1] = MEMORY[0x1E69E7CC0];
    v31 = 0;
    *v32 = v43;
    *&v32[3] = *(&v43 + 3);
    v33 = 0;
    v34 = v19;
    v35 = a1;
    v36 = v18;
    v37 = 0;
    v38 = 257;
    v39 = v46;
    v40 = v47;
    v41 = 0;
    v42 = v20;
    return outlined destroy of VideoMaterial(v30);
  }

  outlined init with copy of __REAssetService(v7 + 120, v30);
  v12 = v33;
  v13 = v34;
  __swift_project_boxed_opaque_existential_1(v30, v33);
  (*(v13 + 32))(v12, v13);
  swift_beginAccess();
  outlined init with copy of [String : String](v7 + 40, &v43, &_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
  if (v44)
  {
    outlined init with take of ForceEffectBase(&v43, &v24);
    v14 = *(&v25 + 1);
    v15 = v26;
    __swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
    (*(v15 + 24))(v14, v15);
    if (one-time initialization token for __videoMaterialDefinitionResource != -1)
    {
      swift_once();
    }

    v16 = *(static VideoMaterial.__videoMaterialDefinitionResource + 16);
    v11 = REAssetManagerMaterialMemoryAssetCreate();
    __swift_destroy_boxed_opaque_existential_1(&v24);
    __swift_destroy_boxed_opaque_existential_1(v30);
    if (v11)
    {
      goto LABEL_6;
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

double VideoMaterial.init(avPlayer:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  _s17RealityFoundation16LoadableResourcePAAE010loadEngineD09assetPathxSS_tFZ0A3Kit010__MaterialD0C_Tt1g5(0xD00000000000001FLL, 0x80000001C18E3320);
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  v5 = v4;
  v6 = REMaterialParameterBlockValueCreate();
  *(a2 + 32) = v6;
  type metadata accessor for __VideoResource();
  v7 = swift_allocObject();
  *(v7 + 24) = v5;
  v8 = a1;
  v9 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v9 + 120, &v16);
  v11 = *(&v17 + 1);
  v10 = v18;
  __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
  v12 = *(v10 + 32);

  v12(v11, v10);
  __swift_destroy_boxed_opaque_existential_1(&v16);
  *(v7 + 16) = REAssetManagerMemoryAssetCreateWithRemotePlayer();
  REAssetSetSwiftObject();

  static VideoMaterial.__makeVideoMaterial(videoResource:)(v7, &v16);

  v13 = v19;
  *(a2 + 32) = v18;
  *(a2 + 48) = v13;
  *(a2 + 64) = v20;
  *(a2 + 80) = v21;
  result = *&v16;
  v15 = v17;
  *a2 = v16;
  *(a2 + 16) = v15;
  return result;
}

double VideoMaterial.init(remotePlayer:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  _s17RealityFoundation16LoadableResourcePAAE010loadEngineD09assetPathxSS_tFZ0A3Kit010__MaterialD0C_Tt1g5(0xD00000000000001FLL, 0x80000001C18E3320);
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  v5 = v4;
  v6 = REMaterialParameterBlockValueCreate();
  *(a2 + 32) = v6;
  type metadata accessor for __VideoResource();
  v7 = swift_allocObject();
  *(v7 + 24) = v5;
  v8 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v8 + 120, &v15);
  v10 = *(&v16 + 1);
  v9 = v17;
  __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
  v11 = *(v9 + 32);

  v11(v10, v9);
  __swift_destroy_boxed_opaque_existential_1(&v15);
  *(v7 + 16) = REAssetManagerMemoryAssetCreateWithRemotePlayer();
  REAssetSetSwiftObject();
  swift_unknownObjectRelease();

  static VideoMaterial.__makeVideoMaterial(videoResource:)(v7, &v15);

  v12 = v18;
  *(a2 + 32) = v17;
  *(a2 + 48) = v12;
  *(a2 + 64) = v19;
  *(a2 + 80) = v20;
  result = *&v15;
  v14 = v16;
  *a2 = v15;
  *(a2 + 16) = v14;
  return result;
}

id VideoMaterial.avPlayer.getter()
{
  v1 = *(*(v0 + 40) + 16);
  AVPlayer = REVideoAssetGetAVPlayer();

  return AVPlayer;
}

void VideoMaterial.avPlayer.setter(void *a1)
{
  v2 = *(*(v1 + 40) + 16);
  REVideoAssetSetAVPlayer();
}

void (*VideoMaterial.avPlayer.modify(void *a1))(uint64_t a1)
{
  v3 = *(v1 + 40);
  a1[1] = v3;
  v4 = *(v3 + 16);
  *a1 = REVideoAssetGetAVPlayer();
  return VideoMaterial.avPlayer.modify;
}

void VideoMaterial.avPlayer.modify(uint64_t a1)
{
  v2 = *a1;
  v1 = *(*(a1 + 8) + 16);
  REVideoAssetSetAVPlayer();
}

uint64_t VideoMaterial.remotePlayer.getter@<X0>(void *a1@<X8>)
{
  v3 = *(*(v1 + 40) + 16);
  v4 = REVideoAssetGetRemotePlayer();
  v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19RERemoteVideoPlayer_pSgMd, &_sSo19RERemoteVideoPlayer_pSgMR);
  v8[0] = v4;
  outlined init with copy of Any(v8, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19RERemoteVideoPlayer_pMd, &_sSo19RERemoteVideoPlayer_pMR);
  swift_dynamicCast();
  result = __swift_destroy_boxed_opaque_existential_1(v8);
  *a1 = v6;
  return result;
}

uint64_t key path getter for VideoMaterial.remotePlayer : VideoMaterial@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*(a1 + 40) + 16);
  v4 = REVideoAssetGetRemotePlayer();
  v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19RERemoteVideoPlayer_pSgMd, &_sSo19RERemoteVideoPlayer_pSgMR);
  v8[0] = v4;
  outlined init with copy of Any(v8, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19RERemoteVideoPlayer_pMd, &_sSo19RERemoteVideoPlayer_pMR);
  swift_dynamicCast();
  result = __swift_destroy_boxed_opaque_existential_1(v8);
  *a2 = v6;
  return result;
}

uint64_t VideoMaterial.remotePlayer.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*(v1 + 40) + 16);
  REVideoAssetSetRemotePlayer();

  return swift_unknownObjectRelease();
}

void (*VideoMaterial.remotePlayer.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 40);
  *(v3 + 80) = v5;
  v6 = *(v5 + 16);
  v7 = REVideoAssetGetRemotePlayer();
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19RERemoteVideoPlayer_pSgMd, &_sSo19RERemoteVideoPlayer_pSgMR);
  *v4 = v7;
  outlined init with copy of Any(v4, (v4 + 4));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19RERemoteVideoPlayer_pMd, &_sSo19RERemoteVideoPlayer_pMR);
  swift_dynamicCast();
  v8 = v4[9];
  __swift_destroy_boxed_opaque_existential_1(v4);
  v4[8] = v8;
  return VideoMaterial.remotePlayer.modify;
}

void VideoMaterial.remotePlayer.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = (*a1 + 64);
  v5 = *(*(*a1 + 80) + 16);
  REVideoAssetSetRemotePlayer();
  if (a2)
  {
    v6 = *v4;
  }

  swift_unknownObjectRelease();

  free(v3);
}

unsigned __int8 *(*VideoMaterial.triangleFillMode.modify(uint64_t a1))(unsigned __int8 *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 56) == 1;
  return VideoMaterial.triangleFillMode.modify;
}

uint64_t VideoMaterial.__faceCullMode.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t VideoMaterial.__faceCullMode.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

uint64_t protocol witness for Material.__faceCullMode.getter in conformance VideoMaterial()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t protocol witness for Material.__faceCullMode.setter in conformance VideoMaterial(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

_BYTE *(*VideoMaterial.writesDepth.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 64);
  return VideoMaterial.writesDepth.modify;
}

_BYTE *(*VideoMaterial.readsDepth.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 65);
  return VideoMaterial.readsDepth.modify;
}

void VideoMaterial.faceCulling.getter(char *a1@<X8>)
{
  v2 = 2;
  if ((*(v1 + 80) & 1) == 0)
  {
    if (*(v1 + 72) >= 3uLL)
    {
      v2 = 2;
    }

    else
    {
      v2 = *(v1 + 72);
    }
  }

  *a1 = v2;
}

unsigned __int8 *VideoMaterial.faceCulling.setter(unsigned __int8 *result)
{
  v2 = *result;
  v3 = v2 == 1;
  v4 = v2 > 1;
  v5 = v3;
  *(v1 + 72) = v5;
  *(v1 + 80) = v4;
  return result;
}

uint64_t *(*VideoMaterial.faceCulling.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = 2;
  if ((*(v1 + 80) & 1) == 0)
  {
    if (*(v1 + 72) >= 3uLL)
    {
      v2 = 2;
    }

    else
    {
      v2 = *(v1 + 72);
    }
  }

  *(a1 + 8) = v2;
  return VideoMaterial.faceCulling.modify;
}

uint64_t *VideoMaterial.faceCulling.modify(uint64_t *result)
{
  v1 = *result;
  v2 = *(result + 8);
  v3 = v2 == 1;
  v4 = v2 > 1;
  v5 = v3;
  *(v1 + 72) = v5;
  *(v1 + 80) = v4;
  return result;
}

id VideoMaterial.videoRenderer.getter()
{
  v1 = *(*(v0 + 40) + 16);
  AVSampleBufferVideoRenderer = REVideoAssetGetAVSampleBufferVideoRenderer();

  return AVSampleBufferVideoRenderer;
}

double VideoMaterial.init(videoRenderer:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  _s17RealityFoundation16LoadableResourcePAAE010loadEngineD09assetPathxSS_tFZ0A3Kit010__MaterialD0C_Tt1g5(0xD00000000000001FLL, 0x80000001C18E3320);
  v17 = REMaterialParameterBlockValueCreate();
  v18 = type metadata accessor for __VideoResource();
  v4 = swift_allocObject();
  *(v4 + 24) = MEMORY[0x1E69E7CC0];
  v5 = a1;
  v6 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v6 + 120, &v22);
  v8 = v25;
  v7 = v26;
  __swift_project_boxed_opaque_existential_1(&v22, v25);
  v9 = *(v7 + 32);

  v9(v8, v7);
  __swift_destroy_boxed_opaque_existential_1(&v22);
  *(v4 + 16) = REAssetManagerAVSampleBufferVideoRendererMemoryAssetCreate();
  REAssetSetSwiftObject();

  static VideoMaterial.__makeVideoMaterial(videoResource:)(v4, &v22);

  v21 = v22;
  v10 = v23;
  v34[0] = *v24;
  *(v34 + 3) = *&v24[3];
  v19 = v26;
  v20 = v25;
  v11 = v27;
  v31 = v28;
  v32 = v29;
  v33 = v30;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 32) = v11;
  *(inited + 16) = xmmword_1C1897FD0;
  *(inited + 56) = v18;
  *(inited + 64) = &protocol witness table for __VideoResource;
  v13 = one-time initialization token for __videoMaterialDefinitionResource;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = static VideoMaterial.__videoMaterialDefinitionResource;
  *(inited + 96) = type metadata accessor for MaterialDefinitionResource();
  *(inited + 104) = &protocol witness table for MaterialDefinitionResource;
  *(inited + 72) = v14;
  *(inited + 136) = type metadata accessor for __MaterialResource();
  *(inited + 144) = &protocol witness table for __MaterialResource;
  *(inited + 112) = v21;

  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation15RequestLoadable_pMd, &_s17RealityFoundation15RequestLoadable_pMR);
  swift_arrayDestroy();
  *a2 = v21;
  *(a2 + 16) = v10;
  *(a2 + 17) = v34[0];
  *(a2 + 20) = *(v34 + 3);
  *(a2 + 24) = v20;
  *(a2 + 32) = v19;
  *(a2 + 40) = v11;
  result = *&v31;
  v16 = v32;
  *(a2 + 48) = v31;
  *(a2 + 64) = v16;
  *(a2 + 80) = v33;
  return result;
}

float MaterialScalarParameter.init(integerLiteral:)@<S0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = a1;
  *a2 = COERCE_UNSIGNED_INT(a1);
  return result;
}

void MaterialScalarParameter.hash(into:)()
{
  v1 = *v0;
  if (*v0 < 0)
  {
    MEMORY[0x1C68F4C10](1);
    MEMORY[0x1C68F4C10](*((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10));
  }

  else
  {
    MEMORY[0x1C68F4C10](0);
    if ((v1 & 0x7FFFFF) == 0 && (v1 & 0x7F800000) == 0)
    {
      v3 = 0;
    }

    else
    {
      v3 = v1;
    }

    Hasher._combine(_:)(v3);
  }
}

Swift::Int MaterialScalarParameter.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 < 0)
  {
    MEMORY[0x1C68F4C10](1);
    MEMORY[0x1C68F4C10](*((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10));
  }

  else
  {
    MEMORY[0x1C68F4C10](0);
    if ((v1 & 0x7FFFFF) == 0 && (v1 & 0x7F800000) == 0)
    {
      v3 = 0;
    }

    else
    {
      v3 = v1;
    }

    Hasher._combine(_:)(v3);
  }

  return Hasher._finalize()();
}

float protocol witness for ExpressibleByIntegerLiteral.init(integerLiteral:) in conformance MaterialScalarParameter@<S0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = LODWORD(result);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MaterialScalarParameter()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  MaterialScalarParameter.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MaterialScalarParameter()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  MaterialScalarParameter.hash(into:)();
  return Hasher._finalize()();
}

CGColorRef __MaterialColorParameter.init(_colorLiteralRed:green:blue:alpha:)@<X0>(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>)
{
  result = CGColorCreateGenericRGB(a2, a3, a4, a5);
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t __MaterialColorParameter.hash(into:)()
{
  v1 = *v0;
  if (v0[1])
  {
    MEMORY[0x1C68F4C10](1);
    return MEMORY[0x1C68F4C10](*(v1 + 16));
  }

  else
  {
    MEMORY[0x1C68F4C10](0);
    type metadata accessor for CGColorRef(0);
    lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef, type metadata accessor for CGColorRef);
    return _CFObject.hash(into:)();
  }
}

Swift::Int __MaterialColorParameter.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x1C68F4C10](1);
    MEMORY[0x1C68F4C10](*(v1 + 16));
  }

  else
  {
    MEMORY[0x1C68F4C10](0);
    type metadata accessor for CGColorRef(0);
    lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef, type metadata accessor for CGColorRef);
    _CFObject.hash(into:)();
  }

  return Hasher._finalize()();
}

CGColorRef protocol witness for _ExpressibleByColorLiteral.init(_colorLiteralRed:green:blue:alpha:) in conformance __MaterialColorParameter@<X0>(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>)
{
  result = CGColorCreateGenericRGB(a2, a3, a4, a5);
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __MaterialColorParameter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x1C68F4C10](1);
    MEMORY[0x1C68F4C10](*(v1 + 16));
  }

  else
  {
    MEMORY[0x1C68F4C10](0);
    type metadata accessor for CGColorRef(0);
    lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef, type metadata accessor for CGColorRef);
    _CFObject.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance __MaterialColorParameter()
{
  v1 = *v0;
  if (v0[1])
  {
    MEMORY[0x1C68F4C10](1);
    return MEMORY[0x1C68F4C10](*(v1 + 16));
  }

  else
  {
    MEMORY[0x1C68F4C10](0);
    type metadata accessor for CGColorRef(0);
    lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef, type metadata accessor for CGColorRef);
    return _CFObject.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __MaterialColorParameter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x1C68F4C10](1);
    MEMORY[0x1C68F4C10](*(v1 + 16));
  }

  else
  {
    MEMORY[0x1C68F4C10](0);
    type metadata accessor for CGColorRef(0);
    lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef, type metadata accessor for CGColorRef);
    _CFObject.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t PortalMaterial.__resource.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t PortalMaterial.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, &v12);
  v3 = v13;
  v4 = v14;
  __swift_project_boxed_opaque_existential_1(&v12, v13);
  (*(v4 + 32))(v3, v4);
  AssetHandle = REAssetManagerCreateAssetHandle();
  __swift_destroy_boxed_opaque_existential_1(&v12);
  if (AssetHandle && (v6 = REMaterialParameterBlockValueCreate(), (v7 = _s17RealityFoundation16LoadableResourcePAAE8fromCore8assetRefxSgs13OpaquePointerV_tFZ0A3Kit010__MaterialD0C_Tt1g5(AssetHandle)) != 0))
  {
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    *(inited + 56) = type metadata accessor for __MaterialResource();
    *(inited + 64) = &protocol witness table for __MaterialResource;
    *(inited + 32) = v8;

    specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
    swift_setDeallocating();
    result = __swift_destroy_boxed_opaque_existential_1((inited + 32));
    v11 = MEMORY[0x1E69E7CC0];
    *a1 = v8;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = v6;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unsigned __int8 *(*PortalMaterial.triangleFillMode.modify(uint64_t a1))(unsigned __int8 *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 40) == 1;
  return PortalMaterial.triangleFillMode.modify;
}

uint64_t (*PortalMaterial.faceCulling.modify(uint64_t a1))()
{
  *a1 = v1;
  v2 = 2;
  if ((*(v1 + 56) & 1) == 0)
  {
    if (*(v1 + 48) >= 3uLL)
    {
      v2 = 2;
    }

    else
    {
      v2 = *(v1 + 48);
    }
  }

  *(a1 + 8) = v2;
  return PortalMaterial.faceCulling.modify;
}

uint64_t specialized LoadRequest.init(_:dependencies:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit8Material_ps5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit8Material_ps5Error_pGSgGMR);
  v8 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v8 + 16) = v9;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0;
  *(v8 + 64) = -1;
  *(v4 + 16) = v8;
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = v8;
  v10[5] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit8Material_ps5Error_pGMd, &_s7Combine6FutureCy10RealityKit8Material_ps5Error_pGMR);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();

  *(v4 + 24) = Future.init(_:)();
  return v4;
}

void specialized SIMD.hash(into:)(__n128 a1)
{
  if (a1.n128_f32[0] == 0.0)
  {
    v1 = 0.0;
  }

  else
  {
    v1 = a1.n128_f32[0];
  }

  Hasher._combine(_:)(LODWORD(v1));
  v2 = a1.n128_f32[1];
  if (a1.n128_f32[1] == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v2));
  v3 = a1.n128_f32[2];
  if (a1.n128_f32[2] == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v3));
  v4 = a1.n128_f32[3];
  if (a1.n128_f32[3] == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v4));
}

{
  if (a1.n128_f32[0] == 0.0)
  {
    v1 = 0.0;
  }

  else
  {
    v1 = a1.n128_f32[0];
  }

  Hasher._combine(_:)(LODWORD(v1));
  v2 = a1.n128_f32[1];
  if (a1.n128_f32[1] == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v2));
  v3 = a1.n128_f32[2];
  if (a1.n128_f32[2] == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v3));
}

void specialized SIMD.hash(into:)(double a1)
{
  v3 = *(&a1 + 1);
  if (*&a1 == 0.0)
  {
    v1 = 0.0;
  }

  else
  {
    v1 = *&a1;
  }

  Hasher._combine(_:)(LODWORD(v1));
  v2 = v3;
  if (v3 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v2));
}

BOOL specialized static __MaterialResource.BuildParameters.Value.== infix(_:_:)(float32x2_t *a1, float32x4_t *a2)
{
  v2 = *a1;
  v3 = a1[2].u8[0];
  v4 = *a2->f32;
  v5 = a2[1].u8[0];
  if (v3 <= 2)
  {
    v6 = v4.i8[0] ^ v2.i8[0] ^ 1;
    if (a2[1].i8[0])
    {
      v6 = 0;
    }

    v8 = v5 == 1 && *&v2 == *&v4;
    v9 = v2.f32[0] == v4.f32[0];
    if (v5 != 2)
    {
      v9 = 0;
    }

    if (v3 == 1)
    {
      v9 = v8;
    }

    if (a1[2].i8[0])
    {
      return v9;
    }

    else
    {
      return v6;
    }
  }

  if (v3 == 3)
  {
    v16 = v2.f32[1] == v4.f32[1];
    if (v2.f32[0] != COERCE_FLOAT(a2->i64[0]))
    {
      v16 = 0;
    }

    return v5 == 3 && v16;
  }

  else
  {
    v12 = a1[1];
    v13 = a2->i64[1];
    if (v3 == 4)
    {
      if (v5 == 4)
      {
        v14 = a2->i64[0];
        v15 = vceq_f32(*a1, v4);
        if (v15.i32[0] & v15.i32[1])
        {
          return vmovn_s32(vceqq_f32(*a1, *a2)).i8[4] & 1;
        }
      }

      return 0;
    }

    if (v5 != 5)
    {
      return 0;
    }

    v18 = 0;
    if (v2.f32[0] == v4.f32[0])
    {
      v19 = vmovn_s32(vceqq_f32(*a1->f32, *a2));
      if (v19.i8[2] & 1) != 0 && (v19.i8[4])
      {
        v18 = v19.i8[6];
      }
    }

    return v18 & 1;
  }
}

BOOL specialized static MaterialScalarParameter.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((*a1 & 0x8000000000000000) == 0)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      outlined consume of MaterialScalarParameter(*a1);
      outlined consume of MaterialScalarParameter(v3);
      return *&v2 == *&v3;
    }

LABEL_6:
    outlined copy of MaterialScalarParameter(v3);
    outlined consume of MaterialScalarParameter(v2);
    outlined consume of MaterialScalarParameter(v3);
    return 0;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {

    goto LABEL_6;
  }

  outlined copy of MaterialScalarParameter(*a2);
  outlined copy of MaterialScalarParameter(v2);
  outlined copy of MaterialScalarParameter(v3);
  outlined copy of MaterialScalarParameter(v2);
  outlined consume of MaterialScalarParameter(v2);
  outlined consume of MaterialScalarParameter(v3);
  v6 = *((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  outlined consume of MaterialScalarParameter(v2);
  v7 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  outlined consume of MaterialScalarParameter(v3);
  return v6 == v7;
}

BOOL specialized static __MaterialColorParameter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3)
  {
    if (*(a2 + 8))
    {
      outlined copy of __MaterialColorParameter(*a2, 1);
      outlined copy of __MaterialColorParameter(v2, 1);
      outlined copy of __MaterialColorParameter(v4, 1);
      outlined copy of __MaterialColorParameter(v2, 1);
      outlined consume of __MaterialColorParameter(v2, 1);
      outlined consume of __MaterialColorParameter(v4, 1);
      v6 = v2[2];
      outlined consume of __MaterialColorParameter(v2, 1);
      v7 = v4[2];
      outlined consume of __MaterialColorParameter(v4, 1);
      return v6 == v7;
    }

    goto LABEL_5;
  }

  if (*(a2 + 8))
  {
LABEL_5:
    outlined copy of __MaterialColorParameter(*a2, *(a2 + 8));
    outlined copy of __MaterialColorParameter(v2, v3);
    outlined consume of __MaterialColorParameter(v2, v3);
    outlined consume of __MaterialColorParameter(v4, v5);
    return 0;
  }

  type metadata accessor for CGColorRef(0);
  outlined copy of __MaterialColorParameter(v4, 0);
  outlined copy of __MaterialColorParameter(v2, 0);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef, type metadata accessor for CGColorRef);
  v9 = static _CFObject.== infix(_:_:)();
  outlined consume of __MaterialColorParameter(v2, 0);
  outlined consume of __MaterialColorParameter(v4, 0);
  return v9 & 1;
}

uint64_t specialized static __MaterialResource.buildCoreAsset(_:assetService:)(uint64_t *a1, void *a2)
{
  v124 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a1[1];
  v95 = a1[2];
  v99 = *(a1 + 24);
  v100 = *(a1 + 25);
  v101 = *(a1 + 26);
  v105 = *(a1 + 27);
  v109 = *(a1 + 28);
  v113 = *(a1 + 29);
  v102 = *(a1 + 30);
  v121 = a1[4];
  v97 = a1[5];
  v98 = a1[6];
  v117 = a1[7];

  REMaterialAssetBuilderCreate();
  if (v2)
  {
    v4 = *(v2 + 16);
    REMaterialAssetBuilderSetMaterialDefinition();
  }

  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_11:
      v11 = __clz(__rbit64(v7)) | (v10 << 6);
      v12 = (*(v3 + 48) + 16 * v11);
      v13 = *v12;
      v14 = v12[1];
      v15 = *(v3 + 56) + 32 * v11;
      v7 &= v7 - 1;
      v122 = *v15;
      v123 = *(v15 + 16);

      __MaterialResource.BuildParameters.Value.asString.getter();
      String.utf8CString.getter();

      String.utf8CString.getter();

      REMaterialAssetBuilderSetFunctionConstant();

      if (!v7)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  if ((v99 & 1) == 0)
  {
    REMaterialAssetBuilderSetMTLCullMode();
  }

  if (v100 != 2)
  {
    REMaterialAssetBuilderSetNeedsPassthroughBlur();
  }

  if (v101 != 2)
  {
    REMaterialAssetBuilderSetNeedsVCABlur();
  }

  if (v102 != 2)
  {
    String.utf8CString.getter();

    REMaterialAssetBuilderSetFunctionConstant();
  }

  if (v105 != 2)
  {
    String.utf8CString.getter();

    REMaterialAssetBuilderSetFunctionConstant();

    REMaterialAssetBuilderSetBufferFromBinding();
  }

  if (v109 != 2)
  {
    REMaterialAssetBuilderSetNeedsVisualDepthTexture();
  }

  if (v113 != 2)
  {
    REMaterialAssetBuilderSetFailIfNotPrecompiled();
  }

  v16 = *(v117 + 16);
  if (v16)
  {
    v17 = (v117 + 72);
    do
    {
      v18 = *(v17 - 40);
      v20 = *(v17 - 4);
      v19 = *(v17 - 3);
      v22 = *(v17 - 2);
      v21 = *(v17 - 1);
      v23 = *v17;
      swift_bridgeObjectRetain_n();

      v24 = v23;
      REFunctionLinkBuilderCreate();
      REFunctionLinkBuilderSetShaderStage();
      String.utf8CString.getter();
      REFunctionLinkBuilderSetLinkedFunctionName();

      REFunctionLinkBuilderSetLinkedFunctionLibrary();
      v25 = *(v21 + 16);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 16), 0, v21);
      }

      REFunctionLinkBuilderSetLinkedShaderAPIs();

      REFunctionLinkBuilderSetFunctionConstantValues();
      REMaterialAssetBuilderAddFunctionLinkBuilder();
      RERelease();

      v17 += 6;
      --v16;
    }

    while (v16);
  }

  v26 = 1 << *(v121 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v121 + 64);
  v29 = (v26 + 63) >> 6;

  v30 = 0;
  if (v28)
  {
    while (2)
    {
      v32 = v30;
LABEL_42:
      v33 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v34 = v33 | (v32 << 6);
      v35 = (*(v121 + 48) + 16 * v34);
      v37 = *v35;
      v36 = v35[1];
      v38 = *(v121 + 56) + 80 * v34;
      v39 = *v38;
      v40 = *(v38 + 8);
      v42 = *(v38 + 16);
      v41 = *(v38 + 24);
      switch(*(v38 + 64))
      {
        case 1:
          v104 = v39[2];
          v119 = *(v38 + 40);
          v107 = *(v38 + 56);
          v115 = *(v38 + 32);
          v111 = *(v38 + 48);
          String.utf8CString.getter();

          REMaterialAssetBuilderSetTextureFromAsset();

          outlined consume of MaterialParameters.Value(v39, v40, v42, v41, v115, v119, v111, v107, 1);
          goto LABEL_58;
        case 2:
          String.utf8CString.getter();
          REMaterialAssetBuilderSetFloat();
          goto LABEL_37;
        case 3:
          v49 = *v38;
          String.utf8CString.getter();
          REMaterialAssetBuilderSetFloat2();
          goto LABEL_37;
        case 4:
          String.utf8CString.getter();
          REMaterialAssetBuilderSetFloat3();
          goto LABEL_37;
        case 5:
          v54 = *v38;
          v55 = *(v38 + 8);
          String.utf8CString.getter();
          REMaterialAssetBuilderSetFloat4();
          goto LABEL_37;
        case 6:
          v116 = *(v38 + 32);
          v120 = *(v38 + 40);
          v112 = *(v38 + 48);
          v108 = *(v38 + 56);
          outlined copy of MaterialParameters.Value(v39, v40, v42, v41, v116, v120, v112, v108, 6);

          RECGColorToColorGamut();
          String.utf8CString.getter();

          REMaterialAssetBuilderSetColor4F();

          outlined consume of MaterialParameters.Value(v39, v40, v42, v41, v116, v120, v112, v108, 6);
          goto LABEL_58;
        case 7:
          v50 = *v38;
          v51 = *(v38 + 8);
          String.utf8CString.getter();
          REMaterialAssetBuilderSetFloat2x2();
          goto LABEL_37;
        case 8:
          v60 = *v38;
          v61 = *(v38 + 8);
          String.utf8CString.getter();
          REMaterialAssetBuilderSetFloat3x3();
          goto LABEL_37;
        case 9:
          v47 = *v38;
          v48 = *(v38 + 8);
          String.utf8CString.getter();
          REMaterialAssetBuilderSetFloat4x4();
          goto LABEL_37;
        case 0xA:
          String.utf8CString.getter();
          REMaterialAssetBuilderSetBool();
          goto LABEL_37;
        case 0xB:
          String.utf8CString.getter();
          REMaterialAssetBuilderSetInt();
          goto LABEL_37;
        case 0xC:
          v46 = *v38;
          String.utf8CString.getter();
          REMaterialAssetBuilderSetInt2();
          goto LABEL_37;
        case 0xD:
          v56 = *v38;
          v57 = *(v38 + 8);
          String.utf8CString.getter();
          REMaterialAssetBuilderSetInt3();
          goto LABEL_37;
        case 0xE:
          v44 = *v38;
          v45 = *(v38 + 8);
          String.utf8CString.getter();
          REMaterialAssetBuilderSetInt4();
          goto LABEL_37;
        case 0xF:
          String.utf8CString.getter();
          REMaterialAssetBuilderSetUInt();
          goto LABEL_37;
        case 0x10:
          v31 = *v38;
          String.utf8CString.getter();
          REMaterialAssetBuilderSetUInt2();
          goto LABEL_37;
        case 0x11:
          v52 = *v38;
          v53 = *(v38 + 8);
          String.utf8CString.getter();
          REMaterialAssetBuilderSetUInt3();
          goto LABEL_37;
        case 0x12:
          v58 = *v38;
          v59 = *(v38 + 8);
          String.utf8CString.getter();
          REMaterialAssetBuilderSetUInt4();
LABEL_37:

          v30 = v32;
          if (v28)
          {
            continue;
          }

          goto LABEL_39;
        default:
          v103 = *(v40 + 16);
          v118 = *(v38 + 40);
          v106 = *(v38 + 56);
          v114 = *(v38 + 32);
          v110 = *(v38 + 48);
          String.utf8CString.getter();
          v43 = v39;

          REMaterialAssetBuilderSetTextureFromAsset();

          outlined consume of MaterialParameters.Value(v39, v40, v42, v41, v114, v118, v110, v106, 0);
LABEL_58:
          v30 = v32;
          if (!v28)
          {
            goto LABEL_39;
          }

          continue;
      }
    }
  }

  while (1)
  {
LABEL_39:
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      goto LABEL_85;
    }

    if (v32 >= v29)
    {
      break;
    }

    v28 = *(v121 + 64 + 8 * v32);
    ++v30;
    if (v28)
    {
      goto LABEL_42;
    }
  }

  v62 = 1 << *(v97 + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v64 = v63 & *(v97 + 64);
  v65 = (v62 + 63) >> 6;

  v66 = 0;
  if (v64)
  {
    while (1)
    {
      v67 = v66;
LABEL_71:
      v68 = __clz(__rbit64(v64));
      v64 &= v64 - 1;
      v69 = (v67 << 10) | (16 * v68);
      v70 = (*(v97 + 48) + v69);
      v71 = *v70;
      v72 = v70[1];
      v73 = (*(v97 + 56) + v69);
      v74 = *v73;
      v75 = v73[1];
      String.utf8CString.getter();
      String.utf8CString.getter();
      REMaterialAssetBuilderSetTextureFromBinding();

      if (!v64)
      {
        goto LABEL_67;
      }
    }
  }

  while (1)
  {
LABEL_67:
    v67 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      goto LABEL_86;
    }

    if (v67 >= v65)
    {
      break;
    }

    v64 = *(v97 + 64 + 8 * v67);
    ++v66;
    if (v64)
    {
      v66 = v67;
      goto LABEL_71;
    }
  }

  v76 = 1 << *(v98 + 32);
  v77 = -1;
  if (v76 < 64)
  {
    v77 = ~(-1 << v76);
  }

  v78 = v77 & *(v98 + 64);
  v79 = (v76 + 63) >> 6;

  v80 = 0;
  if (v78)
  {
    while (1)
    {
      v81 = v80;
LABEL_81:
      v82 = __clz(__rbit64(v78));
      v78 &= v78 - 1;
      v83 = (v81 << 10) | (16 * v82);
      v84 = (*(v98 + 48) + v83);
      v85 = *v84;
      v86 = v84[1];
      v87 = (*(v98 + 56) + v83);
      v88 = *v87;
      v89 = v87[1];
      String.utf8CString.getter();
      String.utf8CString.getter();
      REMaterialAssetBuilderSetBufferFromBinding();

      if (!v78)
      {
        goto LABEL_77;
      }
    }
  }

  while (1)
  {
LABEL_77:
    v81 = v80 + 1;
    if (__OFADD__(v80, 1))
    {
      goto LABEL_87;
    }

    if (v81 >= v79)
    {
      break;
    }

    v78 = *(v98 + 64 + 8 * v81);
    ++v80;
    if (v78)
    {
      v80 = v81;
      goto LABEL_81;
    }
  }

  v90 = a2[3];
  v91 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v90);
  (*(v91 + 32))(v90, v91);
  v92 = REAssetManagerMaterialAssetBuilderBuild();
  RERelease();
  v93 = *MEMORY[0x1E69E9840];
  return v92;
}

uint64_t specialized Material.setParameter<A>(_:alternateTintKey:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    v5 = 1;
    v6 = *(a1 + 8);
  }

  else
  {
    v6 = 0;
    v4 = 0;
    v3 = 0;
    v5 = -1;
  }

  v7 = *a1;
  strcpy(v15, "roughnessScale");
  v15[15] = -18;
  LODWORD(v16) = v7;
  v20 = 2;
  v21[0] = 0xD000000000000010;
  v21[1] = 0x80000001C18E2A80;
  *&v22 = v6;
  *(&v22 + 1) = v2;
  *&v23 = v4;
  *(&v23 + 1) = v3;
  v24 = 0u;
  v25 = 0u;
  v26 = v5;
  v28 = v5;
  memset(&v27[2], 0, 32);
  v27[0] = v22;
  v27[1] = v23;

  outlined init with copy of PhysicallyBasedMaterial.Roughness(a1, v13);
  outlined init with copy of [String : String](&v22, v13, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  specialized Material.subscript.setter(v27, 0xD000000000000010, 0x80000001C18E2A80);
  v11[0] = v16;
  v11[1] = v17;
  v11[2] = v18;
  v11[3] = v19;
  v12 = 2;
  v8 = String.utf8CString.getter();
  v13[2] = v18;
  v13[3] = v19;
  v14 = v20;
  v13[0] = v16;
  v13[1] = v17;
  outlined init with copy of __RKMaterialParameterBlock.Parameter(v13, &v10);
  __RKMaterialParameterBlock.unsafeSet(parameter:value:)((v8 + 32), v11);

  outlined destroy of BodyTrackingComponent?(&v16, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  outlined destroy of MaterialParameterKeyValue(v15);
  return outlined destroy of MaterialParameterKeyValue(v21);
}

{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    v5 = 1;
    v6 = *(a1 + 8);
  }

  else
  {
    v6 = 0;
    v4 = 0;
    v3 = 0;
    v5 = -1;
  }

  v7 = *a1;
  strcpy(v15, "clearcoatScale");
  v15[15] = -18;
  LODWORD(v16) = v7;
  v20 = 2;
  v21[0] = 0xD000000000000010;
  v21[1] = 0x80000001C18E2AA0;
  *&v22 = v6;
  *(&v22 + 1) = v2;
  *&v23 = v4;
  *(&v23 + 1) = v3;
  v24 = 0u;
  v25 = 0u;
  v26 = v5;
  v28 = v5;
  memset(&v27[2], 0, 32);
  v27[0] = v22;
  v27[1] = v23;

  outlined init with copy of PhysicallyBasedMaterial.Clearcoat(a1, v13);
  outlined init with copy of [String : String](&v22, v13, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  specialized Material.subscript.setter(v27, 0xD000000000000010, 0x80000001C18E2AA0);
  v11[0] = v16;
  v11[1] = v17;
  v11[2] = v18;
  v11[3] = v19;
  v12 = 2;
  v8 = String.utf8CString.getter();
  v13[2] = v18;
  v13[3] = v19;
  v14 = v20;
  v13[0] = v16;
  v13[1] = v17;
  outlined init with copy of __RKMaterialParameterBlock.Parameter(v13, &v10);
  __RKMaterialParameterBlock.unsafeSet(parameter:value:)((v8 + 32), v11);

  outlined destroy of BodyTrackingComponent?(&v16, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  outlined destroy of MaterialParameterKeyValue(v15);
  return outlined destroy of MaterialParameterKeyValue(v21);
}

{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    v5 = 1;
    v6 = *(a1 + 8);
  }

  else
  {
    v6 = 0;
    v4 = 0;
    v3 = 0;
    v5 = -1;
  }

  v7 = *a1;
  v15[0] = 0xD000000000000017;
  v15[1] = 0x80000001C18DD830;
  LODWORD(v16) = v7;
  v20 = 2;
  v21[0] = 0xD000000000000019;
  v21[1] = 0x80000001C18E2AC0;
  *&v22 = v6;
  *(&v22 + 1) = v2;
  *&v23 = v4;
  *(&v23 + 1) = v3;
  v24 = 0u;
  v25 = 0u;
  v26 = v5;
  v28 = v5;
  memset(&v27[2], 0, 32);
  v27[0] = v22;
  v27[1] = v23;

  outlined init with copy of [String : String](&v22, v13, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  outlined init with copy of PhysicallyBasedMaterial.ClearcoatRoughness(a1, v13);
  specialized Material.subscript.setter(v27, 0xD000000000000019, 0x80000001C18E2AC0);
  v11[0] = v16;
  v11[1] = v17;
  v11[2] = v18;
  v11[3] = v19;
  v12 = 2;
  v8 = String.utf8CString.getter();
  v13[2] = v18;
  v13[3] = v19;
  v14 = v20;
  v13[0] = v16;
  v13[1] = v17;
  outlined init with copy of __RKMaterialParameterBlock.Parameter(v13, &v10);
  __RKMaterialParameterBlock.unsafeSet(parameter:value:)((v8 + 32), v11);

  outlined destroy of BodyTrackingComponent?(&v16, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  outlined destroy of MaterialParameterKeyValue(v15);
  return outlined destroy of MaterialParameterKeyValue(v21);
}

{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    v5 = 1;
    v6 = *(a1 + 8);
  }

  else
  {
    v6 = 0;
    v4 = 0;
    v3 = 0;
    v5 = -1;
  }

  v7 = *a1;
  v15[0] = 0xD000000000000014;
  v15[1] = 0x80000001C18DD8B0;
  LODWORD(v16) = v7;
  v20 = 2;
  v21[0] = 0xD000000000000016;
  v21[1] = 0x80000001C18E3600;
  *&v22 = v6;
  *(&v22 + 1) = v2;
  *&v23 = v4;
  *(&v23 + 1) = v3;
  v24 = 0u;
  v25 = 0u;
  v26 = v5;
  v28 = v5;
  memset(&v27[2], 0, 32);
  v27[0] = v22;
  v27[1] = v23;

  outlined init with copy of [String : String](&v22, v13, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  outlined init with copy of PhysicallyBasedMaterial.AnisotropyLevel(a1, v13);
  specialized Material.subscript.setter(v27, 0xD000000000000016, 0x80000001C18E3600);
  v11[0] = v16;
  v11[1] = v17;
  v11[2] = v18;
  v11[3] = v19;
  v12 = 2;
  v8 = String.utf8CString.getter();
  v13[2] = v18;
  v13[3] = v19;
  v14 = v20;
  v13[0] = v16;
  v13[1] = v17;
  outlined init with copy of __RKMaterialParameterBlock.Parameter(v13, &v10);
  __RKMaterialParameterBlock.unsafeSet(parameter:value:)((v8 + 32), v11);

  outlined destroy of BodyTrackingComponent?(&v16, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  outlined destroy of MaterialParameterKeyValue(v15);
  return outlined destroy of MaterialParameterKeyValue(v21);
}

{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    v5 = 1;
    v6 = *(a1 + 8);
  }

  else
  {
    v6 = 0;
    v4 = 0;
    v3 = 0;
    v5 = -1;
  }

  v7 = *a1;
  v15[0] = 0xD000000000000014;
  v15[1] = 0x80000001C18DD8D0;
  LODWORD(v16) = v7;
  v20 = 2;
  v21[0] = 0xD000000000000016;
  v21[1] = 0x80000001C18E35E0;
  *&v22 = v6;
  *(&v22 + 1) = v2;
  *&v23 = v4;
  *(&v23 + 1) = v3;
  v24 = 0u;
  v25 = 0u;
  v26 = v5;
  v28 = v5;
  memset(&v27[2], 0, 32);
  v27[0] = v22;
  v27[1] = v23;

  outlined init with copy of [String : String](&v22, v13, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  outlined init with copy of PhysicallyBasedMaterial.AnisotropyAngle(a1, v13);
  specialized Material.subscript.setter(v27, 0xD000000000000016, 0x80000001C18E35E0);
  v11[0] = v16;
  v11[1] = v17;
  v11[2] = v18;
  v11[3] = v19;
  v12 = 2;
  v8 = String.utf8CString.getter();
  v13[2] = v18;
  v13[3] = v19;
  v14 = v20;
  v13[0] = v16;
  v13[1] = v17;
  outlined init with copy of __RKMaterialParameterBlock.Parameter(v13, &v10);
  __RKMaterialParameterBlock.unsafeSet(parameter:value:)((v8 + 32), v11);

  outlined destroy of BodyTrackingComponent?(&v16, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  outlined destroy of MaterialParameterKeyValue(v15);
  return outlined destroy of MaterialParameterKeyValue(v21);
}

{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    v5 = 1;
    v6 = *(a1 + 8);
  }

  else
  {
    v6 = 0;
    v4 = 0;
    v3 = 0;
    v5 = -1;
  }

  outlined init with copy of PhysicallyBasedMaterial.Opacity(a1, &v22);
  if (RELinkedOnOrAfterFall2024OSVersions())
  {
    LODWORD(v23) = *a1;
    v7 = xmmword_1C18A95B0;
    v8 = 2;
  }

  else
  {
    v8 = 0;
    v7 = 0uLL;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
  }

  v22 = v7;
  v27 = v8;
  strcpy(v13, "textureOpacity");
  v13[15] = -18;
  *&v14 = v6;
  *(&v14 + 1) = v2;
  *&v15 = v4;
  *(&v15 + 1) = v3;
  v16 = 0u;
  v17 = 0u;
  v18 = v5;
  v31 = v5;
  memset(&v30[2], 0, 32);
  v30[0] = v14;
  v30[1] = v15;

  outlined init with copy of [String : String](&v14, &v19, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  specialized Material.subscript.setter(v30, 0x4F65727574786574, 0xEE00797469636170);
  v20[1] = v24;
  v20[2] = v25;
  v20[3] = v26;
  v21 = v27;
  v19 = v22;
  v20[0] = v23;
  v9 = *(&v22 + 1);
  if (*(&v22 + 1))
  {
    v10 = v19;
    v28[2] = v25;
    v28[3] = v26;
    v29 = v27;
    v28[0] = v23;
    v28[1] = v24;

    outlined init with copy of [String : String](v20, &v12, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
    specialized Material.subscript.setter(v28, v10, v9);
    outlined destroy of BodyTrackingComponent?(&v22, &_s17RealityFoundation25MaterialParameterKeyValueVSgMd, &_s17RealityFoundation25MaterialParameterKeyValueVSgMR);
  }

  return outlined destroy of MaterialParameterKeyValue(v13);
}

{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    v5 = 1;
    v6 = *(a1 + 8);
  }

  else
  {
    v6 = 0;
    v4 = 0;
    v3 = 0;
    v5 = -1;
  }

  outlined init with copy of PhysicallyBasedMaterial.Opacity(a1, &v22);
  if (RELinkedOnOrAfterFall2024OSVersions())
  {
    LODWORD(v23) = *a1;
    v7 = xmmword_1C18A95B0;
    v8 = 2;
  }

  else
  {
    v8 = 0;
    v7 = 0uLL;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
  }

  v22 = v7;
  v27 = v8;
  strcpy(v13, "textureOpacity");
  v13[15] = -18;
  *&v14 = v6;
  *(&v14 + 1) = v2;
  *&v15 = v4;
  *(&v15 + 1) = v3;
  v16 = 0u;
  v17 = 0u;
  v18 = v5;
  v31 = v5;
  memset(&v30[2], 0, 32);
  v30[0] = v14;
  v30[1] = v15;

  outlined init with copy of [String : String](&v14, &v19, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  specialized Material.subscript.setter(v30, 0x4F65727574786574, 0xEE00797469636170);
  v20[1] = v24;
  v20[2] = v25;
  v20[3] = v26;
  v21 = v27;
  v19 = v22;
  v20[0] = v23;
  v9 = *(&v22 + 1);
  if (*(&v22 + 1))
  {
    v10 = v19;
    v28[2] = v25;
    v28[3] = v26;
    v29 = v27;
    v28[0] = v23;
    v28[1] = v24;

    outlined init with copy of [String : String](v20, &v12, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
    specialized Material.subscript.setter(v28, v10, v9);
    outlined destroy of BodyTrackingComponent?(&v22, &_s17RealityFoundation25MaterialParameterKeyValueVSgMd, &_s17RealityFoundation25MaterialParameterKeyValueVSgMR);
  }

  return outlined destroy of MaterialParameterKeyValue(v13);
}

uint64_t specialized Material.setParameter<A>(_:alternateTintKey:)(int *a1)
{
  return specialized Material.setParameter<A>(_:alternateTintKey:)(a1, 0x63696C6C6174656DLL, 0x4D65727574786574, 0xEF63696C6C617465, outlined init with copy of PhysicallyBasedMaterial.Metallic);
}

{
  return specialized Material.setParameter<A>(_:alternateTintKey:)(a1, 0x72616C7563657073, 0x5365727574786574, 0xEF72616C75636570, outlined init with copy of PhysicallyBasedMaterial.Specular);
}

uint64_t specialized Material.setParameter<A>(_:alternateTintKey:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(int *, _OWORD *))
{
  v10 = *(a1 + 2);
  if (v10)
  {
    v11 = a1[8];
    v12 = *(a1 + 3);
    v13 = 1;
    v14 = *(a1 + 1);
  }

  else
  {
    v14 = 0;
    v12 = 0;
    v11 = 0;
    v13 = -1;
  }

  v15 = *a1;
  v28 = a2;
  v29 = 0xED0000656C616353;
  LODWORD(v30) = v15;
  v34 = 2;
  v35[0] = a3;
  v35[1] = a4;
  *&v36 = v14;
  *(&v36 + 1) = v10;
  *&v37 = v12;
  *(&v37 + 1) = v11;
  v38 = 0u;
  v39 = 0u;
  v40 = v13;
  v42 = v13;
  memset(&v41[2], 0, 32);
  v41[0] = v36;
  v41[1] = v37;

  a5(a1, v26);
  outlined init with copy of [String : String](&v36, v26, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  specialized Material.subscript.setter(v41, a3, a4);
  v17 = v28;
  v16 = v29;
  if (v34 == 255)
  {

    v19 = *(v5 + 32);
    if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      v20 = *(v5 + 32);
      v21 = REMaterialParameterBlockValueCopy();

      *(v5 + 32) = v21;
    }

    specialized String.withCString<A>(_:)(v17, v16, v5 + 8);
  }

  else
  {
    v24[0] = v30;
    v24[1] = v31;
    v24[2] = v32;
    v24[3] = v33;
    v25 = v34;
    v18 = String.utf8CString.getter();
    v26[2] = v32;
    v26[3] = v33;
    v27 = v34;
    v26[0] = v30;
    v26[1] = v31;
    outlined init with copy of __RKMaterialParameterBlock.Parameter(v26, &v23);
    __RKMaterialParameterBlock.unsafeSet(parameter:value:)((v18 + 32), v24);

    outlined destroy of BodyTrackingComponent?(&v30, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  }

  outlined destroy of MaterialParameterKeyValue(&v28);
  return outlined destroy of MaterialParameterKeyValue(v35);
}

uint64_t specialized Material.setParameter<A>(_:alternateTintKey:)(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v10[0] = 0xD000000000000017;
  v10[1] = 0x80000001C18DDE20;
  v4 = a4;
  if (a2)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = a3;
  }

  else
  {
    v6 = 0;
  }

  if (!a2)
  {
    v4 = 0;
  }

  *&v11 = v5;
  *(&v11 + 1) = a2;
  *&v12 = v6;
  *(&v12 + 1) = v4;
  v13 = 0u;
  v14 = 0u;
  if (a2)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  v15 = v7;
  v17 = v7;
  v16[2] = v13;
  v16[3] = v14;
  v16[0] = v11;
  v16[1] = v12;
  outlined copy of MaterialParameters.Texture?(a1, a2);

  outlined init with copy of [String : String](&v11, &v9, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  specialized Material.subscript.setter(v16, 0xD000000000000017, 0x80000001C18DDE20);
  return outlined destroy of MaterialParameterKeyValue(v10);
}

{
  v10[0] = 0xD000000000000016;
  v10[1] = 0x80000001C18E2B00;
  v4 = a4;
  if (a2)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = a3;
  }

  else
  {
    v6 = 0;
  }

  if (!a2)
  {
    v4 = 0;
  }

  *&v11 = v5;
  *(&v11 + 1) = a2;
  *&v12 = v6;
  *(&v12 + 1) = v4;
  v13 = 0u;
  v14 = 0u;
  if (a2)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  v15 = v7;
  v17 = v7;
  v16[2] = v13;
  v16[3] = v14;
  v16[0] = v11;
  v16[1] = v12;
  outlined copy of MaterialParameters.Texture?(a1, a2);

  outlined init with copy of [String : String](&v11, &v9, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  specialized Material.subscript.setter(v16, 0xD000000000000016, 0x80000001C18E2B00);
  return outlined destroy of MaterialParameterKeyValue(v10);
}

uint64_t specialized static __MaterialResource.createAssetRef(named:in:)(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = specialized static __ServiceLocator.shared.getter();
  v35[0] = a1;
  v35[1] = a2;
  lazy protocol witness table accessor for type String and conformance String();

  v7 = *(StringProtocol.components<A>(separatedBy:)() + 16);

  swift_beginAccess();
  outlined init with copy of __REAssetService(v6 + 120, v35);
  v8 = v36;
  v9 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  (*(v9 + 32))(v8, v9);
  if (a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = [objc_opt_self() mainBundle];
  }

  v11 = a3;
  v38 = a1;
  v12 = MEMORY[0x1C68F3280](a1, a2);
  if (v7 == 1)
  {
    v13 = MEMORY[0x1C68F3280](0x69726574616D6572, 0xEA00000000006C61);
  }

  else
  {
    v13 = 0;
  }

  AssetHandle = REAssetManagerAssetHandleCreateWithBundleResource();

  __swift_destroy_boxed_opaque_existential_1(v35);
  if (AssetHandle)
  {
    v15 = v38;
  }

  else
  {
    v15 = v38;
    if (one-time initialization token for resourceCoreLogger != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, resourceCoreLogger);
    v17 = v11;

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v34 = v19;
      v20 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v35[0] = v33;
      *v20 = 136315394;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, a2, v35);
      *(v20 + 12) = 2080;
      v21 = v17;
      if (!a3)
      {
        v21 = [objc_opt_self() mainBundle];
      }

      v22 = v17;
      v23 = [v21 bundlePath];

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v35);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_1C1358000, v18, v34, "Could not resolve material name '%s' in bundle at '%s'. Loading via asset path.", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6902A30](v33, -1, -1);
      MEMORY[0x1C6902A30](v20, -1, -1);

      v15 = v38;
    }

    else
    {
    }

    outlined init with copy of __REAssetService(v6 + 120, v35);
    v28 = v36;
    v29 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    (*(v29 + 32))(v28, v29);
    String.utf8CString.getter();
    AssetHandle = REAssetManagerCreateAssetHandle();

    __swift_destroy_boxed_opaque_existential_1(v35);
    if (!AssetHandle)
    {
      lazy protocol witness table accessor for type __MaterialResource.LoadError and conformance __MaterialResource.LoadError();
      swift_allocError();
      *v31 = v15;
      *(v31 + 8) = a2;
      *(v31 + 16) = 0;
      *(v31 + 24) = 0;
      *(v31 + 32) = 0;
      goto LABEL_21;
    }
  }

  if (REAssetHandleAssetType() != 2)
  {
    lazy protocol witness table accessor for type __MaterialResource.LoadError and conformance __MaterialResource.LoadError();
    swift_allocError();
    *v30 = v15;
    *(v30 + 8) = a2;
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    *(v30 + 32) = 2;
LABEL_21:
    swift_willThrow();

    return AssetHandle;
  }

  return AssetHandle;
}

unint64_t lazy protocol witness table accessor for type __MaterialResource.LoadError and conformance __MaterialResource.LoadError()
{
  result = lazy protocol witness table cache variable for type __MaterialResource.LoadError and conformance __MaterialResource.LoadError;
  if (!lazy protocol witness table cache variable for type __MaterialResource.LoadError and conformance __MaterialResource.LoadError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __MaterialResource.LoadError and conformance __MaterialResource.LoadError);
  }

  return result;
}

uint64_t partial apply for closure #1 in static __MaterialResource.loadAsync(named:in:services:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  return closure #1 in static __MaterialResource.loadAsync(named:in:services:)(v0[2], v0[3], v0[4], v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void outlined consume of __MaterialColorParameter(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void *outlined copy of MaterialParameters.Texture?(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
  }

  return result;
}

id outlined copy of __MaterialColorParameter(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return a1;
  }
}

uint64_t outlined consume of MaterialScalarParameter(uint64_t result)
{
  if (result < 0)
  {
  }

  return result;
}

uint64_t outlined copy of MaterialScalarParameter(uint64_t result)
{
  if (result < 0)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __MaterialResource.BuildParameters.Value and conformance __MaterialResource.BuildParameters.Value()
{
  result = lazy protocol witness table cache variable for type __MaterialResource.BuildParameters.Value and conformance __MaterialResource.BuildParameters.Value;
  if (!lazy protocol witness table cache variable for type __MaterialResource.BuildParameters.Value and conformance __MaterialResource.BuildParameters.Value)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __MaterialResource.BuildParameters.Value and conformance __MaterialResource.BuildParameters.Value);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MaterialScalarParameter and conformance MaterialScalarParameter()
{
  result = lazy protocol witness table cache variable for type MaterialScalarParameter and conformance MaterialScalarParameter;
  if (!lazy protocol witness table cache variable for type MaterialScalarParameter and conformance MaterialScalarParameter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialScalarParameter and conformance MaterialScalarParameter);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __MaterialColorParameter and conformance __MaterialColorParameter()
{
  result = lazy protocol witness table cache variable for type __MaterialColorParameter and conformance __MaterialColorParameter;
  if (!lazy protocol witness table cache variable for type __MaterialColorParameter and conformance __MaterialColorParameter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __MaterialColorParameter and conformance __MaterialColorParameter);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for __MaterialResource.BuildParameters(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for __MaterialResource.BuildParameters(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for __MaterialResource.BuildParameters.Value(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for __MaterialResource.BuildParameters.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t getEnumTagSinglePayload for AnyMaterial(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for AnyMaterial(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10RealityKit16__REAssetService_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy139_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 123) = *(a2 + 123);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SimpleMaterial(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 139))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SimpleMaterial(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 138) = 0;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 139) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 139) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VideoMaterial(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t storeEnumTagSinglePayload for VideoMaterial(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MaterialScalarParameter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF && *(a1 + 8))
  {
    return (*a1 + 15);
  }

  v3 = (((*a1 >> 60) >> 3) & 0xFFFFFFF1 | (2 * ((*a1 >> 60) & 7))) ^ 0xF;
  if (v3 >= 0xE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for MaterialScalarParameter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE)
  {
    *result = a2 - 15;
    if (a3 >= 0xF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = (((-a2 >> 1) & 7) - 8 * a2) << 60;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for __MaterialColorParameter(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for __MaterialColorParameter(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for LegacyBaseColor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for LegacyBaseColor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10RealityKit26__RKMaterialParameterBlockV0D0O(uint64_t a1)
{
  if ((*(a1 + 64) & 0x1Fu) <= 0x12)
  {
    return *(a1 + 64) & 0x1F;
  }

  else
  {
    return (*a1 + 19);
  }
}

uint64_t get_enum_tag_for_layout_string_10RealityKit26__RKMaterialParameterBlockV0D0OSg(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 > 0x13)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy81_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MaterialParameterKeyValue(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t storeEnumTagSinglePayload for MaterialParameterKeyValue(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10RealityKit18__MaterialResourceC9LoadError33_9EE676C6BF85CB90ED28207BC474779ELLO(uint64_t a1)
{
  if ((*(a1 + 32) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t getEnumTagSinglePayload for __MaterialResource.LoadError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for __MaterialResource.LoadError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for __MaterialResource.LoadError(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type __MaterialResource.CoreMaterialFunction and conformance __MaterialResource.CoreMaterialFunction()
{
  result = lazy protocol witness table cache variable for type __MaterialResource.CoreMaterialFunction and conformance __MaterialResource.CoreMaterialFunction;
  if (!lazy protocol witness table cache variable for type __MaterialResource.CoreMaterialFunction and conformance __MaterialResource.CoreMaterialFunction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __MaterialResource.CoreMaterialFunction and conformance __MaterialResource.CoreMaterialFunction);
  }

  return result;
}