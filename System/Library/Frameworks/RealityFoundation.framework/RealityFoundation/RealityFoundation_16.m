uint64_t protocol witness for Collection.indices.getter in conformance Entity.ComponentSet.Indices@<X0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance Entity.ComponentSet.Indices(void *a1)
{
  v3 = *v1;
  v5[0] = *a1;
  v5[1] = v3;
  result = Entity.ComponentSet.index(after:)(v5, &v6);
  *a1 = v6;
  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance Entity.ComponentSet.Indices@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = result.n128_u64[0];
  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance Entity.ComponentSet.Indices()
{
  v1 = *v0;
  v2 = v0[2];
  v6[0] = v0[1];
  v6[1] = v1;
  v5 = v2;

  v3 = Entity.ComponentSet.distance(from:to:)(v6, &v5);

  return v3;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance Entity.ComponentSet.Indices()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0, v0[1], v0[2]);

  return v1;
}

uint64_t Entity.ComponentSet.indices.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;

  v4 = *(v3 + 16);
  if (REEntityGetComponentCount() < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      if (Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)())
      {
        break;
      }

      ++v5;
      v6 = *(v3 + 16);
    }

    while (v5 < REEntityGetComponentCount());
  }

  v7 = *(v3 + 16);
  result = REEntityGetComponentCount();
  *a1 = v3;
  a1[1] = v5;
  a1[2] = result;
  return result;
}

uint64_t protocol witness for Collection.startIndex.getter in conformance Entity.ComponentSet@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v4[0] = -1;
  v4[1] = v2;
  return Entity.ComponentSet.index(after:)(v4, a1);
}

uint64_t protocol witness for Collection.endIndex.getter in conformance Entity.ComponentSet@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 16);
  result = REEntityGetComponentCount();
  *a1 = result;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance Entity.ComponentSet(uint64_t *a1, uint64_t *a2))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  Entity.ComponentSet.subscript.getter(a2, v4);
  return protocol witness for Collection.subscript.read in conformance PhysicsJoints;
}

uint64_t Entity.ComponentSet.Indices.index(before:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v6[0] = *a1;
  v6[1] = v4;

  Entity.ComponentSet.index(before:)(v6, a2);
}

uint64_t Entity.ComponentSet.index(before:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v4 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = *v2;
    while (1)
    {
      v6 = *(v5 + 16);
      result = REEntityGetComponentCount();
      if (result < 1)
      {
        i = 0;
      }

      else
      {
        for (i = 0; i < result; ++i)
        {
          result = Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)();
          if (result)
          {
            break;
          }

          v8 = *(v5 + 16);
          result = REEntityGetComponentCount();
        }
      }

      if (i >= v4)
      {
        break;
      }

      result = Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)();
      if (result)
      {
        break;
      }

      --v4;
    }

    *a2 = v4;
  }

  return result;
}

uint64_t protocol witness for Collection.index(after:) in conformance Entity.ComponentSet.Indices(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v6 = *v4;
  v8[0] = *a1;
  v8[1] = v6;

  a4(v8);
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance Entity.ComponentSet.Indices(uint64_t *a1)
{
  v3 = *v1;
  v5[0] = *a1;
  v5[1] = v3;

  Entity.ComponentSet.index(before:)(v5, a1);
}

uint64_t protocol witness for Collection.distance(from:to:) in conformance Entity.ComponentSet.Indices(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2;
  v8[0] = *a1;
  v8[1] = v4;
  v7 = v3;

  v5 = Entity.ComponentSet.distance(from:to:)(v8, &v7);

  return v5;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance Entity.ComponentSet(uint64_t *a1)
{
  v2 = *v1;
  v4[0] = *a1;
  v4[1] = v2;
  return Entity.ComponentSet.index(before:)(v4, a1);
}

void *specialized static Entity.ComponentSet.Iterator.buildSnapshot(_:)(uint64_t a1)
{
  type metadata accessor for __ServiceLocator();
  v2 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 80, v55);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit14__SceneService_pMd, &_s10RealityKit14__SceneService_pMR);
  type metadata accessor for SceneManager();
  swift_dynamicCast();
  v3 = v53[3];
  v4 = *(a1 + 16);
  ComponentCount = REEntityGetComponentCount();
  if (ComponentCount > 0)
  {
    v6 = ComponentCount;
    swift_beginAccess();
    v7 = 0;
    v52 = MEMORY[0x1E69E7CC0];
    v49 = a1;
    v50 = v6;
    while (1)
    {
      v8 = *(a1 + 16);
      ComponentAtIndex = REEntityGetComponentAtIndex();
      Class = REComponentGetClass();
      v11 = *(v3 + 16);
      swift_beginAccess();
      v12 = *(v11 + 24);
      if (*(v12 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(Class), (v14 & 1) != 0))
      {
        v15 = *(v12 + 56) + 80 * v13;
        if (*(v15 + 48) == 2)
        {
          v51 = &v48;
          v16 = *(v15 + 16);
          v17 = *(v15 + 24);
          v18 = *(v16 - 8);
          v19 = *(v18 + 64);
          v20 = MEMORY[0x1EEE9AC00](v13);
          v21 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
          v53[0] = ComponentAtIndex;
          (*(v17 + 64))(v53, v16, v17, v20);
          v22 = v52;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v54 = v22;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22[2] + 1, 1, v22);
            v22 = isUniquelyReferenced_nonNull_native;
            v54 = isUniquelyReferenced_nonNull_native;
          }

          v25 = v22[2];
          v24 = v22[3];
          if (v25 >= v24 >> 1)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v22);
            v52 = isUniquelyReferenced_nonNull_native;
            v54 = isUniquelyReferenced_nonNull_native;
          }

          else
          {
            v52 = v22;
          }

          v26 = MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
          v27 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v18 + 16))(v27, v21, v16, v26);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v25, v27, &v54, v16, v17);
          (*(v18 + 8))(v21, v16);
LABEL_25:
          v6 = v50;
        }
      }

      else
      {
        if (one-time initialization token for handlesToCustomComponentTypes != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v28 = static SceneManager.handlesToCustomComponentTypes;
        if (*(static SceneManager.handlesToCustomComponentTypes + 16))
        {
          v29 = specialized __RawDictionaryStorage.find<A>(_:)(Class);
          if (v30)
          {
            v31 = (*(v28 + 56) + 16 * v29);
            v32 = *v31;
            v33 = v31[1];
            swift_endAccess();
            Object = RECustomComponentGetObject();
            if (!Object)
            {
              goto LABEL_4;
            }

            v35 = Object;
            v36 = *(v3 + 16);
            v37 = swift_beginAccess();
            if (*(*(v36 + 16) + 16))
            {
              v37 = specialized __RawDictionaryStorage.find<A>(_:)(v32);
              if (v38)
              {
                goto LABEL_4;
              }
            }

            v51 = &v48;
            v39 = *(v32 - 8);
            v40 = *(v39 + 64);
            v41 = MEMORY[0x1EEE9AC00](v37);
            (*(v33 + 32))(v35, v32, v33, v41);
            v42 = v52;
            v43 = swift_isUniquelyReferenced_nonNull_native();
            v54 = v42;
            if ((v43 & 1) == 0)
            {
              v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52[2] + 1, 1, v52);
              v52 = v43;
              v54 = v43;
            }

            v45 = v52[2];
            v44 = v52[3];
            if (v45 >= v44 >> 1)
            {
              v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v52);
              v52 = v43;
              v54 = v43;
            }

            v46 = MEMORY[0x1EEE9AC00](v43);
            (*(v39 + 16))(&v48 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0), &v48 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v46);
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v45, &v48 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0), &v54, v32, v33);
            (*(v39 + 8))(&v48 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0), v32);
            a1 = v49;
            goto LABEL_25;
          }
        }

        swift_endAccess();
      }

LABEL_4:
      if (v6 == ++v7)
      {

        return v52;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t lazy protocol witness table accessor for type Entity.ComponentSet.Iterator and conformance Entity.ComponentSet.Iterator()
{
  result = lazy protocol witness table cache variable for type Entity.ComponentSet.Iterator and conformance Entity.ComponentSet.Iterator;
  if (!lazy protocol witness table cache variable for type Entity.ComponentSet.Iterator and conformance Entity.ComponentSet.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ComponentSet.Iterator and conformance Entity.ComponentSet.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Entity.ComponentSet.Index and conformance Entity.ComponentSet.Index()
{
  result = lazy protocol witness table cache variable for type Entity.ComponentSet.Index and conformance Entity.ComponentSet.Index;
  if (!lazy protocol witness table cache variable for type Entity.ComponentSet.Index and conformance Entity.ComponentSet.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ComponentSet.Index and conformance Entity.ComponentSet.Index);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Entity.ComponentSet.Index and conformance Entity.ComponentSet.Index;
  if (!lazy protocol witness table cache variable for type Entity.ComponentSet.Index and conformance Entity.ComponentSet.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ComponentSet.Index and conformance Entity.ComponentSet.Index);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Entity.ComponentSet.Indices and conformance Entity.ComponentSet.Indices()
{
  result = lazy protocol witness table cache variable for type Entity.ComponentSet.Indices and conformance Entity.ComponentSet.Indices;
  if (!lazy protocol witness table cache variable for type Entity.ComponentSet.Indices and conformance Entity.ComponentSet.Indices)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ComponentSet.Indices and conformance Entity.ComponentSet.Indices);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Entity.ComponentSet.Indices and conformance Entity.ComponentSet.Indices;
  if (!lazy protocol witness table cache variable for type Entity.ComponentSet.Indices and conformance Entity.ComponentSet.Indices)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ComponentSet.Indices and conformance Entity.ComponentSet.Indices);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Entity.ComponentSet.Indices and conformance Entity.ComponentSet.Indices;
  if (!lazy protocol witness table cache variable for type Entity.ComponentSet.Indices and conformance Entity.ComponentSet.Indices)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ComponentSet.Indices and conformance Entity.ComponentSet.Indices);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Entity.ComponentSet and conformance Entity.ComponentSet()
{
  result = lazy protocol witness table cache variable for type Entity.ComponentSet and conformance Entity.ComponentSet;
  if (!lazy protocol witness table cache variable for type Entity.ComponentSet and conformance Entity.ComponentSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ComponentSet and conformance Entity.ComponentSet);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Entity.ComponentSet and conformance Entity.ComponentSet;
  if (!lazy protocol witness table cache variable for type Entity.ComponentSet and conformance Entity.ComponentSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ComponentSet and conformance Entity.ComponentSet);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Entity.ComponentSet and conformance Entity.ComponentSet;
  if (!lazy protocol witness table cache variable for type Entity.ComponentSet and conformance Entity.ComponentSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ComponentSet and conformance Entity.ComponentSet);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Slice<Entity.ComponentSet> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<Entity.ComponentSet> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<Entity.ComponentSet> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy10RealityKit6EntityC12ComponentSetVGMd, &_ss5SliceVy10RealityKit6EntityC12ComponentSetVGMR);
    lazy protocol witness table accessor for type Entity.ComponentSet and conformance Entity.ComponentSet();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<Entity.ComponentSet> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Entity.ComponentSet.Iterator(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for Entity.ComponentSet.Iterator(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

char *specialized static EmphasizeAnimations.createEmphasizeSpinAnimation(style:)(_BYTE *a1)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 148, 0, MEMORY[0x1E69E7CC0]);
      v1 = &static EmphasizeAnimations.playfulSpinAnimationData;
    }

    else
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 27, 0, MEMORY[0x1E69E7CC0]);
      v1 = &static EmphasizeAnimations.wildSpinAnimationData;
    }
  }

  else
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 97, 0, MEMORY[0x1E69E7CC0]);
    v1 = &static EmphasizeAnimations.basicSpinAnimationData;
  }

  v2 = *v1;

  specialized static EmphasizeAnimations.makeTransforms(_:_:)(v3, &v5);

  return v5;
}

uint64_t HasSynchronization.synchronization.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = *(a1 + 32);
  v3 = (*(*v1 + 112))(v6);
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA015SynchronizationD0V_TtB5(v7, 0, *v4);
  outlined destroy of BodyTrackingComponent?(v7, &_s10RealityKit24SynchronizationComponentVSgMd, &_s10RealityKit24SynchronizationComponentVSgMR);
  return v3(v6, 0);
}

uint64_t HasSynchronization.synchronization.getter@<X0>(uint64_t a1@<X8>)
{
  (*(*v1 + 96))(&v4);
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA015SynchronizationD0V_Tt0B5(v4, a1);
}

uint64_t key path setter for HasSynchronization.synchronization : <A>A(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = *a2;
  v8[0] = *a1;
  v8[1] = v2;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v5;
  outlined copy of SynchronizationComponent?(v8[0], v2, v3, v4);
  return HasSynchronization.synchronization.setter(v8);
}

void (*HasSynchronization.synchronization.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  *a1 = v7;
  v7[6] = a3;
  v7[7] = v3;
  v7[5] = a2;
  HasSynchronization.synchronization.getter(v7);
  return HasSynchronization.synchronization.modify;
}

void HasSynchronization.synchronization.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[7];
  v11[0] = v4;
  v11[1] = v5;
  v11[2] = v6;
  v11[3] = v7;
  v11[4] = v8;
  if (a2)
  {
    outlined copy of SynchronizationComponent?(v4, v5, v6, v7);
    HasSynchronization.synchronization.setter(v11);
    v10 = v3[4];
    outlined consume of SynchronizationComponent?(*v3, v3[1], v3[2], v3[3]);
  }

  else
  {
    HasSynchronization.synchronization.setter(v11);
  }

  free(v3);
}

uint64_t outlined copy of SynchronizationComponent?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 2)
  {
    return outlined copy of (Double, (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?)?(a3, a4);
  }

  return result;
}

uint64_t outlined consume of SynchronizationComponent?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 2)
  {
    return outlined consume of (Double, (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?)?(a3, a4);
  }

  return result;
}

uint64_t HasSynchronization.isOwner.getter()
{
  HasSynchronization.synchronization.getter(&v2);
  v0 = (v5 == 2) | v3;
  outlined consume of SynchronizationComponent?(v2, v3, v4, v5);
  return v0 & 1;
}

uint64_t HasSynchronization.requestOwnership(timeout:_:)(uint64_t (*a1)(__int128 *), uint64_t a2, double a3)
{
  if (HasSynchronization.isOwner.getter())
  {
    LOBYTE(v15) = 0;
    return a1(&v15);
  }

  else
  {
    HasSynchronization.synchronization.getter(&v15);
    v7 = v17;
    if (v17 == 2)
    {
      v8 = v15;
      v9 = v16;
      v11 = v15;
      v12 = v16;
      v13 = 2;
      v14 = v18;
      outlined copy of SynchronizationComponent?(v15, *(&v15 + 1), v16, 2);
      HasSynchronization.synchronization.setter(&v11);
      return outlined consume of SynchronizationComponent?(v8, *(&v8 + 1), v9, 2);
    }

    else
    {
      v10 = v16;

      outlined consume of (Double, (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?)?(v10, v7);
      v11 = v15;
      v12 = *&a3;
      v13 = a1;
      v14 = a2;
      return HasSynchronization.synchronization.setter(&v11);
    }
  }
}

uint64_t HasSynchronization.withUnsynchronized(_:)(uint64_t (*a1)(uint64_t))
{
  v3 = *(*v1 + 88);
  v3(&v7);
  RENetworkComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (ComponentByClass)
  {
    ComponentByClass = RENetworkComponentSetSuppressMarkDirty();
  }

  v5 = a1(ComponentByClass);
  (v3)(&v7, v5);
  RENetworkComponentGetComponentType();
  result = REEntityGetComponentByClass();
  if (result)
  {

    return RENetworkComponentSetSuppressMarkDirty();
  }

  return result;
}

double SynchronizationComponent.init()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 7) = 0;
  *a1 = 0;
  result = 0.0;
  *(a1 + 16) = xmmword_1C18A4F10;
  *(a1 + 32) = 0;
  return result;
}

double static SynchronizationComponent.__fromCore(_:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  IsAuthoritative = RENetworkComponentIsAuthoritative();
  ShouldAlwaysMigrate = RENetworkComponentShouldAlwaysMigrate();
  v6 = RENetworkComponentGuid();
  IsOwnershipLocked = RENetworkComponentIsOwnershipLocked();
  *a2 = v6;
  *(a2 + 8) = IsAuthoritative;
  *(a2 + 9) = ShouldAlwaysMigrate;
  *(a2 + 10) = IsOwnershipLocked;
  result = 0.0;
  *(a2 + 16) = xmmword_1C18A4F10;
  *(a2 + 32) = 0;
  return result;
}

uint64_t SynchronizationComponent.__toCore(_:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10FirstWhereVy_10RealityKit5SceneC9PublisherVy_AF21SynchronizationEventsO17OwnershipResponseVGGMd, &_s7Combine10PublishersO10FirstWhereVy_10RealityKit5SceneC9PublisherVy_AF21SynchronizationEventsO17OwnershipResponseVGGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - v6;
  v8 = *a1;
  v9 = *v1;
  v10 = *(v1 + 9);
  v11 = *(v1 + 10);
  v13 = v1[2];
  v12 = v1[3];
  v14 = v1[4];
  RENetworkComponentSetAlwaysMigrate();
  result = RENetworkComponentIsOwnershipLocked();
  if (v11 != result)
  {
    if ((v11 & 1) == 0)
    {
      result = RENetworkComponentUnlockEntity();
      if (v12 == 1)
      {
        return result;
      }

      goto LABEL_5;
    }

    result = RENetworkComponentLockEntity();
  }

  if (v12 == 1)
  {
    return result;
  }

LABEL_5:
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v12);
  result = RENetworkComponentIsAuthoritative();
  if (result)
  {
    if (v12)
    {
      LOBYTE(v28) = 0;
      outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v12);
      v12(&v28);
      outlined consume of (Double, (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?)?(v13, v12);
      return outlined consume of (Double, (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?)?(v13, v12);
    }
  }

  else
  {
    IsOwnershipLocked = RENetworkComponentIsOwnershipLocked();
    result = MEMORY[0x1C68FC510](v8, IsOwnershipLocked, 0, 0, *&v13);
    if (v12)
    {
      outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v12);
      REComponentGetEntity();
      SceneNullable = REEntityGetSceneNullable();
      if (SceneNullable)
      {
        v18 = SceneNullable;
        type metadata accessor for BoxedSubscription();
        v19 = swift_allocObject();
        *(v19 + 16) = 0u;
        v25 = v19 + 16;
        *(v19 + 32) = 0u;
        *(v19 + 48) = 0;
        v20 = RESceneGetSwiftObject();
        type metadata accessor for Scene();
        v26 = v4;
        if (v20)
        {
          swift_dynamicCastClassUnconditional();
        }

        else
        {
          swift_allocObject();
          Scene.init(coreScene:)(v18);
        }

        v30 = 0;
        v28 = 0u;
        v29 = 0u;
        _s10RealityKit5SceneC0A10FoundationE9publisher3for2on13componentTypeAC9PublisherVy_xGxm_AA11EventSource_pSgAA9Component_pXpSgtAA0K0RzlFAA21SynchronizationEventsO17OwnershipResponseV_Tt0g5(&v28, &v27);

        outlined destroy of BodyTrackingComponent?(&v28, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
        *&v28 = v27;
        *(swift_allocObject() + 16) = v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC9PublisherVy_AA21SynchronizationEventsO17OwnershipResponseVGMd, &_s10RealityKit5SceneC9PublisherVy_AA21SynchronizationEventsO17OwnershipResponseVGMR);
        lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.Publisher<SynchronizationEvents.OwnershipResponse> and conformance Scene.Publisher<A>, &_s10RealityKit5SceneC9PublisherVy_AA21SynchronizationEventsO17OwnershipResponseVGMd, &_s10RealityKit5SceneC9PublisherVy_AA21SynchronizationEventsO17OwnershipResponseVGMR);
        Publisher.first(where:)();

        v21 = swift_allocObject();
        v21[2] = v19;
        v21[3] = v12;
        v21[4] = v14;
        outlined copy of (Double, (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?)?(v13, v12);
        lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Publishers.FirstWhere<Scene.Publisher<SynchronizationEvents.OwnershipResponse>> and conformance Publishers.FirstWhere<A>, &_s7Combine10PublishersO10FirstWhereVy_10RealityKit5SceneC9PublisherVy_AF21SynchronizationEventsO17OwnershipResponseVGGMd, &_s7Combine10PublishersO10FirstWhereVy_10RealityKit5SceneC9PublisherVy_AF21SynchronizationEventsO17OwnershipResponseVGGMR);

        v22 = Publisher<>.sink(receiveValue:)();

        (*(v26 + 8))(v7, v3);
        *(&v29 + 1) = type metadata accessor for AnyCancellable();
        v30 = MEMORY[0x1E695BF08];
        outlined consume of (Double, (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?)?(v13, v12);
        outlined consume of (Double, (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?)?(v13, v12);
        *&v28 = v22;
        v23 = v25;
        swift_beginAccess();
        outlined assign with take of Cancellable?(&v28, v23);
        swift_endAccess();
      }

      else
      {
        outlined consume of (Double, (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?)?(v13, v12);

        return outlined consume of (Double, (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?)?(v13, v12);
      }
    }
  }

  return result;
}

BOOL closure #1 in SynchronizationComponent.__toCore(_:)(uint64_t *a1, uint64_t a2)
{
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA015SynchronizationD0V_Tt0B5(*a1, v6);
  v4 = v7 != 2 && v6[0] == a2;
  outlined consume of SynchronizationComponent?(v6[0], v6[1], v6[2], v7);
  return v4;
}

uint64_t closure #2 in SynchronizationComponent.__toCore(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *))
{
  swift_beginAccess();
  result = outlined init with copy of Cancellable?(a2 + 16, v7);
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(v7, v8);
    dispatch thunk of Cancellable.cancel()();
    __swift_destroy_boxed_opaque_existential_1(v7);
    LOBYTE(v7[0]) = *(a1 + 48);
    return a3(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static SynchronizationComponent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *a1 == *a2)
  {
    return (*(a2 + 10) ^ *(a1 + 10) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SynchronizationComponent(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *a1 == *a2)
  {
    return (*(a2 + 10) ^ *(a1 + 10) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *(*SynchronizationComponent.shouldMigrateOwnershipWhenAbandoned.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 9);
  return SynchronizationComponent.shouldMigrateOwnershipWhenAbandoned.modify;
}

uint64_t SynchronizationComponent.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v21 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v21 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v20 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - v7;
  v10 = *(v1 + 8);
  LOBYTE(v7) = *(v1 + 9);
  v11 = *(v1 + 10);
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[4];
  v23 = *v1;
  v9 = v23;
  v24 = v10;
  v25 = v7;
  v26 = v11;
  v27 = v12;
  v28 = v13;
  v29 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C1897FD0;
  *(v15 + 32) = 0x696669746E656469;
  *(v15 + 40) = 0xEA00000000007265;
  v16 = MEMORY[0x1E69E76D8];
  *(v15 + 48) = v9;
  *(v15 + 72) = v16;
  *(v15 + 80) = 0x72656E774F7369;
  *(v15 + 88) = 0xE700000000000000;
  v17 = MEMORY[0x1E69E6370];
  *(v15 + 96) = v10;
  *(v15 + 120) = v17;
  *(v15 + 128) = 0xD000000000000015;
  *(v15 + 136) = 0x80000001C18E2470;
  *(v15 + 168) = &type metadata for SynchronizationComponent.OwnershipTransferMode;
  *(v15 + 144) = v11;
  v18 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  (*(v2 + 104))(v20, *MEMORY[0x1E69E75D8], v21);
  outlined copy of (Double, (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?)?(v12, v13);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t _s10RealityKit5SceneC0A10FoundationE9publisher3for2on13componentTypeAC9PublisherVy_xGxm_AA11EventSource_pSgAA9Component_pXpSgtAA0K0RzlFAA0C6EventsO6UpdateV_Tt0g5@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGAF0G6EventsO0L0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGAF0G6EventsO0L0VGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v23 - v10;
  Scene.engineEventService.getter(v24);
  v12 = v25;
  if (v25)
  {
    v13 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    type metadata accessor for REEngineDoUpdateEvent(0);
    EventService.publisher<A>(for:on:)(v14, a1, v12, v14, v13);
    v12 = v23[0];
    v15 = v23[1];
    v16 = v23[2];
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v24, &_s17RealityFoundation12EventService_pSgMd, &_s17RealityFoundation12EventService_pSgMR);
    v15 = 0;
    v16 = 0;
  }

  swift_allocObject();
  swift_weakInit();
  if (v16)
  {
    v24[0] = v12;
    v24[1] = v15;
    v24[2] = v16;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REEngineDoUpdateEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGMR);
    Publisher.compactMap<A>(_:)();

    v17 = *(v5 + 32);
    v17(v11, v8, v4);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So21REEngineDoUpdateEventVGAH0I6EventsO0M0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So21REEngineDoUpdateEventVGAH0I6EventsO0M0VGGMR);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    v21 = swift_allocObject();
    result = (v17)(v21 + *(*v21 + *MEMORY[0x1E695BEE8] + 16), v11, v4);
  }

  else
  {

    v21 = 0;
  }

  *a2 = v21;
  return result;
}

uint64_t _s10RealityKit5SceneC0A10FoundationE9publisher3for2on13componentTypeAC9PublisherVy_xGxm_AA11EventSource_pSgAA9Component_pXpSgtAA0K0RzlFAA0C6EventsO6RenderV_Tt0g5@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So21REEngineDoRenderEventVGAF0G6EventsO0L0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So21REEngineDoRenderEventVGAF0G6EventsO0L0VGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v23 - v10;
  Scene.engineEventService.getter(v24);
  v12 = v25;
  if (v25)
  {
    v13 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    type metadata accessor for REEngineDoRenderEvent(0);
    EventService.publisher<A>(for:on:)(v14, a1, v12, v14, v13);
    v12 = v23[0];
    v15 = v23[1];
    v16 = v23[2];
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v24, &_s17RealityFoundation12EventService_pSgMd, &_s17RealityFoundation12EventService_pSgMR);
    v15 = 0;
    v16 = 0;
  }

  swift_allocObject();
  swift_weakInit();
  if (v16)
  {
    v24[0] = v12;
    v24[1] = v15;
    v24[2] = v16;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoRenderEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoRenderEventVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REEngineDoRenderEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoRenderEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoRenderEventVGMR);
    Publisher.compactMap<A>(_:)();

    v17 = *(v5 + 32);
    v17(v11, v8, v4);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So21REEngineDoRenderEventVGAH0I6EventsO0M0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So21REEngineDoRenderEventVGAH0I6EventsO0M0VGGMR);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    v21 = swift_allocObject();
    result = (v17)(v21 + *(*v21 + *MEMORY[0x1E695BEE8] + 16), v11, v4);
  }

  else
  {

    v21 = 0;
  }

  *a2 = v21;
  return result;
}

uint64_t _s10RealityKit5SceneC0A10FoundationE9publisher3for2on13componentTypeAC9PublisherVy_xGxm_AA11EventSource_pSgAA9Component_pXpSgtAA0K0RzlFAA21SynchronizationEventsO17OwnershipResponseV_Tt0g5@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So24REOwnershipResponseEventVGAF21SynchronizationEventsO09OwnershipK0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So24REOwnershipResponseEventVGAF21SynchronizationEventsO09OwnershipK0VGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v21 - v7;
  Scene.eventService.getter(v22);
  v9 = v23;
  v10 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  type metadata accessor for REOwnershipResponseEvent(0);
  EventService.publisher<A>(for:on:)(v11, a1, v9, v11, v10);
  v12 = v21[0];
  v13 = v21[1];
  v14 = v21[2];
  __swift_destroy_boxed_opaque_existential_1(v22);
  static os_log_type_t.info.getter();
  type metadata accessor for OS_os_log();
  v15 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  swift_allocObject();
  swift_weakInit();
  v22[0] = v12;
  v22[1] = v13;
  v22[2] = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So24REOwnershipResponseEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So24REOwnershipResponseEventVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REOwnershipResponseEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So24REOwnershipResponseEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So24REOwnershipResponseEventVGMR);
  Publisher.compactMap<A>(_:)();

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So24REOwnershipResponseEventVGAH21SynchronizationEventsO09OwnershipL0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So24REOwnershipResponseEventVGAH21SynchronizationEventsO09OwnershipL0VGGMR);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  result = (*(v5 + 32))(&v19[*(*v19 + *MEMORY[0x1E695BEE8] + 16)], v8, v4);
  *a2 = v19;
  return result;
}

unint64_t lazy protocol witness table accessor for type SynchronizationComponent.OwnershipTransferMode and conformance SynchronizationComponent.OwnershipTransferMode()
{
  result = lazy protocol witness table cache variable for type SynchronizationComponent.OwnershipTransferMode and conformance SynchronizationComponent.OwnershipTransferMode;
  if (!lazy protocol witness table cache variable for type SynchronizationComponent.OwnershipTransferMode and conformance SynchronizationComponent.OwnershipTransferMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SynchronizationComponent.OwnershipTransferMode and conformance SynchronizationComponent.OwnershipTransferMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SynchronizationComponent.OwnershipTransferCompletionResult and conformance SynchronizationComponent.OwnershipTransferCompletionResult()
{
  result = lazy protocol witness table cache variable for type SynchronizationComponent.OwnershipTransferCompletionResult and conformance SynchronizationComponent.OwnershipTransferCompletionResult;
  if (!lazy protocol witness table cache variable for type SynchronizationComponent.OwnershipTransferCompletionResult and conformance SynchronizationComponent.OwnershipTransferCompletionResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SynchronizationComponent.OwnershipTransferCompletionResult and conformance SynchronizationComponent.OwnershipTransferCompletionResult);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10RealityKit24SynchronizationComponentV33OwnershipTransferCompletionResultOIegn_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_Sd_10RealityKit24SynchronizationComponentV33OwnershipTransferCompletionResultOIegn_SgtSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for SynchronizationComponent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for SynchronizationComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t Atomic.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  specialized Atomic.wrappedValue.setter();
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void Atomic.load()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v8 = *(a1 + 16);
  v5 = **v2;
  v6 = *(v5 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v7));
  partial apply for closure #1 in Atomic.load()(v4 + v6, a2);
  os_unfair_lock_unlock((v4 + v7));
}

void Atomic.store(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v7 = *(a2 + 16);
  v4 = **v2;
  v5 = *(v4 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v6));
  partial apply for closure #1 in Atomic.store(_:)(v3 + v5);
  os_unfair_lock_unlock((v3 + v6));
}

void (*Atomic.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  v13 = *v2;
  Atomic.load()(a2, v11);
  return Atomic.wrappedValue.modify;
}

void Atomic.wrappedValue.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    Atomic.store(_:)(v3, v8);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    Atomic.store(_:)((*a1)[5], v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Atomic.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = specialized OSAllocatedUnfairLock.init(uncheckedState:)();
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v6;
  return result;
}

uint64_t specialized OSAllocatedUnfairLock.init(uncheckedState:)()
{
  type metadata accessor for os_unfair_lock_s(255);
  type metadata accessor for ManagedBuffer();
  return static ManagedBuffer.create(minimumCapacity:makingHeaderWith:)();
}

uint64_t type metadata instantiation function for Atomic()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t partial apply for closure #1 in Atomic.store(_:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v4 - 8);
  (*(v5 + 8))(a1, v4);
  return (*(v5 + 16))(a1, v3, v4);
}

uint64_t partial apply for closure #1 in OSAllocatedUnfairLock.init(uncheckedState:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

uint64_t OrbitEntityAction.pivotEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return outlined copy of ActionEntityResolution();
}

uint64_t OrbitEntityAction.pivotEntity.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *v1;
  v6 = v1[1];
  v7 = *(v1 + 16);
  result = outlined consume of ActionEntityResolution();
  *v1 = v2;
  v1[1] = v3;
  *(v1 + 16) = v4;
  return result;
}

_BYTE *(*OrbitEntityAction.orientToPath.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 48);
  return OrbitEntityAction.orientToPath.modify;
}

float32x4_t OrbitEntityAction.init(pivotEntity:revolutions:orbitalAxis:isOrientedToPath:isAdditive:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, float a5@<S0>, float32x4_t a6@<Q1>)
{
  v6 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v6;
  v7 = vmulq_f32(a6, a6);
  *&v8 = v7.f32[2] + vaddv_f32(*v7.f32);
  *(a4 + 20) = a5;
  v9 = vrsqrte_f32(v8);
  v10 = vmul_f32(v9, vrsqrts_f32(v8, vmul_f32(v9, v9)));
  result = vmulq_n_f32(a6, vmul_f32(v10, vrsqrts_f32(v8, vmul_f32(v10, v10))).f32[0]);
  *(a4 + 32) = result;
  *(a4 + 48) = a2;
  *(a4 + 49) = a3;
  return result;
}

float32x4_t OrbitEntityAction.init(pivotEntity:revolutions:orbitalAxis:orientToPath:isAdditive:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, float a5@<S0>, float32x4_t a6@<Q1>)
{
  v6 = *(a1 + 16);
  v7 = vmulq_f32(a6, a6);
  *&v8 = v7.f32[2] + vaddv_f32(*v7.f32);
  *v7.f32 = vrsqrte_f32(v8);
  *v7.f32 = vmul_f32(*v7.f32, vrsqrts_f32(v8, vmul_f32(*v7.f32, *v7.f32)));
  *a4 = *a1;
  *(a4 + 16) = v6;
  *(a4 + 20) = a5;
  result = vmulq_n_f32(a6, vmul_f32(*v7.f32, vrsqrts_f32(v8, vmul_f32(*v7.f32, *v7.f32))).f32[0]);
  *(a4 + 32) = result;
  *(a4 + 48) = a2;
  *(a4 + 49) = a3;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance OrbitEntityAction.CodingKeys()
{
  v1 = *v0;
  v2 = 0x746E45746F766970;
  v3 = 0x416C61746962726FLL;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x6974696464417369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6974756C6F766572;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance OrbitEntityAction.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized OrbitEntityAction.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OrbitEntityAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OrbitEntityAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OrbitEntityAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation17OrbitEntityActionV10CodingKeys33_6BD17F84D2F6DA3F41FAB53224DD7C6ELLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation17OrbitEntityActionV10CodingKeys33_6BD17F84D2F6DA3F41FAB53224DD7C6ELLOGMR);
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 16);
  v10 = *(v1 + 5);
  v17 = *(v1 + 2);
  v11 = *(v1 + 48);
  v18 = *(v1 + 49);
  v19 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of ActionEntityResolution();
  lazy protocol witness table accessor for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v23 = v7;
  *(&v23 + 1) = v8;
  v24 = v9;
  v13 = v3;
  v22 = 0;
  lazy protocol witness table accessor for type ActionEntityResolution and conformance ActionEntityResolution();
  v14 = v20;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v14)
  {
    outlined consume of ActionEntityResolution();
    return (*(v21 + 8))(v6, v3);
  }

  else
  {
    v16 = v21;
    outlined consume of ActionEntityResolution();
    LOBYTE(v23) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = v17;
    v22 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v23) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v23) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    return (*(v16 + 8))(v6, v13);
  }
}

unint64_t lazy protocol witness table accessor for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys);
  }

  return result;
}

uint64_t OrbitEntityAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation17OrbitEntityActionV10CodingKeys33_6BD17F84D2F6DA3F41FAB53224DD7C6ELLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation17OrbitEntityActionV10CodingKeys33_6BD17F84D2F6DA3F41FAB53224DD7C6ELLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  lazy protocol witness table accessor for type ActionEntityResolution and conformance ActionEntityResolution();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v21;
  v19 = v22;
  LOBYTE(v21) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  v20 = 2;
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v21;
  LOBYTE(v21) = 3;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v21) = 4;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 &= 1u;
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  *(a2 + 16) = v19;
  *(a2 + 20) = v13;
  *(a2 + 32) = v18;
  *(a2 + 48) = v17;
  *(a2 + 49) = v15 & 1;
  outlined copy of ActionEntityResolution();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined consume of ActionEntityResolution();
}

__n128 __swift_memcpy50_16(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for OrbitEntityAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 50))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for OrbitEntityAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t OrbitEntityActionHandler.actionStarted(event:)(float32x4_t *a1)
{
  v2 = v1;
  v3 = a1[13];
  v123 = a1[12];
  v124 = v3;
  v4 = a1[15];
  v125 = a1[14];
  v126 = v4;
  v5 = a1[9];
  v119 = a1[8];
  v120 = v5;
  v6 = a1[11];
  v121 = a1[10];
  v122 = v6;
  v7 = a1[5];
  v115 = a1[4];
  v116 = v7;
  v8 = a1[7];
  v117 = a1[6];
  v118 = v8;
  v9 = a1[1];
  v111 = *a1;
  v112 = v9;
  v10 = a1[3];
  v113 = a1[2];
  v114 = v10;
  specialized ActionEvent.animationState.getter(&v127);
  if (!v128.i64[1])
  {
    return outlined destroy of AnimationStateProtocol?(&v127);
  }

  outlined init with take of ForceEffectBase(&v127, v108);
  v11 = v115.i64[1];
  if (!v115.i64[1])
  {
    return __swift_destroy_boxed_opaque_existential_1(v108);
  }

  if ((*(v111.i64[0] + 40) & 1) != 0 || (Strong = swift_weakLoadStrong()) == 0)
  {
    *&v127 = 0;
    *(&v127 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(69);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v105 = &type metadata for OrbitEntityAction;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17OrbitEntityActionVmMd, &_s17RealityFoundation17OrbitEntityActionVmMR);
    v23 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v23);

    MEMORY[0x1C68F3410](0xD000000000000037, 0x80000001C18E2520);
    v24 = v127;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static AnimationLogger.logger);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v127 = v29;
      *v28 = 136315138;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, *(&v24 + 1), &v127);
      _os_log_impl(&dword_1C1358000, v26, v27, "%s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1C6902A30](v29, -1, -1);
      MEMORY[0x1C6902A30](v28, -1, -1);
    }

    goto LABEL_19;
  }

  v13 = Strong;
  v127 = v112;
  v128 = v113;
  v129 = v114;
  v130 = v115.i16[0];
  v101 = v112;
  v102 = v113.i8[0];

  outlined init with copy of OrbitEntityAction(&v127, &v105);
  v14 = ActionEntityResolution.resolve(from:)(v13);
  outlined consume of ActionEntityResolution();
  if (!v14)
  {
    *&v105 = 0;
    *(&v105 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    v101.i64[0] = &type metadata for OrbitEntityAction;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17OrbitEntityActionVmMd, &_s17RealityFoundation17OrbitEntityActionVmMR);
    v30 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v30);

    MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18E2560);
    v31 = v105;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static AnimationLogger.logger);

    v26 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v105 = v35;
      *v34 = 136315138;
      *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, *(&v31 + 1), &v105);
      _os_log_impl(&dword_1C1358000, v26, v33, "%s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1C6902A30](v35, -1, -1);
      MEMORY[0x1C6902A30](v34, -1, -1);
    }

LABEL_19:

    goto LABEL_20;
  }

  v15 = *v1;
  *v2 = v14;
  swift_retain_n();

  v16 = specialized HasHierarchy.parent.getter();

  v99.i64[0] = v11;
  v100 = v13;
  v97 = v2;
  if (!v16)
  {
    *v36.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v14, 0);
    v98 = v36;
    v95 = v37;
    v94 = v38;

    REMakeSRTFromMatrix();
    v96 = v39;
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    goto LABEL_29;
  }

  result = specialized HasHierarchy.parent.getter();
  if (result)
  {
    v18 = result;
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    v95 = static Transform.identity;
    v91 = xmmword_1EBEB2BC0;
    v92 = xmmword_1EBEB2BB0;
    *v19.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v14, v18);
    v93 = v19;
    v94 = v20;
    v98 = v21;
    specialized simd_float4x4.init(translation:rotation:scale:)(*&v91, v92, *&v95);
    REMakeSRTFromMatrix();
    v96 = v22;
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

LABEL_29:
    v41 = v109;
    v40 = v110;
    __swift_project_boxed_opaque_existential_1(v108, v109);
    v42 = *(v40 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v44 = type metadata accessor for Optional();
    v98.i64[0] = &v91;
    v45 = *(v44 - 8);
    v46 = *(v45 + 64);
    MEMORY[0x1EEE9AC00](v44);
    v48 = &v91 - v47;
    v42(v41, v40);
    v49 = *(AssociatedTypeWitness - 8);
    if ((*(v49 + 48))(v48, 1, AssociatedTypeWitness) == 1)
    {
      (*(v45 + 8))(v48, v44);
    }

    else
    {
      v103 = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v101);
      (*(v49 + 32))(boxed_opaque_existential_1, v48, AssociatedTypeWitness);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimatableData_pMd, &_s17RealityFoundation14AnimatableData_pMR);
      if (swift_dynamicCast())
      {
        v51 = v106;
        v52 = v107;
        v53 = v97;
        v94 = v106;
        v95 = v105;
        *(v97 + 5) = v105;
        *(v53 + 6) = v51;
        v93 = v52;
        v54 = vsubq_f32(v52, v96);
        v54.i32[3] = 0;
        v96 = v54;
        *(v53 + 7) = v54;
        v55 = specialized HasHierarchy.parent.getter();
        v56 = v129;
        if (v55)
        {
          v98 = v129;
          *v57.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(0, v55);
          *v60.i64 = simd_float4x4.transform(normal:)(v98, v57, v58, v59);
          v98 = v60;

          v56 = v98;
        }

        v61 = vmulq_f32(v96, v96);
        *&v62 = v61.f32[2] + vaddv_f32(*v61.f32);
        *v61.f32 = vrsqrte_f32(v62);
        *v61.f32 = vmul_f32(*v61.f32, vrsqrts_f32(v62, vmul_f32(*v61.f32, *v61.f32)));
        v63 = vmulq_n_f32(v96, vmul_f32(*v61.f32, vrsqrts_f32(v62, vmul_f32(*v61.f32, *v61.f32))).f32[0]);
        v64 = vextq_s8(vuzp1q_s32(v63, v63), v63, 0xCuLL);
        v65 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL), vnegq_f32(v63)), v56, v64);
        v66 = vextq_s8(vuzp1q_s32(v65, v65), v65, 0xCuLL);
        v67 = vmulq_f32(v65, v65);
        *&v68 = v67.f32[1] + (v67.f32[2] + v67.f32[0]);
        *v67.f32 = vrsqrte_f32(v68);
        *v67.f32 = vmul_f32(*v67.f32, vrsqrts_f32(v68, vmul_f32(*v67.f32, *v67.f32)));
        v69 = vmulq_n_f32(v66, vmul_f32(*v67.f32, vrsqrts_f32(v68, vmul_f32(*v67.f32, *v67.f32))).f32[0]);
        v70 = vmulq_f32(v69, v69);
        if ((v70.f32[2] + vaddv_f32(*v70.f32)) <= 0.00001)
        {
          *&v105 = 0;
          *(&v105 + 1) = 0xE000000000000000;
          v98 = v56;
          _StringGuts.grow(_:)(140);
          MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
          v101.i64[0] = &type metadata for OrbitEntityAction;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17OrbitEntityActionVmMd, &_s17RealityFoundation17OrbitEntityActionVmMR);
          v82 = String.init<A>(describing:)();
          MEMORY[0x1C68F3410](v82);

          MEMORY[0x1C68F3410](0xD00000000000002FLL, 0x80000001C18E25C0);
          v101 = v98;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
          lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>);
          v83 = SIMD.description.getter();
          MEMORY[0x1C68F3410](v83);

          MEMORY[0x1C68F3410](0xD00000000000004DLL, 0x80000001C18E25F0);
          v84 = v105;
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v85 = type metadata accessor for Logger();
          __swift_project_value_buffer(v85, static AnimationLogger.logger);

          v86 = Logger.logObject.getter();
          v87 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v86, v87))
          {
            v88 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            *&v105 = v89;
            *v88 = 136315138;
            *(v88 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, *(&v84 + 1), &v105);
            _os_log_impl(&dword_1C1358000, v86, v87, "%s", v88, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v89);
            MEMORY[0x1C6902A30](v89, -1, -1);
            MEMORY[0x1C6902A30](v88, -1, -1);
          }

          v75 = v98;
        }

        else
        {
          v98 = v64;
          v99 = v63;
          v96 = v69;

          v71 = vmlaq_f32(vmulq_f32(v98, vnegq_f32(v96)), v99, vextq_s8(vuzp1q_s32(v96, v96), v96, 0xCuLL));
          v72 = vextq_s8(vuzp1q_s32(v71, v71), v71, 0xCuLL);
          v73 = vmulq_f32(v71, v71);
          *&v74 = v73.f32[1] + (v73.f32[2] + v73.f32[0]);
          *v73.f32 = vrsqrte_f32(v74);
          *v73.f32 = vmul_f32(*v73.f32, vrsqrts_f32(v74, vmul_f32(*v73.f32, *v73.f32)));
          v75 = vmulq_n_f32(v72, vmul_f32(*v73.f32, vrsqrts_f32(v74, vmul_f32(*v73.f32, *v73.f32))).f32[0]);
        }

        *(v53 + 1) = v75;
        if ((v130 & 0x100) != 0)
        {
          v90 = v94;
          *(v53 + 2) = v95;
          *(v53 + 3) = v90;
          *(v53 + 4) = v93;
        }

        return __swift_destroy_boxed_opaque_existential_1(v108);
      }
    }

    *&v105 = 0;
    *(&v105 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    strcpy(&v105, "Handler for ");
    BYTE13(v105) = 0;
    HIWORD(v105) = -5120;
    v101.i64[0] = &type metadata for OrbitEntityAction;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17OrbitEntityActionVmMd, &_s17RealityFoundation17OrbitEntityActionVmMR);
    v76 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v76);

    MEMORY[0x1C68F3410](0xD00000000000001ELL, 0x80000001C18E25A0);
    v77 = v105;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    __swift_project_value_buffer(v78, static AnimationLogger.logger);

    v26 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *&v105 = v81;
      *v80 = 136315138;
      *(v80 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, *(&v77 + 1), &v105);
      _os_log_impl(&dword_1C1358000, v26, v79, "%s", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v81);
      MEMORY[0x1C6902A30](v81, -1, -1);
      MEMORY[0x1C6902A30](v80, -1, -1);
    }

LABEL_20:

    return __swift_destroy_boxed_opaque_existential_1(v108);
  }

  __break(1u);
  return result;
}

uint64_t OrbitEntityActionHandler.actionUpdated(event:)(_OWORD *a1)
{
  v2 = a1[13];
  v53 = a1[12];
  v54 = v2;
  v3 = a1[15];
  v55 = a1[14];
  v56 = v3;
  v4 = a1[9];
  v49 = a1[8];
  v50 = v4;
  v5 = a1[11];
  v51 = a1[10];
  v52 = v5;
  v6 = a1[5];
  v45 = a1[4];
  v46 = v6;
  v7 = a1[7];
  v47 = a1[6];
  v48 = v7;
  v8 = a1[1];
  v44[0] = *a1;
  v44[1] = v8;
  v9 = a1[3];
  v44[2] = a1[2];
  v44[3] = v9;
  specialized ActionEvent.animationState.getter(&v32);
  if (!*(&v33 + 1))
  {
    return outlined destroy of AnimationStateProtocol?(&v32);
  }

  outlined init with take of ForceEffectBase(&v32, v29);
  if ((v51 & 1) == 0)
  {
    v10 = *(&v50 + 1);
    v11 = fmin(fabs(*(&v50 + 1) + -1.0), *(&v50 + 1));
    v12 = v11 <= 0.0001;
    if (v11 > 0.0001 || (*(v1 + 176) & 1) != 0 || vabdd_f64(*(v1 + 184), *(&v50 + 1)) > 0.0001)
    {
      v13 = *(v1 + 144);
      v40 = *(v1 + 128);
      v41 = v13;
      v14 = *(v1 + 176);
      v42 = *(v1 + 160);
      v43 = v14;
      v15 = *(v1 + 80);
      v36 = *(v1 + 64);
      v37 = v15;
      v16 = *(v1 + 112);
      v38 = *(v1 + 96);
      v39 = v16;
      v17 = *(v1 + 16);
      v32 = *v1;
      v33 = v17;
      v18 = *(v1 + 48);
      v34 = *(v1 + 32);
      v35 = v18;
      OrbitEntityActionHandler.computeOrbitTransform(event:normalizedTime:isAdditive:)(v44, BYTE1(v45) & 1, *(&v50 + 1));
      v26 = v20;
      v27 = v19;
      v25 = v21;
      if (v12)
      {
        *(v1 + 128) = v19;
        *(v1 + 144) = v20;
        *(v1 + 160) = v21;
        *(v1 + 176) = 0;
      }

      else
      {
        *(v1 + 144) = 0u;
        *(v1 + 160) = 0u;
        *(v1 + 128) = 0u;
        *(v1 + 176) = 1;
      }
    }

    else
    {
      v27 = *(v1 + 128);
      v26 = *(v1 + 144);
      v25 = *(v1 + 160);
    }

    v23 = v30;
    v24 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    v28[0] = v27;
    v28[1] = v26;
    v28[2] = v25;
    (*(v24 + 64))(v28, &type metadata for Transform, v23, v24);
    *(v1 + 184) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v29);
}

void OrbitEntityActionHandler.computeOrbitTransform(event:normalizedTime:isAdditive:)(uint64_t a1, char a2, double a3)
{
  v4 = *v3;
  if (*v3)
  {
    v5 = v3;
    if (*(a1 + 72))
    {
      v8 = *(a1 + 36);
      v9 = *(a1 + 64);
      v10 = *(a1 + 80);
      v11 = *(a1 + 72);

      outlined init with copy of OrbitEntityActionHandler(v3, v55);
      if (!specialized HasHierarchy.parent.getter())
      {
        _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v4, 0);
        REMakeSRTFromMatrix();
        v54 = v32;
        if (one-time initialization token for identity != -1)
        {
          swift_once();
        }

        v15 = 1;
LABEL_26:
        v33 = -v8;
        v34 = 1.0 - a3;
        if (!v10)
        {
          v34 = a3;
          v33 = v8;
        }

        v35 = v34;
        *&v36 = vmulq_n_f32(*(v3 + 16), __sincosf_stret((v33 * (v35 * 6.2832)) * 0.5).__sinval).u64[0];
        if (v15)
        {
          if (a2)
          {
LABEL_30:
            v37 = *(v3 + 48);
            v38 = *(v3 + 64);
            v39 = *(v3 + 32);
            RESRTInverse();
            *v43.i64 = specialized static Transform.* infix(_:_:)(v40, v41, v42, xmmword_1C1887620);
            v45 = *(v3 + 80);
            v46 = *(v3 + 96);
            v47 = *(v3 + 112);
LABEL_33:
            specialized static Transform.* infix(_:_:)(v43, v36, v44, v45);
            outlined destroy of OrbitEntityActionHandler(v3);

            return;
          }
        }

        else
        {
          v52 = v36;
          swift_once();
          v36 = v52;
          if (a2)
          {
            goto LABEL_30;
          }
        }

        v45 = *(v3 + 80);
        v48 = *(v3 + 112);
        v43 = xmmword_1C1887620;
        v44 = v54;
        v50 = *(v3 + 96);
        goto LABEL_33;
      }

      v12 = specialized HasHierarchy.parent.getter();
      if (v12)
      {
        v13 = v12;
        if (one-time initialization token for identity != -1)
        {
          swift_once();
        }

        v51 = xmmword_1EBEB2BB0;
        v53 = *&static Transform.identity;
        v49 = *&xmmword_1EBEB2BC0;
        outlined init with copy of OrbitEntityActionHandler(v3, v55);
        _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v4, v13);
        specialized simd_float4x4.init(translation:rotation:scale:)(v49, v51, v53);
        REMakeSRTFromMatrix();
        v54 = v14;
        if (one-time initialization token for identity != -1)
        {
          swift_once();
        }

        outlined destroy of OrbitEntityActionHandler(v3);
        v15 = one-time initialization token for identity == -1;
        goto LABEL_26;
      }

      __break(1u);
    }

    else
    {
      v56 = 0;
      v57 = 0xE000000000000000;
      outlined init with copy of OrbitEntityActionHandler(v3, v55);
      _StringGuts.grow(_:)(43);

      strcpy(v55, "Handler for ");
      BYTE5(v55[1]) = 0;
      HIWORD(v55[1]) = -5120;
      v56 = &type metadata for OrbitEntityAction;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17OrbitEntityActionVmMd, &_s17RealityFoundation17OrbitEntityActionVmMR);
      v24 = String.init<A>(describing:)();
      MEMORY[0x1C68F3410](v24);

      MEMORY[0x1C68F3410](0xD00000000000001DLL, 0x80000001C18E2500);
      v26 = v55[0];
      v25 = v55[1];
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static AnimationLogger.logger);

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v55[0] = v31;
        *v30 = 136315138;
        *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v25, v55);
        _os_log_impl(&dword_1C1358000, v28, v29, "%s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        MEMORY[0x1C6902A30](v31, -1, -1);
        MEMORY[0x1C6902A30](v30, -1, -1);
      }

      if (one-time initialization token for identity != -1)
      {
        swift_once();
      }

      outlined destroy of OrbitEntityActionHandler(v5);
    }
  }

  else
  {
    _StringGuts.grow(_:)(42);

    strcpy(v55, "Handler for ");
    BYTE5(v55[1]) = 0;
    HIWORD(v55[1]) = -5120;
    v56 = &type metadata for OrbitEntityAction;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17OrbitEntityActionVmMd, &_s17RealityFoundation17OrbitEntityActionVmMR);
    v16 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v16);

    MEMORY[0x1C68F3410](0xD00000000000001CLL, 0x80000001C18E24E0);
    v18 = v55[0];
    v17 = v55[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static AnimationLogger.logger);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v55[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, v55);
      _os_log_impl(&dword_1C1358000, v20, v21, "%s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1C6902A30](v23, -1, -1);
      MEMORY[0x1C6902A30](v22, -1, -1);
    }

    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }
  }
}

uint64_t specialized OrbitEntityAction.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E45746F766970 && a2 == 0xEB00000000797469;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974756C6F766572 && a2 == 0xEB00000000736E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x416C61746962726FLL && a2 == 0xEB00000000736978 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C18E24C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6974696464417369 && a2 == 0xEA00000000006576)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy192_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t getEnumTagSinglePayload for OrbitEntityActionHandler(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 192))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for OrbitEntityActionHandler(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    result = REKeyValueComponentGetStringValue();
    if (result)
    {
      return String.init(cString:)();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    result = _StringGuts._slowWithCString<A>(_:)();
    if (!v2)
    {
      return v4;
    }
  }

  return result;
}

{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    v3 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v3 + 120, v8);
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v5 + 32))(v4, v5);
    String.utf8CString.getter();
    AssetHandle = REAssetManagerCreateAssetHandle();

    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    AssetHandle = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13OpaquePointerVSgMd, &_ss13OpaquePointerVSgMR);
    _StringGuts._slowWithCString<A>(_:)();
    if (!v2)
    {
      return v11;
    }
  }

  return AssetHandle;
}

uint64_t __RKEntityPlayTimelineAction.__allocating_init(targetEntity:animationLibraryComponentEntity:animationLibraryKey:animationLibraryKeyOverrideEntity:animationLibraryKeyOverrideKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 160) = 0u;
  *(v14 + 176) = 0u;
  *(v14 + 192) = 0u;
  *(v14 + 208) = 0u;
  *(v14 + 224) = 0u;
  *(v14 + 240) = 0;
  *(v14 + 112) = a2;
  *(v14 + 120) = a3;
  *(v14 + 128) = a4;
  *(v14 + 136) = a5;
  *(v14 + 144) = a6;
  *(v14 + 152) = a7;
  v15 = __RKEntityAction.init(targetEntity:)(0);
  swift_beginAccess();
  v16 = *(v15 + 16);
  *(v15 + 16) = a1;

  swift_beginAccess();
  *(v15 + 105) = 0;

  return v15;
}

uint64_t __RKEntityPlayTimelineAction.init(targetEntity:animationLibraryComponentEntity:animationLibraryKey:animationLibraryKeyOverrideEntity:animationLibraryKeyOverrideKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 240) = 0;
  *(v7 + 208) = 0u;
  *(v7 + 224) = 0u;
  *(v7 + 176) = 0u;
  *(v7 + 192) = 0u;
  *(v7 + 160) = 0u;
  *(v7 + 112) = a2;
  *(v7 + 120) = a3;
  *(v7 + 128) = a4;
  *(v7 + 136) = a5;
  *(v7 + 144) = a6;
  *(v7 + 152) = a7;
  v9 = __RKEntityAction.init(targetEntity:)(0);
  swift_beginAccess();
  v10 = *(v9 + 16);
  *(v9 + 16) = a1;

  swift_beginAccess();
  *(v9 + 105) = 0;

  return v9;
}

uint64_t __RKEntityPlayTimelineAction.startAnimations(targetEntity:)(uint64_t a1)
{
  v2 = v1;
  v43 = 91;
  v44 = 0xE100000000000000;
  v49 = 0;
  v50 = 0xE000000000000000;
  v48 = a1;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v4 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v4);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v5 = v1[14];
  if (!v5)
  {
    v43 = 91;
    v44 = 0xE100000000000000;
    v9 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v9, &v43);

    return 0;
  }

  v6 = v1[14];

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation016AnimationLibraryD0V_Tt0B5(v5, &v43);
  v7 = v43;
  if (v43 == 1)
  {
    v43 = 91;
    v44 = 0xE100000000000000;
    v8 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v8, &v43);

    return 0;
  }

  v39 = v5;
  v40 = 0xE100000000000000;
  v35 = v1;
  v36 = 91;
  v10 = v45;
  v12 = v46;
  v11 = v47;
  v13 = v2[17];
  v41 = v44;
  v42 = v46;
  if (!v13)
  {

    outlined copy of String??(v10, v12);

    v20 = v11;
LABEL_13:
    v17 = v2[15];
    v19 = v2[16];

    goto LABEL_14;
  }

  v37 = v45;
  v38 = v47;
  v14 = v2[19];
  if (!v14)
  {

    v10 = v37;
    outlined copy of String??(v37, v12);
    v20 = v38;

    goto LABEL_13;
  }

  v15 = v2[18];
  v16 = *(v13 + 16);
  outlined copy of AnimationLibraryComponent?(v43, v44, v37, v46);

  REKeyValueComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {

    v10 = v37;
    v20 = v38;
    goto LABEL_13;
  }

  v17 = specialized String.withCString<A>(_:)(v15, v14);
  v19 = v18;

  v10 = v37;
  v20 = v38;
  if (!v19)
  {
    goto LABEL_13;
  }

LABEL_14:
  v21 = v41;
  v43 = v7;
  v44 = v41;
  v22 = v42;
  v45 = v10;
  v46 = v42;
  v47 = v20;
  v23 = AnimationLibraryComponent.AnimationCollection.subscript.getter(v17, v19);

  if (v23)
  {

    v34[4] = v7;
    outlined consume of AnimationLibraryComponent?(v7, v41, v10, v42);
    REAnimationHandoffDefaultDescEx();
    v24 = v44;
    v25 = v45;
    v26 = *(a1 + 16);
    REAnimationComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    v27 = *(v23 + 16);
    v43 = 2;
    LODWORD(v44) = v24;
    v45 = v25;
    LOBYTE(v46) = 0;
    v28 = REAnimationComponentPlay();
    type metadata accessor for AnimationPlaybackController();
    swift_allocObject();

    v30 = AnimationPlaybackController.init(entity:identifier:withObservation:)(v29, v28, 1);
    outlined consume of AnimationLibraryComponent?(v7, v41, v10, v42);

    return v30;
  }

  v32 = outlined consume of AnimationLibraryComponent?(v7, v41, v10, v42);
  MEMORY[0x1EEE9AC00](v32);
  v34[2] = v35;
  v34[3] = v39;
  v43 = v36;
  v44 = v40;
  v33 = static os_log_type_t.error.getter();
  specialized InteractionsLogger.log(_:_:)(v33, &v43, partial apply for implicit closure #3 in __RKEntityPlayTimelineAction.startAnimations(targetEntity:), v34);
  outlined consume of AnimationLibraryComponent?(v7, v21, v10, v22);

  return 0;
}

uint64_t implicit closure #3 in __RKEntityPlayTimelineAction.startAnimations(targetEntity:)(void *a1, uint64_t a2)
{
  _StringGuts.grow(_:)(89);
  MEMORY[0x1C68F3410](0xD00000000000001DLL, 0x80000001C18E2740);
  v4 = a1[17];
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = a1[19];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = a1[18];
  v7 = *(v4 + 16);
  v8 = a1[17];

  REKeyValueComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {

LABEL_7:
    v9 = a1[15];
    v11 = a1[16];

    goto LABEL_8;
  }

  v9 = specialized String.withCString<A>(_:)(v6, v5);
  v11 = v10;

  if (!v11)
  {
    goto LABEL_7;
  }

LABEL_8:
  MEMORY[0x1C68F3410](v9, v11);

  MEMORY[0x1C68F3410](0xD000000000000038, 0x80000001C18E2760);
  v12 = *(a2 + 16);
  REEntityGetName();
  v13 = String.init(cString:)();
  MEMORY[0x1C68F3410](v13);

  return 0;
}

uint64_t __RKEntityPlayTimelineAction.stopAnimations(targetEntity:)(uint64_t a1)
{
  v8 = 0;
  v9 = 0xE000000000000000;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v3 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v3);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v4 = *(a1 + 16);
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

  v8 = 91;
  v9 = 0xE100000000000000;
  v5 = static os_log_type_t.debug.getter();
  specialized InteractionsLogger.log(_:_:)(v5, &v8);

  v6 = *(v1 + 160);
  *(v1 + 160) = 0;
}

uint64_t __RKEntityPlayTimelineAction.perform(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGAF15AnimationEventsO08PlaybackL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGAF15AnimationEventsO08PlaybackL0VGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v65 - v7;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGAF15AnimationEventsO08PlaybackL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGAF15AnimationEventsO08PlaybackL0VGMR);
  v9 = *(v72 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v12 = &v65 - v11;
  v73 = *(a1 + 8);
  swift_beginAccess();
  v13 = *(v2 + 16);
  v81 = 91;
  v82 = 0xE100000000000000;
  if (v13)
  {
    v77 = 0;
    v78 = 0xE000000000000000;
    v86 = v13;

    _print_unlocked<A, B>(_:_:)();
    v14 = v77;
    v15 = v78;
  }

  else
  {
    v15 = 0xE300000000000000;
    v14 = 7104878;
  }

  MEMORY[0x1C68F3410](v14, v15);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v16 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v16);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v18 = v81;
  v17 = v82;
  v19 = *(v2 + 16);
  if (!v19)
  {
    v59 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v59, &v81);

    return 0;
  }

  swift_beginAccess();
  if (*(v2 + 104) != 1 || *(v2 + 96) != 1)
  {
    v67 = v18;
    v68 = v8;
    v69 = v5;
    v70 = v4;
    v71 = v17;

LABEL_11:
    v21 = __RKEntityPlayTimelineAction.startAnimations(targetEntity:)(v19);
    v22 = *(v2 + 160);
    *(v2 + 160) = v21;

    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = v19;
    v25 = *(v2 + 32);
    v26 = *(v2 + 40);
    *(v2 + 32) = partial apply for closure #1 in __RKEntityPlayTimelineAction.perform(with:);
    *(v2 + 40) = v24;

    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v25);

    v27 = *(v2 + 96);
    v28 = *(v2 + 104);
    *(v2 + 96) = 1;
    *(v2 + 104) = 1;
    v81 = v27;
    LOBYTE(v82) = v28;
    __RKEntityAction.state.didset(&v81);
    v66 = type metadata accessor for Entity();
    v79 = v66;
    v80 = &protocol witness table for Entity;
    v77 = v19;
    v29 = swift_allocObject();
    swift_weakInit();

    Scene.eventService.getter(&v81);
    v30 = v84;
    v31 = v85;
    __swift_project_boxed_opaque_existential_1(&v81, v84);
    type metadata accessor for REAnimationHasCompletedEvent(0);
    EventService.publisher<A>(for:on:)(v32, &v77, v30, v32, v31);
    v33 = v74;
    v34 = v75;
    v35 = v76;
    __swift_destroy_boxed_opaque_existential_1(&v81);
    *(swift_allocObject() + 16) = 0;
    v81 = v33;
    v82 = v34;
    v83 = v35;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMR);
    v65 = &protocol conformance descriptor for Scene.CorePublisher<A>;
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationHasCompletedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMR);
    Publisher.compactMap<A>(_:)();

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So28REAnimationHasCompletedEventVGAH15AnimationEventsO08PlaybackM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So28REAnimationHasCompletedEventVGAH15AnimationEventsO08PlaybackM0VGGMR);
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    v39 = swift_allocObject();
    (*(v9 + 32))(&v39[*(*v39 + *MEMORY[0x1E695BEE8] + 16)], v12, v72);
    v81 = v39;
    v40 = swift_allocObject();
    *(v40 + 16) = partial apply for closure #2 in __RKEntityPlayTimelineAction.perform(with:);
    *(v40 + 24) = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.Publisher<AnimationEvents.PlaybackCompleted> and conformance Scene.Publisher<A>, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMR);
    v41 = Publisher<>.sink(receiveValue:)();

    v42 = type metadata accessor for AnyCancellable();
    v84 = v42;
    v85 = MEMORY[0x1E695BF08];

    v81 = v41;
    outlined destroy of BodyTrackingComponent?(&v77, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v81, v2 + 168);
    swift_endAccess();
    v79 = v66;
    v80 = &protocol witness table for Entity;
    v77 = v19;
    v43 = swift_allocObject();
    swift_weakInit();

    Scene.eventService.getter(&v81);
    v44 = v84;
    v45 = v85;
    __swift_project_boxed_opaque_existential_1(&v81, v84);
    type metadata accessor for REAnimationHasTerminatedEvent(0);
    EventService.publisher<A>(for:on:)(v46, &v77, v44, v46, v45);
    v47 = v74;
    v48 = v75;
    v49 = v76;
    __swift_destroy_boxed_opaque_existential_1(&v81);
    *(swift_allocObject() + 16) = 0;
    v81 = v47;
    v82 = v48;
    v83 = v49;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationHasTerminatedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMR);
    v50 = v68;
    Publisher.compactMap<A>(_:)();

    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29REAnimationHasTerminatedEventVGAH15AnimationEventsO08PlaybackM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29REAnimationHasTerminatedEventVGAH15AnimationEventsO08PlaybackM0VGGMR);
    v52 = *(v51 + 48);
    v53 = *(v51 + 52);
    v54 = swift_allocObject();
    (*(v69 + 32))(&v54[*(*v54 + *MEMORY[0x1E695BEE8] + 16)], v50, v70);
    v81 = v54;
    v55 = swift_allocObject();
    *(v55 + 16) = partial apply for closure #3 in __RKEntityPlayTimelineAction.perform(with:);
    *(v55 + 24) = v43;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.Publisher<AnimationEvents.PlaybackTerminated> and conformance Scene.Publisher<A>, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMR);
    v56 = Publisher<>.sink(receiveValue:)();
    v57 = 1;

    v84 = v42;
    v85 = MEMORY[0x1E695BF08];

    v81 = v56;
    outlined destroy of BodyTrackingComponent?(&v77, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v81, v2 + 208);
    swift_endAccess();
    v81 = v67;
    v82 = v71;
    v58 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v58, &v81);
    goto LABEL_12;
  }

  swift_beginAccess();
  if (!*(v2 + 105))
  {
    v67 = v18;
    v68 = v8;
    v69 = v5;
    v70 = v4;
    v71 = v17;

    __RKEntityPlayTimelineAction.stopAnimations(targetEntity:)(v61);
    goto LABEL_11;
  }

  if (*(v2 + 105) == 1)
  {
    v81 = v18;
    v82 = v17;

    v20 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v20, &v81);

    return 0;
  }

  v62 = *(v2 + 96);
  v63 = *(v2 + 104);
  *(v2 + 96) = 2;
  v57 = 1;
  *(v2 + 104) = 1;
  v81 = v62;
  LOBYTE(v82) = v63;

  __RKEntityAction.state.didset(&v81);
  v81 = v18;
  v82 = v17;
  v64 = static os_log_type_t.error.getter();
  specialized InteractionsLogger.log(_:_:)(v64, &v81);
LABEL_12:

  return v57;
}

uint64_t closure #1 in __RKEntityPlayTimelineAction.perform(with:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    if (*(v4 + 192))
    {
      outlined init with copy of __REAssetService(v4 + 168, &v5);
      __swift_project_boxed_opaque_existential_1(&v5, *(&v6 + 1));
      dispatch thunk of Cancellable.cancel()();
      __swift_destroy_boxed_opaque_existential_1(&v5);
    }

    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v5, v4 + 168);
    swift_endAccess();
    swift_beginAccess();
    if (*(v4 + 232))
    {
      outlined init with copy of __REAssetService(v4 + 208, &v5);
      __swift_project_boxed_opaque_existential_1(&v5, *(&v6 + 1));
      dispatch thunk of Cancellable.cancel()();
      __swift_destroy_boxed_opaque_existential_1(&v5);
    }

    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v5, v4 + 208);
    swift_endAccess();
    __RKEntityPlayTimelineAction.stopAnimations(targetEntity:)(a2);
  }

  return result;
}

uint64_t closure #2 in __RKEntityPlayTimelineAction.perform(with:)(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + 160);
    if (v4 && *(v1 + 16) == *(v4 + 16) && *(v1 + 32) == *(v4 + 32))
    {
      swift_beginAccess();
      v5 = *(v3 + 96);
      v6 = *(v3 + 104);
      *(v3 + 96) = 2;
      *(v3 + 104) = 1;
      v7 = v5;
      v8 = v6;

      __RKEntityAction.state.didset(&v7);
    }

    else
    {
    }
  }

  return result;
}

uint64_t __RKEntityPlayTimelineAction.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v1[2];
  v5 = v1[14];
  v6 = v1[15];
  v7 = v1[16];
  v8 = v1[17];
  v10 = v1[18];
  v9 = v1[19];
  v11 = swift_allocObject();
  *(v11 + 160) = 0u;
  *(v11 + 176) = 0u;
  *(v11 + 192) = 0u;
  *(v11 + 208) = 0u;
  *(v11 + 224) = 0u;
  *(v11 + 240) = 0;
  *(v11 + 112) = v5;
  *(v11 + 120) = v6;
  *(v11 + 128) = v7;
  *(v11 + 136) = v8;
  *(v11 + 144) = v10;
  *(v11 + 152) = v9;

  v12 = __RKEntityAction.init(targetEntity:)(0);
  swift_beginAccess();
  v13 = *(v12 + 16);
  *(v12 + 16) = v4;

  swift_beginAccess();
  *(v12 + 105) = 0;

  a1[3] = v3;
  *a1 = v12;
  return result;
}

uint64_t __RKEntityPlayTimelineAction.clone(matching:newEntity:)(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v1[2];
  if (v4 && *(a1 + 16) == *(v4 + 16))
  {
    v6 = v1[14];
    v7 = v1[15];
    v8 = v1[16];
    v9 = v1[17];
    v11 = v1[18];
    v10 = v1[19];
    v12 = swift_allocObject();
    *(v12 + 160) = 0u;
    *(v12 + 176) = 0u;
    *(v12 + 192) = 0u;
    *(v12 + 208) = 0u;
    *(v12 + 224) = 0u;
    *(v12 + 240) = 0;
    *(v12 + 112) = v6;
    *(v12 + 120) = v7;
    *(v12 + 128) = v8;
    *(v12 + 136) = v9;
    *(v12 + 144) = v11;
    *(v12 + 152) = v10;

    v13 = __RKEntityAction.init(targetEntity:)(0);
    swift_beginAccess();
    v14 = *(v13 + 16);
    *(v13 + 16) = v4;

    swift_beginAccess();
    result = v13;
    *(v13 + 105) = 0;
  }

  else
  {
    __RKEntityPlayTimelineAction.copy(with:)(v16);
    type metadata accessor for __RKEntityAction();
    if (swift_dynamicCast())
    {
      return v15;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t __RKEntityPlayTimelineAction.__ivar_destroyer()
{
  v1 = v0[14];

  v2 = v0[16];

  v3 = v0[17];

  v4 = v0[19];

  v5 = v0[20];

  outlined destroy of BodyTrackingComponent?((v0 + 21), &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return outlined destroy of BodyTrackingComponent?((v0 + 26), &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
}

uint64_t __RKEntityPlayTimelineAction.deinit()
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
  v6 = *(v0 + 112);

  v7 = *(v0 + 128);

  v8 = *(v0 + 136);

  v9 = *(v0 + 152);

  v10 = *(v0 + 160);

  outlined destroy of BodyTrackingComponent?(v0 + 168, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 208, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return v0;
}

uint64_t __RKEntityPlayTimelineAction.__deallocating_deinit()
{
  __RKEntityPlayTimelineAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t outlined copy of String??(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t outlined copy of AnimationLibraryComponent?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result != 1)
  {

    outlined copy of String??(a3, a4);
  }

  return result;
}

uint64_t partial apply for closure #1 in __RKEntityPlayTimelineAction.resolvedAnimationLibraryKey.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = REKeyValueComponentGetStringValue();
  if (result)
  {
    result = String.init(cString:)();
  }

  else
  {
    v5 = 0;
  }

  *a1 = result;
  a1[1] = v5;
  return result;
}

char *HasModel.jointNames.getter()
{
  v1 = *(v0 + 16);
  RESkeletalPoseComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RESkeletalPoseComponentEnsureSkeletalPosesInitialized();
  if (!RESkeletalPoseComponentGetSkeletonCount())
  {
    return MEMORY[0x1E69E7CC0];
  }

  JointCount = RESkeletalPoseComponentGetJointCount();
  if (!JointCount)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = JointCount;
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, JointCount & ~(JointCount >> 63), 0, MEMORY[0x1E69E7CC0]);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = result;
    v6 = 0;
    do
    {
      RESkeletalPoseComponentGetJointName();
      v7 = String.init(cString:)();
      v10 = *(v5 + 2);
      v9 = *(v5 + 3);
      if (v10 >= v9 >> 1)
      {
        v12 = v7;
        v13 = v8;
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v5);
        v8 = v13;
        v5 = v14;
        v7 = v12;
      }

      ++v6;
      *(v5 + 2) = v10 + 1;
      v11 = &v5[16 * v10];
      *(v11 + 4) = v7;
      *(v11 + 5) = v8;
    }

    while (v3 != v6);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t HasModel.jointTransforms.getter()
{
  v1 = *(v0 + 16);
  RESkeletalPoseComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  if (!RESkeletalPoseComponentCanAccessPostUpdatePoses())
  {
    RESkeletalPoseComponentEnsureSkeletalPosesInitialized();
    if (RESkeletalPoseComponentGetSkeletonCount())
    {
      result = RESkeletalPoseComponentGetJointCount();
      if (result)
      {
        if ((result & 0x8000000000000000) == 0)
        {
          v3 = result;
          v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          *(v4 + 16) = v3;
          RESkeletalPoseComponentGetJointTransforms();
          goto LABEL_10;
        }

        goto LABEL_13;
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  if (!RESkeletalPoseComponentPostUpdatePoseCount())
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = RESkeletalPoseComponentPostUpdatePoseJointCount();
  if (!result)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v3 = result;
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v4 + 16) = v3;
    PostUpdatePoseJoints = RESkeletalPoseComponentGetPostUpdatePoseJoints();
    memcpy((v4 + 32), PostUpdatePoseJoints, 48 * v3);
LABEL_10:
    result = v4;
    *(v4 + 16) = v3;
    return result;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t HasModel.jointTransforms.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_16;
  }

  v4 = *(v1 + 16);
  RESkeletalPoseComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
    goto LABEL_16;
  }

  if (RESkeletalPoseComponentCanAccessPostUpdatePoses())
  {
    if (RESkeletalPoseComponentPostUpdatePoseCount() && v2 == RESkeletalPoseComponentPostUpdatePoseJointCount())
    {
      RESkeletalPoseComponentSetPostUpdatePoseJoints();
    }

    goto LABEL_16;
  }

  RESkeletalPoseComponentEnsureSkeletalPosesInitialized();
  if (!RESkeletalPoseComponentGetSkeletonCount() || ((JointCount = RESkeletalPoseComponentGetJointCount(), v2 >= JointCount) ? (v6 = JointCount) : (v6 = v2), !JointCount))
  {
LABEL_16:
  }

  if (JointCount <= v2)
  {
    RESkeletalPoseComponentSetJointTransforms();
  }

  else
  {
    v7 = 0;
    v8 = (a1 + 64);
    do
    {
      v9 = v7 + 1;
      v10 = *(v8 - 1);
      v11 = *v8;
      v12 = *(v8 - 2);
      RESkeletalPoseComponentSetJointTransform();
      v8 += 3;
      v7 = v9;
    }

    while (v6 != v9);
  }

  return RENetworkMarkComponentDirty();
}

uint64_t (*HasModel.jointTransforms.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = HasModel.jointTransforms.getter();
  return HasModel.jointTransforms.modify;
}

uint64_t HasModel.jointTransforms.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[3];
  if ((a2 & 1) == 0)
  {
    return HasModel.jointTransforms.setter(*a1);
  }

  v4 = *a1;

  HasModel.jointTransforms.setter(v5);
}

uint64_t static BlendWeight.fromCore(blendTreeCore:nodeIndex:)@<X0>(uint64_t a1@<X8>)
{
  RETimelineDefinitionBlendTreeNodeGetWeight();
  v3 = v2;
  result = RETimelineDefinitionBlendTreeNodeGetWeightPath();
  if (!result)
  {
    goto LABEL_8;
  }

  v5 = String.init(cString:)();
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

LABEL_8:
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = v3;
    *(a1 + 24) = 0;
    return result;
  }

  static InternalBindPath.targetFromPath(_:)(v5, v6, v11);

  v8 = v11[1];
  if (v12 == 1)
  {
    *a1 = v11[0];
    *(a1 + 8) = v8;
    *(a1 + 16) = v3;
    v9 = 1;
  }

  else
  {
    v10 = v12 | (v3 << 32);
    *a1 = v11[0];
    *(a1 + 8) = v8;
    *(a1 + 16) = v10;
    v9 = 2;
  }

  *(a1 + 24) = v9;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BlendTreeNodeInternal.appendToBlendTreeDefinition(blendTreeDefinition:)(Swift::OpaquePointer blendTreeDefinition)
{
  v3 = v2;
  v4 = v1;
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v6 = (*(v3 + 8))(blendTreeDefinition._rawValue, &v12, v4, v3);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t _s17RealityFoundation21BlendTreeNodeInternalPAAE8fromCore05blenddH09nodeIndexAA0cdE0_ps13OpaquePointerV_SitFZAA0cdcE0V_Tt2g5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v37 = v4;
  v5 = RETimelineDefinitionBlendTreeNodeCount();
  if (v5 < 0)
  {
    goto LABEL_36;
  }

  v6 = v5;
  if (!v5)
  {
LABEL_29:
    _s17RealityFoundation21BlendTreeNodeInternalPAAE8fromCore05blenddH09nodeIndex0iE7NameMapAA0cdE0_ps13OpaquePointerV_SiSDySSSiGztFZAA0cdcE0V_Tt3g5(a1, &v37, a2);
  }

  v7 = 0;
  while (1)
  {
    if (!RETimelineDefinitionBlendTreeNodeGetName())
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(0, 0xE000000000000000);
      v24 = v4[2];
      v25 = (v23 & 1) == 0;
      v17 = __OFADD__(v24, v25);
      v26 = v24 + v25;
      if (v17)
      {
        goto LABEL_33;
      }

      v27 = v23;
      if (v4[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = v22;
          specialized _NativeDictionary.copy()();
          v22 = v33;
          if ((v27 & 1) == 0)
          {
LABEL_26:
            v4[(v22 >> 6) + 8] |= 1 << v22;
            v34 = (v4[6] + 16 * v22);
            *v34 = 0;
            v34[1] = 0xE000000000000000;
            *(v4[7] + 8 * v22) = v7;
            v35 = v4[2];
            v17 = __OFADD__(v35, 1);
            v31 = v35 + 1;
            if (v17)
            {
              goto LABEL_35;
            }

LABEL_27:
            v4[2] = v31;
            goto LABEL_5;
          }

          goto LABEL_22;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, isUniquelyReferenced_nonNull_native);
        v22 = specialized __RawDictionaryStorage.find<A>(_:)(0, 0xE000000000000000);
        if ((v27 & 1) != (v28 & 1))
        {
          goto LABEL_37;
        }
      }

      if ((v27 & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_22:
      *(v4[7] + 8 * v22) = v7;
      goto LABEL_5;
    }

    v9 = String.init(cString:)();
    v11 = v10;
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v11);
    v15 = v4[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (v4[3] >= v18)
    {
      if ((v12 & 1) == 0)
      {
        v32 = v13;
        specialized _NativeDictionary.copy()();
        v13 = v32;
        if ((v19 & 1) == 0)
        {
LABEL_17:
          v4[(v13 >> 6) + 8] |= 1 << v13;
          v29 = (v4[6] + 16 * v13);
          *v29 = v9;
          v29[1] = v11;
          *(v4[7] + 8 * v13) = v7;
          v30 = v4[2];
          v17 = __OFADD__(v30, 1);
          v31 = v30 + 1;
          if (v17)
          {
            goto LABEL_34;
          }

          goto LABEL_27;
        }

        goto LABEL_4;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, v12);
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v11);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_37;
      }
    }

    if ((v19 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_4:
    v8 = v13;

    *(v4[7] + 8 * v8) = v7;
LABEL_5:
    if (v6 == ++v7)
    {
      v37 = v4;
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation21BlendTreeNodeInternalPAAE8fromCore05blenddH09nodeIndex0iE7NameMapAA0cdE0_ps13OpaquePointerV_SiSDySSSiGztFZAA0cdcE0V_Tt3g5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  if (RETimelineDefinitionBlendTreeNodeGetName())
  {
    v6 = String.init(cString:)();
    specialized Dictionary._Variant.removeValue(forKey:)(v6, v7);
    v9 = v8;

    if (v9)
    {
      goto LABEL_8;
    }
  }

  if (RETimelineDefinitionBlendTreeNodeIsClipSource())
  {
    a3[3] = &type metadata for BlendTreeSourceNode;
    a3[4] = &protocol witness table for BlendTreeSourceNode;
    v10 = swift_allocObject();
    *a3 = v10;
    return BlendTreeSourceNode.init(core:nodeIndex:)(v10 + 16);
  }

  if (!RETimelineDefinitionBlendTreeNodeIsBlend())
  {
LABEL_8:
    a3[3] = &type metadata for BlendTreeInvalidNode;
    a3[4] = &protocol witness table for BlendTreeInvalidNode;
    result = swift_allocObject();
    *a3 = result;
    *(result + 16) = 0x64696C61766E69;
    *(result + 24) = 0xE700000000000000;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 32) = 0;
    *(result + 56) = 0;
  }

  else
  {
    a3[3] = &type metadata for BlendTreeBlendNode;
    a3[4] = &protocol witness table for BlendTreeBlendNode;
    v12 = swift_allocObject();
    *a3 = v12;
    if (RETimelineDefinitionBlendTreeNodeGetName())
    {
      v13 = String.init(cString:)();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0xE000000000000000;
    }

    IsBlendAdditive = RETimelineDefinitionBlendTreeNodeIsBlendAdditive();
    static BlendWeight.fromCore(blendTreeCore:nodeIndex:)(&v35);
    v17 = v35;
    v33 = v36;
    v32 = v37;
    result = RETimelineDefinitionBlendTreeConnectionCount();
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v18 = result;
      v30 = IsBlendAdditive;
      v31 = v12;
      if (result)
      {
        v19 = 0;
        v34 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          result = RETimelineDefinitionBlendTreeConnectionGetTarget();
          if (result)
          {
            if (v13 == String.init(cString:)() && v15 == v20)
            {

LABEL_20:
              result = RETimelineDefinitionBlendTreeConnectionGetSource();
              if (result)
              {
                v22 = String.init(cString:)();
                v24 = *a2;
                if (*(*a2 + 16))
                {
                  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v23);
                  v27 = v26;

                  if (v27)
                  {
                    _s17RealityFoundation21BlendTreeNodeInternalPAAE8fromCore05blenddH09nodeIndex0iE7NameMapAA0cdE0_ps13OpaquePointerV_SiSDySSSiGztFZAA0cdcE0V_Tt3g5(&v35, a1, *(*(v24 + 56) + 8 * v25), a2);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34[2] + 1, 1, v34);
                    }

                    v29 = v34[2];
                    v28 = v34[3];
                    if (v29 >= v28 >> 1)
                    {
                      v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v34);
                    }

                    v34[2] = v29 + 1;
                    result = outlined init with take of ForceEffectBase(&v35, &v34[5 * v29 + 4]);
                  }
                }

                else
                {
                }
              }

              goto LABEL_14;
            }

            v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v21)
            {
              goto LABEL_20;
            }
          }

LABEL_14:
          if (v18 == ++v19)
          {
            goto LABEL_29;
          }
        }
      }

      v34 = MEMORY[0x1E69E7CC0];
LABEL_29:
      *(v31 + 16) = v34;
      *(v31 + 24) = v30;
      *(v31 + 32) = v13;
      *(v31 + 40) = v15;
      *(v31 + 48) = v17;
      *(v31 + 64) = v33;
      *(v31 + 72) = v32;
    }
  }

  return result;
}

uint64_t BlendTreeSourceNode.init(core:nodeIndex:)@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  Name = RETimelineDefinitionBlendTreeNodeGetName();
  if (Name)
  {
    Name = String.init(cString:)();
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  *(a1 + 40) = Name;
  *(a1 + 48) = v3;
  static BlendWeight.fromCore(blendTreeCore:nodeIndex:)(&v15);
  v4 = v16;
  v5 = v17;
  *(a1 + 56) = v15;
  *(a1 + 72) = v4;
  *(a1 + 80) = v5;
  result = RETimelineDefinitionCreateBlendTreeNodeSourceRef();
  if (result)
  {
    v7 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v7 + 120, &v15);
    v8 = v17;
    v9 = v18;
    __swift_project_boxed_opaque_existential_1(&v15, v17);
    (*(v9 + 32))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(&v15);
    TimelineAsset = RETimelineDefinitionCreateTimelineAsset();
    if (TimelineAsset)
    {
      v11 = TimelineAsset;
      type metadata accessor for AnimationResource();
      v12 = swift_allocObject();
      v12[2] = v11;
      if (REAssetHandleAssetType() == 11)
      {
        REAnimationSceneAssetGetRootTimeline();
      }

      v13 = REAnimationAssetGetName();
      if (v13)
      {
        v13 = String.init(cString:)();
      }

      else
      {
        v14 = 0xE000000000000000;
      }

      v12[3] = v13;
      v12[4] = v14;
      RERetain();
      REAssetSetSwiftObject();
      AnimationResource.definition.getter(&v15);

      outlined assign with take of AnimationDefinition?(&v15, a1);
      RERelease();
    }

    return RERelease();
  }

  return result;
}

__n128 BlendTreeSourceNode.init(source:name:weight:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v12 = *a4;
  v9 = a4[1].n128_u64[0];
  v10 = a4[1].n128_u8[8];
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0;
  outlined destroy of BodyTrackingComponent?(a5, &_s17RealityFoundation19AnimationDefinition_pSgMd, &_s17RealityFoundation19AnimationDefinition_pSgMR);
  outlined init with take of ForceEffectBase(a1, a5);
  *(a5 + 40) = a2;
  *(a5 + 48) = a3;
  result = v12;
  *(a5 + 56) = v12;
  *(a5 + 72) = v9;
  *(a5 + 80) = v10;
  return result;
}

uint64_t BlendTreeSourceNode.name.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t BlendTreeSourceNode.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t BlendTreeSourceNode.weight.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 80);
  *(a1 + 24) = v5;
  return outlined copy of BlendWeight(v2, v3, v4, v5);
}

__n128 BlendTreeSourceNode.weight.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  outlined consume of BlendWeight(*(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  result = v5;
  *(v1 + 56) = v5;
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BlendTreeSourceNode.appendToBlendTreeDefinition(blendTreeDefinition:duplicateNameMap:)(Swift::OpaquePointer blendTreeDefinition, Swift::OpaquePointer *duplicateNameMap)
{
  v4 = v2;
  v7 = *(v2 + 40);
  v6 = *(v2 + 48);
  v39 = v7;
  v40 = v6;
  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
  }

  else
  {
    v7 = 0x656372756F53;
    v6 = 0xE600000000000000;
    v39 = 0x656372756F53;
    v40 = 0xE600000000000000;
  }

  rawValue = duplicateNameMap->_rawValue;
  if (!*(duplicateNameMap->_rawValue + 2))
  {
    goto LABEL_11;
  }

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
  if ((v11 & 1) == 0)
  {
    v18 = duplicateNameMap->_rawValue;
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38[0] = duplicateNameMap->_rawValue;
    v17 = 1;
    goto LABEL_12;
  }

  v12 = *(rawValue[7] + 8 * v10);
  v13 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
    goto LABEL_31;
  }

  v38[0] = 45;
  v38[1] = 0xE100000000000000;
  *&v34 = v12 + 1;
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v14);

  MEMORY[0x1C68F3410](45, 0xE100000000000000);

  v7 = v39;
  v6 = v40;
  v15 = duplicateNameMap->_rawValue;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38[0] = duplicateNameMap->_rawValue;
  v17 = v13;
LABEL_12:
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, v7, v6, isUniquelyReferenced_nonNull_native);
  duplicateNameMap->_rawValue = v38[0];
  outlined init with copy of [String : String](v4, &v34, &_s17RealityFoundation19AnimationDefinition_pSgMd, &_s17RealityFoundation19AnimationDefinition_pSgMR);
  if (!v36)
  {

    outlined destroy of BodyTrackingComponent?(&v34, &_s17RealityFoundation19AnimationDefinition_pSgMd, &_s17RealityFoundation19AnimationDefinition_pSgMR);
    lazy protocol witness table accessor for type AnimationError and conformance AnimationError();
    swift_allocError();
    *v20 = 0xD000000000000031;
    *(v20 + 8) = 0x80000001C18E27C0;
    *(v20 + 16) = 0;
    swift_willThrow();
    goto LABEL_16;
  }

  outlined init with take of ForceEffectBase(&v34, v38);
  type metadata accessor for AnimationResource();
  v19 = static AnimationResource.generate(with:)(v38);
  if (!v3)
  {
    v23 = *(v19 + 16);

    v24 = REAssetHandleAssetType();
    if (v24 == 11)
    {
      RootTimeline = REAnimationSceneAssetGetRootTimeline();

      if (RootTimeline)
      {
LABEL_21:
        v26 = RETimelineDefinitionCreateFromTimeline();

        if (v26)
        {
          v27 = specialized static __ServiceLocator.shared.getter();
          swift_beginAccess();
          outlined init with copy of __REAssetService(v27 + 120, &v34);
          v28 = v36;
          v29 = v37;
          __swift_project_boxed_opaque_existential_1(&v34, v36);
          (*(v29 + 32))(v28, v29);
          __swift_destroy_boxed_opaque_existential_1(&v34);
          if (*(v4 + 80))
          {
            v30 = *(v4 + 64);
            v31 = *(v4 + 72);
            if (*(v4 + 80) == 1)
            {
              *&v34 = *(v4 + 56);
              *(&v34 + 1) = v30;
              v35 = 1;
            }

            else
            {
              *&v34 = *(v4 + 56);
              *(&v34 + 1) = v30;
              v35 = v31;
            }

            specialized static InternalBindPath.pathFromTarget(_:_:)(&v34, 1);
          }

          String.utf8CString.getter();
          String.utf8CString.getter();
          RETimelineDefinitionBlendTreeAddTimelineSource();

          __swift_destroy_boxed_opaque_existential_1(v38);

          RERelease();
        }

        else
        {

          lazy protocol witness table accessor for type AnimationError and conformance AnimationError();
          swift_allocError();
          *v32 = 0xD000000000000038;
          *(v32 + 8) = 0x80000001C18E2800;
          *(v32 + 16) = 0;
          swift_willThrow();
          __swift_destroy_boxed_opaque_existential_1(v38);
        }

        goto LABEL_16;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v24 == 5)
    {

      goto LABEL_21;
    }

LABEL_31:

    __break(1u);
    goto LABEL_32;
  }

  __swift_destroy_boxed_opaque_existential_1(v38);

LABEL_16:
  v21 = v7;
  v22 = v6;
LABEL_33:
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t protocol witness for BlendTreeNode.name.getter in conformance BlendTreeSourceNode()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t protocol witness for BlendTreeNode.name.setter in conformance BlendTreeSourceNode(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t protocol witness for BlendTreeNode.weight.getter in conformance BlendTreeSourceNode@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 80);
  *(a1 + 24) = v5;
  return outlined copy of BlendWeight(v2, v3, v4, v5);
}

__n128 protocol witness for BlendTreeNode.weight.setter in conformance BlendTreeSourceNode(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  outlined consume of BlendWeight(*(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  result = v5;
  *(v1 + 56) = v5;
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
  return result;
}

double protocol witness for BlendTreeNodeInternal.duration.getter in conformance BlendTreeSourceNode()
{
  outlined init with copy of [String : String](v0, &v5, &_s17RealityFoundation19AnimationDefinition_pSgMd, &_s17RealityFoundation19AnimationDefinition_pSgMR);
  if (v6)
  {
    outlined init with take of ForceEffectBase(&v5, v7);
    v1 = v8;
    v2 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v3 = (*(v2 + 272))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v5, &_s17RealityFoundation19AnimationDefinition_pSgMd, &_s17RealityFoundation19AnimationDefinition_pSgMR);
    return 0.0;
  }

  return v3;
}

__n128 BlendTreeBlendNode.init(sources:name:weight:isAdditive:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X3>, unsigned __int8 a5@<W4>, __n128 *a6@<X8>)
{
  v6 = a4[1].n128_u64[0];
  v7 = a4[1].n128_u8[8];
  a6->n128_u64[0] = a1;
  a6->n128_u8[8] = a5;
  a6[1].n128_u64[0] = a2;
  a6[1].n128_u64[1] = a3;
  result = *a4;
  a6[2] = *a4;
  a6[3].n128_u64[0] = v6;
  a6[3].n128_u8[8] = v7;
  return result;
}

uint64_t BlendTreeBlendNode.sources.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t BlendTreeBlendNode.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t BlendTreeBlendNode.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t BlendTreeBlendNode.weight.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 56);
  *(a1 + 24) = v5;
  return outlined copy of BlendWeight(v2, v3, v4, v5);
}

__n128 BlendTreeBlendNode.weight.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  outlined consume of BlendWeight(*(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
  result = v5;
  *(v1 + 32) = v5;
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BlendTreeBlendNode.appendToBlendTreeDefinition(blendTreeDefinition:duplicateNameMap:)(Swift::OpaquePointer blendTreeDefinition, Swift::OpaquePointer *duplicateNameMap)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v8 = v2[2];
  v7 = v2[3];
  v46 = v2[4];
  v43 = v2[5];
  v9 = v2[6];
  v10 = *(v2 + 56);
  v61 = v8;
  v62 = v7;
  v11 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
  }

  else
  {
    v8 = 0x646E656C42;
    v7 = 0xE500000000000000;
    v61 = 0x646E656C42;
    v62 = 0xE500000000000000;
  }

  rawValue = duplicateNameMap->_rawValue;
  if (!*(duplicateNameMap->_rawValue + 2))
  {
    goto LABEL_11;
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
  if ((v14 & 1) == 0)
  {
    v22 = duplicateNameMap->_rawValue;
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = duplicateNameMap->_rawValue;
    v13 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(1, v8, v7, isUniquelyReferenced_nonNull_native);
    duplicateNameMap->_rawValue = v56;
    goto LABEL_12;
  }

  v51 = v5;
  v15 = duplicateNameMap;
  v16 = *(rawValue[7] + 8 * v13);
  v17 = v16 + 1;
  if (__OFADD__(v16, 1))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v56 = 45;
  v57 = 0xE100000000000000;
  v55[0] = v16 + 1;
  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v18);

  MEMORY[0x1C68F3410](45, 0xE100000000000000);

  v8 = v61;
  v7 = v62;
  v19._rawValue = v15->_rawValue;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v15->_rawValue;
  v21 = v17;
  duplicateNameMap = v15;
  v13 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, v61, v62, v20);
  v15->_rawValue = v56;
  v5 = v51;
LABEL_12:
  v42 = v9;
  v44 = v10;
  v45 = v6;
  v24 = *(v5 + 16);
  if (v24)
  {
    v49 = duplicateNameMap;
    v25 = 0;
    v52 = MEMORY[0x1E69E7CC0];
    v26 = v5 + 32;
    v47 = blendTreeDefinition._rawValue;
    v48 = v7;
    while (v25 < *(v5 + 16))
    {
      outlined init with copy of __REAssetService(v26, v55);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation13BlendTreeNode_pMd, &_s17RealityFoundation13BlendTreeNode_pMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21BlendTreeNodeInternal_pMd, &_s17RealityFoundation21BlendTreeNodeInternal_pMR);
      if (swift_dynamicCast())
      {
        v27 = v5;
        v7 = v8;
        outlined init with take of ForceEffectBase(v53, &v56);
        v28 = v59;
        v8 = v60;
        __swift_project_boxed_opaque_existential_1(&v56, v59);
        v29 = (*(v8 + 8))(blendTreeDefinition._rawValue, v49, v28, v8);
        if (v50)
        {

          __swift_destroy_boxed_opaque_existential_1(&v56);
          goto LABEL_39;
        }

        v31 = v29;
        v32 = v30;
        v33 = v52;
        v50 = 0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v52 + 2) + 1, 1, v52);
        }

        v35 = *(v33 + 2);
        v34 = *(v33 + 3);
        v52 = v33;
        if (v35 >= v34 >> 1)
        {
          v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v33);
        }

        *(v52 + 2) = v35 + 1;
        v36 = &v52[16 * v35];
        *(v36 + 4) = v31;
        *(v36 + 5) = v32;
        v13 = __swift_destroy_boxed_opaque_existential_1(&v56);
        v8 = v7;
        blendTreeDefinition._rawValue = v47;
        v7 = v48;
        v5 = v27;
      }

      else
      {
        v54 = 0;
        memset(v53, 0, sizeof(v53));
        v13 = outlined destroy of BodyTrackingComponent?(v53, &_s17RealityFoundation21BlendTreeNodeInternal_pSgMd, &_s17RealityFoundation21BlendTreeNodeInternal_pSgMR);
      }

      ++v25;
      v26 += 40;
      if (v24 == v25)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

  v52 = MEMORY[0x1E69E7CC0];
LABEL_25:
  if (v44)
  {
    v56 = v46;
    v57 = v43;
    if (v44 == 1)
    {
      v58 = 1;
    }

    else
    {
      v58 = v42;
    }

    specialized static InternalBindPath.pathFromTarget(_:_:)(&v56, 1);
  }

  String.utf8CString.getter();
  String.utf8CString.getter();
  if (v45)
  {
    RETimelineDefinitionBlendTreeAddAdditiveBlend();
  }

  else
  {
    RETimelineDefinitionBlendTreeAddBlend();
  }

  v37 = *(v52 + 2);
  if (v37)
  {
    v38 = (v52 + 40);
    do
    {
      v39 = *(v38 - 1);
      v40 = *v38;
      String.utf8CString.getter();
      String.utf8CString.getter();
      RETimelineDefinitionBlendTreeAddConnection();

      v38 += 2;
      --v37;
    }

    while (v37);
  }

LABEL_39:
  v13 = v8;
  v14 = v7;
LABEL_42:
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

double BlendTreeBlendNode.duration.getter()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return 0.0;
  }

  v2 = *v0 + 32;
  v3 = 0.0;
  do
  {
    outlined init with copy of __REAssetService(v2, v14);
    outlined init with copy of __REAssetService(v14, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation13BlendTreeNode_pMd, &_s17RealityFoundation13BlendTreeNode_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21BlendTreeNodeInternal_pMd, &_s17RealityFoundation21BlendTreeNodeInternal_pMR);
    if (swift_dynamicCast())
    {
      outlined init with take of ForceEffectBase(v8, v11);
      v4 = v12;
      v5 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      v6 = (*(v5 + 16))(v4, v5);
      __swift_destroy_boxed_opaque_existential_1(v14);
      if (v3 <= v6)
      {
        v3 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(v11);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v14);
      v9 = 0;
      memset(v8, 0, sizeof(v8));
      outlined destroy of BodyTrackingComponent?(v8, &_s17RealityFoundation21BlendTreeNodeInternal_pSgMd, &_s17RealityFoundation21BlendTreeNodeInternal_pSgMR);
    }

    v2 += 40;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t protocol witness for BlendTreeNode.name.setter in conformance BlendTreeBlendNode(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t protocol witness for BlendTreeNode.weight.getter in conformance BlendTreeBlendNode@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 56);
  *(a1 + 24) = v5;
  return outlined copy of BlendWeight(v2, v3, v4, v5);
}

__n128 protocol witness for BlendTreeNode.weight.setter in conformance BlendTreeBlendNode(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  outlined consume of BlendWeight(*(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
  result = v5;
  *(v1 + 32) = v5;
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

uint64_t BlendTreeInvalidNode.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t BlendTreeInvalidNode.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t BlendTreeInvalidNode.weight.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 40);
  *(a1 + 24) = v5;
  return outlined copy of BlendWeight(v2, v3, v4, v5);
}

__n128 BlendTreeInvalidNode.weight.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  outlined consume of BlendWeight(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  result = v5;
  *(v1 + 16) = v5;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

uint64_t protocol witness for BlendTreeNode.weight.getter in conformance BlendTreeInvalidNode@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 40);
  *(a1 + 24) = v5;
  return outlined copy of BlendWeight(v2, v3, v4, v5);
}

__n128 protocol witness for BlendTreeNode.weight.setter in conformance BlendTreeInvalidNode(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  outlined consume of BlendWeight(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  result = v5;
  *(v1 + 16) = v5;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

uint64_t blend(_:_:name:isAdditive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation13BlendTreeNode_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation13BlendTreeNode_pGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C1897FC0;
  outlined init with copy of __REAssetService(a1, v12 + 32);
  outlined init with copy of __REAssetService(a2, v12 + 72);
  a6[3] = &type metadata for BlendTreeBlendNode;
  a6[4] = &protocol witness table for BlendTreeBlendNode;
  v13 = swift_allocObject();
  *a6 = v13;
  *(v13 + 16) = v12;
  *(v13 + 24) = a5;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 48) = 1065353216;
  *(v13 + 72) = 0;
}

uint64_t blend(sources:name:isAdditive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  a5[3] = &type metadata for BlendTreeBlendNode;
  a5[4] = &protocol witness table for BlendTreeBlendNode;
  v10 = swift_allocObject();
  *a5 = v10;
  *(v10 + 16) = a1;
  *(v10 + 24) = a4;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  *(v10 + 56) = 0;
  *(v10 + 64) = 0;
  *(v10 + 48) = 1065353216;
  *(v10 + 72) = 0;
}

uint64_t BlendTreeAnimation.init(_:name:isAdditive:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X4>, int a6@<W5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, float a12@<S2>, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  v29 = a5[1];
  v30 = *a5;
  v28 = *(a5 + 16);
  v23 = *a7;
  v31 = *a8;
  *(a9 + 224) = 0u;
  *(a9 + 240) = 0;
  *(a9 + 208) = 0u;

  outlined consume of BindTarget?(0, 0, 0xFFu);
  type metadata accessor for TimelineDefinition();
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(a9 + 56) = a13;
  *(a9 + 64) = a14 & 1;
  *(a9 + 65) = 0;
  *(a9 + 72) = a15;
  *(a9 + 80) = a16 & 1;
  *(a9 + 81) = 0;
  *(a9 + 88) = a17;
  *(a9 + 96) = a18 & 1;
  *(a9 + 97) = 0;
  *(a9 + 104) = a10;
  *(a9 + 112) = 0;
  *(a9 + 120) = a11;
  *(a9 + 128) = 0;
  *(a9 + 132) = a12;
  *(a9 + 136) = 0;
  *(a9 + 137) = v23;
  *(a9 + 144) = 0;
  *(a9 + 152) = a2;
  *(a9 + 160) = a3;
  *(a9 + 168) = xmmword_1C1898800;
  *(a9 + 184) = 0;
  *(a9 + 188) = 0;
  *(a9 + 192) = 0;
  *(a9 + 194) = 0;
  *(a9 + 200) = v24;
  outlined consume of BindTarget?(0, 0, 0xFFu);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *a9 = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = v30;
  *(a9 + 24) = v29;
  *(a9 + 32) = v28;
  *(a9 + 33) = v35;
  *(a9 + 35) = v36;
  *(a9 + 36) = a6;
  *(a9 + 40) = 0;
  *(a9 + 41) = v31;
  *(a9 + 42) = 0;
  *(a9 + 43) = a4;
  *(a9 + 48) = v25;
  outlined destroy of BodyTrackingComponent?(a9 + 208, &_s17RealityFoundation13BlendTreeNode_pSgMd, &_s17RealityFoundation13BlendTreeNode_pSgMR);

  return outlined init with take of ForceEffectBase(a1, a9 + 208);
}

uint64_t specialized BlendTreeAnimation.root.getter@<X0>(uint64_t *a1@<X8>)
{
  outlined init with copy of [String : String](v1 + 208, &v63, &_s17RealityFoundation13BlendTreeNode_pSgMd, &_s17RealityFoundation13BlendTreeNode_pSgMR);
  if (v64)
  {
    outlined init with take of ForceEffectBase(&v63, v65);
    return outlined init with take of ForceEffectBase(v65, a1);
  }

  outlined destroy of BodyTrackingComponent?(&v63, &_s17RealityFoundation13BlendTreeNode_pSgMd, &_s17RealityFoundation13BlendTreeNode_pSgMR);
  v4 = *(*(v1 + 48) + 16);
  if (!v4)
  {
    goto LABEL_59;
  }

  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v6 = RETimelineDefinitionBlendTreeNodeCount();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v6;
    if (v6)
    {
      for (i = 0; v7 != i; ++i)
      {
        if (!RETimelineDefinitionBlendTreeNodeGetName())
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v65[0] = v5;
          v23 = specialized __RawDictionaryStorage.find<A>(_:)(0, 0xE000000000000000);
          v25 = *(v5 + 16);
          v26 = (v24 & 1) == 0;
          v18 = __OFADD__(v25, v26);
          v27 = v25 + v26;
          if (v18)
          {
            goto LABEL_62;
          }

          v28 = v24;
          if (*(v5 + 24) < v27)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, isUniquelyReferenced_nonNull_native);
            v23 = specialized __RawDictionaryStorage.find<A>(_:)(0, 0xE000000000000000);
            if ((v28 & 1) != (v29 & 1))
            {
              goto LABEL_67;
            }

            goto LABEL_24;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_24:
            v5 = *&v65[0];
            if ((v28 & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v34 = v23;
            specialized _NativeDictionary.copy()();
            v23 = v34;
            v5 = *&v65[0];
            if ((v28 & 1) == 0)
            {
LABEL_29:
              *(v5 + 8 * (v23 >> 6) + 64) |= 1 << v23;
              v35 = (*(v5 + 48) + 16 * v23);
              *v35 = 0;
              v35[1] = 0xE000000000000000;
              *(*(v5 + 56) + 8 * v23) = i;
              v36 = *(v5 + 16);
              v18 = __OFADD__(v36, 1);
              v32 = v36 + 1;
              if (v18)
              {
                goto LABEL_64;
              }

              goto LABEL_30;
            }
          }

          *(*(v5 + 56) + 8 * v23) = i;
          continue;
        }

        v10 = String.init(cString:)();
        v12 = v11;
        v13 = swift_isUniquelyReferenced_nonNull_native();
        *&v65[0] = v5;
        v14 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v12);
        v16 = *(v5 + 16);
        v17 = (v15 & 1) == 0;
        v18 = __OFADD__(v16, v17);
        v19 = v16 + v17;
        if (v18)
        {
          goto LABEL_61;
        }

        v20 = v15;
        if (*(v5 + 24) >= v19)
        {
          if ((v13 & 1) == 0)
          {
            v33 = v14;
            specialized _NativeDictionary.copy()();
            v14 = v33;
            if ((v20 & 1) == 0)
            {
LABEL_20:
              v5 = *&v65[0];
              *(*&v65[0] + 8 * (v14 >> 6) + 64) |= 1 << v14;
              v30 = (*(v5 + 48) + 16 * v14);
              *v30 = v10;
              v30[1] = v12;
              *(*(v5 + 56) + 8 * v14) = i;
              v31 = *(v5 + 16);
              v18 = __OFADD__(v31, 1);
              v32 = v31 + 1;
              if (v18)
              {
                goto LABEL_63;
              }

LABEL_30:
              *(v5 + 16) = v32;
              continue;
            }

            goto LABEL_7;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, v13);
          v14 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v12);
          if ((v20 & 1) != (v21 & 1))
          {
            goto LABEL_67;
          }
        }

        if ((v20 & 1) == 0)
        {
          goto LABEL_20;
        }

LABEL_7:
        v9 = v14;

        v5 = *&v65[0];
        *(*(*&v65[0] + 56) + 8 * v9) = i;
      }
    }

    v37 = RETimelineDefinitionBlendTreeConnectionCount();
    if (v37 < 0)
    {
      goto LABEL_66;
    }

    v38 = v37;
    if (v37)
    {
      v39 = 0;
      do
      {
        if (RETimelineDefinitionBlendTreeConnectionGetSource())
        {
          v41 = String.init(cString:)();
          v43 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v42);
          v45 = v44;

          if (v45)
          {
            v46 = swift_isUniquelyReferenced_nonNull_native();
            *&v65[0] = v5;
            if (!v46)
            {
              specialized _NativeDictionary.copy()();
              v5 = *&v65[0];
            }

            v40 = *(*(v5 + 48) + 16 * v43 + 8);

            specialized _NativeDictionary._delete(at:)(v43, v5);
          }
        }

        ++v39;
      }

      while (v38 != v39);
    }

    v47 = 1 << *(v5 + 32);
    v48 = -1;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    v49 = v48 & *(v5 + 64);
    if (v49)
    {
      v50 = 0;
      v51 = __clz(__rbit64(v49));
      v52 = (v49 - 1) & v49;
      v53 = (v47 + 63) >> 6;
LABEL_48:
      v56 = *(*(v5 + 48) + 16 * v51 + 8);
      v57 = *(*(v5 + 56) + 8 * v51);

      if (!v52)
      {
        goto LABEL_51;
      }

      do
      {
LABEL_49:
        while (1)
        {
          v58 = __clz(__rbit64(v52));
          v52 &= v52 - 1;
          v59 = v58 | (v50 << 6);
          v60 = *(*(v5 + 56) + 8 * v59);
          if (v60 < v57)
          {
            break;
          }

          if (!v52)
          {
            goto LABEL_51;
          }
        }

        v62 = *(*(v5 + 48) + 16 * v59 + 8);

        v57 = v60;
      }

      while (v52);
LABEL_51:
      while (1)
      {
        v61 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          break;
        }

        if (v61 >= v53)
        {

          _s17RealityFoundation21BlendTreeNodeInternalPAAE8fromCore05blenddH09nodeIndexAA0cdE0_ps13OpaquePointerV_SitFZAA0cdcE0V_Tt2g5(v4, a1);
        }

        v52 = *(v5 + 64 + 8 * v61);
        ++v50;
        if (v52)
        {
          v50 = v61;
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v54 = 0;
    v53 = (v47 + 63) >> 6;
    while (v53 - 1 != v49)
    {
      v50 = v49 + 1;
      v55 = *(v5 + 8 * v49 + 72);
      v54 -= 64;
      ++v49;
      if (v55)
      {
        v52 = (v55 - 1) & v55;
        v51 = __clz(__rbit64(v55)) - v54;
        goto LABEL_48;
      }
    }

LABEL_59:
    a1[3] = &type metadata for BlendTreeInvalidNode;
    a1[4] = &protocol witness table for BlendTreeInvalidNode;
    result = swift_allocObject();
    *a1 = result;
    *(result + 16) = 0x64696C61766E69;
    *(result + 24) = 0xE700000000000000;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 32) = 0;
    *(result + 56) = 0;
    return result;
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t BlendTreeAnimation.root.getter@<X0>(uint64_t *a1@<X8>)
{
  outlined init with copy of [String : String](v1 + 208, &v63, &_s17RealityFoundation13BlendTreeNode_pSgMd, &_s17RealityFoundation13BlendTreeNode_pSgMR);
  if (v64)
  {
    outlined init with take of ForceEffectBase(&v63, v65);
    return outlined init with take of ForceEffectBase(v65, a1);
  }

  outlined destroy of BodyTrackingComponent?(&v63, &_s17RealityFoundation13BlendTreeNode_pSgMd, &_s17RealityFoundation13BlendTreeNode_pSgMR);
  v4 = *(*(v1 + 48) + 16);
  if (!v4)
  {
    goto LABEL_59;
  }

  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v6 = RETimelineDefinitionBlendTreeNodeCount();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v6;
    if (v6)
    {
      for (i = 0; v7 != i; ++i)
      {
        if (!RETimelineDefinitionBlendTreeNodeGetName())
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v65[0] = v5;
          v23 = specialized __RawDictionaryStorage.find<A>(_:)(0, 0xE000000000000000);
          v25 = *(v5 + 16);
          v26 = (v24 & 1) == 0;
          v18 = __OFADD__(v25, v26);
          v27 = v25 + v26;
          if (v18)
          {
            goto LABEL_62;
          }

          v28 = v24;
          if (*(v5 + 24) < v27)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, isUniquelyReferenced_nonNull_native);
            v23 = specialized __RawDictionaryStorage.find<A>(_:)(0, 0xE000000000000000);
            if ((v28 & 1) != (v29 & 1))
            {
              goto LABEL_67;
            }

            goto LABEL_24;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_24:
            v5 = *&v65[0];
            if ((v28 & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v34 = v23;
            specialized _NativeDictionary.copy()();
            v23 = v34;
            v5 = *&v65[0];
            if ((v28 & 1) == 0)
            {
LABEL_29:
              *(v5 + 8 * (v23 >> 6) + 64) |= 1 << v23;
              v35 = (*(v5 + 48) + 16 * v23);
              *v35 = 0;
              v35[1] = 0xE000000000000000;
              *(*(v5 + 56) + 8 * v23) = i;
              v36 = *(v5 + 16);
              v18 = __OFADD__(v36, 1);
              v32 = v36 + 1;
              if (v18)
              {
                goto LABEL_64;
              }

              goto LABEL_30;
            }
          }

          *(*(v5 + 56) + 8 * v23) = i;
          continue;
        }

        v10 = String.init(cString:)();
        v12 = v11;
        v13 = swift_isUniquelyReferenced_nonNull_native();
        *&v65[0] = v5;
        v14 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v12);
        v16 = *(v5 + 16);
        v17 = (v15 & 1) == 0;
        v18 = __OFADD__(v16, v17);
        v19 = v16 + v17;
        if (v18)
        {
          goto LABEL_61;
        }

        v20 = v15;
        if (*(v5 + 24) >= v19)
        {
          if ((v13 & 1) == 0)
          {
            v33 = v14;
            specialized _NativeDictionary.copy()();
            v14 = v33;
            if ((v20 & 1) == 0)
            {
LABEL_20:
              v5 = *&v65[0];
              *(*&v65[0] + 8 * (v14 >> 6) + 64) |= 1 << v14;
              v30 = (*(v5 + 48) + 16 * v14);
              *v30 = v10;
              v30[1] = v12;
              *(*(v5 + 56) + 8 * v14) = i;
              v31 = *(v5 + 16);
              v18 = __OFADD__(v31, 1);
              v32 = v31 + 1;
              if (v18)
              {
                goto LABEL_63;
              }

LABEL_30:
              *(v5 + 16) = v32;
              continue;
            }

            goto LABEL_7;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, v13);
          v14 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v12);
          if ((v20 & 1) != (v21 & 1))
          {
            goto LABEL_67;
          }
        }

        if ((v20 & 1) == 0)
        {
          goto LABEL_20;
        }

LABEL_7:
        v9 = v14;

        v5 = *&v65[0];
        *(*(*&v65[0] + 56) + 8 * v9) = i;
      }
    }

    v37 = RETimelineDefinitionBlendTreeConnectionCount();
    if (v37 < 0)
    {
      goto LABEL_66;
    }

    v38 = v37;
    if (v37)
    {
      v39 = 0;
      do
      {
        if (RETimelineDefinitionBlendTreeConnectionGetSource())
        {
          v41 = String.init(cString:)();
          v43 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v42);
          v45 = v44;

          if (v45)
          {
            v46 = swift_isUniquelyReferenced_nonNull_native();
            *&v65[0] = v5;
            if (!v46)
            {
              specialized _NativeDictionary.copy()();
              v5 = *&v65[0];
            }

            v40 = *(*(v5 + 48) + 16 * v43 + 8);

            specialized _NativeDictionary._delete(at:)(v43, v5);
          }
        }

        ++v39;
      }

      while (v38 != v39);
    }

    v47 = 1 << *(v5 + 32);
    v48 = -1;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    v49 = v48 & *(v5 + 64);
    if (v49)
    {
      v50 = 0;
      v51 = __clz(__rbit64(v49));
      v52 = (v49 - 1) & v49;
      v53 = (v47 + 63) >> 6;
LABEL_48:
      v56 = *(*(v5 + 48) + 16 * v51 + 8);
      v57 = *(*(v5 + 56) + 8 * v51);

      if (!v52)
      {
        goto LABEL_51;
      }

      do
      {
LABEL_49:
        while (1)
        {
          v58 = __clz(__rbit64(v52));
          v52 &= v52 - 1;
          v59 = v58 | (v50 << 6);
          v60 = *(*(v5 + 56) + 8 * v59);
          if (v60 < v57)
          {
            break;
          }

          if (!v52)
          {
            goto LABEL_51;
          }
        }

        v62 = *(*(v5 + 48) + 16 * v59 + 8);

        v57 = v60;
      }

      while (v52);
LABEL_51:
      while (1)
      {
        v61 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          break;
        }

        if (v61 >= v53)
        {

          _s17RealityFoundation21BlendTreeNodeInternalPAAE8fromCore05blenddH09nodeIndexAA0cdE0_ps13OpaquePointerV_SitFZAA0cdcE0V_Tt2g5(v4, a1);
        }

        v52 = *(v5 + 64 + 8 * v61);
        ++v50;
        if (v52)
        {
          v50 = v61;
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v54 = 0;
    v53 = (v47 + 63) >> 6;
    while (v53 - 1 != v49)
    {
      v50 = v49 + 1;
      v55 = *(v5 + 8 * v49 + 72);
      v54 -= 64;
      ++v49;
      if (v55)
      {
        v52 = (v55 - 1) & v55;
        v51 = __clz(__rbit64(v55)) - v54;
        goto LABEL_48;
      }
    }

LABEL_59:
    a1[3] = &type metadata for BlendTreeInvalidNode;
    a1[4] = &protocol witness table for BlendTreeInvalidNode;
    result = swift_allocObject();
    *a1 = result;
    *(result + 16) = 0x64696C61766E69;
    *(result + 24) = 0xE700000000000000;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 32) = 0;
    *(result + 56) = 0;
    return result;
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t BlendTreeAnimation.root.setter(__int128 *a1)
{
  outlined destroy of BodyTrackingComponent?(v1 + 208, &_s17RealityFoundation13BlendTreeNode_pSgMd, &_s17RealityFoundation13BlendTreeNode_pSgMR);

  return outlined init with take of ForceEffectBase(a1, v1 + 208);
}

void (*BlendTreeAnimation.root.modify(uint64_t **a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v3[10] = v1;
  BlendTreeAnimation.root.getter(v3);
  return BlendTreeAnimation.root.modify;
}

void BlendTreeAnimation.root.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    outlined init with copy of __REAssetService(*a1, v2 + 40);
    outlined destroy of BodyTrackingComponent?(v3 + 208, &_s17RealityFoundation13BlendTreeNode_pSgMd, &_s17RealityFoundation13BlendTreeNode_pSgMR);
    outlined init with take of ForceEffectBase((v2 + 40), v3 + 208);
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v3 + 208, &_s17RealityFoundation13BlendTreeNode_pSgMd, &_s17RealityFoundation13BlendTreeNode_pSgMR);
    outlined init with take of ForceEffectBase(v2, v3 + 208);
  }

  free(v2);
}

_BYTE *BlendTreeAnimation.createResource()(uint64_t a1)
{
  v3 = v1;
  v5 = *(*(a1 - 8) + 16);
  v5(v19, v3, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18BlendTreeAnimationVySfGMd, &_s17RealityFoundation18BlendTreeAnimationVySfGMR);
  if (swift_dynamicCast())
  {
    v6 = &_s17RealityFoundation18BlendTreeAnimationVySfGMd;
    v7 = &_s17RealityFoundation18BlendTreeAnimationVySfGMR;
    outlined destroy of BodyTrackingComponent?(v18, &_s17RealityFoundation18BlendTreeAnimationVySfGMd, &_s17RealityFoundation18BlendTreeAnimationVySfGMR);
    v5(v19, v3, a1);
    swift_dynamicCast();
    v8 = BlendTreeAnimation<>.createResource()();
LABEL_10:
    v10 = v8;
    outlined destroy of BodyTrackingComponent?(v18, v6, v7);
    return v10;
  }

  v5(v19, v3, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18BlendTreeAnimationVySdGMd, &_s17RealityFoundation18BlendTreeAnimationVySdGMR);
  if (swift_dynamicCast())
  {
    v6 = &_s17RealityFoundation18BlendTreeAnimationVySdGMd;
    v7 = &_s17RealityFoundation18BlendTreeAnimationVySdGMR;
    outlined destroy of BodyTrackingComponent?(v18, &_s17RealityFoundation18BlendTreeAnimationVySdGMd, &_s17RealityFoundation18BlendTreeAnimationVySdGMR);
    v5(v19, v3, a1);
    swift_dynamicCast();
    v9 = MEMORY[0x1E6998C50];
LABEL_9:
    v8 = BlendTreeAnimation<>.createResource()(v9);
    goto LABEL_10;
  }

  v5(v19, v3, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18BlendTreeAnimationVys5SIMD2VySfGGMd, &_s17RealityFoundation18BlendTreeAnimationVys5SIMD2VySfGGMR);
  if (swift_dynamicCast())
  {
    v6 = &_s17RealityFoundation18BlendTreeAnimationVys5SIMD2VySfGGMd;
    v7 = &_s17RealityFoundation18BlendTreeAnimationVys5SIMD2VySfGGMR;
    outlined destroy of BodyTrackingComponent?(v18, &_s17RealityFoundation18BlendTreeAnimationVys5SIMD2VySfGGMd, &_s17RealityFoundation18BlendTreeAnimationVys5SIMD2VySfGGMR);
    v5(v19, v3, a1);
    swift_dynamicCast();
    v9 = MEMORY[0x1E6998C58];
    goto LABEL_9;
  }

  v5(v19, v3, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18BlendTreeAnimationVys5SIMD3VySfGGMd, &_s17RealityFoundation18BlendTreeAnimationVys5SIMD3VySfGGMR);
  if (swift_dynamicCast())
  {
    v6 = &_s17RealityFoundation18BlendTreeAnimationVys5SIMD3VySfGGMd;
    v7 = &_s17RealityFoundation18BlendTreeAnimationVys5SIMD3VySfGGMR;
    outlined destroy of BodyTrackingComponent?(v18, &_s17RealityFoundation18BlendTreeAnimationVys5SIMD3VySfGGMd, &_s17RealityFoundation18BlendTreeAnimationVys5SIMD3VySfGGMR);
    v5(v19, v3, a1);
    swift_dynamicCast();
    v9 = MEMORY[0x1E6998C60];
    goto LABEL_9;
  }

  v5(v19, v3, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18BlendTreeAnimationVys5SIMD4VySfGGMd, &_s17RealityFoundation18BlendTreeAnimationVys5SIMD4VySfGGMR);
  if (swift_dynamicCast())
  {
    outlined destroy of BodyTrackingComponent?(v18, &_s17RealityFoundation18BlendTreeAnimationVys5SIMD4VySfGGMd, &_s17RealityFoundation18BlendTreeAnimationVys5SIMD4VySfGGMR);
    v5(v19, v3, a1);
    swift_dynamicCast();
    v10 = v18;
    v12 = BlendTreeAnimation<>.createResource()(MEMORY[0x1E6998C68]);
    if (!v2)
    {
      v10 = v12;
    }

    v13 = &_s17RealityFoundation18BlendTreeAnimationVys5SIMD4VySfGGMd;
    v14 = &_s17RealityFoundation18BlendTreeAnimationVys5SIMD4VySfGGMR;
  }

  else
  {
    v5(v19, v3, a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18BlendTreeAnimationVySo10simd_quatfaGMd, &_s17RealityFoundation18BlendTreeAnimationVySo10simd_quatfaGMR);
    if (swift_dynamicCast())
    {
      outlined destroy of BodyTrackingComponent?(v18, &_s17RealityFoundation18BlendTreeAnimationVySo10simd_quatfaGMd, &_s17RealityFoundation18BlendTreeAnimationVySo10simd_quatfaGMR);
      v5(v19, v3, a1);
      swift_dynamicCast();
      v10 = v18;
      v15 = BlendTreeAnimation<>.createResource()(MEMORY[0x1E6998C70]);
      if (!v2)
      {
        v10 = v15;
      }

      v13 = &_s17RealityFoundation18BlendTreeAnimationVySo10simd_quatfaGMd;
      v14 = &_s17RealityFoundation18BlendTreeAnimationVySo10simd_quatfaGMR;
    }

    else
    {
      v5(v19, v3, a1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18BlendTreeAnimationVy0A3Kit9TransformVGMd, &_s17RealityFoundation18BlendTreeAnimationVy0A3Kit9TransformVGMR);
      if (swift_dynamicCast())
      {
        outlined destroy of BodyTrackingComponent?(v18, &_s17RealityFoundation18BlendTreeAnimationVy0A3Kit9TransformVGMd, &_s17RealityFoundation18BlendTreeAnimationVy0A3Kit9TransformVGMR);
        v5(v19, v3, a1);
        swift_dynamicCast();
        v10 = v18;
        v16 = BlendTreeAnimation<>.createResource()(MEMORY[0x1E6998C78]);
        if (!v2)
        {
          v10 = v16;
        }

        v13 = &_s17RealityFoundation18BlendTreeAnimationVy0A3Kit9TransformVGMd;
        v14 = &_s17RealityFoundation18BlendTreeAnimationVy0A3Kit9TransformVGMR;
      }

      else
      {
        v5(v19, v3, a1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18BlendTreeAnimationVyAA15JointTransformsVGMd, &_s17RealityFoundation18BlendTreeAnimationVyAA15JointTransformsVGMR);
        if ((swift_dynamicCast() & 1) == 0)
        {
          return 0;
        }

        outlined destroy of BodyTrackingComponent?(v18, &_s17RealityFoundation18BlendTreeAnimationVyAA15JointTransformsVGMd, &_s17RealityFoundation18BlendTreeAnimationVyAA15JointTransformsVGMR);
        v5(v19, v3, a1);
        swift_dynamicCast();
        v10 = v18;
        v17 = BlendTreeAnimation<>.createResource()(MEMORY[0x1E6998CB0]);
        if (!v2)
        {
          v10 = v17;
        }

        v13 = &_s17RealityFoundation18BlendTreeAnimationVyAA15JointTransformsVGMd;
        v14 = &_s17RealityFoundation18BlendTreeAnimationVyAA15JointTransformsVGMR;
      }
    }
  }

  outlined destroy of BodyTrackingComponent?(v18, v13, v14);
  return v10;
}

uint64_t BlendTreeAnimation<>.createResource()()
{
  if (v0[1])
  {
    v2 = *v0;
    v3 = v0[1];
  }

  else
  {
    if (*(v0 + 32) == 255 && *(v0 + 40) != 0 && *(v0 + 42) != 0 && *(v0 + 43) == 2)
    {
      outlined init with copy of [String : String]((v0 + 26), v14, &_s17RealityFoundation13BlendTreeNode_pSgMd, &_s17RealityFoundation13BlendTreeNode_pSgMR);
      v7 = v15;
      outlined destroy of BodyTrackingComponent?(v14, &_s17RealityFoundation13BlendTreeNode_pSgMd, &_s17RealityFoundation13BlendTreeNode_pSgMR);
      if (!v7)
      {
        v13._rawValue = 0;
        return specialized BlendTreeAnimation.createResource(timelineDefinition:)(v13);
      }
    }

    if (*(v0[6] + 16))
    {
      RETimelineDefinitionGetName();
      String.init(cString:)();
    }
  }

  String.utf8CString.getter();

  FloatBlendTree = RETimelineDefinitionCreateFloatBlendTree();

  v9._rawValue = FloatBlendTree;
  v10 = specialized BlendTreeAnimation.createResource(timelineDefinition:)(v9);
  if (v1)
  {
    return RERelease();
  }

  v12 = v10;
  RERelease();
  return v12;
}

uint64_t BlendTreeAnimation<>.createResource()(uint64_t (*a1)(uint64_t))
{
  if (v1[1])
  {
    v4 = *v1;
    v5 = v1[1];
  }

  else
  {
    if (*(v1 + 32) == 255 && *(v1 + 40) != 0 && *(v1 + 42) != 0 && *(v1 + 43) == 2)
    {
      outlined init with copy of [String : String]((v1 + 26), v17, &_s17RealityFoundation13BlendTreeNode_pSgMd, &_s17RealityFoundation13BlendTreeNode_pSgMR);
      v9 = v18;
      outlined destroy of BodyTrackingComponent?(v17, &_s17RealityFoundation13BlendTreeNode_pSgMd, &_s17RealityFoundation13BlendTreeNode_pSgMR);
      if (!v9)
      {
        v16._rawValue = 0;
        return specialized BlendTreeAnimation.createResource(timelineDefinition:)(v16);
      }
    }

    if (*(v1[6] + 16))
    {
      RETimelineDefinitionGetName();
      String.init(cString:)();
    }
  }

  v10 = String.utf8CString.getter();

  v11 = a1(v10 + 32);

  v12._rawValue = v11;
  v13 = specialized BlendTreeAnimation.createResource(timelineDefinition:)(v12);
  if (v2)
  {
    return RERelease();
  }

  v15 = v13;
  RERelease();
  return v15;
}

uint64_t BlendTreeAnimation.name.getter()
{
  if (v0[1])
  {
    v1 = *v0;
    v2 = v0[1];
  }

  else if (*(v0[6] + 16))
  {
    v3 = v0[1];
    RETimelineDefinitionGetName();
    v1 = String.init(cString:)();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t key path setter for BlendTreeAnimation.name : <A>BlendTreeAnimation<A>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return BlendTreeAnimation.name.setter(v1, v2);
}

uint64_t BlendTreeAnimation.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t (*BlendTreeAnimation.name.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = BlendTreeAnimation.name.getter();
  a1[1] = v3;
  return BlendTreeAnimation.name.modify;
}

uint64_t BlendTreeAnimation.name.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v5 = v3[1];
  if (a2)
  {
    v6 = a1[1];

    *v3 = v4;
    v3[1] = v2;
  }

  else
  {
    v8 = v3[1];

    *v3 = v4;
    v3[1] = v2;
  }

  return result;
}

uint64_t BlendTreeAnimation.blendLayer.getter()
{
  if (*(v0 + 40) != 1)
  {
    return *(v0 + 36);
  }

  result = *(*(v0 + 48) + 16);
  if (result)
  {
    return RETimelineDefinitionGetAnimationLayer();
  }

  return result;
}

uint64_t BlendTreeAnimation.blendLayer.setter(uint64_t result)
{
  *(v1 + 36) = result;
  *(v1 + 40) = 0;
  return result;
}

uint64_t *(*BlendTreeAnimation.blendLayer.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 40) == 1)
  {
    v2 = *(*(v1 + 48) + 16);
    if (v2)
    {
      v3 = a1;
      v4 = *(*(v1 + 48) + 16);
      LODWORD(v2) = RETimelineDefinitionGetAnimationLayer();
      a1 = v3;
    }
  }

  else
  {
    LODWORD(v2) = *(v1 + 36);
  }

  *(a1 + 8) = v2;
  return BlendTreeAnimation.blendLayer.modify;
}

uint64_t *BlendTreeAnimation.blendLayer.modify(uint64_t *result)
{
  v1 = *result;
  *(v1 + 36) = *(result + 2);
  *(v1 + 40) = 0;
  return result;
}

uint64_t BlendTreeAnimation.bindTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = v2;
  v6 = v3;
  v7 = *(v1 + 32);
  if (v4 == 255)
  {
    v5 = *(*(v1 + 48) + 16);
    if (v5)
    {
      v8 = *(v1 + 16);
      v9 = a1;
      v10 = v3;
      v11 = v4;
      RETimelineDefinitionGetTargetPath();
      v12 = String.init(cString:)();
      static InternalBindPath.targetFromPath(_:)(v12, v13, v15);

      LOBYTE(v4) = v11;
      v3 = v10;
      a1 = v9;
      v2 = v8;
      v5 = v15[0];
      v6 = v15[1];
      v7 = v16;
    }

    else
    {
      v7 = 0;
      v6 = 0xE000000000000000;
    }
  }

  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;

  return outlined copy of BindTarget?(v2, v3, v4);
}

double key path getter for BlendTreeAnimation.bindTarget : <A>BlendTreeAnimation<A>@<D0>(uint64_t a1@<X8>)
{
  BlendTreeAnimation.bindTarget.getter(&v4);
  v2 = v5;
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v2;
  return result;
}

uint64_t key path setter for BlendTreeAnimation.bindTarget : <A>BlendTreeAnimation<A>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = v2;
  outlined copy of BindTarget(v4[0], v1, v2);
  return BlendTreeAnimation.bindTarget.setter(v4);
}

uint64_t BlendTreeAnimation.bindTarget.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of BindTarget?(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

uint64_t (*BlendTreeAnimation.bindTarget.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  BlendTreeAnimation.bindTarget.getter(a1);
  return BlendTreeAnimation.bindTarget.modify;
}

uint64_t BlendTreeAnimation.bindTarget.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (a2)
  {
    outlined copy of BindTarget(*a1, v2, v4);
    outlined consume of BindTarget?(*(v5 + 16), *(v5 + 24), *(v5 + 32));
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;
    *(v5 + 32) = v4;

    return outlined consume of BindTarget(v3, v2, v4);
  }

  else
  {
    result = outlined consume of BindTarget?(*(v5 + 16), *(v5 + 24), *(v5 + 32));
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;
    *(v5 + 32) = v4;
  }

  return result;
}

uint64_t BlendTreeAnimation.fillMode.getter@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 42))
  {
    result = *(*(v1 + 48) + 16);
    if (result)
    {
      v3 = a1;
      result = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    result = *(v1 + 41);
  }

  *a1 = result;
  return result;
}

unsigned __int8 *(*BlendTreeAnimation.fillMode.modify(uint64_t a1))(unsigned __int8 *result)
{
  *a1 = v1;
  if (*(v1 + 42))
  {
    v2 = *(*(v1 + 48) + 16);
    if (v2)
    {
      v3 = a1;
      v4 = *(*(v1 + 48) + 16);
      LOBYTE(v2) = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    LOBYTE(v2) = *(v1 + 41);
  }

  *(a1 + 8) = v2;
  return BlendTreeAnimation.fillMode.modify;
}

uint64_t BlendTreeAnimation.isAdditive.getter()
{
  LODWORD(v1) = *(v0 + 43);
  if (v1 == 2)
  {
    v1 = *(*(v0 + 48) + 16);
    if (v1)
    {
      LOBYTE(v1) = RETimelineDefinitionIsAdditive();
    }
  }

  return v1 & 1;
}

_BYTE *(*BlendTreeAnimation.isAdditive.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  LODWORD(v2) = *(v1 + 43);
  if (v2 == 2)
  {
    v2 = *(*(v1 + 48) + 16);
    if (v2)
    {
      v3 = a1;
      v4 = *(*(v1 + 48) + 16);
      LOBYTE(v2) = RETimelineDefinitionIsAdditive();
      a1 = v3;
    }
  }

  *(a1 + 8) = v2 & 1;
  return BlendTreeAnimation.isAdditive.modify;
}

uint64_t BlendTreeAnimation.trimStart.getter()
{
  if (*(v0 + 65))
  {
    result = *(*(v0 + 200) + 16);
    if (result)
    {
      result = RETimelineDefinitionGetClipStart();
      if (result)
      {
        return *result;
      }
    }
  }

  else
  {
    result = *(v0 + 56);
    v2 = *(v0 + 64);
  }

  return result;
}

uint64_t BlendTreeAnimation.trimStart.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  *(v2 + 65) = 0;
  return result;
}

uint64_t (*BlendTreeAnimation.trimStart.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *a1 = BlendTreeAnimation.trimStart.getter();
  *(a1 + 8) = v3 & 1;
  return BlendTreeAnimation.trimStart.modify;
}

uint64_t BlendTreeAnimation.trimStart.modify(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

uint64_t BlendTreeAnimation.trimEnd.getter()
{
  if (*(v0 + 81))
  {
    result = *(*(v0 + 200) + 16);
    if (result)
    {
      result = RETimelineDefinitionGetClipEnd();
      if (result)
      {
        return *result;
      }
    }
  }

  else
  {
    result = *(v0 + 72);
    v2 = *(v0 + 80);
  }

  return result;
}

uint64_t BlendTreeAnimation.trimEnd.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  *(v2 + 81) = 0;
  return result;
}

uint64_t (*BlendTreeAnimation.trimEnd.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *a1 = BlendTreeAnimation.trimEnd.getter();
  *(a1 + 8) = v3 & 1;
  return BlendTreeAnimation.trimEnd.modify;
}

uint64_t BlendTreeAnimation.trimEnd.modify(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *(v1 + 72) = *result;
  *(v1 + 80) = v2;
  return result;
}

uint64_t BlendTreeAnimation.trimDuration.getter()
{
  if (*(v0 + 97))
  {
    result = *(*(v0 + 200) + 16);
    if (result)
    {
      result = RETimelineDefinitionGetClipDuration();
      if (result)
      {
        return *result;
      }
    }
  }

  else
  {
    result = *(v0 + 88);
    v2 = *(v0 + 96);
  }

  return result;
}

uint64_t BlendTreeAnimation.trimDuration.setter(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  *(v2 + 97) = 0;
  return result;
}

uint64_t (*BlendTreeAnimation.trimDuration.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *a1 = BlendTreeAnimation.trimDuration.getter();
  *(a1 + 8) = v3 & 1;
  return BlendTreeAnimation.trimDuration.modify;
}

uint64_t BlendTreeAnimation.trimDuration.modify(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *(v1 + 88) = *result;
  *(v1 + 96) = v2;
  return result;
}

double BlendTreeAnimation.offset.getter()
{
  if ((*(v0 + 112) & 1) == 0)
  {
    return *(v0 + 104);
  }

  v1 = *(v0 + 200);
  result = 0.0;
  if (*(v1 + 16))
  {
    v3 = *(v1 + 16);
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 0.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipOffset();
    }
  }

  return result;
}

double (*BlendTreeAnimation.offset.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  *a1 = BlendTreeAnimation.offset.getter();
  return BlendTreeAnimation.offset.modify;
}

double BlendTreeAnimation.offset.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = *a1;
  *(v1 + 104) = *a1;
  *(v1 + 112) = 0;
  return result;
}

double BlendTreeAnimation.delay.getter()
{
  if ((*(v0 + 128) & 1) == 0)
  {
    return *(v0 + 120);
  }

  v1 = *(v0 + 200);
  result = 0.0;
  if (*(v1 + 16))
  {
    v3 = *(v1 + 16);
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 0.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipDelay();
    }
  }

  return result;
}

double (*BlendTreeAnimation.delay.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  *a1 = BlendTreeAnimation.delay.getter();
  return BlendTreeAnimation.delay.modify;
}

double BlendTreeAnimation.delay.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = *a1;
  *(v1 + 120) = *a1;
  *(v1 + 128) = 0;
  return result;
}

float BlendTreeAnimation.speed.getter()
{
  if ((*(v0 + 136) & 1) == 0)
  {
    return *(v0 + 132);
  }

  v1 = *(v0 + 200);
  result = 1.0;
  if (*(v1 + 16))
  {
    v3 = *(v1 + 16);
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 1.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipSpeed();
    }
  }

  return result;
}

float (*BlendTreeAnimation.speed.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = BlendTreeAnimation.speed.getter();
  return BlendTreeAnimation.speed.modify;
}

float BlendTreeAnimation.speed.modify(float *a1)
{
  v1 = *a1;
  result = a1[2];
  *(v1 + 132) = result;
  *(v1 + 136) = 0;
  return result;
}

uint64_t BlendTreeAnimation.repeatMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = *(v1 + 137);
  if (result == 4)
  {
    v3 = *(v1 + 200);
    if (!*(v3 + 16))
    {
LABEL_6:
      result = 0;
      goto LABEL_8;
    }

    v4 = a1;
    v5 = *(v3 + 16);
    if (RETimelineDefinitionGetTimelineType() != 2)
    {
      result = 0;
      a1 = v4;
      goto LABEL_8;
    }

    result = RETimelineDefinitionGetClipLoopBehavior();
    a1 = v4;
    if (result >= 4)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_6;
    }
  }

LABEL_8:
  *a1 = result;
  return result;
}

_BYTE *(*BlendTreeAnimation.repeatMode.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  BlendTreeAnimation.repeatMode.getter((a1 + 8));
  return BlendTreeAnimation.repeatMode.modify;
}

uint64_t BlendTreeAnimation.duration.getter()
{
  BlendTreeAnimation.root.getter(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation13BlendTreeNode_pMd, &_s17RealityFoundation13BlendTreeNode_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21BlendTreeNodeInternal_pMd, &_s17RealityFoundation21BlendTreeNodeInternal_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ForceEffectBase(v3, v6);
    v0 = v7;
    v1 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v1 + 16))(v0, v1);
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    v4 = 0;
    memset(v3, 0, sizeof(v3));
    return outlined destroy of BodyTrackingComponent?(v3, &_s17RealityFoundation21BlendTreeNodeInternal_pSgMd, &_s17RealityFoundation21BlendTreeNodeInternal_pSgMR);
  }
}

uint64_t specialized BlendTreeAnimation.createResource(timelineDefinition:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  if (a1._rawValue)
  {
    v4 = v1[1];
    v53[0] = *v1;
    v53[1] = v4;
    v6 = *v1;
    v5 = v1[1];
    v53[2] = v1[2];
    v54 = *(v1 + 6);
    v75 = v6;
    v76 = v5;
    v77 = v1[2];
    *&v78 = *(v1 + 6);
    outlined init with copy of TimelineBaseProperties(v53, &v65);
    TimelineBaseProperties.writeProperties(_:)(a1);
    v55 = v75;
    v56 = v76;
    v57 = v77;
    *&v58 = v78;
    outlined destroy of TimelineBaseProperties(&v55);
    specialized BlendTreeAnimation.root.getter(&v75);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation13BlendTreeNode_pMd, &_s17RealityFoundation13BlendTreeNode_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21BlendTreeNodeInternal_pMd, &_s17RealityFoundation21BlendTreeNodeInternal_pMR);
    if (swift_dynamicCast())
    {
      outlined init with take of ForceEffectBase(&v65, v52);
      v7 = __swift_project_boxed_opaque_existential_1(v52, v52[3]);
      BlendTreeNodeInternal.appendToBlendTreeDefinition(blendTreeDefinition:)(a1);
      if (!v8)
      {

        v35 = *(v2 + 168);
        v81 = *(v2 + 152);
        v82 = v35;
        v83 = *(v2 + 184);
        v84 = *(v2 + 25);
        v36 = *(v2 + 104);
        v77 = *(v2 + 88);
        v78 = v36;
        v37 = *(v2 + 136);
        v79 = *(v2 + 120);
        v80 = v37;
        v38 = *(v2 + 72);
        v75 = *(v2 + 56);
        v76 = v38;
        if (TimelineClipProperties.isClipped.getter())
        {
          v39 = *(v2 + 168);
          v81 = *(v2 + 152);
          v82 = v39;
          v83 = *(v2 + 184);
          v84 = *(v2 + 25);
          v40 = *(v2 + 104);
          v77 = *(v2 + 88);
          v78 = v40;
          v41 = *(v2 + 136);
          v79 = *(v2 + 120);
          v80 = v41;
          v42 = *(v2 + 72);
          v75 = *(v2 + 56);
          v76 = v42;
          type metadata accessor for TimelineDefinition();
          v43 = swift_allocObject();
          *(v43 + 16) = a1;
          outlined init with copy of TimelineClipProperties(&v75, &v65);
          RERetain();

          v44 = *(v2 + 104);
          v85[2] = *(v2 + 88);
          v85[3] = v44;
          v85[4] = *(v2 + 120);
          v45 = *(v2 + 17);
          v46 = *(v2 + 72);
          v85[0] = *(v2 + 56);
          v85[1] = v46;
          v86 = v45;
          v87 = v43;
          v47 = *(v2 + 168);
          v88 = *(v2 + 152);
          v89 = v47;
          v90 = *(v2 + 184);
          v91 = *(v2 + 25);
          outlined init with copy of TimelineClipProperties(v85, &v65);
          if (*(v43 + 16))
          {

            closure #1 in TimelineClipProperties.createClip()(v85, &v65);

            outlined destroy of TimelineClipProperties(v85);
            v7 = v65;
          }

          else
          {
            outlined destroy of TimelineClipProperties(v85);
            v7 = 0;
          }

          v48 = *(v2 + 104);
          v67 = *(v2 + 88);
          v68 = v48;
          v69 = *(v2 + 120);
          v49 = *(v2 + 17);
          v50 = *(v2 + 72);
          v65 = *(v2 + 56);
          v66 = v50;
          *&v70 = v49;
          *(&v70 + 1) = v43;
          v51 = *(v2 + 168);
          v71 = *(v2 + 152);
          v72 = v51;
          v73 = *(v2 + 184);
          v74 = *(v2 + 25);
          outlined destroy of TimelineClipProperties(&v65);
        }

        else
        {
          type metadata accessor for TimelineDefinition();
          *(swift_allocObject() + 16) = a1;
          RERetain();
          v7 = TimelineDefinition.resource.getter();
          swift_setDeallocating();
          RERelease();
          swift_deallocClassInstance();
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v52);
    }

    else
    {
      *&v67 = 0;
      v65 = 0u;
      v66 = 0u;
      outlined destroy of BodyTrackingComponent?(&v65, &_s17RealityFoundation21BlendTreeNodeInternal_pSgMd, &_s17RealityFoundation21BlendTreeNodeInternal_pSgMR);
      v7 = 0x80000001C18E27A0;
      lazy protocol witness table accessor for type AnimationError and conformance AnimationError();
      swift_allocError();
      *v25 = 0xD00000000000001DLL;
      *(v25 + 8) = 0x80000001C18E27A0;
      *(v25 + 16) = 0;
      swift_willThrow();
    }
  }

  else
  {
    v9 = *(v1 + 168);
    v81 = *(v1 + 152);
    v82 = v9;
    v83 = *(v1 + 184);
    v84 = *(v1 + 25);
    v10 = *(v1 + 104);
    v77 = *(v1 + 88);
    v78 = v10;
    v11 = *(v1 + 136);
    v79 = *(v1 + 120);
    v80 = v11;
    v12 = *(v1 + 72);
    v75 = *(v1 + 56);
    v76 = v12;
    if (TimelineClipProperties.isClipped.getter())
    {
      v13 = *(v1 + 136);
      v14 = *(v1 + 168);
      v81 = *(v1 + 152);
      v82 = v14;
      v83 = *(v1 + 184);
      v15 = *(v1 + 72);
      v16 = *(v1 + 104);
      v77 = *(v1 + 88);
      v78 = v16;
      v79 = *(v1 + 120);
      v80 = v13;
      v75 = *(v1 + 56);
      v76 = v15;
      v84 = *(v1 + 25);
      if (TimelineClipProperties.isModified.getter())
      {
        v17 = *(v1 + 168);
        v71 = *(v1 + 152);
        v72 = v17;
        v73 = *(v1 + 184);
        v74 = *(v1 + 25);
        v18 = *(v1 + 104);
        v67 = *(v1 + 88);
        v68 = v18;
        v19 = *(v1 + 136);
        v69 = *(v1 + 120);
        v70 = v19;
        v20 = *(v1 + 72);
        v65 = *(v1 + 56);
        v66 = v20;
        v21 = *(v1 + 168);
        v61 = *(v1 + 152);
        v62 = v21;
        v63 = *(v1 + 184);
        v64 = *(v1 + 25);
        v22 = *(v1 + 104);
        v57 = *(v1 + 88);
        v58 = v22;
        v23 = *(v1 + 136);
        v59 = *(v1 + 120);
        v60 = v23;
        v24 = *(v1 + 72);
        v55 = *(v1 + 56);
        v56 = v24;
        outlined init with copy of TimelineClipProperties(&v65, &v75);
        v7 = TimelineClipProperties.createClip()();
        v81 = v61;
        v82 = v62;
        v83 = v63;
        v84 = v64;
        v77 = v57;
        v78 = v58;
        v79 = v59;
        v80 = v60;
        v75 = v55;
        v76 = v56;
        outlined destroy of TimelineClipProperties(&v75);
      }

      else
      {
        return TimelineDefinition.resource.getter();
      }
    }

    else
    {
      if (!*(*(v1 + 6) + 16))
      {
        return 0;
      }

      v27 = specialized static __ServiceLocator.shared.getter();
      swift_beginAccess();
      outlined init with copy of __REAssetService(v27 + 120, &v75);
      v28 = *(&v76 + 1);
      v29 = v77;
      __swift_project_boxed_opaque_existential_1(&v75, *(&v76 + 1));
      (*(v29 + 32))(v28, v29);
      __swift_destroy_boxed_opaque_existential_1(&v75);
      TimelineAsset = RETimelineDefinitionCreateTimelineAsset();
      if (TimelineAsset)
      {
        v31 = TimelineAsset;
        RETimelineDefinitionGetName();
        v32 = String.init(cString:)();
        v34 = v33;
        type metadata accessor for AnimationResource();
        v7 = swift_allocObject();
        v7[2] = v31;
        v7[3] = v32;
        v7[4] = v34;
        RERetain();
        REAssetSetSwiftObject();
        RERelease();
      }

      else
      {
        return 0;
      }
    }
  }

  return v7;
}

_BYTE *BlendTreeAnimation.generate()(uint64_t a1)
{
  result = BlendTreeAnimation.createResource()(a1);
  if (!v1 && !result)
  {
    lazy protocol witness table accessor for type AnimationError and conformance AnimationError();
    swift_allocError();
    *v3 = 0xD00000000000001CLL;
    *(v3 + 8) = 0x80000001C18DE2F0;
    *(v3 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t (*protocol witness for AnimationDefinition.name.modify in conformance BlendTreeAnimation<A>(uint64_t **a1))()
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
  v2[4] = BlendTreeAnimation.name.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.blendLayer.modify in conformance BlendTreeAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = BlendTreeAnimation.blendLayer.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.fillMode.modify in conformance BlendTreeAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = BlendTreeAnimation.fillMode.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.bindTarget.modify in conformance BlendTreeAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = BlendTreeAnimation.bindTarget.modify(v2);
  return protocol witness for AnimationDefinition.bindTarget.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.trimStart.modify in conformance BlendTreeAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = BlendTreeAnimation.trimStart.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.trimEnd.modify in conformance BlendTreeAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = BlendTreeAnimation.trimEnd.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.trimDuration.modify in conformance BlendTreeAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = BlendTreeAnimation.trimDuration.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.offset.modify in conformance BlendTreeAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = BlendTreeAnimation.offset.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.delay.modify in conformance BlendTreeAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = BlendTreeAnimation.delay.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.speed.modify in conformance BlendTreeAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = BlendTreeAnimation.speed.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.repeatMode.modify in conformance BlendTreeAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = BlendTreeAnimation.repeatMode.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v13 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v9 = v13;
  }

  v10 = v6;
  v11 = *(*(v9 + 56) + 8 * v6);
  specialized _NativeDictionary._delete(at:)(v10, v9);
  *v2 = v9;
  return v11;
}

{
  v2 = v1;
  v3 = *v1;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v15 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v9 = v15;
  }

  v10 = v6;
  v11 = (*(v9 + 56) + 16 * v6);
  v12 = *v11;
  v13 = v11[1];
  specialized _NativeDictionary._delete(at:)(v10, v9);
  *v2 = v9;
  return v12;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  specialized _NativeDictionary._delete(at:)(v7, v10);
  *v3 = v10;
  return v12;
}

{
  v3 = v2;
  v4 = *v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  specialized _NativeDictionary._delete(at:)(v7, v10);
  *v3 = v10;
  return v12;
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
    v18 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v18;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = (*(v12 + 56) + 80 * v9);
    v15 = v14[3];
    a3[2] = v14[2];
    a3[3] = v15;
    *(a3 + 57) = *(v14 + 57);
    v16 = v14[1];
    *a3 = *v14;
    a3[1] = v16;
    specialized _NativeDictionary._delete(at:)(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *(a3 + 57) = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

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

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v14 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v11 = v14;
    }

    v12 = *(*(v11 + 48) + 40 * v8 + 32);

    outlined init with take of Any((*(v11 + 56) + 32 * v8), a2);
    specialized _NativeDictionary._delete(at:)(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for UUID();
    v14 = *(v13 - 8);
    v22 = v14;
    v15 = *(v14 + 72) * v8;
    (*(v14 + 8))(v12 + v15, v13);
    (*(v22 + 32))(a2, *(v11 + 56) + v15, v13);
    specialized _NativeDictionary._delete(at:)(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v13;
  }

  else
  {
    v20 = type metadata accessor for UUID();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  v6 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  v12 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v8 = v12;
  }

  v9 = v5;
  v10 = *(*(v8 + 56) + 8 * v5);
  specialized _NativeDictionary._delete(at:)(v9, v8);
  *v1 = v8;
  return v10;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = *v4;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3 & 0x101);
  if (v9)
  {
    v10 = v8;
    v11 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v5;
    v16 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v13 = v16;
    }

    v14 = *(*(v13 + 48) + 24 * v10 + 8);

    outlined init with take of ForceEffectBase((*(v13 + 56) + 40 * v10), a4);
    specialized _NativeDictionary._delete(at:)(v10, v13);
    *v5 = v13;
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
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
      result = MEMORY[0x1C68F4BF0](*(a2 + 40), *v10);
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
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v6);
      result = MEMORY[0x1C68F4BE0](*(a2 + 40), *v12);
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v11 + 8 * v3);
          if (v3 != v6 || v16 >= v12 + 1)
          {
            *v16 = *v12;
          }

          v17 = *(a2 + 56);
          v18 = v17 + 40 * v3;
          v19 = (v17 + 40 * v6);
          if (v3 != v6 || v18 >= v19 + 40)
          {
            v9 = *v19;
            v10 = v19[1];
            *(v18 + 32) = *(v19 + 4);
            *v18 = v9;
            *(v18 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

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
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v31 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v32 = v4;
    do
    {
      v9 = v7;
      v10 = *(v2 + 40);
      v11 = v2;
      v12 = (*(v2 + 48) + 40 * v6);
      v14 = *v12;
      v13 = v12[1];
      v16 = v12[2];
      v15 = v12[3];
      v17 = v12[4];
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C50](v14);
      if (v13)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1C68F4C10](v13);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v2 = v11;
      if (v16)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1C68F4C10](v16);
        if (v17)
        {
          goto LABEL_10;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (v17)
        {
LABEL_10:
          Hasher._combine(_:)(1u);

          String.hash(into:)();
          goto LABEL_13;
        }
      }

      Hasher._combine(_:)(0);
LABEL_13:
      v18 = Hasher._finalize()();

      v7 = v9;
      v19 = v18 & v9;
      if (v3 >= v31)
      {
        v4 = v32;
        if (v19 < v31)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v32;
        if (v19 >= v31)
        {
          goto LABEL_18;
        }
      }

      if (v3 >= v19)
      {
LABEL_18:
        v20 = *(v11 + 48);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v23 = *v22;
          v24 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v23;
          *(v21 + 16) = v24;
        }

        v25 = *(v11 + 56);
        v26 = (v25 + 32 * v3);
        v27 = (v25 + 32 * v6);
        if (v3 != v6 || v26 >= v27 + 2)
        {
          v8 = v27[1];
          *v26 = *v27;
          v26[1] = v8;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v28 = *(v2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v30;
    ++*(v2 + 36);
  }

  return result;
}

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
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

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
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

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
      v11 = 24 * v6;
      v12 = *(a2 + 40);
      v13 = (*(a2 + 48) + 24 * v6);
      v14 = *v13;
      v15 = v13[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v16 = Hasher._finalize()();

      v17 = v16 & v7;
      if (v3 >= v8)
      {
        if (v17 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v17 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v17)
      {
LABEL_10:
        v18 = *(a2 + 48);
        v19 = v18 + 24 * v3;
        v20 = (v18 + v11);
        if (24 * v3 < v11 || v19 >= v20 + 24 || v3 != v6)
        {
          v21 = *v20;
          *(v19 + 16) = *(v20 + 2);
          *v19 = v21;
        }

        v22 = *(a2 + 56);
        v23 = v22 + 40 * v3;
        v24 = (v22 + 40 * v6);
        if (v3 != v6 || v23 >= v24 + 40)
        {
          v9 = *v24;
          v10 = v24[1];
          *(v23 + 32) = *(v24 + 4);
          *v23 = v9;
          *(v23 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int specialized _NativeDictionary._delete(at:)(Swift::Int result, uint64_t a2)
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
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v10);
      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
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

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v10);
      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + 8 * v3);
      v14 = (v12 + 8 * v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      if (v3 < v6 || *(a2 + 56) + 8 * v3 >= *(a2 + 56) + 8 * v6 + 8)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMd, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMR);
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMd, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMR);
        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_18:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v15 = *(a2 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v17;
    ++*(a2 + 36);
  }

  return result;
}

{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v29 = ~v5;
    v30 = a2 + 64;
    v28 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v7 = 24 * v6;
      v8 = *(v2 + 40);
      v9 = v2;
      v10 = *(v2 + 48) + 24 * v6;
      v31 = *v10;
      v11 = *(v10 + 8);
      v12 = *(v10 + 16);
      v13 = *(v10 + 17);
      v14 = *(v10 + 18);
      v15 = *(v10 + 2);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v15);
      if (v12 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1C68F4C10](v11);
      }

      v2 = v9;
      if (v13 == 2)
      {
        Hasher._combine(_:)(0);
        if (v14 == 2)
        {
          goto LABEL_10;
        }
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1C68F4C10](v13 & 1);
        if (v14 == 2)
        {
LABEL_10:
          v16 = 0;
          goto LABEL_13;
        }
      }

      Hasher._combine(_:)(1u);
      v16 = v14 & 1;
LABEL_13:
      Hasher._combine(_:)(v16);
      Hasher._combine(_:)(v31);
      result = Hasher._finalize()();
      v17 = result & v29;
      if (v3 >= v28)
      {
        v4 = v30;
        if (v17 < v28)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v30;
        if (v17 >= v28)
        {
          goto LABEL_18;
        }
      }

      if (v3 >= v17)
      {
LABEL_18:
        v18 = *(v9 + 48);
        v19 = v18 + 24 * v3;
        v20 = (v18 + v7);
        if (24 * v3 < v7 || v19 >= v20 + 24 || v3 != v6)
        {
          v21 = *v20;
          *(v19 + 16) = *(v20 + 2);
          *v19 = v21;
        }

        v22 = *(v9 + 56);
        v23 = (v22 + 8 * v3);
        v24 = (v22 + 8 * v6);
        if (v3 != v6 || v23 >= v24 + 1)
        {
          *v23 = *v24;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v29;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(v2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v27;
    ++*(v2 + 36);
  }

  return result;
}

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
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v10);
      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
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

LABEL_4:
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
      v9 = *(a2 + 40);
      v10 = *(a2 + 48) + 6 * v6;
      v11 = *(v10 + 4);
      v12 = *(v10 + 5);
      v13 = *(v10 + 2);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v13);
      if (v11 == 2)
      {
        Hasher._combine(_:)(0);
        if (v12 == 2)
        {
          goto LABEL_7;
        }
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1C68F4C10](v11 & 1);
        if (v12 == 2)
        {
LABEL_7:
          v14 = 0;
          goto LABEL_10;
        }
      }

      Hasher._combine(_:)(1u);
      v14 = v12 & 1;
LABEL_10:
      Hasher._combine(_:)(v14);
      result = Hasher._finalize()();
      v15 = result & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_15;
      }

      if (v3 >= v15)
      {
LABEL_15:
        v16 = *(a2 + 48);
        v17 = v16 + 6 * v3;
        v18 = (v16 + 6 * v6);
        if (v3 != v6 || v17 >= v18 + 6)
        {
          v19 = *v18;
          *(v17 + 4) = *(v18 + 2);
          *v17 = v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 8 * v3);
        v22 = (v20 + 8 * v6);
        if (v3 != v6 || v21 >= v22 + 1)
        {
          *v21 = *v22;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

char *specialized _NativeDictionary._delete(at:)(char *result, uint64_t a2)
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
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        result = (v18 + 80 * v3);
        v19 = (v18 + 80 * v6);
        if (80 * v3 < (80 * v6) || result >= v19 + 80 || v3 != v6)
        {
          result = memmove(result, v19, 0x50uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
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
      result = MEMORY[0x1C68F4BF0](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      result = v15 + 16 * v3;
      if (v3 < v6 || result >= v15 + 16 * v6 + 16)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(v2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v50 = v4;
    v49 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v51 = v2;
    while (1)
    {
      v8 = *(v2 + 40);
      v9 = *(v2 + 48) + 120 * v6;
      v10 = *(v9 + 48);
      v12 = *v9;
      v11 = *(v9 + 16);
      v56 = *(v9 + 32);
      v57 = v10;
      v54 = v12;
      v55 = v11;
      v14 = *(v9 + 80);
      v13 = *(v9 + 96);
      v15 = *(v9 + 64);
      v61 = *(v9 + 112);
      v59 = v14;
      v60 = v13;
      v58 = v15;
      Hasher.init(_seed:)();
      v16 = *(&v54 + 1);
      v17 = v55;
      Hasher._combine(_:)(WORD1(v54));
      if (v17 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1C68F4C10](v16);
      }

      v18 = BYTE2(v55);
      v52 = v3;
      if (BYTE2(v55) == 2)
      {
        v19 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v19 = v18 & 1;
      }

      Hasher._combine(_:)(v19);
      v20 = *(&v56 + 1);
      if (*(&v56 + 1))
      {
        v21 = *(&v55 + 1);
        v22 = v56;
        v23 = v57;
        v24 = v58;
        Hasher._combine(_:)(1u);
        Hasher._combine(_:)(v21);
        outlined init with copy of CustomMaterial.CustomShaderParameters(&v54, v53);
        outlined copy of __MaterialResource.CoreMaterialFunction?(v21, v22, v20, v23, *(&v23 + 1), v24);
        String.hash(into:)();
        v25 = REAssetHandleCopyAssetIdentifierString();
        type metadata accessor for CFStringRef(0);
        _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
        _CFObject.hash(into:)();

        MEMORY[0x1C68F4C10](*(*(&v23 + 1) + 16));
        v26 = *(*(&v23 + 1) + 16);
        if (v26)
        {
          v27 = (*(&v23 + 1) + 32);
          do
          {
            v28 = *v27++;
            Hasher._combine(_:)(v28);
            --v26;
          }

          while (v26);
        }

        NSObject.hash(into:)();
        outlined consume of __MaterialResource.CoreMaterialFunction?(v21, v22, v20, v23, *(&v23 + 1), v24);
        v29 = *(&v59 + 1);
        if (!*(&v59 + 1))
        {
LABEL_21:
          Hasher._combine(_:)(0);
          goto LABEL_22;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        outlined init with copy of CustomMaterial.CustomShaderParameters(&v54, v53);
        v29 = *(&v59 + 1);
        if (!*(&v59 + 1))
        {
          goto LABEL_21;
        }
      }

      v30 = *(&v58 + 1);
      v31 = v59;
      v32 = v60;
      v33 = v61;
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(v30);

      v33;
      String.hash(into:)();
      v34 = REAssetHandleCopyAssetIdentifierString();
      type metadata accessor for CFStringRef(0);
      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
      _CFObject.hash(into:)();

      MEMORY[0x1C68F4C10](*(*(&v32 + 1) + 16));
      v35 = *(*(&v32 + 1) + 16);
      if (v35)
      {
        v36 = (*(&v32 + 1) + 32);
        do
        {
          v37 = *v36++;
          Hasher._combine(_:)(v37);
          --v35;
        }

        while (v35);
      }

      NSObject.hash(into:)();
      outlined consume of __MaterialResource.CoreMaterialFunction?(v30, v31, v29, v32, *(&v32 + 1), v33);
LABEL_22:
      v38 = Hasher._finalize()();
      result = outlined destroy of CustomMaterial.CustomShaderParameters(&v54);
      v39 = v38 & v7;
      v3 = v52;
      if (v52 >= v49)
      {
        v40 = v50;
        v2 = v51;
        if (v39 < v49)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v40 = v50;
        v2 = v51;
        if (v39 >= v49)
        {
          goto LABEL_27;
        }
      }

      if (v52 >= v39)
      {
LABEL_27:
        v41 = *(v2 + 48);
        result = v41 + 120 * v52;
        v42 = (v41 + 120 * v6);
        if (v52 != v6 || result >= v42 + 120)
        {
          result = memmove(result, v42, 0x78uLL);
        }

        v43 = *(v2 + 56);
        v44 = (v43 + 8 * v52);
        v45 = (v43 + 8 * v6);
        if (v52 != v6 || v44 >= v45 + 1)
        {
          *v44 = *v45;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
      if (((*(v40 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        *(v40 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
        goto LABEL_35;
      }
    }
  }

  *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
LABEL_35:
  v46 = *(v2 + 16);
  v47 = __OFSUB__(v46, 1);
  v48 = v46 - 1;
  if (v47)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v48;
    ++*(v2 + 36);
  }

  return result;
}

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
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x1C68F4BD0](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 4 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for LoadTrace(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

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
      result = MEMORY[0x1C68F4BF0](*(a2 + 40), *v10);
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
          result = v15 + (v3 << 7);
          v16 = (v15 + (v6 << 7));
          if (v3 << 7 != v6 << 7 || (v3 = v6, result >= v16 + 128))
          {
            result = memmove(result, v16, 0x80uLL);
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

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    v33 = (v13 + 1) & v12;
    v34 = a2 + 64;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v17 = *(v15 + 56);
    v31 = (v15 - 8);
    v32 = v16;
    do
    {
      v18 = v17 * v11;
      v19 = v14;
      v20 = v15;
      v32(v8, *(a2 + 48) + v17 * v11, v4);
      v21 = *(a2 + 40);
      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v31)(v8, v4);
      v14 = v19;
      v23 = v22 & v19;
      if (a1 >= v33)
      {
        if (v23 >= v33 && a1 >= v23)
        {
LABEL_15:
          v26 = v17 * a1;
          if (v17 * a1 < v18 || *(a2 + 48) + v17 * a1 >= (*(a2 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v26 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v26 < v18 || *(a2 + 56) + v26 >= (*(a2 + 56) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v15 = v20;
            v14 = v19;
          }

          else
          {
            a1 = v11;
            v27 = v26 == v18;
            v15 = v20;
            v14 = v19;
            if (!v27)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v19;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v33 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v20;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v9 = v34;
    }

    while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for UUID();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

BOOL specialized static BlendWeight.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      outlined consume of BlendWeight(*a1, v2, v4, 0);
      outlined consume of BlendWeight(v7, v6, v8, 0);
      return *&v3 == *&v7;
    }

    goto LABEL_17;
  }

  if (v5 == 1)
  {
    if (v9 == 1)
    {
      v10 = *a1;
      if (v3 == v7 && v2 == v6)
      {
        outlined copy of BlendWeight(v10, v2, v8, 1);
        outlined copy of BlendWeight(v3, v2, v4, 1);
        outlined consume of BlendWeight(v3, v2, v4, 1);
        outlined consume of BlendWeight(v3, v2, v8, 1);
LABEL_20:
        v15 = *&v4;
        v16 = *&v8;
        return v15 == v16;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of BlendWeight(v7, v6, v8, 1);
      outlined copy of BlendWeight(v3, v2, v4, 1);
      outlined consume of BlendWeight(v3, v2, v4, 1);
      outlined consume of BlendWeight(v7, v6, v8, 1);
      if (v12)
      {
        goto LABEL_20;
      }

      return 0;
    }

    v17 = *(a1 + 8);

LABEL_17:
    outlined copy of BlendWeight(v7, v6, v8, v9);
    outlined consume of BlendWeight(v3, v2, v4, v5);
    outlined consume of BlendWeight(v7, v6, v8, v9);
    return 0;
  }

  if (v9 != 2)
  {
    outlined copy of BindTarget(*a1, v2, v4);
    goto LABEL_17;
  }

  v21[0] = *a1;
  v21[1] = v2;
  v22 = v4;
  v19[0] = v7;
  v19[1] = v6;
  v20 = v8;
  outlined copy of BlendWeight(v7, v6, v8, 2);
  outlined copy of BlendWeight(v3, v2, v4, 2);
  outlined copy of BlendWeight(v7, v6, v8, 2);
  outlined copy of BlendWeight(v3, v2, v4, 2);
  v14 = specialized static BindTarget.== infix(_:_:)(v21, v19);
  outlined consume of BlendWeight(v3, v2, v4, 2);
  outlined consume of BlendWeight(v7, v6, v8, 2);
  outlined consume of BlendWeight(v7, v6, v8, 2);
  outlined consume of BlendWeight(v3, v2, v4, 2);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = *(&v4 + 1);
  v16 = *(&v8 + 1);
  return v15 == v16;
}

uint64_t outlined assign with take of AnimationDefinition?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19AnimationDefinition_pSgMd, &_s17RealityFoundation19AnimationDefinition_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined copy of BlendWeight(uint64_t result, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4 == 2)
  {
    return outlined copy of BindTarget(result, a2, a3);
  }

  if (a4 == 1)
  {
  }

  return result;
}

uint64_t outlined consume of BlendWeight(uint64_t result, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4 == 2)
  {
    return outlined consume of BindTarget(result, a2, a3);
  }

  if (a4 == 1)
  {
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BlendWeight(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for BlendWeight(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for BlendTreeSourceNode(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for BlendTreeSourceNode(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for BlendTreeBlendNode(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t storeEnumTagSinglePayload for BlendTreeBlendNode(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for BlendTreeInvalidNode(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for BlendTreeInvalidNode(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for BlendTreeAnimation()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation10BindTargetOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 6)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BlendTreeAnimation(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for BlendTreeAnimation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for PublishingEvent.publish(_:on:componentType:) in conformance ImagePresentationComponent.Spatial3DImage.GenerationStartedEvent(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *))
{
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = (*(v13 + 16))(v16, a5, a2, a3, a4, a5, v12, v13);
  a7(v14);
}

uint64_t ImagePresentationComponent.Spatial3DImage.GenerationStartedEvent.publish(_:on:componentType:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *))
{
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 16))(v15, a5, a2, a3, a4, a5, v11, v12);
  a6(v13);
}

uint64_t ImagePresentationComponent.Spatial3DImage.__allocating_init(imageSource:)(uint64_t a1)
{
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = CustomMaterial.Program.__allocating_init(surfaceShader:geometryModifier:descriptor:);

  return ImagePresentationComponent.Spatial3DImage.init(imageSource:)(a1);
}

uint64_t ImagePresentationComponent.Spatial3DImage.init(imageSource:)(uint64_t a1)
{
  *(v2 + 1512) = v1;
  *(v2 + 760) = a1;
  return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.Spatial3DImage.init(imageSource:), 0, 0);
}

uint64_t ImagePresentationComponent.Spatial3DImage.init(imageSource:)()
{
  v1 = MEMORY[0x1E69E7CD0];
  v2 = *(v0 + 1512);
  *(v2 + 88) = 0;
  *(v2 + 96) = v1;
  *(v2 + 104) = 0;
  *(v2 + 108) = 1;
  *(v0 + 3068) = 0;
  v3 = swift_task_alloc();
  *(v0 + 2264) = v3;
  *v3 = v0;
  v3[1] = ImagePresentationComponent.Spatial3DImage.init(imageSource:);
  v4 = *(v0 + 760);

  return specialized static ImagePresentationComponent.ImagePair.imagePairAndMetadata(imageSource:options:)(v0 + 16, v4, (v0 + 3068));
}

{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 2264);
  v5 = *v1;
  v3[377] = v0;
  v6 = v2[2];
  v3[378] = v6;
  v7 = v2[3];
  v3[379] = v7;
  v8 = *(v3 + 8);
  *(v3 + 766) = v8;
  v57 = *(v3 + 7);
  v58 = *(v3 + 5);
  *(v3 + 190) = v58;
  v3[382] = v57;
  v9 = *(v3 + 72);
  v10 = *(v3 + 76);
  v41 = *(v3 + 84);
  v25 = *(v3 + 9);
  v26 = *(v3 + 7);
  v20 = *(v3 + 8);
  v21 = *(v3 + 6);
  v23 = *(v3 + 13);
  v24 = *(v3 + 11);
  v18 = *(v3 + 12);
  v19 = *(v3 + 10);
  v22 = *(v3 + 15);
  v17 = *(v3 + 14);
  v56 = *(v3 + 17);
  v16 = *(v3 + 16);
  v55 = *(v3 + 19);
  v40 = *(v3 + 18);
  v54 = *(v3 + 21);
  v39 = *(v3 + 20);
  v53 = *(v3 + 23);
  v38 = *(v3 + 22);
  v52 = *(v3 + 25);
  v37 = *(v3 + 24);
  v51 = *(v3 + 27);
  v36 = *(v3 + 26);
  v50 = *(v3 + 29);
  v35 = *(v3 + 28);
  v49 = *(v3 + 31);
  v33 = *(v3 + 32);
  v34 = *(v3 + 30);
  v47 = *(v3 + 35);
  v48 = *(v3 + 33);
  v31 = *(v3 + 36);
  v32 = *(v3 + 34);
  v45 = *(v3 + 39);
  v46 = *(v3 + 37);
  v29 = *(v3 + 40);
  v30 = *(v3 + 38);
  v43 = *(v3 + 43);
  v44 = *(v3 + 41);
  v42 = *(v3 + 45);
  v27 = *(v3 + 44);
  v28 = *(v3 + 42);
  v11 = v2[92];
  v12 = v2[93];
  v13 = v2[94];

  if (v0)
  {
    v14 = ImagePresentationComponent.Spatial3DImage.init(imageSource:);
  }

  else
  {
    *(v3 + 100) = v21;
    *(v3 + 101) = v26;
    *(v3 + 102) = v20;
    *(v3 + 103) = v25;
    *(v3 + 104) = v19;
    *(v3 + 105) = v24;
    *(v3 + 106) = v18;
    *(v3 + 107) = v23;
    *(v3 + 108) = v17;
    *(v3 + 109) = v22;
    *(v3 + 110) = v16;
    v3[190] = v6;
    v3[191] = v7;
    *(v3 + 384) = v8;
    *(v3 + 193) = v58;
    *(v3 + 195) = v57;
    *(v3 + 1576) = v9;
    *(v3 + 1580) = v10;
    *(v3 + 1588) = v41;
    *(v3 + 111) = v56;
    *(v3 + 112) = v40;
    *(v3 + 113) = v55;
    *(v3 + 114) = v39;
    *(v3 + 115) = v54;
    *(v3 + 116) = v38;
    *(v3 + 117) = v53;
    *(v3 + 118) = v37;
    *(v3 + 119) = v52;
    *(v3 + 120) = v36;
    *(v3 + 121) = v51;
    *(v3 + 122) = v35;
    *(v3 + 123) = v50;
    *(v3 + 124) = v34;
    *(v3 + 125) = v49;
    *(v3 + 126) = v33;
    *(v3 + 127) = v48;
    *(v3 + 128) = v32;
    *(v3 + 129) = v47;
    *(v3 + 130) = v31;
    *(v3 + 131) = v46;
    *(v3 + 132) = v30;
    *(v3 + 133) = v45;
    *(v3 + 134) = v29;
    *(v3 + 135) = v44;
    *(v3 + 136) = v28;
    *(v3 + 137) = v43;
    *(v3 + 138) = v27;
    *(v3 + 139) = v42;
    v3[280] = v11;
    v3[281] = v12;
    v3[282] = v13;
    v14 = ImagePresentationComponent.Spatial3DImage.init(imageSource:);
  }

  return MEMORY[0x1EEE6DFA0](v14, 0, 0);
}

{
  v1 = *(v0 + 3056);
  v2 = *(v0 + 3048);
  v3 = *(v0 + 3040);
  v4 = *(v0 + 3064);
  v5 = *(v0 + 3032);
  v6 = *(v0 + 3024);
  v7 = *(v0 + 1512);
  v8 = *(v0 + 760);
  *(v0 + 768) = v6;
  *(v0 + 776) = v5;
  *(v0 + 784) = v4;
  *(v0 + 792) = v3;
  *(v0 + 800) = v2;
  *(v0 + 808) = v1;
  memcpy((v0 + 816), (v0 + 1568), 0x2B8uLL);
  outlined init with copy of [String : String](v0 + 768, v0 + 2272, &_s17RealityFoundation26ImagePresentationComponentV0C4PairV05imageF0_AE08MetadataF0V08metadataF0tMd, &_s17RealityFoundation26ImagePresentationComponentV0C4PairV05imageF0_AE08MetadataF0V08metadataF0tMR);
  outlined destroy of ImagePresentationComponent.ImagePair.MetadataPair(v0 + 1568);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  *(v7 + 48) = v2;
  *(v7 + 56) = v1;
  *(v7 + 64) = v8;

  outlined destroy of ImagePresentationComponent.ImagePair.MetadataPair(v0 + 1568);
  v9 = *(v0 + 1584);
  v10 = *(v0 + 1588);
  *(v7 + 72) = *(v0 + 1568);
  *(v7 + 80) = v9;
  *(v7 + 84) = v10;
  v11 = *(v7 + 88);
  *(v7 + 88) = 0;

  v12 = *(v0 + 8);
  v13 = *(v0 + 1512);

  return v12(v13);
}

{
  v1 = *(v0 + 1512);

  v2 = *(v1 + 88);

  v3 = *(v1 + 96);

  type metadata accessor for ImagePresentationComponent.Spatial3DImage();
  swift_deallocPartialClassInstance();
  v4 = *(v0 + 8);
  v5 = *(v0 + 3016);

  return v4();
}