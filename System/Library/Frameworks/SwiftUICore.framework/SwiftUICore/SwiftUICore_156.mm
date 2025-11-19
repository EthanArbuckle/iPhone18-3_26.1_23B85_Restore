uint64_t lazy protocol witness table accessor for type CoordinateSpaceGesture<CGFloat> and conformance CoordinateSpaceGesture<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RequiredTapCountWriter<TappableEvent>(255, a2, MEMORY[0x1E69E7DE0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EventListenerPhase<TappableEvent> and conformance EventListenerPhase<A>()
{
  result = lazy protocol witness table cache variable for type EventListenerPhase<TappableEvent> and conformance EventListenerPhase<A>;
  if (!lazy protocol witness table cache variable for type EventListenerPhase<TappableEvent> and conformance EventListenerPhase<A>)
  {
    type metadata accessor for SingleTapGesture<TappableEvent>(255, &lazy cache variable for type metadata for EventListenerPhase<TappableEvent>, &type metadata for TappableEvent, &protocol witness table for TappableEvent, type metadata accessor for EventListenerPhase);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventListenerPhase<TappableEvent> and conformance EventListenerPhase<A>);
  }

  return result;
}

void type metadata accessor for Map<EventListenerPhase<SpatialEvent>.Value, ArrayWith2Inline<(String, String)>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for SingleTapGesture<TappableEvent>(255, a3, a4, a5, type metadata accessor for EventListenerPhase.Value);
    _sSay7SwiftUI13ViewResponderCGMaTm_7(255, &lazy cache variable for type metadata for ArrayWith2Inline<(String, String)>, type metadata accessor for (String, String), type metadata accessor for ArrayWith2Inline);
    v6 = type metadata accessor for Map();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Map<EventListenerPhase<TappableEvent>.Value, ArrayWith2Inline<(String, String)>> and conformance Map<A, B>()
{
  result = lazy protocol witness table cache variable for type Map<EventListenerPhase<TappableEvent>.Value, ArrayWith2Inline<(String, String)>> and conformance Map<A, B>;
  if (!lazy protocol witness table cache variable for type Map<EventListenerPhase<TappableEvent>.Value, ArrayWith2Inline<(String, String)>> and conformance Map<A, B>)
  {
    type metadata accessor for Map<EventListenerPhase<SpatialEvent>.Value, ArrayWith2Inline<(String, String)>>(255, &lazy cache variable for type metadata for Map<EventListenerPhase<TappableEvent>.Value, ArrayWith2Inline<(String, String)>>, &lazy cache variable for type metadata for EventListenerPhase<TappableEvent>.Value, &type metadata for TappableEvent, &protocol witness table for TappableEvent);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Map<EventListenerPhase<TappableEvent>.Value, ArrayWith2Inline<(String, String)>> and conformance Map<A, B>);
  }

  return result;
}

void type metadata accessor for RequiredTapCountWriter<TappableEvent>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for SingleTapGesture<TappableEvent>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type MapPhase<TappableEvent, TappableEvent> and conformance MapPhase<A, B>()
{
  result = lazy protocol witness table cache variable for type MapPhase<TappableEvent, TappableEvent> and conformance MapPhase<A, B>;
  if (!lazy protocol witness table cache variable for type MapPhase<TappableEvent, TappableEvent> and conformance MapPhase<A, B>)
  {
    type metadata accessor for SingleTapGesture<TappableEvent>(255, &lazy cache variable for type metadata for MapPhase<TappableEvent, TappableEvent>, &type metadata for TappableEvent, &type metadata for TappableEvent, type metadata accessor for MapPhase);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MapPhase<TappableEvent, TappableEvent> and conformance MapPhase<A, B>);
  }

  return result;
}

uint64_t static DisableContainerContextStylingModifier._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t *a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA36ContainerContextStylingDisabledInputV_Tt2g5(a2, 1);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance DisableContainerContextStylingModifier(uint64_t a1, uint64_t *a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA36ContainerContextStylingDisabledInputV_Tt2g5(a2, 1);
}

uint64_t specialized static ContainerContextStylingFeatureEnabled.isEnabled.getter()
{
  if (one-time initialization token for v7 != -1)
  {
    swift_once();
  }

  v0 = static Semantics.v7;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v4[3] = &type metadata for ContainerContextStylingFeatureEnabled.Key;
    v4[4] = lazy protocol witness table accessor for type ContainerContextStylingFeatureEnabled.Key and conformance ContainerContextStylingFeatureEnabled.Key();
    v2 = swift_allocObject();
    v4[0] = v2;
    *(v2 + 16) = "SwiftUI";
    *(v2 + 24) = 7;
    *(v2 + 32) = 2;
    *(v2 + 40) = "containerContextStylingEnabled";
    *(v2 + 48) = 30;
    *(v2 + 56) = 2;
    v1 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1(v4);
    return v1 & 1;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_9;
  }

LABEL_7:
  v1 = 0;
  return v1 & 1;
}

void *MaterialEffect.Fill.animatableData.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 8) == 1 && (v3 = *v1, v4 = *(*v3 + 144), v5 = , v4(v8, v5), result = outlined consume of Material.ID(v3, 1u), *&v8[0]))
  {
    v7 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v7;
    *(a1 + 32) = v9;
  }

  else
  {
    if (one-time initialization token for empty != -1)
    {
      swift_once();
    }

    return outlined init with copy of _AnyAnimatableData(&static _AnyAnimatableData.empty, a1);
  }

  return result;
}

uint64_t protocol witness for Animatable.animatableData.setter in conformance MaterialEffect.Fill(void *a1)
{
  outlined init with copy of _AnyAnimatableData(a1, v8);
  if (v1[8] == 1)
  {
    v3 = *v1;
    v4 = *(**v1 + 152);

    v5 = v1;
    v6 = v4(v8);
    outlined consume of Material.ID(v3, 1u);
    outlined destroy of _AnyAnimatableData(a1);
    outlined destroy of _AnyAnimatableData(v8);
    result = outlined consume of Material.ID(*v5, v5[8]);
    *v5 = v6;
    v5[8] = 1;
  }

  else
  {
    outlined destroy of _AnyAnimatableData(a1);
    return outlined destroy of _AnyAnimatableData(v8);
  }

  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance MaterialEffect.Fill(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 120) = v1;
  if (*(v1 + 8) == 1 && (v5 = *v1, v6 = *(*v5 + 144), v7 = , v6(v10, v7), outlined consume of Material.ID(v5, 1u), *&v10[0]))
  {
    v8 = v10[1];
    *v4 = v10[0];
    *(v4 + 16) = v8;
    *(v4 + 32) = v11;
  }

  else
  {
    if (one-time initialization token for empty != -1)
    {
      swift_once();
    }

    outlined init with copy of _AnyAnimatableData(&static _AnyAnimatableData.empty, v4);
  }

  return protocol witness for Animatable.animatableData.modify in conformance MaterialEffect.Fill;
}

void protocol witness for Animatable.animatableData.modify in conformance MaterialEffect.Fill(void **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[15];
  outlined init with copy of _AnyAnimatableData(*a1, *a1 + 5);
  if ((a2 & 1) == 0)
  {
    if (*(v4 + 8) == 1)
    {
      v9 = v3[15];
      v10 = *v9;
      v11 = *(**v9 + 152);

      v12 = v11(v3 + 5);
      outlined consume of Material.ID(v10, 1u);
      outlined destroy of _AnyAnimatableData((v3 + 5));
      outlined destroy of _AnyAnimatableData(v3);
      outlined consume of Material.ID(*v9, *(v9 + 8));
      *v9 = v12;
      *(v9 + 8) = 1;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  outlined init with copy of _AnyAnimatableData(v3 + 5, v3 + 10);
  if (*(v4 + 8) != 1)
  {
    outlined destroy of _AnyAnimatableData((v3 + 10));
LABEL_7:
    outlined destroy of _AnyAnimatableData((v3 + 5));
    goto LABEL_8;
  }

  v5 = v3[15];
  v6 = *v5;
  v7 = *(**v5 + 152);

  v8 = v7(v3 + 10);
  outlined consume of Material.ID(v6, 1u);
  outlined destroy of _AnyAnimatableData((v3 + 10));
  outlined destroy of _AnyAnimatableData((v3 + 5));
  outlined consume of Material.ID(*v5, *(v5 + 8));
  *v5 = v8;
  *(v5 + 8) = 1;
LABEL_8:
  outlined destroy of _AnyAnimatableData(v3);
LABEL_9:

  free(v3);
}

void protocol witness for static Rule.initialValue.getter in conformance MaterialEffectUpdatedFill(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
}

void *protocol witness for Rule.value.getter in conformance MaterialEffectTransaction@<X0>(void *a1@<X8>)
{
  v3 = 0x100000000;
  if (!*(v1 + 12))
  {
    v3 = 0;
  }

  result = MaterialEffectTransaction.value.getter(*v1, v3 | *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t MaterialEffectBackdropObserver.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t assignWithCopy for MaterialEffectState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for MaterialEffectState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for MaterialEffectState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 28))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for MaterialEffectState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t assignWithTake for MaterialEffectState.Value(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for MaterialEffect(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a1 + 24);
  *(a1 + 24) = v4;
  outlined consume of Material.ID(v5, v6);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

unint64_t instantiation function for generic protocol witness table for MaterialEffectState(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MaterialEffectState and conformance MaterialEffectState();
  *(a1 + 8) = result;
  return result;
}

uint64_t MaterialEffectResolvedData.updateValue()()
{
  v88 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v64 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v64 - v10;
  type metadata accessor for ObservationTracking._AccessList?();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v64 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v64 - v19;
  if (*(AGGraphGetValue() + 16) != 1)
  {
    _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_1(0, &lazy cache variable for type metadata for MaterialEffectResolvedData.Data?, &unk_1F00A6040, MEMORY[0x1E69E6720]);
    v82 = 0u;
    v83 = 0u;
    return AGGraphSetOutputValue();
  }

  v21 = *(v0 + 9) + 1;
  *(v0 + 9) = v21;
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    LODWORD(v75) = *MEMORY[0x1E698D3F8];
    v76 = v17;
    v65 = v14;
    v78 = v20;
    v66 = v8;
    v67 = v11;
    v77 = v3;
    v22 = AGCreateWeakAttribute();
    v23 = v22;
    v73 = HIDWORD(v22);
    v24 = AGCreateWeakAttribute();
    v25 = v24;
    v72 = HIDWORD(v24);
    v26 = AGCreateWeakAttribute();
    v27 = v26;
    v71 = HIDWORD(v26);
    v28 = AGCreateWeakAttribute();
    v29 = v28;
    v70 = HIDWORD(v28);
    v30 = AGCreateWeakAttribute();
    v31 = v30;
    v69 = HIDWORD(v30);
    v32 = AGCreateWeakAttribute();
    v68 = v21;
    v74 = _threadGeometryProxyData();
    *&v82 = __PAIR64__(v73, v23);
    *(&v82 + 1) = __PAIR64__(v72, v25);
    *&v83 = __PAIR64__(v71, v27);
    *(&v83 + 1) = __PAIR64__(v70, v29);
    v84 = v31;
    v14 = v0;
    v85 = v69;
    v86 = v32;
    v87 = v68;
    _setThreadGeometryProxyData();
    Value = AGGraphGetValue();
    v34 = Value[1];
    v79 = *Value;
    v80 = v34;
    type metadata accessor for CGSize(0);
    v20 = v35;

    v36 = AGGraphGetValue();
    _ShapeSet.Wrapper.pathSet(in:)(v81, *v36, v36[1]);

    _setThreadGeometryProxyData();
    v11 = v81[0];
    v1 = *&v81[1];
    if (one-time initialization token for _current == -1)
    {
      goto LABEL_4;
    }
  }

  swift_once();
LABEL_4:
  v37 = static ObservationCenter._current;
  swift_beginAccess();
  v38 = pthread_getspecific(v37[2]);
  v39 = v76;
  v40 = v77;
  if (!v38)
  {
    v41 = swift_slowAlloc();
    pthread_setspecific(v37[2], v41);
    *(&v83 + 1) = type metadata accessor for ObservationCenter();
    *&v82 = v37[3];
    outlined init with take of Any(&v82, v41);

    v38 = v41;
  }

  outlined init with copy of Any(v38, &v82);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v42 = v79;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == v75)
  {
    __break(1u);
    goto LABEL_22;
  }

  v20 = CurrentAttribute;
  swift_beginAccess();
  v72 = *(v42 + 24);
  *(v42 + 24) = MEMORY[0x1E69E7CC0];
  (*(v40 + 56))(v39, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v45 = *(StatusReg + 848);
  *(StatusReg + 848) = v39;
  v75 = v11;
  closure #2 in MaterialEffectResolvedData.updateValue()(v14, v11, &v82, v1);
  *(StatusReg + 848) = v45;
  v73 = v82;
  v74 = BYTE8(v82);
  v71 = HIDWORD(v82);
  v46 = v78;
  outlined init with take of ObservationTracking._AccessList?(v39, v78);
  v47 = v65;
  outlined init with copy of ObservationTracking._AccessList?(v46, v65);
  if ((*(v40 + 48))(v47, 1, v2) != 1)
  {
    v11 = *(v40 + 32);
    v50 = v67;
    (v11)(v67, v47, v2);
    (*(v40 + 16))(v66, v50, v2);
    v39 = *(v42 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v42 + 24) = v39;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_11:
      v53 = v39[2];
      v52 = v39[3];
      if (v53 >= v52 >> 1)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v52 > 1, v53 + 1, 1, v39);
      }

      v39[2] = v53 + 1;
      (v11)(v39 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v53, v66, v2);
      *(v42 + 24) = v39;
      (*(v40 + 8))(v67, v2);
      v48 = v78;
      goto LABEL_14;
    }

LABEL_22:
    v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1, v39);
    *(v42 + 24) = v39;
    goto LABEL_11;
  }

  outlined destroy of ObservationTracking._AccessList?(v46);
  v48 = v47;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v48);
  v54 = *(v42 + 24);
  v55 = *(v54 + 16);
  if (v55)
  {
    v58 = *(v40 + 16);
    v57 = v40 + 16;
    v56 = v58;
    v59 = v54 + ((*(v57 + 64) + 32) & ~*(v57 + 64));
    v60 = *(v57 + 56);
    v61 = (v57 - 8);
    v78 = *(v42 + 24);

    do
    {
      v56(v5, v59, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v20, v5);
      (*v61)(v5, v2);
      v59 += v60;
      --v55;
    }

    while (v55);
  }

  *(v42 + 24) = v72;

  *&v82 = v75;
  *(&v82 + 1) = v1;
  v62 = v74;
  v63 = v73;
  *&v83 = v73;
  *(&v83 + 1) = v74 | (v71 << 32);
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_1(0, &lazy cache variable for type metadata for MaterialEffectResolvedData.Data?, &unk_1F00A6040, MEMORY[0x1E69E6720]);
  AGGraphSetOutputValue();

  return outlined consume of Material.ID(v63, v62);
}

uint64_t closure #2 in MaterialEffectResolvedData.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  Value = AGGraphGetValue();
  v9 = *Value;
  v10 = *(Value + 8);
  v11 = *(Value + 12);
  outlined copy of Material.ID(*Value, v10);
  v12 = AGGraphGetValue();
  v13 = *v12;
  v14 = v12[1];
  v15 = *(a1 + 32);
  *&v38 = *v12;
  *(&v38 + 1) = v14;
  *&v36[0] = v9;
  BYTE8(v36[0]) = v10;
  HIDWORD(v36[0]) = v11;

  v16 = EnvironmentValues.materialProvider(for:)(v36);
  if (v16)
  {
    v17 = v16;
    *&v36[0] = a2;
    *(v36 + 1) = a4;
    outlined copy of Material.ID(v9, v10);

    result = Material.ShapeMetrics.init(_:)(v36, &v38);
    v19 = v38;
    v20 = v39;
    if (*&v38 > v39)
    {
      __break(1u);
    }

    else
    {
      v21 = *(&v38 + 1);
      v31 = 0;
      v30 = 0;
      *&v32 = v13;
      *(&v32 + 1) = v14;
      LOBYTE(v33) = 3;
      BYTE1(v33) = v15;
      *(&v33 + 1) = v38;
      *&v34 = v39;
      BYTE8(v34) = 0;
      *v35 = v38;
      *&v35[16] = v39;
      v35[24] = 0;
      v27 = v34;
      v28[0] = v38;
      *(v28 + 9) = *&v35[9];
      v25 = v32;
      v26 = v33;
      v24 = v11;
      v22 = *(*v17 + 80);
      outlined init with copy of Material.Context(&v32, &v38);
      v22(&v29, &v25);

      outlined consume of Material.ID(v9, v10);
      v36[2] = v27;
      v37[0] = v28[0];
      *(v37 + 9) = *(v28 + 9);
      v36[0] = v25;
      v36[1] = v26;
      outlined destroy of Material.Context(v36);
      *&v38 = v13;
      *(&v38 + 1) = v14;
      LOBYTE(v39) = 3;
      BYTE1(v39) = v15;
      v40 = v19;
      v41 = v20;
      v42 = 0;
      v43 = v19;
      v44 = v21;
      v45 = v20;
      v46 = 0;
      outlined destroy of Material.Context(&v38);
      v23 = v29;
      outlined consume of Material.ID(v9, v10);
      *a3 = v23;
      *(a3 + 8) = 2;
      *(a3 + 12) = v24;
      outlined copy of Material.ID(v23, 2u);
      return outlined consume of Material.ID(v23, 2u);
    }
  }

  else
  {
    *&v38 = v13;
    *(&v38 + 1) = v14;
    result = specialized Material.ResolvedMaterial.Flags.init(environment:)(&v38);
    *a3 = v9;
    *(a3 + 8) = v10;
    *(a3 + 12) = result | v11;
  }

  return result;
}

uint64_t protocol witness for ObservedAttribute.destroy() in conformance MaterialEffectDisplayList()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 32);

    os_unfair_lock_lock(v1 + 4);
    _s7SwiftUI21MaterialBackdropProxyV14removeObserveryyAA0cdG0_pFyAC7Storage33_DEF3755CDC6B87C0368876C9F497EC3DLLC4DataVzYuYTXEfU_(&v1[6], v2);
    os_unfair_lock_unlock(v1 + 4);
  }

  *(v0 + 40) = 0;
  return result;
}

uint64_t protocol witness for static _AttributeBody._destroySelf(_:) in conformance MaterialEffectDisplayList(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 32);

    os_unfair_lock_lock(v2 + 4);
    _s7SwiftUI21MaterialBackdropProxyV14removeObserveryyAA0cdG0_pFyAC7Storage33_DEF3755CDC6B87C0368876C9F497EC3DLLC4DataVzYuYTXEfU_(&v2[6], v3);
    os_unfair_lock_unlock(v2 + 4);
  }

  *(a1 + 40) = 0;
}

unint64_t lazy protocol witness table accessor for type MaterialEffectResolvedData and conformance MaterialEffectResolvedData()
{
  result = lazy protocol witness table cache variable for type MaterialEffectResolvedData and conformance MaterialEffectResolvedData;
  if (!lazy protocol witness table cache variable for type MaterialEffectResolvedData and conformance MaterialEffectResolvedData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialEffectResolvedData and conformance MaterialEffectResolvedData);
  }

  return result;
}

uint64_t outlined copy of MaterialEffectResolvedData.Data?(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (result)
  {

    return outlined copy of Material.ID(a3, a4);
  }

  return result;
}

uint64_t outlined consume of MaterialEffectResolvedData.Data?(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (result)
  {

    return outlined consume of Material.ID(a3, a4);
  }

  return result;
}

uint64_t outlined copy of Material.Layer.SDFLayer?(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t destroy for MaterialEffectDisplayList()
{
}

uint64_t assignWithCopy for MaterialEffectDisplayList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithTake for MaterialEffectDisplayList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

__n128 __swift_memcpy40_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MaterialEffectResolvedData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 40))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = v4 - 4;
  if (v3 < 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for MaterialEffectResolvedData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 3;
    }
  }

  return result;
}

uint64_t destroy for MaterialEffect(uint64_t a1)
{

  v2 = *(a1 + 16);
  v3 = *(a1 + 24);

  return outlined consume of Material.ID(v2, v3);
}

uint64_t initializeWithCopy for MaterialEffectResolvedData.Data(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);

  outlined copy of Material.ID(v5, v6);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 28) = *(a2 + 28);
  return a1;
}

uint64_t assignWithCopy for MaterialEffectResolvedData.Data(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  outlined copy of Material.ID(v4, v5);
  v6 = *(a1 + 16);
  *(a1 + 16) = v4;
  v7 = *(a1 + 24);
  *(a1 + 24) = v5;
  outlined consume of Material.ID(v6, v7);
  *(a1 + 28) = *(a2 + 28);
  return a1;
}

uint64_t assignWithTake for MaterialEffectResolvedData.Data(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a1 + 24);
  *(a1 + 24) = v4;
  outlined consume of Material.ID(v5, v6);
  *(a1 + 28) = *(a2 + 28);
  return a1;
}

uint64_t getEnumTagSinglePayload for MaterialEffectTransaction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 13))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 12);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t assignWithTake for MaterialEffect.Fill(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of Material.ID(v5, v6);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

unint64_t instantiation function for generic protocol witness table for MaterialEffectUpdatedFill(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MaterialEffectUpdatedFill and conformance MaterialEffectUpdatedFill();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MaterialEffectEnvironment(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MaterialEffectEnvironment and conformance MaterialEffectEnvironment();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MaterialEffectTransaction(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MaterialEffectTransaction and conformance MaterialEffectTransaction();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MaterialEffectResolvedData(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MaterialEffectResolvedData and conformance MaterialEffectResolvedData();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MaterialEffectDisplayList(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MaterialEffectDisplayList and conformance MaterialEffectDisplayList();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized static MaterialEffectResolvedData.Data.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 28);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 28);

  v12 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI7PathSetV7ElementV_Tt1g5(v2, v7);

  result = 0;
  if ((v12 & 1) != 0 && v3 == v8)
  {
    v17 = v4;
    v18 = v5;
    v15 = v9;
    v16 = v10;
    outlined copy of Material.ID(v4, v5);
    outlined copy of Material.ID(v9, v10);
    v14 = static Material.ID.== infix(_:_:)(&v17, &v15);
    outlined consume of Material.ID(v15, v16);
    outlined consume of Material.ID(v17, v18);
    return v14 & (v6 == v11);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MaterialEffectState.TransactionKind and conformance MaterialEffectState.TransactionKind()
{
  result = lazy protocol witness table cache variable for type MaterialEffectState.TransactionKind and conformance MaterialEffectState.TransactionKind;
  if (!lazy protocol witness table cache variable for type MaterialEffectState.TransactionKind and conformance MaterialEffectState.TransactionKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialEffectState.TransactionKind and conformance MaterialEffectState.TransactionKind);
  }

  return result;
}

uint64_t KeyframeTrackContentBuilder.Conditional.init(first:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for KeyframeTrackContentBuilder.Conditional.Storage();
  return swift_storeEnumTagMultiPayload();
}

uint64_t KeyframeTrackContentBuilder.Conditional.init(second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for KeyframeTrackContentBuilder.Conditional.Storage();
  return swift_storeEnumTagMultiPayload();
}

uint64_t static KeyframeTrackContentBuilder.buildArray<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = _ViewInputs.base.modify(a1, a2);
}

uint64_t static KeyframeTrackContentBuilder.buildEither<A, B>(first:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  swift_getAssociatedConformanceWitness();
  return KeyframeTrackContentBuilder.Conditional.init(first:)(v7, a2, a3);
}

uint64_t static KeyframeTrackContentBuilder.buildEither<A, B>(second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  swift_getAssociatedConformanceWitness();
  return KeyframeTrackContentBuilder.Conditional.init(second:)(v7, a2, a3);
}

uint64_t static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v13);
  (*(v9 + 16))(v11, a2, a4);
  return MergedKeyframeTrackContent.init(first:second:)(v15, v11, a3, a4, a5);
}

uint64_t KeyframeTrackContentBuilder.Conditional._resolve(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a1;
  v4 = *(a2 + 40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 32);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 64);
  v16 = *(v14 + 16);
  *&v17 = v9;
  *(&v17 + 1) = v4;
  v24 = *(v14 + 48);
  v27 = v17;
  v28 = v24;
  v26 = v16;
  v29 = v15;
  v18 = type metadata accessor for KeyframeTrackContentBuilder.Conditional.Storage();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v24 - v20;
  (*(v22 + 16))(&v24 - v20, v3, v18, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v7, v21, v4);
    (*(v15 + 48))(v25, v4, v15);
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v10 + 32))(v13, v21, v9);
    (*(*(&v24 + 1) + 48))(v25, v9);
    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t instantiation function for generic protocol witness table for KeyframeTrackContentBuilder<A>.Conditional<A1, B1, C1>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *initializeBufferWithCopyOfBuffer for KeyframeTrackContentBuilder.Conditional(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 32) - 8);
  v5 = *(*(a3 + 40) - 8);
  if (*(v5 + 64) <= *(v4 + 64))
  {
    v6 = *(*(*(a3 + 32) - 8) + 64);
  }

  else
  {
    v6 = *(v5 + 64);
  }

  v7 = (*(v5 + 80) | *(v4 + 80));
  if (v7 > 7 || (v6 + 1) > 0x18 || ((*(v5 + 80) | *(v4 + 80)) & 0x100000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v7 + 16) & ~v7));

    return v3;
  }

  v11 = *(a2 + v6);
  v12 = v11 - 2;
  if (v11 >= 2)
  {
    if (v6 <= 3)
    {
      v13 = v6;
    }

    else
    {
      v13 = 4;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v14 = *a2;
      }

      else if (v13 == 3)
      {
        v14 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v14 = *a2;
      }

LABEL_24:
      v15 = (v14 | (v12 << (8 * v6))) + 2;
      v11 = v14 + 2;
      if (v6 < 4)
      {
        v11 = v15;
      }

      goto LABEL_26;
    }

    if (v13)
    {
      v14 = *a2;
      goto LABEL_24;
    }
  }

LABEL_26:
  if (v11 == 1)
  {
    (*(v5 + 16))(a1);
    *(v3 + v6) = 1;
  }

  else
  {
    (*(v4 + 16))(a1);
    *(v3 + v6) = 0;
  }

  return v3;
}

uint64_t destroy for KeyframeTrackContentBuilder.Conditional(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(a2 + 40) - 8;
  v3 = *v2;
  v4 = *(*v2 + 64);
  if (v4 <= *(*(*(a2 + 32) - 8) + 64))
  {
    v4 = *(*(*(a2 + 32) - 8) + 64);
  }

  v5 = a1[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_17;
      }

      v8 = *a1;
    }

    else if (v7 == 2)
    {
      v8 = *a1;
    }

    else if (v7 == 3)
    {
      v8 = *a1 | (a1[2] << 16);
    }

    else
    {
      v8 = *a1;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    v5 = v8 + 2;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_17:
  if (v5 == 1)
  {
    v10 = v3;
  }

  else
  {
    v10 = *(*(a2 + 32) - 8);
  }

  return (*(v10 + 8))();
}

uint64_t initializeWithCopy for KeyframeTrackContentBuilder.Conditional(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 40);
  v5 = *(*(a3 + 32) - 8);
  if (*(*(v4 - 8) + 64) <= *(v5 + 64))
  {
    v6 = *(*(*(a3 + 32) - 8) + 64);
  }

  else
  {
    v6 = *(*(v4 - 8) + 64);
  }

  v7 = a2[v6];
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    if (v6 <= 3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 4;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        goto LABEL_18;
      }

      v10 = *a2;
    }

    else if (v9 == 2)
    {
      v10 = *a2;
    }

    else if (v9 == 3)
    {
      v10 = *a2 | (a2[2] << 16);
    }

    else
    {
      v10 = *a2;
    }

    v11 = (v10 | (v8 << (8 * v6))) + 2;
    v7 = v10 + 2;
    if (v6 < 4)
    {
      v7 = v11;
    }
  }

LABEL_18:
  v12 = v7 == 1;
  if (v7 == 1)
  {
    v5 = *(v4 - 8);
  }

  (*(v5 + 16))(a1);
  *(a1 + v6) = v12;
  return a1;
}

unsigned __int8 *assignWithCopy for KeyframeTrackContentBuilder.Conditional(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 32);
  v6 = *(a3 + 40);
  v7 = *(v5 - 8);
  v8 = *(v6 - 8);
  if (*(v8 + 64) <= *(v7 + 64))
  {
    v9 = *(*(*(a3 + 32) - 8) + 64);
  }

  else
  {
    v9 = *(*(v6 - 8) + 64);
  }

  v10 = a1[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_19;
      }

      v13 = *a1;
    }

    else if (v12 == 2)
    {
      v13 = *a1;
    }

    else if (v12 == 3)
    {
      v13 = *a1 | (a1[2] << 16);
    }

    else
    {
      v13 = *a1;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 2;
    v10 = v13 + 2;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_19:
  if (v10 == 1)
  {
    v15 = *(v6 - 8);
  }

  else
  {
    v15 = *(*(a3 + 32) - 8);
  }

  if (v10 == 1)
  {
    v16 = *(a3 + 40);
  }

  else
  {
    v16 = *(a3 + 32);
  }

  (*(v15 + 8))(a1, v16);
  v17 = *(a2 + v9);
  v18 = v17 - 2;
  if (v17 >= 2)
  {
    if (v9 <= 3)
    {
      v19 = v9;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v20 = *a2;
      }

      else if (v19 == 3)
      {
        v20 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v20 = *a2;
      }

LABEL_37:
      v21 = (v20 | (v18 << (8 * v9))) + 2;
      v17 = v20 + 2;
      if (v9 < 4)
      {
        v17 = v21;
      }

      goto LABEL_39;
    }

    if (v19)
    {
      v20 = *a2;
      goto LABEL_37;
    }
  }

LABEL_39:
  v22 = v17 == 1;
  if (v17 == 1)
  {
    v23 = v8;
  }

  else
  {
    v23 = v7;
  }

  if (v17 == 1)
  {
    v24 = v6;
  }

  else
  {
    v24 = v5;
  }

  (*(v23 + 16))(a1, a2, v24);
  a1[v9] = v22;
  return a1;
}

uint64_t initializeWithTake for KeyframeTrackContentBuilder.Conditional(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 40);
  v5 = *(*(a3 + 32) - 8);
  if (*(*(v4 - 8) + 64) <= *(v5 + 64))
  {
    v6 = *(*(*(a3 + 32) - 8) + 64);
  }

  else
  {
    v6 = *(*(v4 - 8) + 64);
  }

  v7 = a2[v6];
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    if (v6 <= 3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 4;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        goto LABEL_18;
      }

      v10 = *a2;
    }

    else if (v9 == 2)
    {
      v10 = *a2;
    }

    else if (v9 == 3)
    {
      v10 = *a2 | (a2[2] << 16);
    }

    else
    {
      v10 = *a2;
    }

    v11 = (v10 | (v8 << (8 * v6))) + 2;
    v7 = v10 + 2;
    if (v6 < 4)
    {
      v7 = v11;
    }
  }

LABEL_18:
  v12 = v7 == 1;
  if (v7 == 1)
  {
    v5 = *(v4 - 8);
  }

  (*(v5 + 32))(a1);
  *(a1 + v6) = v12;
  return a1;
}

unsigned __int8 *assignWithTake for KeyframeTrackContentBuilder.Conditional(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 32);
  v6 = *(a3 + 40);
  v7 = *(v5 - 8);
  v8 = *(v6 - 8);
  if (*(v8 + 64) <= *(v7 + 64))
  {
    v9 = *(*(*(a3 + 32) - 8) + 64);
  }

  else
  {
    v9 = *(*(v6 - 8) + 64);
  }

  v10 = a1[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_19;
      }

      v13 = *a1;
    }

    else if (v12 == 2)
    {
      v13 = *a1;
    }

    else if (v12 == 3)
    {
      v13 = *a1 | (a1[2] << 16);
    }

    else
    {
      v13 = *a1;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 2;
    v10 = v13 + 2;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_19:
  if (v10 == 1)
  {
    v15 = *(v6 - 8);
  }

  else
  {
    v15 = *(*(a3 + 32) - 8);
  }

  if (v10 == 1)
  {
    v16 = *(a3 + 40);
  }

  else
  {
    v16 = *(a3 + 32);
  }

  (*(v15 + 8))(a1, v16);
  v17 = *(a2 + v9);
  v18 = v17 - 2;
  if (v17 >= 2)
  {
    if (v9 <= 3)
    {
      v19 = v9;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v20 = *a2;
      }

      else if (v19 == 3)
      {
        v20 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v20 = *a2;
      }

LABEL_37:
      v21 = (v20 | (v18 << (8 * v9))) + 2;
      v17 = v20 + 2;
      if (v9 < 4)
      {
        v17 = v21;
      }

      goto LABEL_39;
    }

    if (v19)
    {
      v20 = *a2;
      goto LABEL_37;
    }
  }

LABEL_39:
  v22 = v17 == 1;
  if (v17 == 1)
  {
    v23 = v8;
  }

  else
  {
    v23 = v7;
  }

  if (v17 == 1)
  {
    v24 = v6;
  }

  else
  {
    v24 = v5;
  }

  (*(v23 + 32))(a1, a2, v24);
  a1[v9] = v22;
  return a1;
}

uint64_t getEnumTagSinglePayload for KeyframeTrackContentBuilder.Conditional(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 40) - 8) + 64);
  if (v3 <= *(*(*(a3 + 32) - 8) + 64))
  {
    v3 = *(*(*(a3 + 32) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void storeEnumTagSinglePayload for KeyframeTrackContentBuilder.Conditional(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 32) - 8) + 64);
  if (*(*(*(a4 + 40) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 40) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t getEnumTag for KeyframeTrackContentBuilder.Conditional.Storage(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 40) - 8) + 64);
  if (v2 <= *(*(*(a2 + 32) - 8) + 64))
  {
    v2 = *(*(*(a2 + 32) - 8) + 64);
  }

  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        return v3;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 2;
    LODWORD(v3) = v6 + 2;
    if (v2 >= 4)
    {
      return v3;
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

void destructiveInjectEnumTag for KeyframeTrackContentBuilder.Conditional.Storage(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (a2 > 1)
  {
    v5 = *(*(a3 + 40) - 8);
    if (*(v5 + 64) <= *(*(*(a3 + 32) - 8) + 64))
    {
      v6 = *(*(*(a3 + 32) - 8) + 64);
    }

    else
    {
      v6 = *(v5 + 64);
    }

    v7 = a2 - 2;
    if (v6 < 4)
    {
      a1[v6] = (v7 >> (8 * v6)) + 2;
      if (v6)
      {
        v9 = v7 & ~(-1 << (8 * v6));
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v9;
          a1[2] = BYTE2(v9);
        }

        else if (v6 == 2)
        {
          *a1 = v9;
        }

        else
        {
          *a1 = v7;
        }
      }
    }

    else
    {
      a1[v6] = 2;
      bzero(a1, v6);
      *a1 = v7;
    }
  }

  else
  {
    v3 = *(*(a3 + 40) - 8);
    v4 = *(*(*(a3 + 32) - 8) + 64);
    if (*(v3 + 64) > v4)
    {
      v4 = *(v3 + 64);
    }

    a1[v4] = a2;
  }
}

uint64_t key path setter for _GraphInputs.contentShapeAccessibilityProvider : _GraphInputs(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE033ContentShapeAccessibilityProviderF033_8830DB57DA6E30576C7025120AC232CCLLV_Tt2g5(a2, v3, v4);
}

uint64_t _GraphInputs.contentShapeAccessibilityProvider.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE033ContentShapeAccessibilityProviderF033_8830DB57DA6E30576C7025120AC232CCLLV_Tt2g5(v2, a1, a2);
}

uint64_t (*_GraphInputs.contentShapeAccessibilityProvider.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE033ContentShapeAccessibilityProviderF033_8830DB57DA6E30576C7025120AC232CCLLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _GraphInputs.contentShapeAccessibilityProvider.modify;
}

double protocol witness for static PropertyKey.defaultValue.getter in conformance _GraphInputs.ContentShapeAccessibilityProviderKey@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static _GraphInputs.ContentShapeAccessibilityProviderKey.defaultValue;
  *a1 = static _GraphInputs.ContentShapeAccessibilityProviderKey.defaultValue;
  return result;
}

uint64_t (*_ViewInputs.contentShapeAccessibilityProvider.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE033ContentShapeAccessibilityProviderF033_8830DB57DA6E30576C7025120AC232CCLLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewInputs.contentShapeAccessibilityProvider.modify;
}

void _GraphInputs.contentShapeAccessibilityProvider.modify(uint64_t **a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE033ContentShapeAccessibilityProviderF033_8830DB57DA6E30576C7025120AC232CCLLV_Tt2g5(v1[4], v3, v2);

  free(v1);
}

uint64_t AnimationPath.append(_:)(uint64_t a1)
{
  v2 = type metadata accessor for AnimationPath.Element();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - v4, a1, v2, v3);
  type metadata accessor for Array();
  return Array.append(_:)();
}

uint64_t AnimationPath.Element.endVelocity.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = type metadata accessor for AnimationPath.SpringElement();
  v46 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v45 - v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v45 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v45 - v12;
  v45 = type metadata accessor for AnimationPath.CurveElement();
  v48 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v14 = &v45 - v13;
  v15 = *(a1 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v19, v51, a1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = v46;
      (*(v46 + 32))(v5, v19, v3);
      v22 = *(v5 + 2);
      v53 = *v5;
      *&v54 = v22;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v24 = v49;
      dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
      Spring.velocity<A>(target:initialVelocity:time:)(v24, AssociatedTypeWitness, AssociatedConformanceWitness, v52, *&v5[*(v3 + 52)]);
      (*(v50 + 8))(v24, AssociatedTypeWitness);
      return (*(v21 + 8))(v5, v3);
    }

    else
    {
      swift_getAssociatedConformanceWitness();
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      return (*(v15 + 8))(v19, a1);
    }
  }

  else
  {
    v26 = v45;
    (*(v48 + 32))(v14, v19, v45);
    v27 = type metadata accessor for HermiteCurve();
    v28 = v47;
    HermiteCurve.velocity(at:)(v27, v47, 1.0);
    if (v14[v26[10]] == 1)
    {
      v29 = HermiteCurve.arcLength.getter();
      v30 = swift_getAssociatedConformanceWitness();
      v31 = (*(v30 + 24))(AssociatedTypeWitness, v30);
      VectorArithmetic.scaled(by:)(AssociatedTypeWitness, v30, v8, 1.0 / sqrt(v31));
      v32 = v49;
      VectorArithmetic.scaled(by:)(AssociatedTypeWitness, v30, v49, v29 / *&v14[v26[9]]);
      v33 = *(v50 + 8);
      v33(v8, AssociatedTypeWitness);
      v34 = &v14[v26[11]];
      v35 = v34[32];
      v36 = *(v34 + 1);
      v53 = *v34;
      v54 = v36;
      v55 = v35;
      v37 = UnitCurve.velocity(at:)(1.0);
      VectorArithmetic.scaled(by:)(AssociatedTypeWitness, v30, v52, v37);
      v33(v32, AssociatedTypeWitness);
      v33(v28, AssociatedTypeWitness);
    }

    else
    {
      v38 = &v14[v26[11]];
      v39 = v38[32];
      v40 = *(v38 + 1);
      v53 = *v38;
      v54 = v40;
      v55 = v39;
      v41 = UnitCurve.velocity(at:)(1.0);
      v42 = swift_getAssociatedConformanceWitness();
      v43 = v49;
      VectorArithmetic.scaled(by:)(AssociatedTypeWitness, v42, v49, v41);
      VectorArithmetic.scaled(by:)(AssociatedTypeWitness, v42, v52, 1.0 / *&v14[v26[9]]);
      v44 = *(v50 + 8);
      v44(v43, AssociatedTypeWitness);
      v44(v28, AssociatedTypeWitness);
    }

    return (*(v48 + 8))(v14, v26);
  }
}

uint64_t AnimationPath.Element.end.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = type metadata accessor for AnimationPath.SpringElement();
  v25 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - v5;
  v7 = type metadata accessor for AnimationPath.CurveElement();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v2, a1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = v25;
      (*(v25 + 32))(v6, v14, v4);
      v18 = *(v4 + 48);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      (*(*(AssociatedTypeWitness - 8) + 16))(v26, &v6[v18], AssociatedTypeWitness);
      return (*(v17 + 8))(v6, v4);
    }

    else
    {
      v24 = swift_getAssociatedTypeWitness();
      return (*(*(v24 - 8) + 32))(v26, v14, v24);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v14, v7);
    v21 = type metadata accessor for HermiteCurve();
    v22 = *(v21 + 36);
    v23 = swift_getAssociatedTypeWitness();
    (*(*(v23 - 8) + 16))(v26, &v10[v22], v23);
    return (*(*(v21 - 8) + 8))(v10, v21);
  }
}

uint64_t AnimationPath.SpringElement.init(spring:from:to:initialVelocity:end:duration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v13 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v13;
  v14 = type metadata accessor for AnimationPath.SpringElement();
  v15 = v14[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(*(AssociatedTypeWitness - 8) + 32);
  v17(a6 + v15, a2, AssociatedTypeWitness);
  v17(a6 + v14[10], a3, AssociatedTypeWitness);
  v17(a6 + v14[11], a4, AssociatedTypeWitness);
  result = (v17)(a6 + v14[12], a5, AssociatedTypeWitness);
  *(a6 + v14[13]) = a7;
  return result;
}

__n128 AnimationPath.CurveElement.init(curve:duration:constantVelocity:timingCurve:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = *(a3 + 32);
  v11 = type metadata accessor for HermiteCurve();
  v15 = *(a3 + 16);
  v16 = *a3;
  (*(*(v11 - 8) + 32))(a4, a1, v11);
  v12 = type metadata accessor for AnimationPath.CurveElement();
  *(a4 + v12[9]) = a5;
  *(a4 + v12[10]) = a2;
  v13 = a4 + v12[11];
  result = v16;
  *v13 = v16;
  *(v13 + 16) = v15;
  *(v13 + 32) = v10;
  return result;
}

uint64_t AnimationPath.currentVelocity.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = type metadata accessor for AnimationPath.Element();
  v18 = type metadata accessor for Optional();
  v4 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v6 = &v15 - v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v16 = *(v8 - 8);
  v17 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  v20 = a1;
  type metadata accessor for Array();
  swift_getWitnessTable();
  BidirectionalCollection.last.getter();
  v11 = *(v3 - 8);
  if ((*(v11 + 48))(v6, 1, v3) == 1)
  {
    (*(v4 + 8))(v6, v18);
    v12 = *(AssociatedTypeWitness - 8);
    (*(v12 + 56))(v10, 1, 1, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    result = (*(v12 + 48))(v10, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v16 + 8))(v10, v17);
    }
  }

  else
  {
    AnimationPath.Element.endVelocity.getter(v3, v10);
    (*(v11 + 8))(v6, v3);
    v14 = *(AssociatedTypeWitness - 8);
    (*(v14 + 56))(v10, 0, 1, AssociatedTypeWitness);
    return (*(v14 + 32))(v19, v10, AssociatedTypeWitness);
  }

  return result;
}

uint64_t AnimationPath.init(_:)(void (*a1)(uint64_t *))
{
  type metadata accessor for AnimationPath.Element();
  v3 = static Array._allocateUninitialized(_:)();
  a1(&v3);
  return v3;
}

uint64_t AnimationPath.duration.getter(uint64_t a1)
{
  v2 = type metadata accessor for AnimationPath.Element();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v14 - v6;
  result = MEMORY[0x193ABF2C0](a1, v2, v5);
  if (result)
  {
    v9 = 0;
    v10 = 0.0;
    do
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        result = (*(v3 + 16))(v7, a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v9, v2);
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v4 != 8)
        {
          __break(1u);
          return result;
        }

        v15 = result;
        (*(v3 + 16))(v7, &v15, v2);
        result = swift_unknownObjectRelease();
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_10:
          __break(1u);
          return result;
        }
      }

      v13 = AnimationPath.Element.duration.getter(v2);
      (*(v3 + 8))(v7, v2);
      v10 = v10 + v13;
      result = MEMORY[0x193ABF2C0](a1, v2);
      ++v9;
    }

    while (v12 != result);
  }

  return result;
}

uint64_t AnimationPath.update(velocity:time:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v11 = &v13 - v10;
  AnimationPath.velocity(at:)(a3, a4, a5, &v13 - v10, a1);
  return (*(a5 + 32))(v11, a4, a5);
}

uint64_t AnimationPath.velocity(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v24 = a2;
  v25 = a4;
  v23 = a3;
  v7 = type metadata accessor for AnimationPath.Element();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  if (!MEMORY[0x193ABF2C0](a1, v7, v12))
  {
LABEL_12:
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    return dispatch thunk of static AdditiveArithmetic.zero.getter();
  }

  v15 = 0;
  v16 = (v8 + 8);
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      (*(v8 + 16))(v14, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v15, v7);
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_11;
      }

      goto LABEL_5;
    }

    result = _ArrayBuffer._getElementSlowPath(_:)();
    if (v22 != 8)
    {
      break;
    }

    v26 = result;
    (*(v8 + 16))(v14, &v26, v7);
    swift_unknownObjectRelease();
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

LABEL_5:
    (*(v8 + 32))(v10, v14, v7);
    if (a5 <= AnimationPath.Element.duration.getter(v7))
    {
      AnimationPath.Element.velocity(at:)(v7, v25, a5);
      return (*v16)(v10, v7);
    }

    v19 = AnimationPath.Element.duration.getter(v7);
    (*v16)(v10, v7);
    a5 = a5 - v19;
    ++v15;
    if (v18 == MEMORY[0x193ABF2C0](a1, v7))
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t AnimationPath.Element.velocity(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v55 = a2;
  v5 = type metadata accessor for AnimationPath.SpringElement();
  v6 = *(v5 - 8);
  v49 = v5;
  v50 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v48 - v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v53 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v48 - v13;
  v14 = type metadata accessor for AnimationPath.CurveElement();
  v15 = *(v14 - 1);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v48 - v16;
  v18 = *(a1 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v22, v54, a1, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v24 = v49;
      v25 = v50;
      (*(v50 + 32))(v8, v22, v49);
      v26 = *(v8 + 2);
      v56 = *v8;
      *&v57 = v26;
      v27 = v53;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v29 = v51;
      dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
      Spring.velocity<A>(target:initialVelocity:time:)(v29, v27, AssociatedConformanceWitness, v55, a3);
      (*(v52 + 8))(v29, v27);
      return (*(v25 + 8))(v8, v24);
    }

    else
    {
      swift_getAssociatedConformanceWitness();
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      return (*(v18 + 8))(v22, a1);
    }
  }

  else
  {
    (*(v15 + 32))(v17, v22, v14);
    v31 = *&v17[v14[9]];
    if (v31 > 0.0 && a3 >= 0.0 && v31 >= a3)
    {
      v32 = &v17[v14[11]];
      v33 = v32[32];
      v34 = *(v32 + 1);
      v35 = a3 / v31;
      v56 = *v32;
      v57 = v34;
      v58 = v33;
      v36 = UnitCurve.value(at:)(v35);
      v37 = v32[32];
      v38 = *(v32 + 1);
      v56 = *v32;
      v57 = v38;
      v58 = v37;
      v39 = UnitCurve.velocity(at:)(v35);
      LODWORD(v32) = v17[v14[10]];
      v40 = type metadata accessor for HermiteCurve();
      if (v32 == 1)
      {
        v41 = v40;
        v42 = HermiteCurve.arcLength.getter();
        HermiteCurve.velocity(atArcLength:)(v41, v55, v36 * v42);
      }

      else
      {
        v43 = v11;
        HermiteCurve.velocity(at:)(v40, v11, v36);
        v44 = v53;
        v45 = swift_getAssociatedConformanceWitness();
        v46 = v51;
        VectorArithmetic.scaled(by:)(v44, v45, v51, 1.0 / v31);
        v47 = *(v52 + 8);
        v47(v43, v44);
        VectorArithmetic.scaled(by:)(v44, v45, v55, v39);
        v47(v46, v44);
      }
    }

    else
    {
      swift_getAssociatedConformanceWitness();
      dispatch thunk of static AdditiveArithmetic.zero.getter();
    }

    return (*(v15 + 8))(v17, v14);
  }
}

BOOL static AnimationPath.CurveElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static HermiteCurve.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AnimationPath.CurveElement();
  if (*(a1 + v4[9]) != *(a2 + v4[9]) || *(a1 + v4[10]) != *(a2 + v4[10]))
  {
    return 0;
  }

  v6 = v4[11];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 32);
  v9 = a2 + v6;
  v11 = *v7;
  v10 = v7[1];
  v13 = *v9;
  v12 = *(v9 + 16);
  v14 = *(v9 + 32);
  if (v8 != 1)
  {
    return (v14 & 1) == 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v11, v13), vceqq_f64(v10, v12)))) & 1) != 0;
  }

  if (!(*&v10.f64[0] | *&v11.f64[1] | *&v11.f64[0] | *&v10.f64[1]))
  {
    return v14 && (*&v12.f64[0] | *&v13.f64[0] | *&v13.f64[1] | *&v12.f64[1]) == 0;
  }

  v15 = *&v10.f64[0] | *&v11.f64[1] | *&v10.f64[1];
  if (*&v11.f64[0] == 1 && v15 == 0)
  {
    if (v14)
    {
      v19 = (*&v12.f64[0] | *&v13.f64[1] | *&v13.f64[0] | *&v12.f64[1]) == 0;
    }

    else
    {
      v19 = 1;
    }

    return !v19 && *&v13.f64[0] == 1 && (*&v12.f64[0] | *&v13.f64[1] | *&v12.f64[1]) == 0;
  }

  if (*&v11.f64[0] == 2 && v15 == 0)
  {
    if (!v14)
    {
      return 0;
    }

    if (!(*&v12.f64[0] | *&v13.f64[1] | *&v13.f64[0] | *&v12.f64[1]))
    {
      return 0;
    }

    v22 = *&v12.f64[0] | *&v13.f64[1] | *&v12.f64[1];
    if (*&v13.f64[0] == 1 && !v22)
    {
      return 0;
    }

    return *&v13.f64[0] == 2 && !v22;
  }

  if ((v14 & 1) == 0)
  {
    return 0;
  }

  if (!(*&v12.f64[0] | *&v13.f64[1] | *&v13.f64[0] | *&v12.f64[1]))
  {
    return 0;
  }

  result = 1;
  if ((*&v13.f64[0] - 1) <= 1 && !(*&v12.f64[0] | *&v13.f64[1] | *&v12.f64[1]))
  {
    return 0;
  }

  return result;
}

BOOL static AnimationPath.SpringElement.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for AnimationPath.SpringElement();
  swift_getAssociatedConformanceWitness();
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && *(a1 + *(v7 + 52)) == *(a2 + *(v7 + 52));
}

uint64_t type metadata completion function for AnimationPath.CurveElement()
{
  result = type metadata accessor for HermiteCurve();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AnimationPath.CurveElement(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + v7;
  v9 = ((v6 + v7 + ((v6 + v7 + ((v6 + v7) & ~v7)) & ~v7)) & ~v7) + v6;
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || ((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 33 > 0x18)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16)));
  }

  else
  {
    v13 = AssociatedTypeWitness;
    v14 = ~v7;
    v15 = *(v5 + 16);
    v15(a1, a2, AssociatedTypeWitness);
    v15(((a1 + v8) & v14), ((a2 + v8) & v14), v13);
    v16 = (v8 + ((a2 + v8) & v14)) & v14;
    v15(((v8 + ((a1 + v8) & v14)) & v14), v16, v13);
    v15(((v8 + ((v8 + ((a1 + v8) & v14)) & v14)) & v14), ((v8 + v16) & v14), v13);
    v17 = (a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = (a2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v17 = *v18;
    *(v17 + 8) = *(v18 + 8);
    v19 = (a1 + v9 + 23) & 0xFFFFFFFFFFFFFFF8;
    v20 = (a2 + v9 + 23) & 0xFFFFFFFFFFFFFFF8;
    v22 = *v20;
    v21 = *(v20 + 16);
    *(v19 + 32) = *(v20 + 32);
    *v19 = v22;
    *(v19 + 16) = v21;
  }

  return a1;
}

uint64_t initializeWithCopy for AnimationPath.CurveElement(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 16);
  v7 = v5 + 16;
  v6(a1, a2, AssociatedTypeWitness);
  v8 = *(v7 + 48);
  v9 = *(v7 + 64);
  v10 = v8 + v9;
  v6((v8 + v9 + a1) & ~v9, (v8 + v9 + a2) & ~v9, AssociatedTypeWitness);
  v11 = (v8 + v9 + ((v8 + v9 + a2) & ~v9)) & ~v9;
  v6((v8 + v9 + ((v8 + v9 + a1) & ~v9)) & ~v9, v11, AssociatedTypeWitness);
  v6((v10 + ((v8 + v9 + ((v8 + v9 + a1) & ~v9)) & ~v9)) & ~v9, (v10 + v11) & ~v9, AssociatedTypeWitness);
  v12 = ((v10 + ((v10 + (v10 & ~v9)) & ~v9)) & ~v9) + v8;
  v13 = v12 + a1;
  v14 = v12 + a2;
  v15 = (v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;
  *(v15 + 8) = *(v16 + 8);
  v17 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = *v17;
  v18 = *(v17 + 16);
  v20 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  *(v20 + 32) = *(v17 + 32);
  *v20 = v19;
  *(v20 + 16) = v18;
  return a1;
}

uint64_t assignWithCopy for AnimationPath.CurveElement(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 24);
  v7 = v5 + 24;
  v6(a1, a2, AssociatedTypeWitness);
  v8 = *(v7 + 40);
  v9 = *(v7 + 56);
  v10 = v8 + v9;
  v6((v8 + v9 + a1) & ~v9, (v8 + v9 + a2) & ~v9, AssociatedTypeWitness);
  v11 = (v8 + v9 + ((v8 + v9 + a2) & ~v9)) & ~v9;
  v6((v8 + v9 + ((v8 + v9 + a1) & ~v9)) & ~v9, v11, AssociatedTypeWitness);
  v6((v10 + ((v8 + v9 + ((v8 + v9 + a1) & ~v9)) & ~v9)) & ~v9, (v10 + v11) & ~v9, AssociatedTypeWitness);
  v12 = ((v10 + ((v10 + (v10 & ~v9)) & ~v9)) & ~v9) + v8;
  v13 = v12 + a1;
  v14 = v12 + a2;
  v15 = (v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;
  *(v15 + 8) = *(v16 + 8);
  v17 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = *v17;
  v18 = *(v17 + 16);
  v20 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  *(v20 + 32) = *(v17 + 32);
  *v20 = v19;
  *(v20 + 16) = v18;
  return a1;
}

uint64_t initializeWithTake for AnimationPath.CurveElement(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 32);
  v7 = v5 + 32;
  v6(a1, a2, AssociatedTypeWitness);
  v8 = *(v7 + 32);
  v9 = *(v7 + 48);
  v10 = v8 + v9;
  v6((v8 + v9 + a1) & ~v9, (v8 + v9 + a2) & ~v9, AssociatedTypeWitness);
  v11 = (v8 + v9 + ((v8 + v9 + a2) & ~v9)) & ~v9;
  v6((v8 + v9 + ((v8 + v9 + a1) & ~v9)) & ~v9, v11, AssociatedTypeWitness);
  v6((v10 + ((v8 + v9 + ((v8 + v9 + a1) & ~v9)) & ~v9)) & ~v9, (v10 + v11) & ~v9, AssociatedTypeWitness);
  v12 = ((v10 + ((v10 + (v10 & ~v9)) & ~v9)) & ~v9) + v8;
  v13 = v12 + a1;
  v14 = v12 + a2;
  v15 = (v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;
  *(v15 + 8) = *(v16 + 8);
  v17 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = *v17;
  v18 = *(v17 + 16);
  v20 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  *(v20 + 32) = *(v17 + 32);
  *v20 = v19;
  *(v20 + 16) = v18;
  return a1;
}

uint64_t assignWithTake for AnimationPath.CurveElement(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 40);
  v7 = v5 + 40;
  v6(a1, a2, AssociatedTypeWitness);
  v8 = *(v7 + 24);
  v9 = *(v7 + 40);
  v10 = v8 + v9;
  v6((v8 + v9 + a1) & ~v9, (v8 + v9 + a2) & ~v9, AssociatedTypeWitness);
  v11 = (v8 + v9 + ((v8 + v9 + a2) & ~v9)) & ~v9;
  v6((v8 + v9 + ((v8 + v9 + a1) & ~v9)) & ~v9, v11, AssociatedTypeWitness);
  v6((v10 + ((v8 + v9 + ((v8 + v9 + a1) & ~v9)) & ~v9)) & ~v9, (v10 + v11) & ~v9, AssociatedTypeWitness);
  v12 = ((v10 + ((v10 + (v10 & ~v9)) & ~v9)) & ~v9) + v8;
  v13 = v12 + a1;
  v14 = v12 + a2;
  v15 = (v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;
  *(v15 + 8) = *(v16 + 8);
  v17 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = *v17;
  v18 = *(v17 + 16);
  v20 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  *(v20 + 32) = *(v17 + 32);
  *v20 = v19;
  *(v20 + 16) = v18;
  return a1;
}

uint64_t getEnumTagSinglePayload for AnimationPath.CurveElement(unsigned __int8 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(AssociatedTypeWitness - 8) + 64) + v8 + ((*(*(AssociatedTypeWitness - 8) + 64) + v8 + ((*(*(AssociatedTypeWitness - 8) + 64) + v8) & ~v8)) & ~v8)) & ~v8) + *(*(AssociatedTypeWitness - 8) + 64);
  if (v7 < a2)
  {
    v10 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 33;
    if (v10 <= 3)
    {
      v11 = ((a2 - v7 + 255) >> 8) + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v14 = *&a1[v10];
        if (*&a1[v10])
        {
          goto LABEL_20;
        }
      }

      else
      {
        v14 = *&a1[v10];
        if (v14)
        {
          goto LABEL_20;
        }
      }
    }

    else if (v13)
    {
      v14 = a1[v10];
      if (a1[v10])
      {
LABEL_20:
        v15 = (v14 - 1) << (8 * v10);
        if (v10 <= 3)
        {
          v16 = *a1;
        }

        else
        {
          v15 = 0;
          v16 = *a1;
        }

        v20 = v7 + (v16 | v15);
        return (v20 + 1);
      }
    }
  }

  if (v6 < 0xFE)
  {
    v19 = *((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v19 >= 2)
    {
      v20 = (v19 + 2147483646) & 0x7FFFFFFF;
      return (v20 + 1);
    }

    return 0;
  }

  v17 = *(v5 + 48);

  return v17(a1);
}

void storeEnumTagSinglePayload for AnimationPath.CurveElement(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((*(v6 + 64) + v9 + ((*(v6 + 64) + v9 + ((*(v6 + 64) + v9) & ~v9)) & ~v9)) & ~v9) + *(v6 + 64);
  v11 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v11 <= 3)
    {
      v12 = ((a3 - v8 + 255) >> 8) + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v11] = 0;
      }

      else if (v14)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFE)
      {
        *((&a1[v10 + 7] & 0xFFFFFFFFFFFFFFF8) + 8) = a2 + 1;
      }

      else if (v7 >= a2)
      {
        v20 = *(v6 + 56);

        v20(a1, a2);
      }

      else
      {
        if (v10 <= 3)
        {
          v17 = ~(-1 << (8 * v10));
        }

        else
        {
          v17 = -1;
        }

        if (v10)
        {
          v18 = v17 & (~v7 + a2);
          if (v10 <= 3)
          {
            v19 = v10;
          }

          else
          {
            v19 = 4;
          }

          bzero(a1, v10);
          if (v19 > 2)
          {
            if (v19 == 3)
            {
              *a1 = v18;
              a1[2] = BYTE2(v18);
            }

            else
            {
              *a1 = v18;
            }
          }

          else if (v19 == 1)
          {
            *a1 = v18;
          }

          else
          {
            *a1 = v18;
          }
        }
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 33);
  if (v11 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v11 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v11] = v16;
      }

      else
      {
        *&a1[v11] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v11] = v16;
  }
}

uint64_t type metadata completion function for AnimationPath.SpringElement()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AnimationPath.SpringElement(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v7 + v6;
  v9 = v7 + 7;
  v10 = ((v7 + 7 + ((v7 + v6 + ((v7 + v6 + ((v7 + v6 + ((v6 + 24) & ~v6)) & ~v6)) & ~v6)) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || v10 > 0x18)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v14 = AssociatedTypeWitness;
    v15 = ~v6;
    *a1 = *a2;
    a1[2] = a2[2];
    v16 = a1 + v6;
    v17 = a2 + v6;
    v18 = (v16 + 24) & v15;
    v19 = (v17 + 24) & v15;
    v20 = *(v5 + 16);
    v20(v18, v19, AssociatedTypeWitness);
    v21 = (v8 + v18) & v15;
    v22 = (v8 + v19) & v15;
    v20(v21, v22, v14);
    v23 = (v8 + v21) & v15;
    v24 = (v8 + v22) & v15;
    v20(v23, v24, v14);
    v25 = (v8 + v23) & v15;
    v26 = (v8 + v24) & v15;
    v20(v25, v26, v14);
    *((v9 + v25) & 0xFFFFFFFFFFFFFFF8) = *((v9 + v26) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

uint64_t destroy for AnimationPath.SpringElement(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v10 = *(v3 + 8);
  v11 = v3 + 8;
  v4 = *(v3 + 80);
  v5 = (a1 + v4 + 24) & ~v4;
  v10(v5, AssociatedTypeWitness);
  v6 = *(v11 + 56) + v4;
  v7 = (v6 + v5) & ~v4;
  v10(v7, AssociatedTypeWitness);
  v8 = (v6 + v7) & ~v4;
  v10(v8, AssociatedTypeWitness);

  return (v10)((v6 + v8) & ~v4, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for AnimationPath.SpringElement(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 16);
  v7 = v5 + 16;
  v8 = *(v5 + 80);
  v9 = (v8 + 24 + a2) & ~v8;
  v6((v8 + 24 + a1) & ~v8, v9, AssociatedTypeWitness);
  v10 = *(v7 + 48);
  v11 = (v10 + v8 + ((v8 + 24 + a1) & ~v8)) & ~v8;
  v12 = (v10 + v8 + v9) & ~v8;
  v6(v11, v12, AssociatedTypeWitness);
  v13 = (v10 + v8 + v11) & ~v8;
  v14 = (v10 + v8 + v12) & ~v8;
  v6(v13, v14, AssociatedTypeWitness);
  v15 = (v10 + v8 + v13) & ~v8;
  v16 = (v10 + v8 + v14) & ~v8;
  v6(v15, v16, AssociatedTypeWitness);
  *((v10 + 7 + v15) & 0xFFFFFFFFFFFFFFF8) = *((v10 + 7 + v16) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithCopy for AnimationPath.SpringElement(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 24);
  v7 = v5 + 24;
  v8 = *(v5 + 80);
  v9 = (a2 + v8 + 24) & ~v8;
  v6((a1 + v8 + 24) & ~v8, v9, AssociatedTypeWitness);
  v10 = *(v7 + 40);
  v11 = (v10 + v8 + ((a1 + v8 + 24) & ~v8)) & ~v8;
  v12 = (v10 + v8 + v9) & ~v8;
  v6(v11, v12, AssociatedTypeWitness);
  v13 = (v10 + v8 + v11) & ~v8;
  v14 = (v10 + v8 + v12) & ~v8;
  v6(v13, v14, AssociatedTypeWitness);
  v15 = (v10 + v8 + v13) & ~v8;
  v16 = (v10 + v8 + v14) & ~v8;
  v6(v15, v16, AssociatedTypeWitness);
  *((v10 + 7 + v15) & 0xFFFFFFFFFFFFFFF8) = *((v10 + 7 + v16) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for AnimationPath.SpringElement(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 32);
  v7 = v5 + 32;
  v8 = *(v5 + 80);
  v9 = (v8 + 24 + a2) & ~v8;
  v6((v8 + 24 + a1) & ~v8, v9, AssociatedTypeWitness);
  v10 = *(v7 + 32);
  v11 = (v10 + v8 + ((v8 + 24 + a1) & ~v8)) & ~v8;
  v12 = (v10 + v8 + v9) & ~v8;
  v6(v11, v12, AssociatedTypeWitness);
  v13 = (v10 + v8 + v11) & ~v8;
  v14 = (v10 + v8 + v12) & ~v8;
  v6(v13, v14, AssociatedTypeWitness);
  v15 = (v10 + v8 + v13) & ~v8;
  v16 = (v10 + v8 + v14) & ~v8;
  v6(v15, v16, AssociatedTypeWitness);
  *((v10 + 7 + v15) & 0xFFFFFFFFFFFFFFF8) = *((v10 + 7 + v16) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for AnimationPath.SpringElement(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 40);
  v7 = v5 + 40;
  v8 = *(v5 + 80);
  v9 = (v8 + 24 + a2) & ~v8;
  v6((v8 + 24 + a1) & ~v8, v9, AssociatedTypeWitness);
  v10 = *(v7 + 24);
  v11 = (v10 + v8 + ((v8 + 24 + a1) & ~v8)) & ~v8;
  v12 = (v10 + v8 + v9) & ~v8;
  v6(v11, v12, AssociatedTypeWitness);
  v13 = (v10 + v8 + v11) & ~v8;
  v14 = (v10 + v8 + v12) & ~v8;
  v6(v13, v14, AssociatedTypeWitness);
  v15 = (v10 + v8 + v13) & ~v8;
  v16 = (v10 + v8 + v14) & ~v8;
  v6(v15, v16, AssociatedTypeWitness);
  *((v10 + 7 + v15) & 0xFFFFFFFFFFFFFFF8) = *((v10 + 7 + v16) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for AnimationPath.SpringElement(_DWORD *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v6 >= a2)
  {
LABEL_25:
    v17 = *(v5 + 48);

    return v17((a1 + v7 + 24) & ~v7);
  }

  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  v9 = ((v8 + ((v8 + v7 + ((v8 + v7 + ((v8 + v7 + ((v7 + 24) & ~v7)) & ~v7)) & ~v7)) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = a2 - v6 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v9)) == 0)
  {
LABEL_24:
    if (v6)
    {
      goto LABEL_25;
    }

    return 0;
  }

  v15 = v14 - 1;
  if (v10)
  {
    v15 = 0;
    LODWORD(v10) = *a1;
  }

  return v6 + (v10 | v15) + 1;
}

void storeEnumTagSinglePayload for AnimationPath.SpringElement(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((*(v6 + 64) + ((*(v6 + 64) + v8 + ((*(v6 + 64) + v8 + ((*(v6 + 64) + v8 + ((v8 + 24) & ~v8)) & ~v8)) & ~v8)) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v12 = 0;
    v13 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (((*(v6 + 64) + ((*(v6 + 64) + v8 + ((*(v6 + 64) + v8 + ((*(v6 + 64) + v8 + ((v8 + 24) & ~v8)) & ~v8)) & ~v8)) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = a3 - v7 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(a1 + v9) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_30;
        }

        *(a1 + v9) = 0;
      }

      else if (v12)
      {
        *(a1 + v9) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return;
      }

LABEL_30:
      v16 = *(v6 + 56);

      v16((a1 + v8 + 24) & ~v8, a2);
      return;
    }
  }

  if (((*(v6 + 64) + ((*(v6 + 64) + v8 + ((*(v6 + 64) + v8 + ((*(v6 + 64) + v8 + ((v8 + 24) & ~v8)) & ~v8)) & ~v8)) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if (((*(v6 + 64) + ((*(v6 + 64) + v8 + ((*(v6 + 64) + v8 + ((*(v6 + 64) + v8 + ((v8 + 24) & ~v8)) & ~v8)) & ~v8)) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v15 = ~v7 + a2;
    bzero(a1, v9);
    *a1 = v15;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      *(a1 + v9) = v14;
    }

    else
    {
      *(a1 + v9) = v14;
    }
  }

  else if (v12)
  {
    *(a1 + v9) = v14;
  }
}

uint64_t type metadata completion function for AnimationPath.Element()
{
  result = type metadata accessor for AnimationPath.CurveElement();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AnimationPath.SpringElement();
    if (v2 <= 0x3F)
    {
      result = swift_getAssociatedTypeWitness();
      if (v3 <= 0x3F)
      {
        swift_initEnumMetadataMultiPayload();
        return 0;
      }
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for AnimationPath.Element(void *a1, unsigned __int16 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v7;
  v9 = v6 + v7;
  v10 = ((v6 + v8 + ((v6 + v8 + ((v6 + v8) & ~v8)) & ~v8)) & ~v8) + v6;
  v11 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 33;
  v12 = v6 + 7;
  if (((v6 + 7 + ((v6 + v8 + ((v6 + v8 + ((v6 + v8 + ((v8 + 24) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8 > v11)
  {
    v11 = ((v6 + 7 + ((v6 + v7 + ((v6 + v7 + ((v6 + v7 + ((v7 + 24) & ~v7)) & ~v7)) & ~v7)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v6 <= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  v14 = v7 <= 7u && (v7 & 0x100000) == 0;
  if (!v14 || v13 + 1 > 0x18)
  {
    v20 = *a2;
    *a1 = *a2;
    a1 = (v20 + ((v7 & 0xF8 ^ 0x1F8u) & (v7 + 16)));

    return a1;
  }

  v15 = AssociatedTypeWitness;
  v16 = *(a2 + v13);
  v17 = v16 - 3;
  if (v16 < 3)
  {
    goto LABEL_27;
  }

  if (v13 <= 3)
  {
    v18 = v13;
  }

  else
  {
    v18 = 4;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *a2;
      if (v13 < 4)
      {
        goto LABEL_32;
      }
    }

    else if (v18 == 3)
    {
      v19 = *a2 | (*(a2 + 2) << 16);
      if (v13 < 4)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v19 = *a2;
      if (v13 < 4)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_26;
  }

  if (!v18)
  {
    goto LABEL_27;
  }

  v19 = *a2;
  if (v13 >= 4)
  {
LABEL_26:
    v16 = v19 + 3;
LABEL_27:
    if (v16 == 2)
    {
LABEL_33:
      (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
      v33 = 2;
      goto LABEL_34;
    }

    goto LABEL_28;
  }

LABEL_32:
  v42 = v19 | (v17 << (8 * v13));
  v16 = v42 + 3;
  if (v42 == -1)
  {
    goto LABEL_33;
  }

LABEL_28:
  v21 = ~v8;
  if (v16 == 1)
  {
    *a1 = *a2;
    a1[2] = *(a2 + 2);
    v22 = a1 + v8;
    v23 = a2 + v8;
    v24 = (v22 + 24) & v21;
    v25 = (v23 + 24) & v21;
    v26 = *(v5 + 16);
    v26(v24, v25, AssociatedTypeWitness);
    v27 = (v9 + v24) & v21;
    v28 = (v9 + v25) & v21;
    v26(v27, v28, v15);
    v29 = (v9 + v27) & v21;
    v30 = (v9 + v28) & v21;
    v26(v29, v30, v15);
    v31 = (v9 + v29) & v21;
    v32 = (v9 + v30) & v21;
    v26(v31, v32, v15);
    *((v12 + v31) & 0xFFFFFFFFFFFFFFF8) = *((v12 + v32) & 0xFFFFFFFFFFFFFFF8);
    v33 = 1;
LABEL_34:
    *(a1 + v13) = v33;
    return a1;
  }

  v44 = v10;
  v34 = *(v5 + 16);
  v34(a1, a2, AssociatedTypeWitness);
  v34(((a1 + v9) & v21), ((a2 + v9) & v21), v15);
  v35 = (v9 + ((a2 + v9) & v21)) & v21;
  v34(((v9 + ((a1 + v9) & v21)) & v21), v35, v15);
  v34(((v9 + ((v9 + ((a1 + v9) & v21)) & v21)) & v21), ((v9 + v35) & v21), v15);
  v36 = (a1 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (a2 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v36 = *v37;
  *(v36 + 8) = *(v37 + 8);
  v38 = (a1 + v44 + 23) & 0xFFFFFFFFFFFFFFF8;
  v39 = (a2 + v44 + 23) & 0xFFFFFFFFFFFFFFF8;
  v41 = *v39;
  v40 = *(v39 + 16);
  *(v38 + 32) = *(v39 + 32);
  *v38 = v41;
  *(v38 + 16) = v40;
  *(a1 + v13) = 0;
  return a1;
}

uint64_t destroy for AnimationPath.Element(unsigned __int8 *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 64);
  v5 = *(v3 + 80);
  v6 = v4 + v5;
  v7 = ((v4 + ((v4 + v5 + ((v4 + v5 + ((v4 + v5) & ~v5)) & ~v5)) & ~v5) + 23) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (((v4 + ((v4 + v5 + ((v4 + v5 + ((v4 + v5 + ((v5 + 24) & ~v5)) & ~v5)) & ~v5)) & ~v5) + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v7)
  {
    v7 = ((v4 + ((v4 + v5 + ((v4 + v5 + ((v4 + v5 + ((v5 + 24) & ~v5)) & ~v5)) & ~v5)) & ~v5) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v4 <= v7)
  {
    v4 = v7;
  }

  v8 = a1[v4];
  v9 = v8 - 3;
  if (v8 >= 3)
  {
    if (v4 <= 3)
    {
      v10 = v4;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *a1;
      if (v4 < 4)
      {
LABEL_24:
        v18 = v11 | (v9 << (8 * v4));
        v8 = v18 + 3;
        if (v18 == -1)
        {
          goto LABEL_25;
        }

        goto LABEL_20;
      }
    }

    else if (v10 == 2)
    {
      v11 = *a1;
      if (v4 < 4)
      {
        goto LABEL_24;
      }
    }

    else if (v10 == 3)
    {
      v11 = *a1 | (a1[2] << 16);
      if (v4 < 4)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = *a1;
      if (v4 < 4)
      {
        goto LABEL_24;
      }
    }

    v8 = v11 + 3;
  }

LABEL_19:
  if (v8 == 2)
  {
LABEL_25:
    v17 = *(v3 + 8);
    v15 = a1;
    v16 = AssociatedTypeWitness;
    goto LABEL_26;
  }

LABEL_20:
  v12 = ~v5;
  if (v8 == 1)
  {
    a1 = (&a1[v5 + 24] & v12);
  }

  v20 = *(v3 + 8);
  v20(a1, AssociatedTypeWitness);
  v13 = &a1[v6] & v12;
  v20(v13, AssociatedTypeWitness);
  v14 = (v6 + v13) & v12;
  v20(v14, AssociatedTypeWitness);
  v15 = ((v6 + v14) & v12);
  v16 = AssociatedTypeWitness;
  v17 = v20;
LABEL_26:

  return v17(v15, v16);
}

uint64_t initializeWithCopy for AnimationPath.Element(uint64_t a1, unsigned __int8 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + v7;
  v9 = ((v6 + v7 + ((v6 + v7 + ((v6 + v7) & ~v7)) & ~v7)) & ~v7) + v6;
  v10 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 33;
  v11 = v6 + 7;
  if (((v6 + 7 + ((v6 + v7 + ((v6 + v7 + ((v6 + v7 + ((v7 + 24) & ~v7)) & ~v7)) & ~v7)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 8 > v10)
  {
    v10 = ((v6 + 7 + ((v6 + v7 + ((v6 + v7 + ((v6 + v7 + ((v7 + 24) & ~v7)) & ~v7)) & ~v7)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v6 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  v13 = a2[v12];
  v14 = v13 - 3;
  if (v13 >= 3)
  {
    if (v12 <= 3)
    {
      v15 = v12;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
        goto LABEL_20;
      }

      v16 = *a2;
      if (v12 < 4)
      {
LABEL_25:
        v38 = v16 | (v14 << (8 * v12));
        v13 = v38 + 3;
        if (v38 == -1)
        {
          goto LABEL_26;
        }

        goto LABEL_21;
      }
    }

    else if (v15 == 2)
    {
      v16 = *a2;
      if (v12 < 4)
      {
        goto LABEL_25;
      }
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (a2[2] << 16);
      if (v12 < 4)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v16 = *a2;
      if (v12 < 4)
      {
        goto LABEL_25;
      }
    }

    v13 = v16 + 3;
  }

LABEL_20:
  if (v13 == 2)
  {
LABEL_26:
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
    v29 = 2;
    goto LABEL_27;
  }

LABEL_21:
  v17 = ~v7;
  if (v13 == 1)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 2);
    v18 = a1 + v7;
    v19 = &a2[v7];
    v20 = (v18 + 24) & v17;
    v21 = (v19 + 24) & v17;
    v22 = *(v5 + 16);
    v22(v20, v21, AssociatedTypeWitness);
    v23 = (v8 + v20) & v17;
    v24 = (v8 + v21) & v17;
    v22(v23, v24, AssociatedTypeWitness);
    v25 = (v8 + v23) & v17;
    v26 = (v8 + v24) & v17;
    v22(v25, v26, AssociatedTypeWitness);
    v27 = (v8 + v25) & v17;
    v28 = (v8 + v26) & v17;
    v22(v27, v28, AssociatedTypeWitness);
    *((v11 + v27) & 0xFFFFFFFFFFFFFFF8) = *((v11 + v28) & 0xFFFFFFFFFFFFFFF8);
    v29 = 1;
  }

  else
  {
    v40 = v9;
    v30 = *(v5 + 16);
    v30(a1, a2, AssociatedTypeWitness);
    v30((v8 + a1) & v17, (&a2[v8] & v17), AssociatedTypeWitness);
    v31 = (v8 + (&a2[v8] & v17)) & v17;
    v30((v8 + ((v8 + a1) & v17)) & v17, v31, AssociatedTypeWitness);
    v30((v8 + ((v8 + ((v8 + a1) & v17)) & v17)) & v17, ((v8 + v31) & v17), AssociatedTypeWitness);
    v29 = 0;
    v32 = (v40 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = &a2[v40 + 7] & 0xFFFFFFFFFFFFFFF8;
    *v32 = *v33;
    *(v32 + 8) = *(v33 + 8);
    v34 = (v40 + a1 + 23) & 0xFFFFFFFFFFFFFFF8;
    v35 = &a2[v40 + 23] & 0xFFFFFFFFFFFFFFF8;
    v37 = *v35;
    v36 = *(v35 + 16);
    *(v34 + 32) = *(v35 + 32);
    *v34 = v37;
    *(v34 + 16) = v36;
  }

LABEL_27:
  *(a1 + v12) = v29;
  return a1;
}

unsigned __int16 *assignWithCopy for AnimationPath.Element(unsigned __int16 *a1, unsigned __int8 *a2)
{
  if (a1 != a2)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v5 = *(AssociatedTypeWitness - 8);
    v6 = *(v5 + 64);
    v7 = *(v5 + 80);
    v8 = v6 + v7;
    v9 = ((v6 + v7 + ((v6 + v7 + ((v6 + v7) & ~v7)) & ~v7)) & ~v7) + v6;
    v10 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 33;
    v11 = v6 + 7;
    if (((v6 + 7 + ((v6 + v7 + ((v6 + v7 + ((v6 + v7 + ((v7 + 24) & ~v7)) & ~v7)) & ~v7)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 8 > v10)
    {
      v10 = ((v6 + 7 + ((v6 + v7 + ((v6 + v7 + ((v6 + v7 + ((v7 + 24) & ~v7)) & ~v7)) & ~v7)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    if (v6 <= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = *(*(AssociatedTypeWitness - 8) + 64);
    }

    v13 = *(a1 + v12);
    v14 = v13 - 3;
    if (v13 < 3)
    {
LABEL_23:
      v17 = ~v7;
      v43 = v11;
      v44 = v9;
      if (v13 == 2)
      {
        (*(v5 + 8))(a1, AssociatedTypeWitness);
      }

      else
      {
        v45 = v12;
        if (v13 == 1)
        {
          v18 = *(v5 + 8);
          v18((a1 + v7 + 24) & v17, AssociatedTypeWitness);
          v19 = (v8 + ((a1 + v7 + 24) & v17)) & v17;
          v18(v19, AssociatedTypeWitness);
          v20 = (v8 + v19) & v17;
          v18(v20, AssociatedTypeWitness);
          v18((v8 + v20) & v17, AssociatedTypeWitness);
        }

        else
        {
          v21 = *(v5 + 8);
          v21(a1, AssociatedTypeWitness);
          v21(((a1 + v8) & v17), AssociatedTypeWitness);
          v22 = (v8 + ((a1 + v8) & v17)) & v17;
          v21(v22, AssociatedTypeWitness);
          v21(((v8 + v22) & v17), AssociatedTypeWitness);
        }

        v12 = v45;
      }

      v23 = a2[v12];
      v24 = v23 - 3;
      if (v23 >= 3)
      {
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        if (v25 <= 1)
        {
          if (!v25)
          {
            goto LABEL_43;
          }

          v26 = *a2;
          if (v12 < 4)
          {
LABEL_48:
            v41 = v26 | (v24 << (8 * v12));
            v23 = v41 + 3;
            if (v41 == -1)
            {
              goto LABEL_49;
            }

            goto LABEL_44;
          }
        }

        else if (v25 == 2)
        {
          v26 = *a2;
          if (v12 < 4)
          {
            goto LABEL_48;
          }
        }

        else if (v25 == 3)
        {
          v26 = *a2 | (a2[2] << 16);
          if (v12 < 4)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v26 = *a2;
          if (v12 < 4)
          {
            goto LABEL_48;
          }
        }

        v23 = v26 + 3;
      }

LABEL_43:
      if (v23 == 2)
      {
LABEL_49:
        (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
        v32 = 2;
LABEL_50:
        *(a1 + v12) = v32;
        return a1;
      }

LABEL_44:
      if (v23 == 1)
      {
        v27 = *a2;
        *(a1 + 2) = *(a2 + 2);
        *a1 = v27;
        v28 = *(v5 + 16);
        v28((a1 + v7 + 24) & v17, &a2[v7 + 24] & v17, AssociatedTypeWitness);
        v29 = (v8 + (&a2[v7 + 24] & v17)) & v17;
        v28((v8 + ((a1 + v7 + 24) & v17)) & v17, v29, AssociatedTypeWitness);
        v30 = (v8 + v29) & v17;
        v28((v8 + ((v8 + ((a1 + v7 + 24) & v17)) & v17)) & v17, v30, AssociatedTypeWitness);
        v31 = (v8 + v30) & v17;
        v28((v8 + ((v8 + ((v8 + ((a1 + v7 + 24) & v17)) & v17)) & v17)) & v17, v31, AssociatedTypeWitness);
        *((v43 + ((v8 + ((v8 + ((v8 + ((a1 + v7 + 24) & v17)) & v17)) & v17)) & v17)) & 0xFFFFFFFFFFFFFFF8) = *((v43 + v31) & 0xFFFFFFFFFFFFFFF8);
        v32 = 1;
      }

      else
      {
        v33 = *(v5 + 16);
        v33(a1, a2, AssociatedTypeWitness);
        v33(((a1 + v8) & v17), (&a2[v8] & v17), AssociatedTypeWitness);
        v34 = (v8 + (&a2[v8] & v17)) & v17;
        v33(((v8 + ((a1 + v8) & v17)) & v17), v34, AssociatedTypeWitness);
        v33(((v8 + ((v8 + ((a1 + v8) & v17)) & v17)) & v17), ((v8 + v34) & v17), AssociatedTypeWitness);
        v32 = 0;
        v35 = (a1 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
        v36 = &a2[v44 + 7] & 0xFFFFFFFFFFFFFFF8;
        *v35 = *v36;
        *(v35 + 8) = *(v36 + 8);
        v37 = (a1 + v44 + 23) & 0xFFFFFFFFFFFFFFF8;
        v38 = &a2[v44 + 23] & 0xFFFFFFFFFFFFFFF8;
        v40 = *v38;
        v39 = *(v38 + 16);
        *(v37 + 32) = *(v38 + 32);
        *v37 = v40;
        *(v37 + 16) = v39;
      }

      goto LABEL_50;
    }

    if (v12 <= 3)
    {
      v15 = v12;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = *a1;
        if (v12 >= 4)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v15 == 3)
        {
          v16 = *a1 | (*(a1 + 2) << 16);
          if (v12 < 4)
          {
            goto LABEL_22;
          }

LABEL_20:
          v13 = v16 + 3;
          goto LABEL_23;
        }

        v16 = *a1;
        if (v12 >= 4)
        {
          goto LABEL_20;
        }
      }

LABEL_22:
      v13 = (v16 | (v14 << (8 * v12))) + 3;
      goto LABEL_23;
    }

    if (!v15)
    {
      goto LABEL_23;
    }

    v16 = *a1;
    if (v12 < 4)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  return a1;
}

uint64_t initializeWithTake for AnimationPath.Element(uint64_t a1, unsigned __int8 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + v7;
  v9 = ((v6 + v7 + ((v6 + v7 + ((v6 + v7) & ~v7)) & ~v7)) & ~v7) + v6;
  v10 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 33;
  v11 = v6 + 7;
  if (((v6 + 7 + ((v6 + v7 + ((v6 + v7 + ((v6 + v7 + ((v7 + 24) & ~v7)) & ~v7)) & ~v7)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 8 > v10)
  {
    v10 = ((v6 + 7 + ((v6 + v7 + ((v6 + v7 + ((v6 + v7 + ((v7 + 24) & ~v7)) & ~v7)) & ~v7)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v6 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  v13 = a2[v12];
  v14 = v13 - 3;
  if (v13 >= 3)
  {
    if (v12 <= 3)
    {
      v15 = v12;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
        goto LABEL_20;
      }

      v16 = *a2;
      if (v12 < 4)
      {
LABEL_25:
        v38 = v16 | (v14 << (8 * v12));
        v13 = v38 + 3;
        if (v38 == -1)
        {
          goto LABEL_26;
        }

        goto LABEL_21;
      }
    }

    else if (v15 == 2)
    {
      v16 = *a2;
      if (v12 < 4)
      {
        goto LABEL_25;
      }
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (a2[2] << 16);
      if (v12 < 4)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v16 = *a2;
      if (v12 < 4)
      {
        goto LABEL_25;
      }
    }

    v13 = v16 + 3;
  }

LABEL_20:
  if (v13 == 2)
  {
LABEL_26:
    (*(v5 + 32))(a1, a2, AssociatedTypeWitness);
    v29 = 2;
    goto LABEL_27;
  }

LABEL_21:
  v17 = ~v7;
  if (v13 == 1)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 2);
    v18 = a1 + v7;
    v19 = &a2[v7];
    v20 = (v18 + 24) & v17;
    v21 = (v19 + 24) & v17;
    v22 = *(v5 + 32);
    v22(v20, v21, AssociatedTypeWitness);
    v23 = (v8 + v20) & v17;
    v24 = (v8 + v21) & v17;
    v22(v23, v24, AssociatedTypeWitness);
    v25 = (v8 + v23) & v17;
    v26 = (v8 + v24) & v17;
    v22(v25, v26, AssociatedTypeWitness);
    v27 = (v8 + v25) & v17;
    v28 = (v8 + v26) & v17;
    v22(v27, v28, AssociatedTypeWitness);
    *((v11 + v27) & 0xFFFFFFFFFFFFFFF8) = *((v11 + v28) & 0xFFFFFFFFFFFFFFF8);
    v29 = 1;
  }

  else
  {
    v40 = v9;
    v30 = *(v5 + 32);
    v30(a1, a2, AssociatedTypeWitness);
    v30((v8 + a1) & v17, (&a2[v8] & v17), AssociatedTypeWitness);
    v31 = (v8 + (&a2[v8] & v17)) & v17;
    v30((v8 + ((v8 + a1) & v17)) & v17, v31, AssociatedTypeWitness);
    v30((v8 + ((v8 + ((v8 + a1) & v17)) & v17)) & v17, ((v8 + v31) & v17), AssociatedTypeWitness);
    v29 = 0;
    v32 = (v40 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = &a2[v40 + 7] & 0xFFFFFFFFFFFFFFF8;
    *v32 = *v33;
    *(v32 + 8) = *(v33 + 8);
    v34 = (v40 + a1 + 23) & 0xFFFFFFFFFFFFFFF8;
    v35 = &a2[v40 + 23] & 0xFFFFFFFFFFFFFFF8;
    v37 = *v35;
    v36 = *(v35 + 16);
    *(v34 + 32) = *(v35 + 32);
    *v34 = v37;
    *(v34 + 16) = v36;
  }

LABEL_27:
  *(a1 + v12) = v29;
  return a1;
}

unsigned __int16 *assignWithTake for AnimationPath.Element(unsigned __int16 *a1, unsigned __int8 *a2)
{
  if (a1 != a2)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v5 = *(AssociatedTypeWitness - 8);
    v6 = *(v5 + 64);
    v7 = *(v5 + 80);
    v8 = v6 + v7;
    v9 = ((v6 + v7 + ((v6 + v7 + ((v6 + v7) & ~v7)) & ~v7)) & ~v7) + v6;
    v10 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 33;
    v11 = v6 + 7;
    if (((v6 + 7 + ((v6 + v7 + ((v6 + v7 + ((v6 + v7 + ((v7 + 24) & ~v7)) & ~v7)) & ~v7)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 8 > v10)
    {
      v10 = ((v6 + 7 + ((v6 + v7 + ((v6 + v7 + ((v6 + v7 + ((v7 + 24) & ~v7)) & ~v7)) & ~v7)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    if (v6 <= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = *(*(AssociatedTypeWitness - 8) + 64);
    }

    v13 = *(a1 + v12);
    v14 = v13 - 3;
    if (v13 < 3)
    {
LABEL_23:
      v17 = ~v7;
      v42 = v11;
      v43 = v9;
      if (v13 == 2)
      {
        (*(v5 + 8))(a1, AssociatedTypeWitness);
      }

      else
      {
        v44 = v12;
        if (v13 == 1)
        {
          v18 = *(v5 + 8);
          v18((a1 + v7 + 24) & v17, AssociatedTypeWitness);
          v19 = (v8 + ((a1 + v7 + 24) & v17)) & v17;
          v18(v19, AssociatedTypeWitness);
          v20 = (v8 + v19) & v17;
          v18(v20, AssociatedTypeWitness);
          v18((v8 + v20) & v17, AssociatedTypeWitness);
        }

        else
        {
          v21 = *(v5 + 8);
          v21(a1, AssociatedTypeWitness);
          v21(((a1 + v8) & v17), AssociatedTypeWitness);
          v22 = (v8 + ((a1 + v8) & v17)) & v17;
          v21(v22, AssociatedTypeWitness);
          v21(((v8 + v22) & v17), AssociatedTypeWitness);
        }

        v12 = v44;
      }

      v23 = a2[v12];
      v24 = v23 - 3;
      if (v23 >= 3)
      {
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        if (v25 <= 1)
        {
          if (!v25)
          {
            goto LABEL_43;
          }

          v26 = *a2;
          if (v12 < 4)
          {
LABEL_48:
            v40 = v26 | (v24 << (8 * v12));
            v23 = v40 + 3;
            if (v40 == -1)
            {
              goto LABEL_49;
            }

            goto LABEL_44;
          }
        }

        else if (v25 == 2)
        {
          v26 = *a2;
          if (v12 < 4)
          {
            goto LABEL_48;
          }
        }

        else if (v25 == 3)
        {
          v26 = *a2 | (a2[2] << 16);
          if (v12 < 4)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v26 = *a2;
          if (v12 < 4)
          {
            goto LABEL_48;
          }
        }

        v23 = v26 + 3;
      }

LABEL_43:
      if (v23 == 2)
      {
LABEL_49:
        (*(v5 + 32))(a1, a2, AssociatedTypeWitness);
        v31 = 2;
LABEL_50:
        *(a1 + v12) = v31;
        return a1;
      }

LABEL_44:
      if (v23 == 1)
      {
        *a1 = *a2;
        *(a1 + 2) = *(a2 + 2);
        v27 = *(v5 + 32);
        v27((a1 + v7 + 24) & v17, &a2[v7 + 24] & v17, AssociatedTypeWitness);
        v28 = (v8 + (&a2[v7 + 24] & v17)) & v17;
        v27((v8 + ((a1 + v7 + 24) & v17)) & v17, v28, AssociatedTypeWitness);
        v29 = (v8 + v28) & v17;
        v27((v8 + ((v8 + ((a1 + v7 + 24) & v17)) & v17)) & v17, v29, AssociatedTypeWitness);
        v30 = (v8 + v29) & v17;
        v27((v8 + ((v8 + ((v8 + ((a1 + v7 + 24) & v17)) & v17)) & v17)) & v17, v30, AssociatedTypeWitness);
        *((v42 + ((v8 + ((v8 + ((v8 + ((a1 + v7 + 24) & v17)) & v17)) & v17)) & v17)) & 0xFFFFFFFFFFFFFFF8) = *((v42 + v30) & 0xFFFFFFFFFFFFFFF8);
        v31 = 1;
      }

      else
      {
        v32 = *(v5 + 32);
        v32(a1, a2, AssociatedTypeWitness);
        v32(((a1 + v8) & v17), (&a2[v8] & v17), AssociatedTypeWitness);
        v33 = (v8 + (&a2[v8] & v17)) & v17;
        v32(((v8 + ((a1 + v8) & v17)) & v17), v33, AssociatedTypeWitness);
        v32(((v8 + ((v8 + ((a1 + v8) & v17)) & v17)) & v17), ((v8 + v33) & v17), AssociatedTypeWitness);
        v31 = 0;
        v34 = (a1 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
        v35 = &a2[v43 + 7] & 0xFFFFFFFFFFFFFFF8;
        *v34 = *v35;
        *(v34 + 8) = *(v35 + 8);
        v36 = (a1 + v43 + 23) & 0xFFFFFFFFFFFFFFF8;
        v37 = &a2[v43 + 23] & 0xFFFFFFFFFFFFFFF8;
        v39 = *v37;
        v38 = *(v37 + 16);
        *(v36 + 32) = *(v37 + 32);
        *v36 = v39;
        *(v36 + 16) = v38;
      }

      goto LABEL_50;
    }

    if (v12 <= 3)
    {
      v15 = v12;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = *a1;
        if (v12 >= 4)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v15 == 3)
        {
          v16 = *a1 | (*(a1 + 2) << 16);
          if (v12 < 4)
          {
            goto LABEL_22;
          }

LABEL_20:
          v13 = v16 + 3;
          goto LABEL_23;
        }

        v16 = *a1;
        if (v12 >= 4)
        {
          goto LABEL_20;
        }
      }

LABEL_22:
      v13 = (v16 | (v14 << (8 * v12))) + 3;
      goto LABEL_23;
    }

    if (!v15)
    {
      goto LABEL_23;
    }

    v16 = *a1;
    if (v12 < 4)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for AnimationPath.Element(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  v7 = ((v5 + ((v5 + v6 + ((v5 + v6 + ((v5 + v6) & ~v6)) & ~v6)) & ~v6) + 23) & 0xFFFFFFFFFFFFFFF8) + 33;
  v8 = ((v5 + ((v5 + v6 + ((v5 + v6 + ((v5 + v6 + ((v6 + 24) & ~v6)) & ~v6)) & ~v6)) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v5 > v8)
  {
    v8 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 253) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v13 < 2)
    {
LABEL_27:
      v15 = *(a1 + v8);
      if (v15 >= 3)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_27;
  }

LABEL_16:
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

  return (v9 | v14) + 254;
}

void storeEnumTagSinglePayload for AnimationPath.Element(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  v9 = ((v7 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8) & ~v8)) & ~v8)) & ~v8) + 23) & 0xFFFFFFFFFFFFFFF8) + 33;
  v10 = ((v7 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8 + ((v8 + 24) & ~v8)) & ~v8)) & ~v8)) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v10 <= v9)
  {
    v10 = v9;
  }

  if (v7 <= v10)
  {
    v7 = v10;
  }

  v11 = v7 + 1;
  if (a3 < 0xFE)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 + ~(-1 << (8 * v11)) - 253) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
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

  if (a2 > 0xFD)
  {
    v13 = a2 - 254;
    if (v11 >= 4)
    {
      bzero(a1, v7 + 1);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v14 = (v13 >> (8 * v11)) + 1;
    if (v7 != -1)
    {
      v17 = v13 & ~(-1 << (8 * v11));
      bzero(a1, v11);
      if (v11 != 3)
      {
        if (v11 == 2)
        {
          *a1 = v17;
          if (v12 > 1)
          {
LABEL_41:
            if (v12 == 2)
            {
              *&a1[v11] = v14;
            }

            else
            {
              *&a1[v11] = v14;
            }

            return;
          }
        }

        else
        {
          *a1 = v13;
          if (v12 > 1)
          {
            goto LABEL_41;
          }
        }

LABEL_38:
        if (v12)
        {
          a1[v11] = v14;
        }

        return;
      }

      *a1 = v17;
      a1[2] = BYTE2(v17);
    }

    if (v12 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

LABEL_27:
      a1[v7] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v12 == 2)
  {
    *&a1[v11] = 0;
    goto LABEL_26;
  }

  *&a1[v11] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

uint64_t getEnumTag for AnimationPath.Element(unsigned __int16 *a1)
{
  v2 = *(swift_getAssociatedTypeWitness() - 8);
  v3 = *(v2 + 64);
  v4 = *(v2 + 80);
  v5 = ((v3 + ((v3 + v4 + ((v3 + v4 + ((v3 + v4) & ~v4)) & ~v4)) & ~v4) + 23) & 0xFFFFFFFFFFFFFFF8) + 33;
  v6 = ((v3 + ((v3 + v4 + ((v3 + v4 + ((v3 + v4 + ((v4 + 24) & ~v4)) & ~v4)) & ~v4)) & ~v4) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 <= v5)
  {
    v6 = v5;
  }

  if (v3 <= v6)
  {
    v3 = v6;
  }

  result = *(a1 + v3);
  if (result >= 3)
  {
    if (v3 <= 3)
    {
      v8 = v3;
    }

    else
    {
      v8 = 4;
    }

    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v9 = *a1;
        if (v3 >= 4)
        {
          return (v9 + 3);
        }
      }

      else
      {
        if (v8 == 3)
        {
          v9 = *a1 | (*(a1 + 2) << 16);
          if (v3 < 4)
          {
            return (v9 | ((result - 3) << (8 * v3))) + 3;
          }

          return (v9 + 3);
        }

        v9 = *a1;
        if (v3 >= 4)
        {
          return (v9 + 3);
        }
      }

      return (v9 | ((result - 3) << (8 * v3))) + 3;
    }

    if (!v8)
    {
      return result;
    }

    v9 = *a1;
    if (v3 < 4)
    {
      return (v9 | ((result - 3) << (8 * v3))) + 3;
    }

    return (v9 + 3);
  }

  return result;
}

void destructiveInjectEnumTag for AnimationPath.Element(_BYTE *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if (a2 > 2)
  {
    v9 = ((v5 + ((v5 + v6 + ((v5 + v6 + ((v5 + v6) & ~v6)) & ~v6)) & ~v6) + 23) & 0xFFFFFFFFFFFFFFF8) + 33;
    v10 = ((v5 + ((v5 + v6 + ((v5 + v6 + ((v5 + v6 + ((v6 + 24) & ~v6)) & ~v6)) & ~v6)) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v10 <= v9)
    {
      v10 = v9;
    }

    if (v5 <= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v5;
    }

    v12 = a2 - 3;
    if (v11 < 4)
    {
      a1[v11] = (v12 >> (8 * v11)) + 3;
      if (v11)
      {
        v13 = v12 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v11 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v12;
        }
      }
    }

    else
    {
      a1[v11] = 3;
      bzero(a1, v11);
      *a1 = v12;
    }
  }

  else
  {
    v7 = ((v5 + ((v5 + v6 + ((v5 + v6 + ((v5 + v6 + ((v6 + 24) & ~v6)) & ~v6)) & ~v6)) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v8 = ((v5 + ((v5 + v6 + ((v5 + v6 + ((v5 + v6) & ~v6)) & ~v6)) & ~v6) + 23) & 0xFFFFFFFFFFFFFFF8) + 33;
    if (v7 > v8)
    {
      v8 = v7;
    }

    if (v5 <= v8)
    {
      v5 = v8;
    }

    a1[v5] = a2;
  }
}

uint64_t EnvironmentValues.paragraphTypesetting.getter@<X0>(char *a1@<X8>)
{
  v2 = *v1;
  if (!v1[1])
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA020ParagraphTypesettingF033_D39DBD719189F2769C15C168465CE407LLVG_Tt2g5(v2, a1);
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA020ParagraphTypesettingI033_D39DBD719189F2769C15C168465CE407LLVG_Tt1g5(v2, a1);
}

uint64_t View.paragraphTypesetting(_:isEnabled:)(char *a1, char a2, uint64_t a3)
{
  v5 = *a1;
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 17) = v5;
  View.transformEnvironment<A>(_:transform:)(KeyPath, partial apply for closure #1 in View.textScale(_:isEnabled:), v7, a3);
}

uint64_t key path getter for EnvironmentValues.paragraphTypesetting : EnvironmentValues@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA020ParagraphTypesettingI033_D39DBD719189F2769C15C168465CE407LLVG_Tt1g5(v3, &v5);
  }

  else
  {
    result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA020ParagraphTypesettingF033_D39DBD719189F2769C15C168465CE407LLVG_Tt2g5(*a1, &v5);
  }

  *a2 = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.paragraphTypesetting : EnvironmentValues(char *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA020ParagraphTypesettingF033_D39DBD719189F2769C15C168465CE407LLVG_Tt2B5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA020ParagraphTypesettingK033_D39DBD719189F2769C15C168465CE407LLVG_Ttg5(v4, *a2);
  }
}

void type metadata accessor for _EnvironmentKeyTransformModifier<ParagraphTypesetting>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<ParagraphTypesetting>)
  {
    v0 = type metadata accessor for _EnvironmentKeyTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<ParagraphTypesetting>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ParagraphTypesetting.Storage and conformance ParagraphTypesetting.Storage()
{
  result = lazy protocol witness table cache variable for type ParagraphTypesetting.Storage and conformance ParagraphTypesetting.Storage;
  if (!lazy protocol witness table cache variable for type ParagraphTypesetting.Storage and conformance ParagraphTypesetting.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParagraphTypesetting.Storage and conformance ParagraphTypesetting.Storage);
  }

  return result;
}

uint64_t outlined assign with take of ClosedRange<Date>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ClosedRange<Date>();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ResolvableProgress()
{
  result = type metadata singleton initialization cache for ResolvableProgress;
  if (!type metadata singleton initialization cache for ResolvableProgress)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ResolvableProgress.countdown.setter(char a1)
{
  result = type metadata accessor for ResolvableProgress();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ResolvableProgress.CodingKeys()
{
  if (*v0)
  {
    return 0x776F64746E756F63;
  }

  else
  {
    return 0x6C61767265746E69;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ResolvableProgress.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x776F64746E756F63 && a2 == 0xE90000000000006ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResolvableProgress.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResolvableProgress.CodingKeys and conformance ResolvableProgress.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResolvableProgress.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResolvableProgress.CodingKeys and conformance ResolvableProgress.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id static ResolvableProgress.attribute.getter()
{
  if (one-time initialization token for attribute != -1)
  {
    swift_once();
  }

  v1 = static ResolvableProgress.attribute;

  return v1;
}

uint64_t ResolvableProgress.resolve(in:)@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = MEMORY[0x1E69E63B0];
  type metadata accessor for FloatingPointFormatStyle<Double>.Attributed(0, &lazy cache variable for type metadata for FloatingPointFormatStyle<Double>.Attributed, lazy protocol witness table accessor for type Double and conformance Double, MEMORY[0x1E69E63B0], MEMORY[0x1E6968E30]);
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v43 = v39 - v4;
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v40 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v39[1] = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FloatingPointFormatStyle<Double>.Attributed(0, &lazy cache variable for type metadata for FloatingPointFormatStyle<Double>.Percent, lazy protocol witness table accessor for type Double and conformance Double, v2, MEMORY[0x1E6968E58]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v39 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  ResolvableStringResolutionContext.date.getter(v20);
  v21 = *(v1 + *(type metadata accessor for ResolvableProgress() + 20));
  Date.timeIntervalSinceReferenceDate.getter();
  v23 = v22;
  type metadata accessor for ClosedRange<Date>();
  result = Date.timeIntervalSinceReferenceDate.getter();
  if (v23 > v25)
  {
    __break(1u);
  }

  else
  {
    v26 = v25;
    Date.timeIntervalSinceReferenceDate.getter();
    v28 = v27;
    (*(v18 + 8))(v20, v17);
    v29 = (v28 - v23) / (v26 - v23);
    if (v29 < 0.0)
    {
      v29 = 0.0;
    }

    if (v29 > 1.0)
    {
      v29 = 1.0;
    }

    if (v26 - v23 > 0.0)
    {
      v30 = v29;
    }

    else
    {
      v30 = 1.0;
    }

    if (v21)
    {
      v30 = 1.0 - v30;
    }

    v47 = v30;
    static Locale.autoupdatingCurrent.getter();
    lazy protocol witness table accessor for type Double and conformance Double();
    FloatingPointFormatStyle.Percent.init(locale:)();
    v32 = v40;
    v31 = v41;
    v33 = v42;
    (*(v41 + 104))(v40, *MEMORY[0x1E69E7038], v42);
    MEMORY[0x193ABCC20](v32, 0x3FF0000000000000, 0, v10);
    (*(v31 + 8))(v32, v33);
    v34 = *(v11 + 8);
    v34(v13, v10);
    v35 = v43;
    FloatingPointFormatStyle.Percent.attributed.getter();
    v34(v16, v10);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double>.Attributed and conformance FloatingPointFormatStyle<A>.Attributed();
    v37 = v45;
    v36 = v46;
    BinaryFloatingPoint.formatted<A>(_:)();
    (*(v44 + 8))(v35, v37);
    v38 = type metadata accessor for AttributedString();
    return (*(*(v38 - 8) + 56))(v36, 0, 1, v38);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FloatingPointFormatStyle<Double>.Attributed and conformance FloatingPointFormatStyle<A>.Attributed()
{
  result = lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double>.Attributed and conformance FloatingPointFormatStyle<A>.Attributed;
  if (!lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double>.Attributed and conformance FloatingPointFormatStyle<A>.Attributed)
  {
    type metadata accessor for FloatingPointFormatStyle<Double>.Attributed(255, &lazy cache variable for type metadata for FloatingPointFormatStyle<Double>.Attributed, lazy protocol witness table accessor for type Double and conformance Double, MEMORY[0x1E69E63B0], MEMORY[0x1E6968E30]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double>.Attributed and conformance FloatingPointFormatStyle<A>.Attributed);
  }

  return result;
}

uint64_t ResolvableProgress.invalidationConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  type metadata accessor for (interval: DateInterval, countdown: Bool)();
  v11 = *(v10 + 48);
  v12 = *(v4 + 16);
  v12(v9, v1, v3);
  type metadata accessor for ClosedRange<Date>();
  v12(v6, v1 + *(v13 + 36), v3);
  DateInterval.init(start:end:)();
  *(a1 + v11) = *(v1 + *(type metadata accessor for ResolvableProgress() + 20));
  type metadata accessor for ResolvableAttributeConfiguration(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t ResolvableProgress.encode(to:)(void *a1)
{
  type metadata accessor for FloatingPointFormatStyle<Double>.Attributed(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ResolvableProgress.CodingKeys>, lazy protocol witness table accessor for type ResolvableProgress.CodingKeys and conformance ResolvableProgress.CodingKeys, &unk_1F00A6858, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ResolvableProgress.CodingKeys and conformance ResolvableProgress.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = 0;
  type metadata accessor for ClosedRange<Date>();
  lazy protocol witness table accessor for type ClosedRange<Date> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Date> and conformance <> ClosedRange<A>, &lazy protocol witness table cache variable for type Date and conformance Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for ResolvableProgress();
    v10 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type ResolvableProgress.CodingKeys and conformance ResolvableProgress.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ResolvableProgress.CodingKeys and conformance ResolvableProgress.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableProgress.CodingKeys and conformance ResolvableProgress.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableProgress.CodingKeys and conformance ResolvableProgress.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableProgress.CodingKeys and conformance ResolvableProgress.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableProgress.CodingKeys and conformance ResolvableProgress.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableProgress.CodingKeys and conformance ResolvableProgress.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableProgress.CodingKeys and conformance ResolvableProgress.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableProgress.CodingKeys and conformance ResolvableProgress.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableProgress.CodingKeys and conformance ResolvableProgress.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableProgress.CodingKeys and conformance ResolvableProgress.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableProgress.CodingKeys and conformance ResolvableProgress.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableProgress.CodingKeys and conformance ResolvableProgress.CodingKeys);
  }

  return result;
}

uint64_t ResolvableProgress.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  type metadata accessor for ClosedRange<Date>();
  v20 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v22 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FloatingPointFormatStyle<Double>.Attributed(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ResolvableProgress.CodingKeys>, lazy protocol witness table accessor for type ResolvableProgress.CodingKeys and conformance ResolvableProgress.CodingKeys, &unk_1F00A6858, MEMORY[0x1E69E6F48]);
  v21 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for ResolvableProgress();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ResolvableProgress.CodingKeys and conformance ResolvableProgress.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v18;
  v12 = v19;
  v24 = 0;
  lazy protocol witness table accessor for type ClosedRange<Date> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Date> and conformance <> ClosedRange<A>, &lazy protocol witness table cache variable for type Date and conformance Date);
  v14 = v21;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  outlined init with take of ClosedRange<Date>(v22, v11);
  v23 = 1;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v13 + 8))(v8, v14);
  v11[*(v9 + 20)] = v15 & 1;
  _sSNy10Foundation4DateVGWOcTm_0(v11, v12, type metadata accessor for ResolvableProgress);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return _sSNy10Foundation4DateVGWOhTm_0(v11, type metadata accessor for ResolvableProgress);
}

void type metadata accessor for FloatingPointFormatStyle<Double>.Attributed(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ClosedRange<Date> and conformance <> ClosedRange<A>(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ClosedRange<Date>();
    _s10Foundation4DateVACSLAAWlTm_3(a2, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of ClosedRange<Date>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ClosedRange<Date>();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _sSNy10Foundation4DateVGWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t protocol witness for ConfigurationBasedResolvableStringAttributeRepresentation.invalidationConfiguration.getter in conformance ResolvableProgress@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  type metadata accessor for (interval: DateInterval, countdown: Bool)();
  v13 = *(v12 + 48);
  v14 = *(v6 + 16);
  v14(v11, v2, v5);
  type metadata accessor for ClosedRange<Date>();
  v14(v8, v2 + *(v15 + 36), v5);
  DateInterval.init(start:end:)();
  *(a2 + v13) = *(v2 + *(a1 + 20));
  type metadata accessor for ResolvableAttributeConfiguration(0);
  return swift_storeEnumTagMultiPayload();
}

id protocol witness for static ResolvableStringAttributeFamily.attribute.getter in conformance ResolvableProgress()
{
  if (one-time initialization token for attribute != -1)
  {
    swift_once();
  }

  v1 = static ResolvableProgress.attribute;

  return v1;
}

uint64_t static ResolvableProgress.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Date();
  _s10Foundation4DateVACSLAAWlTm_3(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (type metadata accessor for ClosedRange<Date>(), (dispatch thunk of static Equatable.== infix(_:_:)()))
  {
    v4 = type metadata accessor for ResolvableProgress();
    v5 = *(a1 + *(v4 + 20)) ^ *(a2 + *(v4 + 20)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void ResolvableProgress.hash(into:)()
{
  type metadata accessor for Date();
  _s10Foundation4DateVACSLAAWlTm_3(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for ClosedRange<Date>();
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for ResolvableProgress();
  Hasher._combine(_:)(*(v0 + *(v1 + 20)));
}

Swift::Int ResolvableProgress.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Date();
  _s10Foundation4DateVACSLAAWlTm_3(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for ClosedRange<Date>();
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for ResolvableProgress();
  Hasher._combine(_:)(*(v0 + *(v1 + 20)));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ResolvableProgress(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for Date();
  _s10Foundation4DateVACSLAAWlTm_3(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for ClosedRange<Date>();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(a1 + 20)));
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance ResolvableProgress(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Date();
  _s10Foundation4DateVACSLAAWlTm_3(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for ClosedRange<Date>();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 20)));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ResolvableProgress(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for Date();
  _s10Foundation4DateVACSLAAWlTm_3(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for ClosedRange<Date>();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 20)));
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ResolvableProgress(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Date();
  _s10Foundation4DateVACSLAAWlTm_3(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (type metadata accessor for ClosedRange<Date>(), (dispatch thunk of static Equatable.== infix(_:_:)()))
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t ResolvableProgress.debugDescription.getter()
{
  _StringGuts.grow(_:)(55);
  MEMORY[0x193ABEDD0](0xD000000000000021, 0x800000018DD807D0);
  type metadata accessor for Date();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  type metadata accessor for ClosedRange<Date>();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0, 0xE000000000000000);

  MEMORY[0x193ABEDD0](0xD000000000000010, 0x800000018DD80800);
  v1 = type metadata accessor for ResolvableProgress();
  v2 = *(v0 + *(v1 + 20)) == 0;
  if (*(v0 + *(v1 + 20)))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x193ABEDD0](v3, v4);

  MEMORY[0x193ABEDD0](8745, 0xE200000000000000);
  return 0;
}

uint64_t instantiation function for generic protocol witness table for ResolvableProgress(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return instantiation function for generic protocol witness table for ResolvableProgress(a1, a2, a3, &lazy protocol witness table cache variable for type ResolvableProgress and conformance ResolvableProgress, &protocol conformance descriptor for ResolvableProgress, &lazy protocol witness table cache variable for type ResolvableProgress and conformance ResolvableProgress);
}

{
  return instantiation function for generic protocol witness table for ResolvableProgress(a1, a2, a3, &lazy protocol witness table cache variable for type ResolvableProgress and conformance ResolvableProgress, &protocol conformance descriptor for ResolvableProgress, &lazy protocol witness table cache variable for type ResolvableProgress and conformance ResolvableProgress);
}

uint64_t instantiation function for generic protocol witness table for ResolvableProgress(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  *(a1 + 8) = _s10Foundation4DateVACSLAAWlTm_3(a4, type metadata accessor for ResolvableProgress);
  result = _s10Foundation4DateVACSLAAWlTm_3(a6, type metadata accessor for ResolvableProgress);
  *(a1 + 16) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ResolvableProgress(uint64_t a1)
{
  result = _s10Foundation4DateVACSLAAWlTm_3(&lazy protocol witness table cache variable for type ResolvableProgress and conformance ResolvableProgress, type metadata accessor for ResolvableProgress);
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for AnySequence<Date>()
{
  if (!lazy cache variable for type metadata for AnySequence<Date>)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for AnySequence();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnySequence<Date>);
    }
  }
}

void *initializeBufferWithCopyOfBuffer for ResolvableProgress(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    type metadata accessor for ClosedRange<Date>();
    v8((a1 + *(v9 + 36)), (a2 + *(v9 + 36)), v7);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t destroy for ResolvableProgress(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v6 = *(*(v2 - 8) + 8);
  (v6)((v2 - 8), a1, v2);
  type metadata accessor for ClosedRange<Date>();
  v4 = a1 + *(v3 + 36);

  return v6(v4, v2);
}

uint64_t initializeWithCopy for ResolvableProgress(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 16);
  v7(a1, a2, v6);
  type metadata accessor for ClosedRange<Date>();
  v7(a1 + *(v8 + 36), a2 + *(v8 + 36), v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithCopy for ResolvableProgress(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 24);
  v7(a1, a2, v6);
  type metadata accessor for ClosedRange<Date>();
  v7(a1 + *(v8 + 36), a2 + *(v8 + 36), v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t initializeWithTake for ResolvableProgress(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 32);
  v7(a1, a2, v6);
  type metadata accessor for ClosedRange<Date>();
  v7(a1 + *(v8 + 36), a2 + *(v8 + 36), v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for ResolvableProgress(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 40);
  v7(a1, a2, v6);
  type metadata accessor for ClosedRange<Date>();
  v7(a1 + *(v8 + 36), a2 + *(v8 + 36), v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

void type metadata completion function for ResolvableProgress()
{
  type metadata accessor for ClosedRange<Date>();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t ResolvableDateInterval.init(_:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = type metadata accessor for DateInterval();
  v21 = *(v7 - 8);
  (*(v21 + 16))(a3, a1, v7);
  v8 = type metadata accessor for ResolvableDateInterval();
  v9 = v8[5];
  if (v5)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v6, a3 + v9);

    v10 = v8[6];

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v6, a3 + v10);

    v11 = v8[7];

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v6, a3 + v11);

    v12 = *(v21 + 8);

    return v12(a1, v7);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v6, a3 + v9);
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v6);
    if (v14)
    {
      v15 = *(*v14 + 248);
      v16 = v8[6];
      v17 = v14;
      v18 = type metadata accessor for Locale();
      (*(*(v18 - 8) + 16))(a3 + v16, &v17[v15], v18);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Locale();
      v20 = __swift_project_value_buffer(v19, static LocaleKey.defaultValue);
      (*(*(v19 - 8) + 16))(a3 + v8[6], v20, v19);
    }

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v6, a3 + v8[7]);
    (*(v21 + 8))(a1, v7);
  }
}

uint64_t ResolvableDateInterval.interval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DateInterval();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ResolvableDateInterval.interval.setter(uint64_t a1)
{
  v3 = type metadata accessor for DateInterval();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ResolvableDateInterval.calendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResolvableDateInterval() + 20);
  v4 = type metadata accessor for Calendar();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ResolvableDateInterval.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResolvableDateInterval() + 24);
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ResolvableDateInterval.timeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResolvableDateInterval() + 28);
  v4 = type metadata accessor for TimeZone();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ResolvableDateInterval.CodingKeys()
{
  v1 = 0x6C61767265746E69;
  v2 = 0x656C61636F6CLL;
  if (*v0 != 2)
  {
    v2 = 0x656E6F5A656D6974;
  }

  if (*v0)
  {
    v1 = 0x7261646E656C6163;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ResolvableDateInterval.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ResolvableDateInterval.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResolvableDateInterval.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResolvableDateInterval.CodingKeys and conformance ResolvableDateInterval.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResolvableDateInterval.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResolvableDateInterval.CodingKeys and conformance ResolvableDateInterval.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id static ResolvableDateInterval.attribute.getter()
{
  if (one-time initialization token for attribute != -1)
  {
    swift_once();
  }

  v1 = static ResolvableDateInterval.attribute;

  return v1;
}

uint64_t ResolvableDateInterval.resolve(in:)@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30[1] = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation8TimeZoneVSgMaTm_0(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v30 - v5;
  v7 = type metadata accessor for Date();
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v30 - v11;
  DateInterval.start.getter();
  DateInterval.end.getter();
  v13 = type metadata accessor for ResolvableDateInterval();
  v30[2] = *(v13 + 24);
  v14 = *(v13 + 28);
  v15 = type metadata accessor for TimeZone();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v6, v1 + v14, v15);
  (*(v16 + 56))(v6, 0, 1, v15);
  v17.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v18.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v19.super.isa = Calendar._bridgeToObjectiveC()().super.isa;
  v20.super.isa = Locale._bridgeToObjectiveC()().super.isa;
  isa = 0;
  if ((*(v16 + 48))(v6, 1, v15) != 1)
  {
    isa = TimeZone._bridgeToObjectiveC()().super.isa;
    (*(v16 + 8))(v6, v15);
  }

  v22 = [objc_allocWithZone(TimeIntervalProvider) initWithStartDate:v17.super.isa endDate:v18.super.isa calendar:v19.super.isa locale:v20.super.isa timeZone:isa];

  v23 = v32;
  v24 = *(v31 + 8);
  v24(v9, v32);
  v24(v12, v23);
  v25 = [v22 formattedString];

  if (v25)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    AttributeContainer.init()();
    v26 = v33;
    AttributedString.init(_:attributes:)();

    v27 = 0;
  }

  else
  {
    v27 = 1;
    v26 = v33;
  }

  v28 = type metadata accessor for AttributedString();
  return (*(*(v28 - 8) + 56))(v26, v27, 1, v28);
}

uint64_t ResolvableDateInterval.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<ResolvableDateInterval.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ResolvableDateInterval.CodingKeys>, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ResolvableDateInterval.CodingKeys and conformance ResolvableDateInterval.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = 0;
  type metadata accessor for DateInterval();
  lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x1E6968130]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for ResolvableDateInterval();
    v9[14] = 1;
    type metadata accessor for Calendar();
    lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type Calendar and conformance Calendar, MEMORY[0x1E6969AE8]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v9[13] = 2;
    type metadata accessor for Locale();
    lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v9[12] = 3;
    type metadata accessor for TimeZone();
    lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type TimeZone and conformance TimeZone, MEMORY[0x1E6969BC0]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ResolvableDateInterval.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = type metadata accessor for TimeZone();
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Locale();
  v32 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v31 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Calendar();
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DateInterval();
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<ResolvableDateInterval.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ResolvableDateInterval.CodingKeys>, MEMORY[0x1E69E6F48]);
  v40 = v9;
  v36 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = type metadata accessor for ResolvableDateInterval();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ResolvableDateInterval.CodingKeys and conformance ResolvableDateInterval.CodingKeys();
  v39 = v11;
  v15 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v6;
  v41 = v12;
  v17 = v14;
  v19 = v34;
  v18 = v35;
  v20 = v37;
  v45 = 0;
  lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x1E6968130]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = *(v19 + 32);
  v22 = v38;
  v38 = v7;
  v21(v17, v22, v7);
  v44 = 1;
  lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type Calendar and conformance Calendar, MEMORY[0x1E6969AE8]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v33 + 32))(&v17[v41[5]], v16, v18);
  v43 = 2;
  lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
  v26 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v17;
  (*(v32 + 32))(&v17[v41[6]], v31, v20);
  v42 = 3;
  lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type TimeZone and conformance TimeZone, MEMORY[0x1E6969BC0]);
  v24 = v29;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v36 + 8))(v39, v40);
  (*(v27 + 32))(v23 + v41[7], v30, v24);
  outlined init with copy of ResolvableDateInterval(v23, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of ResolvableDateInterval(v23);
}

id protocol witness for static ResolvableStringAttributeFamily.attribute.getter in conformance ResolvableDateInterval()
{
  if (one-time initialization token for attribute != -1)
  {
    swift_once();
  }

  v1 = static ResolvableDateInterval.attribute;

  return v1;
}

uint64_t static ResolvableDateInterval.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (static DateInterval.== infix(_:_:)())
  {
    v4 = type metadata accessor for ResolvableDateInterval();
    if (MEMORY[0x193ABDC80](a1 + *(v4 + 20), a2 + *(v4 + 20)) & 1) != 0 && (MEMORY[0x193ABDB20](a1 + *(v4 + 24), a2 + *(v4 + 24)))
    {

      JUMPOUT(0x193ABDE90);
    }
  }

  return 0;
}

uint64_t ResolvableDateInterval.hash(into:)()
{
  type metadata accessor for DateInterval();
  lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x1E6968130]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for ResolvableDateInterval();
  type metadata accessor for Calendar();
  lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type Calendar and conformance Calendar, MEMORY[0x1E6969AE8]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Locale();
  lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type TimeZone and conformance TimeZone, MEMORY[0x1E6969BC0]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int ResolvableDateInterval.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for DateInterval();
  lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x1E6968130]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for ResolvableDateInterval();
  type metadata accessor for Calendar();
  lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type Calendar and conformance Calendar, MEMORY[0x1E6969AE8]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Locale();
  lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type TimeZone and conformance TimeZone, MEMORY[0x1E6969BC0]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ResolvableDateInterval()
{
  Hasher.init(_seed:)();
  type metadata accessor for DateInterval();
  lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x1E6968130]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Calendar();
  lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type Calendar and conformance Calendar, MEMORY[0x1E6969AE8]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Locale();
  lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type TimeZone and conformance TimeZone, MEMORY[0x1E6969BC0]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ResolvableDateInterval()
{
  type metadata accessor for DateInterval();
  lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x1E6968130]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Calendar();
  lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type Calendar and conformance Calendar, MEMORY[0x1E6969AE8]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Locale();
  lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type TimeZone and conformance TimeZone, MEMORY[0x1E6969BC0]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ResolvableDateInterval()
{
  Hasher.init(_seed:)();
  type metadata accessor for DateInterval();
  lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x1E6968130]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Calendar();
  lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type Calendar and conformance Calendar, MEMORY[0x1E6969AE8]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Locale();
  lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type TimeZone and conformance TimeZone, MEMORY[0x1E6969BC0]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ResolvableDateInterval(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static DateInterval.== infix(_:_:)() & 1) != 0 && (MEMORY[0x193ABDC80](a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) != 0 && (MEMORY[0x193ABDB20](a1 + *(a3 + 24), a2 + *(a3 + 24)))
  {

    JUMPOUT(0x193ABDE90);
  }

  return 0;
}

uint64_t type metadata accessor for ResolvableDateInterval()
{
  result = type metadata singleton initialization cache for ResolvableDateInterval;
  if (!type metadata singleton initialization cache for ResolvableDateInterval)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvableDateInterval.CodingKeys and conformance ResolvableDateInterval.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ResolvableDateInterval.CodingKeys and conformance ResolvableDateInterval.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableDateInterval.CodingKeys and conformance ResolvableDateInterval.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableDateInterval.CodingKeys and conformance ResolvableDateInterval.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableDateInterval.CodingKeys and conformance ResolvableDateInterval.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableDateInterval.CodingKeys and conformance ResolvableDateInterval.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableDateInterval.CodingKeys and conformance ResolvableDateInterval.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableDateInterval.CodingKeys and conformance ResolvableDateInterval.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableDateInterval.CodingKeys and conformance ResolvableDateInterval.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableDateInterval.CodingKeys and conformance ResolvableDateInterval.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableDateInterval.CodingKeys and conformance ResolvableDateInterval.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableDateInterval.CodingKeys and conformance ResolvableDateInterval.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableDateInterval.CodingKeys and conformance ResolvableDateInterval.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DateInterval and conformance DateInterval(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for KeyedEncodingContainer<ResolvableDateInterval.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type ResolvableDateInterval.CodingKeys and conformance ResolvableDateInterval.CodingKeys();
    v7 = a3(a1, &unk_1F00A6900, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t outlined init with copy of ResolvableDateInterval(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvableDateInterval();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ResolvableDateInterval(uint64_t a1)
{
  v2 = type metadata accessor for ResolvableDateInterval();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type AnySequence<Date> and conformance AnySequence<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    _s10Foundation8TimeZoneVSgMaTm_0(255, a2, MEMORY[0x1E6969530], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for ResolvableDateInterval(uint64_t a1)
{
  result = lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type ResolvableDateInterval and conformance ResolvableDateInterval, type metadata accessor for ResolvableDateInterval);
  *(a1 + 8) = result;
  return result;
}

char *initializeBufferWithCopyOfBuffer for ResolvableDateInterval(char *a1, char *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for DateInterval();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[5];
    v9 = type metadata accessor for Calendar();
    (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
    v10 = a3[6];
    v11 = type metadata accessor for Locale();
    (*(*(v11 - 8) + 16))(&a1[v10], &a2[v10], v11);
    v12 = a3[7];
    v13 = type metadata accessor for TimeZone();
    (*(*(v13 - 8) + 16))(&a1[v12], &a2[v12], v13);
  }

  return a1;
}

uint64_t destroy for ResolvableDateInterval(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for DateInterval();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = a2[5];
  v6 = type metadata accessor for Calendar();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = a2[6];
  v8 = type metadata accessor for Locale();
  (*(*(v8 - 8) + 8))(a1 + v7, v8);
  v9 = a2[7];
  v10 = type metadata accessor for TimeZone();
  v11 = *(*(v10 - 8) + 8);

  return v11(a1 + v9, v10);
}

uint64_t initializeWithCopy for ResolvableDateInterval(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for DateInterval();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[5];
  v8 = type metadata accessor for Calendar();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  v9 = a3[6];
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 16))(a1 + v9, a2 + v9, v10);
  v11 = a3[7];
  v12 = type metadata accessor for TimeZone();
  (*(*(v12 - 8) + 16))(a1 + v11, a2 + v11, v12);
  return a1;
}

uint64_t assignWithCopy for ResolvableDateInterval(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for DateInterval();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = a3[5];
  v8 = type metadata accessor for Calendar();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  v9 = a3[6];
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 24))(a1 + v9, a2 + v9, v10);
  v11 = a3[7];
  v12 = type metadata accessor for TimeZone();
  (*(*(v12 - 8) + 24))(a1 + v11, a2 + v11, v12);
  return a1;
}

uint64_t initializeWithTake for ResolvableDateInterval(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for DateInterval();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[5];
  v8 = type metadata accessor for Calendar();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  v9 = a3[6];
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 32))(a1 + v9, a2 + v9, v10);
  v11 = a3[7];
  v12 = type metadata accessor for TimeZone();
  (*(*(v12 - 8) + 32))(a1 + v11, a2 + v11, v12);
  return a1;
}

uint64_t assignWithTake for ResolvableDateInterval(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for DateInterval();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[5];
  v8 = type metadata accessor for Calendar();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  v9 = a3[6];
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 40))(a1 + v9, a2 + v9, v10);
  v11 = a3[7];
  v12 = type metadata accessor for TimeZone();
  (*(*(v12 - 8) + 40))(a1 + v11, a2 + v11, v12);
  return a1;
}

uint64_t type metadata completion function for ResolvableDateInterval()
{
  result = type metadata accessor for DateInterval();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Calendar();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Locale();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TimeZone();
        if (v4 <= 0x3F)
        {
          swift_initStructMetadata();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t specialized ResolvableDateInterval.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t ResolvableCurrentDate.init(dateFormat:timeZone:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  _s10Foundation8TimeZoneVSgMaTm_1(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - v9;
  v31 = type metadata accessor for TimeZone();
  v11 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v32 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v12) = *(a1 + 16);
  v14 = *a3;
  v13 = *(a3 + 8);
  *a4 = *a1;
  *(a4 + 16) = v12;
  v15 = type metadata accessor for ResolvableCurrentDate();
  v16 = v15[5];
  if (v13)
  {
    v30 = 0;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v14, a4 + v16);

    v17 = v15[6];

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v14, a4 + v17);
  }

  else
  {
    v29 = a2;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v14, a4 + v16);
    v18 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v14);
    v30 = 0;
    if (v18)
    {
      v19 = *(*v18 + 248);
      v20 = v15[6];
      v21 = v18;
      v22 = type metadata accessor for Locale();
      (*(*(v22 - 8) + 16))(a4 + v20, &v21[v19], v22);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Locale();
      v24 = __swift_project_value_buffer(v23, static LocaleKey.defaultValue);
      (*(*(v23 - 8) + 16))(a4 + v15[6], v24, v23);
    }

    a2 = v29;
  }

  v25 = v31;
  outlined init with copy of TimeZone?(a2, v10);
  v26 = *(v11 + 48);
  if (v26(v10, 1, v25) == 1)
  {
    if (v13)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v14, v32);

      outlined destroy of TimeZone?(a2);
    }

    else
    {
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v14, v32);
      v25 = v31;
      outlined destroy of TimeZone?(a2);
    }

    if (v26(v10, 1, v25) != 1)
    {
      outlined destroy of TimeZone?(v10);
    }
  }

  else
  {
    outlined destroy of TimeZone?(a2);

    (*(v11 + 32))(v32, v10, v25);
  }

  return (*(v11 + 32))(a4 + v15[7], v32, v25);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ResolvableCurrentDate.DateFormat.CodingKeys()
{
  if (*v0)
  {
    return 0x6574616C706D6574;
  }

  else
  {
    return 0x74616D726F66;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ResolvableCurrentDate.DateFormat.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74616D726F66 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResolvableCurrentDate.DateFormat.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResolvableCurrentDate.DateFormat.CodingKeys and conformance ResolvableCurrentDate.DateFormat.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResolvableCurrentDate.DateFormat.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResolvableCurrentDate.DateFormat.CodingKeys and conformance ResolvableCurrentDate.DateFormat.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResolvableCurrentDate.DateFormat.FormatCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResolvableCurrentDate.DateFormat.FormatCodingKeys and conformance ResolvableCurrentDate.DateFormat.FormatCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResolvableCurrentDate.DateFormat.FormatCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResolvableCurrentDate.DateFormat.FormatCodingKeys and conformance ResolvableCurrentDate.DateFormat.FormatCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResolvableCurrentDate.DateFormat.TemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResolvableCurrentDate.DateFormat.TemplateCodingKeys and conformance ResolvableCurrentDate.DateFormat.TemplateCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResolvableCurrentDate.DateFormat.TemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResolvableCurrentDate.DateFormat.TemplateCodingKeys and conformance ResolvableCurrentDate.DateFormat.TemplateCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ResolvableCurrentDate.DateFormat.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<ResolvableCurrentDate.DateFormat.TemplateCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ResolvableCurrentDate.DateFormat.TemplateCodingKeys>, lazy protocol witness table accessor for type ResolvableCurrentDate.DateFormat.TemplateCodingKeys and conformance ResolvableCurrentDate.DateFormat.TemplateCodingKeys, &unk_1F00A6C48, MEMORY[0x1E69E6F58]);
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v22 = &v19 - v5;
  type metadata accessor for KeyedEncodingContainer<ResolvableCurrentDate.DateFormat.TemplateCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ResolvableCurrentDate.DateFormat.FormatCodingKeys>, lazy protocol witness table accessor for type ResolvableCurrentDate.DateFormat.FormatCodingKeys and conformance ResolvableCurrentDate.DateFormat.FormatCodingKeys, &unk_1F00A6BB8, v3);
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  type metadata accessor for KeyedEncodingContainer<ResolvableCurrentDate.DateFormat.TemplateCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ResolvableCurrentDate.DateFormat.CodingKeys>, lazy protocol witness table accessor for type ResolvableCurrentDate.DateFormat.CodingKeys and conformance ResolvableCurrentDate.DateFormat.CodingKeys, &unk_1F00A6B28, v3);
  v10 = v9;
  v27 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = *v1;
  v25 = v1[1];
  v26 = v13;
  v14 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ResolvableCurrentDate.DateFormat.CodingKeys and conformance ResolvableCurrentDate.DateFormat.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v14)
  {
    v29 = 1;
    lazy protocol witness table accessor for type ResolvableCurrentDate.DateFormat.TemplateCodingKeys and conformance ResolvableCurrentDate.DateFormat.TemplateCodingKeys();
    v15 = v22;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v16 = v24;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v23 + 8))(v15, v16);
  }

  else
  {
    v28 = 0;
    lazy protocol witness table accessor for type ResolvableCurrentDate.DateFormat.FormatCodingKeys and conformance ResolvableCurrentDate.DateFormat.FormatCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v17 = v21;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v20 + 8))(v8, v17);
  }

  return (*(v27 + 8))(v12, v10);
}

uint64_t ResolvableCurrentDate.DateFormat.hash(into:)()
{
  MEMORY[0x193AC11A0](*(v0 + 16));

  return String.hash(into:)();
}

Swift::Int ResolvableCurrentDate.DateFormat.hashValue.getter()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t ResolvableCurrentDate.DateFormat.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<ResolvableCurrentDate.DateFormat.TemplateCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ResolvableCurrentDate.DateFormat.TemplateCodingKeys>, lazy protocol witness table accessor for type ResolvableCurrentDate.DateFormat.TemplateCodingKeys and conformance ResolvableCurrentDate.DateFormat.TemplateCodingKeys, &unk_1F00A6C48, MEMORY[0x1E69E6F48]);
  v42 = v4;
  v38 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v37 - v5;
  type metadata accessor for KeyedEncodingContainer<ResolvableCurrentDate.DateFormat.TemplateCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ResolvableCurrentDate.DateFormat.FormatCodingKeys>, lazy protocol witness table accessor for type ResolvableCurrentDate.DateFormat.FormatCodingKeys and conformance ResolvableCurrentDate.DateFormat.FormatCodingKeys, &unk_1F00A6BB8, v3);
  v7 = v6;
  v37 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - v8;
  type metadata accessor for KeyedEncodingContainer<ResolvableCurrentDate.DateFormat.TemplateCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ResolvableCurrentDate.DateFormat.CodingKeys>, lazy protocol witness table accessor for type ResolvableCurrentDate.DateFormat.CodingKeys and conformance ResolvableCurrentDate.DateFormat.CodingKeys, &unk_1F00A6B28, v3);
  v11 = v10;
  v40 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - v12;
  v14 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type ResolvableCurrentDate.DateFormat.CodingKeys and conformance ResolvableCurrentDate.DateFormat.CodingKeys();
  v15 = v43;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v43 = v7;
    v16 = v41;
    v17 = v42;
    v18 = v40;
    v19 = KeyedDecodingContainer.allKeys.getter();
    v20 = (2 * *(v19 + 16)) | 1;
    v45 = v19;
    v46 = v19 + 32;
    v47 = 0;
    v48 = v20;
    v21 = specialized Collection<>.popFirst()();
    v22 = v11;
    if (v21 == 2 || v47 != v48 >> 1)
    {
      v26 = type metadata accessor for DecodingError();
      swift_allocError();
      v28 = v27;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v28 = &type metadata for ResolvableCurrentDate.DateFormat;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
      (*(v18 + 8))(v13, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = v18;
      v49 = v21;
      if (v21)
      {
        v50 = 1;
        lazy protocol witness table accessor for type ResolvableCurrentDate.DateFormat.TemplateCodingKeys and conformance ResolvableCurrentDate.DateFormat.TemplateCodingKeys();
        v24 = v16;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v25 = v39;
        v32 = KeyedDecodingContainer.decode(_:forKey:)();
        v34 = v33;
        (*(v38 + 8))(v24, v17);
      }

      else
      {
        v50 = 0;
        lazy protocol witness table accessor for type ResolvableCurrentDate.DateFormat.FormatCodingKeys and conformance ResolvableCurrentDate.DateFormat.FormatCodingKeys();
        v29 = v9;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v25 = v39;
        v30 = v43;
        v35 = KeyedDecodingContainer.decode(_:forKey:)();
        v34 = v36;
        (*(v37 + 8))(v29, v30);
        v32 = v35;
      }

      (*(v23 + 8))(v13, v22);
      swift_unknownObjectRelease();
      *v25 = v32;
      *(v25 + 8) = v34;
      *(v25 + 16) = v49 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ResolvableCurrentDate.DateFormat()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ResolvableCurrentDate.DateFormat()
{
  MEMORY[0x193AC11A0](*(v0 + 16));

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ResolvableCurrentDate.DateFormat()
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](*(v0 + 16));
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t ResolvableCurrentDate.dateFormat.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return outlined copy of CollectionDifference<ScrollEdgeEffectTag.ID>.Change();
}

uint64_t ResolvableCurrentDate.calendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResolvableCurrentDate() + 20);
  v4 = type metadata accessor for Calendar();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ResolvableCurrentDate.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResolvableCurrentDate() + 24);
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ResolvableCurrentDate.timeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResolvableCurrentDate() + 28);
  v4 = type metadata accessor for TimeZone();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ResolvableCurrentDate.CodingKeys()
{
  v1 = 0x6D726F4665746164;
  v2 = 0x656C61636F6CLL;
  if (*v0 != 2)
  {
    v2 = 0x656E6F5A656D6974;
  }

  if (*v0)
  {
    v1 = 0x7261646E656C6163;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ResolvableCurrentDate.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ResolvableCurrentDate.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResolvableCurrentDate.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResolvableCurrentDate.CodingKeys and conformance ResolvableCurrentDate.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResolvableCurrentDate.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResolvableCurrentDate.CodingKeys and conformance ResolvableCurrentDate.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id static ResolvableCurrentDate.attribute.getter()
{
  if (one-time initialization token for attribute != -1)
  {
    swift_once();
  }

  v1 = static ResolvableCurrentDate.attribute;

  return v1;
}

id ResolvableCurrentDate.provider.getter()
{
  v1 = v0;
  _s10Foundation8TimeZoneVSgMaTm_1(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  v8 = *v0;
  v9 = v0[1];
  v28 = v8;
  v10 = *(v1 + 16);
  v11 = type metadata accessor for ResolvableCurrentDate();
  v12 = v11[6];
  v29 = v11[5];
  v30 = v12;
  v13 = v11[7];
  v14 = type metadata accessor for TimeZone();
  v15 = *(v14 - 8);
  v16 = *(v15 + 16);
  v17 = (v15 + 56);
  v18 = (v15 + 48);
  v19 = v1 + v13;
  if (v10)
  {
    v16(v4, v19, v14);
    (*v17)(v4, 0, 1, v14);
    v20 = MEMORY[0x193ABEC20](v28, v9);
    v21.super.isa = Calendar._bridgeToObjectiveC()().super.isa;
    v22.super.isa = Locale._bridgeToObjectiveC()().super.isa;
    if ((*v18)(v4, 1, v14) == 1)
    {
      isa = 0;
    }

    else
    {
      isa = TimeZone._bridgeToObjectiveC()().super.isa;
      (*(v15 + 8))(v4, v14);
    }

    v24 = [objc_allocWithZone(DateProvider) initWithDateFormatTemplate:v20 calendar:v21.super.isa locale:v22.super.isa timeZone:isa];
  }

  else
  {
    v16(v7, v19, v14);
    (*v17)(v7, 0, 1, v14);
    v20 = MEMORY[0x193ABEC20](v28, v9);
    v21.super.isa = Calendar._bridgeToObjectiveC()().super.isa;
    v22.super.isa = Locale._bridgeToObjectiveC()().super.isa;
    if ((*v18)(v7, 1, v14) == 1)
    {
      isa = 0;
    }

    else
    {
      isa = TimeZone._bridgeToObjectiveC()().super.isa;
      (*(v15 + 8))(v7, v14);
    }

    v24 = [objc_allocWithZone(DateProvider) initWithDateFormat:v20 calendar:v21.super.isa locale:v22.super.isa timeZone:isa];
  }

  v25 = v24;

  return v25;
}

uint64_t ResolvableCurrentDate.resolve(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = type metadata accessor for ResolvableStringResolutionContext(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = ResolvableCurrentDate.provider.getter();
  if (v8)
  {
    v9 = v8;
    type metadata accessor for DateFormattingContext();
    _s7SwiftUI21ResolvableCurrentDateVWOcTm_0(a1, v7, type metadata accessor for ResolvableStringResolutionContext);
    v10 = DateFormattingContext.init(_:)(v7);
    v11 = [v9 formattedStringInContext_];

    if (v11)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();

      v12 = type metadata accessor for AttributedString();
      return (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
    }

    else
    {
      v16 = type metadata accessor for AttributedString();
      return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
    }
  }

  else
  {
    v14 = type metadata accessor for AttributedString();
    v15 = *(*(v14 - 8) + 56);

    return v15(a2, 1, 1, v14);
  }
}

uint64_t ResolvableCurrentDate.encode(to:)(void *a1)
{
  v3 = v1;
  type metadata accessor for KeyedEncodingContainer<ResolvableCurrentDate.DateFormat.TemplateCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ResolvableCurrentDate.CodingKeys>, lazy protocol witness table accessor for type ResolvableCurrentDate.CodingKeys and conformance ResolvableCurrentDate.CodingKeys, &unk_1F00A6A98, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ResolvableCurrentDate.CodingKeys and conformance ResolvableCurrentDate.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v3[1];
  v11 = *(v3 + 16);
  v14 = *v3;
  v15 = v10;
  v16 = v11;
  v17 = 0;
  outlined copy of CollectionDifference<ScrollEdgeEffectTag.ID>.Change();
  lazy protocol witness table accessor for type ResolvableCurrentDate.DateFormat and conformance ResolvableCurrentDate.DateFormat();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    outlined consume of ResolvableCurrentDate.DateFormat();
  }

  else
  {
    outlined consume of ResolvableCurrentDate.DateFormat();
    type metadata accessor for ResolvableCurrentDate();
    LOBYTE(v14) = 1;
    type metadata accessor for Calendar();
    lazy protocol witness table accessor for type Calendar and conformance Calendar(&lazy protocol witness table cache variable for type Calendar and conformance Calendar, MEMORY[0x1E6969AE8]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 2;
    type metadata accessor for Locale();
    lazy protocol witness table accessor for type Calendar and conformance Calendar(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 3;
    type metadata accessor for TimeZone();
    lazy protocol witness table accessor for type Calendar and conformance Calendar(&lazy protocol witness table cache variable for type TimeZone and conformance TimeZone, MEMORY[0x1E6969BC0]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t ResolvableCurrentDate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v30 = type metadata accessor for TimeZone();
  v27 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Calendar();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<ResolvableCurrentDate.DateFormat.TemplateCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ResolvableCurrentDate.CodingKeys>, lazy protocol witness table accessor for type ResolvableCurrentDate.CodingKeys and conformance ResolvableCurrentDate.CodingKeys, &unk_1F00A6A98, MEMORY[0x1E69E6F48]);
  v38 = v8;
  v35 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ResolvableCurrentDate();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ResolvableCurrentDate.CodingKeys and conformance ResolvableCurrentDate.CodingKeys();
  v37 = v10;
  v14 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v35;
  v15 = v36;
  v42 = 0;
  lazy protocol witness table accessor for type ResolvableCurrentDate.DateFormat and conformance ResolvableCurrentDate.DateFormat();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v41;
  *v13 = v40;
  v13[16] = v17;
  LOBYTE(v40) = 1;
  lazy protocol witness table accessor for type Calendar and conformance Calendar(&lazy protocol witness table cache variable for type Calendar and conformance Calendar, MEMORY[0x1E6969AE8]);
  v18 = v7;
  v19 = v15;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v11;
  (*(v34 + 32))(&v13[*(v11 + 20)], v18, v19);
  LOBYTE(v40) = 2;
  lazy protocol witness table accessor for type Calendar and conformance Calendar(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
  v21 = v31;
  v22 = v33;
  v39 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = v20;
  (*(v32 + 32))(&v13[*(v20 + 24)], v21, v22);
  LOBYTE(v40) = 3;
  lazy protocol witness table accessor for type Calendar and conformance Calendar(&lazy protocol witness table cache variable for type TimeZone and conformance TimeZone, MEMORY[0x1E6969BC0]);
  v24 = v29;
  v23 = v30;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 8))(v37, v38);
  (*(v27 + 32))(&v13[*(v26 + 28)], v24, v23);
  _s7SwiftUI21ResolvableCurrentDateVWOcTm_0(v13, v28, type metadata accessor for ResolvableCurrentDate);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of ResolvableCurrentDate(v13);
}

id protocol witness for static ResolvableStringAttributeFamily.attribute.getter in conformance ResolvableCurrentDate()
{
  if (one-time initialization token for attribute != -1)
  {
    swift_once();
  }

  v1 = static ResolvableCurrentDate.attribute;

  return v1;
}

uint64_t ResolvableCurrentDate.hash(into:)()
{
  MEMORY[0x193AC11A0](*(v0 + 16));
  String.hash(into:)();
  type metadata accessor for ResolvableCurrentDate();
  type metadata accessor for Calendar();
  lazy protocol witness table accessor for type Calendar and conformance Calendar(&lazy protocol witness table cache variable for type Calendar and conformance Calendar, MEMORY[0x1E6969AE8]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Locale();
  lazy protocol witness table accessor for type Calendar and conformance Calendar(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  lazy protocol witness table accessor for type Calendar and conformance Calendar(&lazy protocol witness table cache variable for type TimeZone and conformance TimeZone, MEMORY[0x1E6969BC0]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int ResolvableCurrentDate.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](*(v0 + 16));
  String.hash(into:)();
  type metadata accessor for ResolvableCurrentDate();
  type metadata accessor for Calendar();
  lazy protocol witness table accessor for type Calendar and conformance Calendar(&lazy protocol witness table cache variable for type Calendar and conformance Calendar, MEMORY[0x1E6969AE8]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Locale();
  lazy protocol witness table accessor for type Calendar and conformance Calendar(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  lazy protocol witness table accessor for type Calendar and conformance Calendar(&lazy protocol witness table cache variable for type TimeZone and conformance TimeZone, MEMORY[0x1E6969BC0]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ResolvableCurrentDate()
{
  MEMORY[0x193AC11A0](*(v0 + 16));
  String.hash(into:)();
  type metadata accessor for Calendar();
  lazy protocol witness table accessor for type Calendar and conformance Calendar(&lazy protocol witness table cache variable for type Calendar and conformance Calendar, MEMORY[0x1E6969AE8]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Locale();
  lazy protocol witness table accessor for type Calendar and conformance Calendar(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  lazy protocol witness table accessor for type Calendar and conformance Calendar(&lazy protocol witness table cache variable for type TimeZone and conformance TimeZone, MEMORY[0x1E6969BC0]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ResolvableCurrentDate()
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](*(v0 + 16));
  String.hash(into:)();
  type metadata accessor for Calendar();
  lazy protocol witness table accessor for type Calendar and conformance Calendar(&lazy protocol witness table cache variable for type Calendar and conformance Calendar, MEMORY[0x1E6969AE8]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Locale();
  lazy protocol witness table accessor for type Calendar and conformance Calendar(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  lazy protocol witness table accessor for type Calendar and conformance Calendar(&lazy protocol witness table cache variable for type TimeZone and conformance TimeZone, MEMORY[0x1E6969BC0]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t type metadata accessor for ResolvableCurrentDate()
{
  result = type metadata singleton initialization cache for ResolvableCurrentDate;
  if (!type metadata singleton initialization cache for ResolvableCurrentDate)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of TimeZone?(uint64_t a1, uint64_t a2)
{
  _s10Foundation8TimeZoneVSgMaTm_1(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TimeZone?(uint64_t a1)
{
  _s10Foundation8TimeZoneVSgMaTm_1(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized static ResolvableCurrentDate.DateFormat.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      if (v3 != v5 || v2 != v4)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

LABEL_9:
    outlined copy of CollectionDifference<ScrollEdgeEffectTag.ID>.Change();
    outlined copy of CollectionDifference<ScrollEdgeEffectTag.ID>.Change();
    outlined consume of ResolvableCurrentDate.DateFormat();
    outlined consume of ResolvableCurrentDate.DateFormat();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 != v5 || v2 != v4)
  {
LABEL_14:
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of CollectionDifference<ScrollEdgeEffectTag.ID>.Change();
    outlined copy of CollectionDifference<ScrollEdgeEffectTag.ID>.Change();
    outlined consume of ResolvableCurrentDate.DateFormat();
    outlined consume of ResolvableCurrentDate.DateFormat();
    return v9 & 1;
  }

LABEL_15:
  outlined copy of CollectionDifference<ScrollEdgeEffectTag.ID>.Change();
  outlined copy of CollectionDifference<ScrollEdgeEffectTag.ID>.Change();
  outlined consume of ResolvableCurrentDate.DateFormat();
  outlined consume of ResolvableCurrentDate.DateFormat();
  return 1;
}

unint64_t lazy protocol witness table accessor for type ResolvableCurrentDate.DateFormat.TemplateCodingKeys and conformance ResolvableCurrentDate.DateFormat.TemplateCodingKeys()
{
  result = lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.TemplateCodingKeys and conformance ResolvableCurrentDate.DateFormat.TemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.TemplateCodingKeys and conformance ResolvableCurrentDate.DateFormat.TemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.TemplateCodingKeys and conformance ResolvableCurrentDate.DateFormat.TemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.TemplateCodingKeys and conformance ResolvableCurrentDate.DateFormat.TemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.TemplateCodingKeys and conformance ResolvableCurrentDate.DateFormat.TemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.TemplateCodingKeys and conformance ResolvableCurrentDate.DateFormat.TemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.TemplateCodingKeys and conformance ResolvableCurrentDate.DateFormat.TemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.TemplateCodingKeys and conformance ResolvableCurrentDate.DateFormat.TemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.TemplateCodingKeys and conformance ResolvableCurrentDate.DateFormat.TemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.TemplateCodingKeys and conformance ResolvableCurrentDate.DateFormat.TemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.TemplateCodingKeys and conformance ResolvableCurrentDate.DateFormat.TemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.TemplateCodingKeys and conformance ResolvableCurrentDate.DateFormat.TemplateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvableCurrentDate.DateFormat.FormatCodingKeys and conformance ResolvableCurrentDate.DateFormat.FormatCodingKeys()
{
  result = lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.FormatCodingKeys and conformance ResolvableCurrentDate.DateFormat.FormatCodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.FormatCodingKeys and conformance ResolvableCurrentDate.DateFormat.FormatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.FormatCodingKeys and conformance ResolvableCurrentDate.DateFormat.FormatCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.FormatCodingKeys and conformance ResolvableCurrentDate.DateFormat.FormatCodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.FormatCodingKeys and conformance ResolvableCurrentDate.DateFormat.FormatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.FormatCodingKeys and conformance ResolvableCurrentDate.DateFormat.FormatCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.FormatCodingKeys and conformance ResolvableCurrentDate.DateFormat.FormatCodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.FormatCodingKeys and conformance ResolvableCurrentDate.DateFormat.FormatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.FormatCodingKeys and conformance ResolvableCurrentDate.DateFormat.FormatCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.FormatCodingKeys and conformance ResolvableCurrentDate.DateFormat.FormatCodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.FormatCodingKeys and conformance ResolvableCurrentDate.DateFormat.FormatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.FormatCodingKeys and conformance ResolvableCurrentDate.DateFormat.FormatCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvableCurrentDate.DateFormat.CodingKeys and conformance ResolvableCurrentDate.DateFormat.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.CodingKeys and conformance ResolvableCurrentDate.DateFormat.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.CodingKeys and conformance ResolvableCurrentDate.DateFormat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.CodingKeys and conformance ResolvableCurrentDate.DateFormat.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.CodingKeys and conformance ResolvableCurrentDate.DateFormat.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.CodingKeys and conformance ResolvableCurrentDate.DateFormat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.CodingKeys and conformance ResolvableCurrentDate.DateFormat.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.CodingKeys and conformance ResolvableCurrentDate.DateFormat.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.CodingKeys and conformance ResolvableCurrentDate.DateFormat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.CodingKeys and conformance ResolvableCurrentDate.DateFormat.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.CodingKeys and conformance ResolvableCurrentDate.DateFormat.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.CodingKeys and conformance ResolvableCurrentDate.DateFormat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat.CodingKeys and conformance ResolvableCurrentDate.DateFormat.CodingKeys);
  }

  return result;
}

unint64_t type metadata accessor for DateFormattingContext()
{
  result = lazy cache variable for type metadata for DateFormattingContext;
  if (!lazy cache variable for type metadata for DateFormattingContext)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for DateFormattingContext);
  }

  return result;
}

uint64_t _s7SwiftUI21ResolvableCurrentDateVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ResolvableCurrentDate.CodingKeys and conformance ResolvableCurrentDate.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ResolvableCurrentDate.CodingKeys and conformance ResolvableCurrentDate.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableCurrentDate.CodingKeys and conformance ResolvableCurrentDate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCurrentDate.CodingKeys and conformance ResolvableCurrentDate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableCurrentDate.CodingKeys and conformance ResolvableCurrentDate.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableCurrentDate.CodingKeys and conformance ResolvableCurrentDate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCurrentDate.CodingKeys and conformance ResolvableCurrentDate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableCurrentDate.CodingKeys and conformance ResolvableCurrentDate.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableCurrentDate.CodingKeys and conformance ResolvableCurrentDate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCurrentDate.CodingKeys and conformance ResolvableCurrentDate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableCurrentDate.CodingKeys and conformance ResolvableCurrentDate.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableCurrentDate.CodingKeys and conformance ResolvableCurrentDate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCurrentDate.CodingKeys and conformance ResolvableCurrentDate.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvableCurrentDate.DateFormat and conformance ResolvableCurrentDate.DateFormat()
{
  result = lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat and conformance ResolvableCurrentDate.DateFormat;
  if (!lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat and conformance ResolvableCurrentDate.DateFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat and conformance ResolvableCurrentDate.DateFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat and conformance ResolvableCurrentDate.DateFormat;
  if (!lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat and conformance ResolvableCurrentDate.DateFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat and conformance ResolvableCurrentDate.DateFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat and conformance ResolvableCurrentDate.DateFormat;
  if (!lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat and conformance ResolvableCurrentDate.DateFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCurrentDate.DateFormat and conformance ResolvableCurrentDate.DateFormat);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Calendar and conformance Calendar(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for KeyedEncodingContainer<ResolvableCurrentDate.DateFormat.TemplateCodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t outlined destroy of ResolvableCurrentDate(uint64_t a1)
{
  v2 = type metadata accessor for ResolvableCurrentDate();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized static ResolvableCurrentDate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v4;
  v14 = v5;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v6;
  v12 = v7;
  outlined copy of CollectionDifference<ScrollEdgeEffectTag.ID>.Change();
  outlined copy of CollectionDifference<ScrollEdgeEffectTag.ID>.Change();
  v8 = specialized static ResolvableCurrentDate.DateFormat.== infix(_:_:)(v13, v11);
  outlined consume of ResolvableCurrentDate.DateFormat();
  outlined consume of ResolvableCurrentDate.DateFormat();
  if (v8)
  {
    v9 = type metadata accessor for ResolvableCurrentDate();
    if (MEMORY[0x193ABDC80](a1 + *(v9 + 20), a2 + *(v9 + 20)) & 1) != 0 && (MEMORY[0x193ABDB20](a1 + *(v9 + 24), a2 + *(v9 + 24)))
    {

      JUMPOUT(0x193ABDE90);
    }
  }

  return 0;
}

uint64_t instantiation function for generic protocol witness table for ResolvableCurrentDate(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Calendar and conformance Calendar(&lazy protocol witness table cache variable for type ResolvableCurrentDate and conformance ResolvableCurrentDate, type metadata accessor for ResolvableCurrentDate);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Calendar and conformance Calendar(&lazy protocol witness table cache variable for type ResolvableCurrentDate and conformance ResolvableCurrentDate, type metadata accessor for ResolvableCurrentDate);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ResolvableCurrentDate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return instantiation function for generic protocol witness table for ResolvableCurrentDate(a1, a2, a3, &lazy protocol witness table cache variable for type ResolvableCurrentDate and conformance ResolvableCurrentDate, &protocol conformance descriptor for ResolvableCurrentDate, &lazy protocol witness table cache variable for type ResolvableCurrentDate and conformance ResolvableCurrentDate);
}

{
  return instantiation function for generic protocol witness table for ResolvableCurrentDate(a1, a2, a3, &lazy protocol witness table cache variable for type ResolvableCurrentDate and conformance ResolvableCurrentDate, &protocol conformance descriptor for ResolvableCurrentDate, &lazy protocol witness table cache variable for type ResolvableCurrentDate and conformance ResolvableCurrentDate);
}

uint64_t instantiation function for generic protocol witness table for ResolvableCurrentDate(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  *(a1 + 8) = lazy protocol witness table accessor for type Calendar and conformance Calendar(a4, type metadata accessor for ResolvableCurrentDate);
  result = lazy protocol witness table accessor for type Calendar and conformance Calendar(a6, type metadata accessor for ResolvableCurrentDate);
  *(a1 + 16) = result;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ResolvableCurrentDate(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v16 = *a2;
    *a1 = *a2;
    a1 = v16 + ((v4 + 16) & ~v4);
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = *(a2 + 16);
    outlined copy of CollectionDifference<ScrollEdgeEffectTag.ID>.Change();
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    v10 = a3[5];
    v11 = type metadata accessor for Calendar();
    (*(*(v11 - 8) + 16))(a1 + v10, a2 + v10, v11);
    v12 = a3[6];
    v13 = type metadata accessor for Locale();
    (*(*(v13 - 8) + 16))(a1 + v12, a2 + v12, v13);
    v14 = a3[7];
    v15 = type metadata accessor for TimeZone();
    (*(*(v15 - 8) + 16))(a1 + v14, a2 + v14, v15);
  }

  return a1;
}

uint64_t destroy for ResolvableCurrentDate(uint64_t a1, int *a2)
{
  outlined consume of ResolvableCurrentDate.DateFormat();
  v4 = a2[5];
  v5 = type metadata accessor for Calendar();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = a2[6];
  v7 = type metadata accessor for Locale();
  (*(*(v7 - 8) + 8))(a1 + v6, v7);
  v8 = a2[7];
  v9 = type metadata accessor for TimeZone();
  v10 = *(*(v9 - 8) + 8);

  return v10(a1 + v8, v9);
}

uint64_t initializeWithCopy for ResolvableCurrentDate(uint64_t a1, uint64_t *a2, int *a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 16);
  outlined copy of CollectionDifference<ScrollEdgeEffectTag.ID>.Change();
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  v9 = a3[5];
  v10 = type metadata accessor for Calendar();
  (*(*(v10 - 8) + 16))(a1 + v9, a2 + v9, v10);
  v11 = a3[6];
  v12 = type metadata accessor for Locale();
  (*(*(v12 - 8) + 16))(a1 + v11, a2 + v11, v12);
  v13 = a3[7];
  v14 = type metadata accessor for TimeZone();
  (*(*(v14 - 8) + 16))(a1 + v13, a2 + v13, v14);
  return a1;
}

uint64_t assignWithCopy for ResolvableCurrentDate(uint64_t a1, uint64_t *a2, int *a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 16);
  outlined copy of CollectionDifference<ScrollEdgeEffectTag.ID>.Change();
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  outlined consume of ResolvableCurrentDate.DateFormat();
  v9 = a3[5];
  v10 = type metadata accessor for Calendar();
  (*(*(v10 - 8) + 24))(a1 + v9, a2 + v9, v10);
  v11 = a3[6];
  v12 = type metadata accessor for Locale();
  (*(*(v12 - 8) + 24))(a1 + v11, a2 + v11, v12);
  v13 = a3[7];
  v14 = type metadata accessor for TimeZone();
  (*(*(v14 - 8) + 24))(a1 + v13, a2 + v13, v14);
  return a1;
}

uint64_t initializeWithTake for ResolvableCurrentDate(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v6 = a3[5];
  v7 = type metadata accessor for Calendar();
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  v8 = a3[6];
  v9 = type metadata accessor for Locale();
  (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
  v10 = a3[7];
  v11 = type metadata accessor for TimeZone();
  (*(*(v11 - 8) + 32))(a1 + v10, a2 + v10, v11);
  return a1;
}

uint64_t assignWithTake for ResolvableCurrentDate(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  outlined consume of ResolvableCurrentDate.DateFormat();
  v7 = a3[5];
  v8 = type metadata accessor for Calendar();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  v9 = a3[6];
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 40))(a1 + v9, a2 + v9, v10);
  v11 = a3[7];
  v12 = type metadata accessor for TimeZone();
  (*(*(v12 - 8) + 40))(a1 + v11, a2 + v11, v12);
  return a1;
}

uint64_t type metadata completion function for ResolvableCurrentDate()
{
  result = type metadata accessor for Calendar();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Locale();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TimeZone();
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ResolvableCurrentDate.DateFormat(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  outlined copy of CollectionDifference<ScrollEdgeEffectTag.ID>.Change();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for ResolvableCurrentDate.DateFormat(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  outlined copy of CollectionDifference<ScrollEdgeEffectTag.ID>.Change();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of ResolvableCurrentDate.DateFormat();
  return a1;
}

uint64_t assignWithTake for ResolvableCurrentDate.DateFormat(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  outlined consume of ResolvableCurrentDate.DateFormat();
  return a1;
}

uint64_t specialized ResolvableCurrentDate.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D726F4665746164 && a2 == 0xEA00000000007461;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t StateObject.storage.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = outlined consume of StateObject<A>.Storage<A>(*v3, *(v3 + 8), *(v3 + 16));
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3 & 1;
  return result;
}

uint64_t StateObject.Box.reset()()
{
  v1 = v0;
  v2 = *(v0 + 3);
  if (!v2)
  {
LABEL_8:
    result = swift_unknownObjectRelease();
    v1[2] = 0;
    v1[3] = 0;
    return result;
  }

  v3 = *v0;
  if (*v0)
  {
    v4 = 0;
    v5 = v2 - 1;
    do
    {
      v8 = (v3 + v4);
      if (v5)
      {
        v4 += *(v8 + 2);
      }

      else
      {
        v4 = 0;
      }

      v6 = v5 | v4;
      v7 = *v8;
      v10 = v8;
      (*(v7 + 112))(&v10);
      --v5;
    }

    while (v6);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t assignWithTake for StateObject(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  outlined consume of StateObject<A>.Storage<A>(v4, v5, v6);
  return a1;
}

uint64_t assignWithCopy for StateObject.Box(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

void *assignWithTake for StateObject.Box(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v3 = a2[3];
  a1[2] = a2[2];
  a1[3] = v3;
  swift_unknownObjectRelease();
  return a1;
}

uint64_t LayoutPriorityLayout.sizeThatFits(in:context:child:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a3 + 2);
  v13 = *a3;
  v14 = v7;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  return LayoutProxy.size(in:)(&v9);
}

uint64_t LayoutPriorityLayout.ignoresAutomaticPadding(child:)(uint64_t a1)
{
  if (*(a1 + 4) == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    InputValue = &static LayoutComputer.defaultValue;
  }

  else
  {
    InputValue = AGGraphGetInputValue();
  }

  v2 = *InputValue;
  v3 = one-time initialization token for lockAssertionsAreEnabled;

  if (v3 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_12;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_12:
    v4 = (*(*v2 + 96))();

    return v4 & 1;
  }

  return result;
}

void type metadata accessor for _TraitWritingModifier<LayoutPriorityTraitKey>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<LayoutPriorityTraitKey>)
  {
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<LayoutPriorityTraitKey>);
    }
  }
}

_DWORD *CoreViewRepresentableFeatureBuffer.index(after:)@<X0>(_DWORD *result@<X0>, int *a2@<X8>)
{
  if (*v2)
  {
    v3 = *result + 1;
    if (v3 == *(v2 + 12))
    {
      *a2 = v3;
      a2[1] = 0;
    }

    else
    {
      v4 = *(*v2 + result[1] + 8) + result[1];
      *a2 = v3;
      a2[1] = v4;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

int *CoreViewRepresentableFeatureBuffer.formIndex(after:)(int *result)
{
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 3);
    v4 = result[1];
    v5 = *result + 1;
    *result = v5;
    if (v5 == v3)
    {
      result[1] = 0;
    }

    else
    {
      result[1] = *(v2 + v4 + 8) + v4;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CoreViewRepresentableFeatureBuffer.subscript.getter@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*v2)
  {
    *a2 = *v2 + *(result + 4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CoreViewRepresentableFeatureBuffer.subscript.getter(uint64_t result)
{
  v2 = *(v1 + 3);
  if (!v2)
  {
    return 0;
  }

  v3 = *v1;
  if (*v1)
  {
    v4 = result;
    v5 = 0;
    for (i = v2 - 1; ; --i)
    {
      v8 = (v3 + v5);
      if ((*(*v8 + 80))() == v4)
      {
        break;
      }

      if (i)
      {
        v5 += v8[2];
      }

      else
      {
        v5 = 0;
      }

      if (!(i | v5))
      {
        return 0;
      }
    }

    return _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static CoreViewRepresentableFeatureBuffer._VTable.moveInitialize(elt:from:)(uint64_t a1)
{
  v2 = *(v1 + 152);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v5;
  v11 = *v7;
  v8 = _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  v11 = v6;
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  UnsafeMutablePointer.move()();
  return _sSpsRi_zrlE10initialize2toyxn_tF(v4, v8, v2);
}

void *protocol witness for Collection.subscript.read in conformance CoreViewRepresentableFeatureBuffer(void *result, uint64_t a2)
{
  if (*v2)
  {
    *result = *v2 + *(a2 + 4);
    return _ViewInputs.base.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CoreViewRepresentableFeatureBuffer and conformance CoreViewRepresentableFeatureBuffer()
{
  result = lazy protocol witness table cache variable for type CoreViewRepresentableFeatureBuffer and conformance CoreViewRepresentableFeatureBuffer;
  if (!lazy protocol witness table cache variable for type CoreViewRepresentableFeatureBuffer and conformance CoreViewRepresentableFeatureBuffer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoreViewRepresentableFeatureBuffer and conformance CoreViewRepresentableFeatureBuffer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CoreViewRepresentableFeatureBuffer and conformance CoreViewRepresentableFeatureBuffer;
  if (!lazy protocol witness table cache variable for type CoreViewRepresentableFeatureBuffer and conformance CoreViewRepresentableFeatureBuffer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoreViewRepresentableFeatureBuffer and conformance CoreViewRepresentableFeatureBuffer);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DefaultIndices<CoreViewRepresentableFeatureBuffer> and conformance DefaultIndices<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DefaultIndices<CoreViewRepresentableFeatureBuffer>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for DefaultIndices<CoreViewRepresentableFeatureBuffer>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type CoreViewRepresentableFeatureBuffer and conformance CoreViewRepresentableFeatureBuffer();
    v7 = a3(a1, &type metadata for CoreViewRepresentableFeatureBuffer, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t DSLInputs.graphInputs.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v6[0] = *v1;
  v6[1] = v2;
  v7 = v1[2];
  v3 = v7;
  *a1 = v6[0];
  a1[1] = v2;
  a1[2] = v3;
  return outlined init with copy of _GraphInputs(v6, &v5);
}

__n128 DSLInputs.graphInputs.setter(uint64_t a1)
{
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = v1[2];
  outlined destroy of _GraphInputs(v6);
  v4 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v4;
  result = *(a1 + 32);
  v1[2] = result;
  return result;
}

uint64_t DSLInputs.preferences.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t DSLInputs.preferences.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);

  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

uint64_t DSLInputs.base.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v6[0] = *v1;
  v6[1] = v2;
  v7 = v1[2];
  v3 = v7;
  *a1 = v6[0];
  a1[1] = v2;
  a1[2] = v3;
  return outlined init with copy of _GraphInputs(v6, &v5);
}

void (*DSLInputs.base.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x128uLL);
  }

  *a1 = v3;
  *(v3 + 288) = v1;
  v4 = *v1;
  v5 = v1[2];
  *(v3 + 16) = v1[1];
  *(v3 + 32) = v5;
  *v3 = v4;
  v6 = *v1;
  v7 = v1[2];
  *(v3 + 64) = v1[1];
  *(v3 + 80) = v7;
  *(v3 + 48) = v6;
  outlined init with copy of _GraphInputs(v3, v3 + 96);
  return DSLInputs.base.modify;
}

void DSLInputs.base.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 288);
  if (a2)
  {
    v4 = v2[4];
    v2[12] = v2[3];
    v2[13] = v4;
    v2[14] = v2[5];
    v5 = *v3;
    v6 = v3[2];
    v2[10] = v3[1];
    v2[11] = v6;
    v2[9] = v5;
    outlined init with copy of DSLGraphInputs((v2 + 12), (v2 + 15));
    outlined destroy of _GraphInputs((v2 + 9));
    v7 = v2[12];
    v8 = v2[14];
    v3[1] = v2[13];
    v3[2] = v8;
    *v3 = v7;
    v9 = v2[5];
    v2[7] = v2[4];
    v2[8] = v9;
    v2[6] = v2[3];
    outlined destroy of DSLGraphInputs((v2 + 6));
  }

  else
  {
    v12 = v2[3];
    v13 = v2[4];
    v14 = v2[5];
    v11 = v3[1];
    v10 = v3[2];
    v2[6] = *v3;
    v2[7] = v11;
    v2[8] = v10;
    outlined destroy of _GraphInputs((v2 + 6));
    *v3 = v12;
    v3[1] = v13;
    v3[2] = v14;
  }

  free(v2);
}

uint64_t DSLInputs.environment.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 16);
}

double key path setter for DSLInputs.environment : DSLInputs(int *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = a2[1];
  v10[0] = *a2;
  v10[1] = v4;
  v11 = a2[2];
  v7 = v10[0];
  v8 = v4;
  v9 = v11;
  outlined init with copy of _GraphInputs(v10, v12);
  _GraphInputs.environment.setter(v3);
  v5 = a2[1];
  v12[0] = *a2;
  v12[1] = v5;
  v12[2] = a2[2];
  outlined destroy of _GraphInputs(v12);
  *a2 = v7;
  a2[1] = v8;
  result = *&v9;
  a2[2] = v9;
  return result;
}

__n128 DSLInputs.environment.setter(int a1)
{
  v3 = *(v1 + 32);
  v16 = *(v1 + 16);
  v17 = v3;
  v15 = *v1;
  v13 = v15;
  v4 = v3;
  v11 = *(v1 + 36);
  v12 = *(v1 + 44);
  v5 = *(&v16 + 1);
  v18 = 1;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for MutableBox<CachedEnvironment>();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = v6;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 256;
  *(v8 + 88) = v7;
  outlined init with copy of _GraphInputs(&v15, v14);

  v9 = *(v1 + 16);
  v14[0] = *v1;
  v14[1] = v9;
  v14[2] = *(v1 + 32);
  outlined destroy of _GraphInputs(v14);
  result = v13;
  *v1 = v13;
  *(v1 + 16) = v8;
  *(v1 + 24) = v5;
  *(v1 + 32) = v4 | 0x20;
  *(v1 + 36) = v11;
  *(v1 + 44) = v12;
  return result;
}

void (*DSLInputs.environment.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 120) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 128) = *(v5 + 16);
  return DSLInputs.environment.modify;
}

void DSLInputs.environment.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 120);
  v3 = *(*a1 + 128);
  v5 = v2[1];
  v4 = v2[2];
  *v1 = *v2;
  v1[1] = v5;
  v1[2] = v4;
  v14 = *v2;
  v6 = *(v1 + 8);
  v15 = *(v2 + 36);
  v16 = *(v2 + 11);
  v7 = *(v1 + 3);
  v8 = MEMORY[0x1E69E7CC0];
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for MutableBox<CachedEnvironment>();
  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  *(v10 + 24) = v8;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 256;
  *(v10 + 88) = v9;
  outlined init with copy of _GraphInputs(v1, (v1 + 3));

  v11 = *v2;
  v12 = v2[2];
  v1[4] = v2[1];
  v1[5] = v12;
  v1[3] = v11;
  outlined destroy of _GraphInputs((v1 + 3));
  *v2 = v14;
  *(v2 + 2) = v10;
  *(v2 + 36) = v15;
  *(v2 + 11) = v16;
  v13 = *(v1 + 15);
  *(v13 + 24) = v7;
  *(v13 + 32) = v6 | 0x20;

  free(v1);
}

uint64_t DSLInputs.subscript.setter(uint64_t a1)
{
  specialized DSLInputs.subscript.setter(a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(a1, AssociatedTypeWitness);
}

void (*DSLInputs.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  DSLGraphInputs.subscript.getter();
  return DSLInputs.subscript.modify;
}

void DSLInputs.subscript.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    v7 = specialized DSLInputs.subscript.setter(v3);
    v8 = *(v6 + 8);
    v8(v3, v5, v7);
    (v8)(v4, v5);
  }

  else
  {
    v9 = specialized DSLInputs.subscript.setter(*(*a1 + 56));
    (*(v6 + 8))(v4, v5, v9);
  }

  free(v4);
  free(v3);

  free(v2);
}

double specialized DSLInputs.subscript.setter(uint64_t a1)
{
  v3 = v1[1];
  v9[0] = *v1;
  v9[1] = v3;
  v10 = v1[2];
  v6 = v9[0];
  v7 = v3;
  v8 = v10;
  outlined init with copy of _GraphInputs(v9, v11);
  specialized DSLGraphInputs.subscript.setter(a1);
  v4 = v1[1];
  v11[0] = *v1;
  v11[1] = v4;
  v11[2] = v1[2];
  outlined destroy of _GraphInputs(v11);
  *v1 = v6;
  v1[1] = v7;
  result = *&v8;
  v1[2] = v8;
  return result;
}

uint64_t initializeWithCopy for DSLInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for DSLInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for DSLInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for DSLInputs(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 60))
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

uint64_t storeEnumTagSinglePayload for DSLInputs(uint64_t result, int a2, int a3)
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
      *(result + 60) = 1;
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

    *(result + 60) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 AccessibilityImageConfiguration.init(image:label:isDecorative:isHidden:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL);
  result = *a2;
  *(a5 + 24) = *(a2 + 16);
  *(a5 + 8) = result;
  *(a5 + 40) = a3;
  *(a5 + 41) = a4;
  return result;
}

uint64_t AccessibilityImageConfiguration.attachment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 1;
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(v24);
  v9 = v24[7];
  *(a1 + 224) = v24[6];
  *(a1 + 240) = v9;
  *(a1 + 256) = v24[8];
  *(a1 + 272) = v25;
  v10 = v24[3];
  *(a1 + 160) = v24[2];
  *(a1 + 176) = v10;
  v11 = v24[5];
  *(a1 + 192) = v24[4];
  *(a1 + 208) = v11;
  v12 = v24[1];
  *(a1 + 128) = v24[0];
  *(a1 + 144) = v12;
  *(a1 + 280) = MEMORY[0x1E69E7CC8];
  *(a1 + 288) = 0;

  v23 = _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC06ImagesG0V_Tt0g5();
  MEMORY[0x193ABF170]();
  if (*(v23 + 16) >= *(v23 + 24) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  result = _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluisAC06ImagesG0V_Tt0g5(v23);
  v14 = 0x100000001;
  if ((v8 | v7))
  {
    v14 = 0x500000005;
  }

  *(a1 + 112) = v14;
  *(a1 + 120) = 0;
  if (v4 >> 1 == 0xFFFFFFFF)
  {
    goto LABEL_11;
  }

  type metadata accessor for _ContiguousArrayStorage<Text>();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_18DDA6EB0;
  if ((v4 & 0x8000000000000000) != 0)
  {
    type metadata accessor for AccessibilityImageLabel.SystemSymbolTextStorage();
    v16 = swift_allocObject();
    *(v16 + 16) = v3;
    *(v16 + 24) = v5;
    outlined copy of AccessibilityImageLabel(v3, v5, v4);
    v17 = 0;
    v19 = MEMORY[0x1E69E7CC0];
    v18 = 1;
  }

  else
  {
    outlined copy of Text.Storage(v3, v5, v4 & 1);

    v16 = v3;
    v17 = v5;
    v18 = v4;
    v19 = v6;
  }

  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  *(v15 + 48) = v18 & 1;
  *(v15 + 56) = v19;
  outlined copy of AccessibilityImageLabel(v3, v5, v4);

  *(a1 + 24) = v15;
  *(a1 + 32) = 3;
  if ((v4 & 0x8000000000000000) == 0)
  {
    outlined copy of AccessibilityImageLabel(v3, v5, v4);
    outlined consume of Text.Storage(v3, v5, v4 & 1);

    result = outlined consume of AccessibilityImageLabel?(v3, v5, v4);
LABEL_11:
    v20 = 32;
    goto LABEL_12;
  }

  outlined copy of AccessibilityImageLabel?(v3, v5, v4);
  outlined copy of AccessibilityImageLabel(v3, v5, v4);

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = 1;
  v21._countAndFlagsBits = 0x72616D6B63656863;
  v21._object = 0xE90000000000006BLL;
  v22 = String.hasPrefix(_:)(v21);
  outlined consume of AccessibilityImageLabel?(v3, v5, v4);
  result = outlined consume of AccessibilityImageLabel?(v3, v5, v4);
  v20 = 32;
  if (v22)
  {
    v20 = 36;
  }

LABEL_12:
  *(a1 + 40) = v20;
  *(a1 + 48) = v20;
  *(a1 + 56) = 0;
  return result;
}

uint64_t key path setter for _GraphInputs.imageAccessibilityProvider : _GraphInputs(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE026ImageAccessibilityProviderF033_850D6677B8CDB42F6FE21E92D1B9BAE5LLV_Tt2g5(a2, v3, v4);
}

uint64_t _GraphInputs.imageAccessibilityProvider.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE026ImageAccessibilityProviderF033_850D6677B8CDB42F6FE21E92D1B9BAE5LLV_Tt2g5(v2, a1, a2);
}

uint64_t (*_GraphInputs.imageAccessibilityProvider.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE026ImageAccessibilityProviderF033_850D6677B8CDB42F6FE21E92D1B9BAE5LLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _GraphInputs.imageAccessibilityProvider.modify;
}

double protocol witness for static PropertyKey.defaultValue.getter in conformance _GraphInputs.ImageAccessibilityProviderKey@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static _GraphInputs.ImageAccessibilityProviderKey.defaultValue;
  *a1 = static _GraphInputs.ImageAccessibilityProviderKey.defaultValue;
  return result;
}

uint64_t (*_ViewInputs.imageAccessibilityProvider.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE026ImageAccessibilityProviderF033_850D6677B8CDB42F6FE21E92D1B9BAE5LLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewInputs.imageAccessibilityProvider.modify;
}

void _GraphInputs.imageAccessibilityProvider.modify(uint64_t **a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE026ImageAccessibilityProviderF033_850D6677B8CDB42F6FE21E92D1B9BAE5LLV_Tt2g5(v1[4], v3, v2);

  free(v1);
}

uint64_t protocol witness for static ImageAccessibilityProvider.makeView(resolved:configuration:) in conformance EmptyImageAccessibilityProvider@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[9];
  v3 = a1[7];
  v25 = a1[8];
  v26 = v2;
  v4 = a1[9];
  v27[0] = a1[10];
  *(v27 + 11) = *(a1 + 171);
  v5 = a1[5];
  v7 = a1[3];
  v21 = a1[4];
  v6 = v21;
  v22 = v5;
  v8 = a1[5];
  v9 = a1[7];
  v23 = a1[6];
  v10 = v23;
  v24 = v9;
  v11 = a1[1];
  v18[0] = *a1;
  v18[1] = v11;
  v12 = a1[3];
  v14 = *a1;
  v13 = a1[1];
  v19 = a1[2];
  v15 = v19;
  v20 = v12;
  a2[8] = v25;
  a2[9] = v4;
  a2[10] = a1[10];
  *(a2 + 171) = *(a1 + 171);
  a2[4] = v6;
  a2[5] = v8;
  a2[6] = v10;
  a2[7] = v3;
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;
  a2[3] = v7;
  return outlined init with copy of Image.Resolved(v18, &v17);
}

void type metadata accessor for _ContiguousArrayStorage<Text>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Text>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>);
    }
  }
}

uint64_t destroy for AccessibilityImageConfiguration(void *a1)
{

  v3 = a1[3];
  if (v3 >> 1 != 0xFFFFFFFF)
  {
    v4 = a1[1];
    v5 = a1[2];

    return outlined consume of AccessibilityImageLabel(v4, v5, v3);
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityImageConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  v5 = *(a2 + 24);

  if (v5 >> 1 == 0xFFFFFFFF)
  {
    v6 = *(a2 + 24);
    *v4 = *(a2 + 8);
    *(a1 + 24) = v6;
  }

  else
  {
    v7 = *(a2 + 8);
    v8 = *(a2 + 16);
    v9 = *(a2 + 32);
    outlined copy of AccessibilityImageLabel(v7, v8, v5);
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    *(a1 + 24) = v5;
    *(a1 + 32) = v9;
  }

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithCopy for AccessibilityImageConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 24);
  v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
  if (*(a1 + 24) >> 1 == 0xFFFFFFFFLL)
  {
    if (v5 == 0x1FFFFFFFELL)
    {
      v6 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v6;
    }

    else
    {
      v8 = *(a2 + 8);
      v9 = *(a2 + 16);
      v10 = *(a2 + 32);
      outlined copy of AccessibilityImageLabel(v8, v9, *(a2 + 24));
      *(a1 + 8) = v8;
      *(a1 + 16) = v9;
      *(a1 + 24) = v4;
      *(a1 + 32) = v10;
    }
  }

  else if (v5 == 0x1FFFFFFFELL)
  {
    outlined destroy of AccessibilityImageLabel(a1 + 8);
    v7 = *(a2 + 24);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = v7;
  }

  else
  {
    v11 = *(a2 + 8);
    v12 = *(a2 + 16);
    v13 = *(a2 + 32);
    outlined copy of AccessibilityImageLabel(v11, v12, *(a2 + 24));
    v14 = *(a1 + 8);
    v15 = *(a1 + 16);
    v16 = *(a1 + 24);
    *(a1 + 8) = v11;
    *(a1 + 16) = v12;
    *(a1 + 24) = v4;
    *(a1 + 32) = v13;
    outlined consume of AccessibilityImageLabel(v14, v15, v16);
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  return a1;
}

uint64_t assignWithTake for AccessibilityImageConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a1 + 24);
  if (v4 >> 1 != 0xFFFFFFFF)
  {
    v5 = *(a2 + 24);
    if (v5 >> 1 != 0xFFFFFFFF)
    {
      v6 = *(a2 + 32);
      v7 = *(a1 + 8);
      v8 = *(a1 + 16);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = v5;
      *(a1 + 32) = v6;
      outlined consume of AccessibilityImageLabel(v7, v8, v4);
      goto LABEL_6;
    }

    outlined destroy of AccessibilityImageLabel(a1 + 8);
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
LABEL_6:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityImageConfiguration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
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

uint64_t storeEnumTagSinglePayload for AccessibilityImageConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t key path setter for EnvironmentValues.subscript<A>(_:) : <A><A1>EnvironmentValuesA1()
{
  v0 = swift_unknownObjectRetain();
  specialized EnvironmentValues.subscript.setter(v0);

  return swift_unknownObjectRelease();
}

uint64_t View.onPreferenceChange<A>(_:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a2;
  v7[1] = a3;
  v5 = type metadata accessor for _PreferenceActionModifier();
  return View.modifier<A>(_:)(v7, a4, v5);
}

uint64_t _PreferenceActionModifier.action.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t key path getter for _PreferenceActionModifier.action : <A>_PreferenceActionModifier<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v7 = a2 + a3;
  v8 = *(a2 + a3 - 8);
  v10 = *a1;
  v9 = a1[1];
  v11 = swift_allocObject();
  *(v11 + 16) = *(v7 - 24);
  *(v11 + 32) = v8;
  *(v11 + 40) = v10;
  *(v11 + 48) = v9;
  *a5 = a4;
  a5[1] = v11;
}

uint64_t key path setter for _PreferenceActionModifier.action : <A>_PreferenceActionModifier<A>(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a3 + a4;
  v9 = *(a3 + a4 - 8);
  v11 = *a1;
  v10 = a1[1];
  v12 = swift_allocObject();
  *(v12 + 16) = *(v8 - 24);
  *(v12 + 32) = v9;
  *(v12 + 40) = v11;
  *(v12 + 48) = v10;

  *a2 = a6;
  a2[1] = v12;
  return result;
}

uint64_t static TransactionalPreferenceActionModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v45 = a7;
  v74 = *MEMORY[0x1E69E9840];
  swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v38 - v14;
  v43 = a6;
  v16 = type metadata accessor for TransactionalPreferenceBinder();
  v44 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v42 = &v38 - v17;
  v18 = a2[3];
  v19 = a2[1];
  v66 = a2[2];
  v67 = v18;
  v20 = a2[3];
  v68 = a2[4];
  v21 = a2[1];
  v64 = *a2;
  v65 = v21;
  v60 = v66;
  v61 = v20;
  v62 = a2[4];
  v41 = *a1;
  v69 = *(a2 + 20);
  v63 = *(a2 + 20);
  v58 = v64;
  v59 = v19;
  outlined init with copy of _ViewInputs(&v64, v72);
  PreferencesInputs.add<A>(_:)(a4, a4, a5);
  v70[2] = v60;
  v70[3] = v61;
  v70[4] = v62;
  v71 = v63;
  v70[0] = v58;
  v70[1] = v59;
  v54 = v60;
  v55 = v61;
  v56 = v62;
  v57 = v63;
  v52 = v58;
  v53 = v59;
  v22 = outlined init with copy of _ViewInputs(v70, v72);
  a3(&v49, v22, &v52);
  v72[2] = v54;
  v72[3] = v55;
  v72[4] = v56;
  v73 = v57;
  v72[0] = v52;
  v72[1] = v53;
  outlined destroy of _ViewInputs(v72);
  v23 = v49;
  v25 = v50;
  v24 = v51;
  v26 = _ViewOutputs.subscript.getter(a4, a4, a5);
  if ((v26 & 0x100000000) == 0)
  {
    v27 = v26;
    v38 = HIDWORD(v65);
    v39 = DWORD2(v65);
    v40 = v23;
    default argument 8 of ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.init(platformItems:receiver:transaction:environment:size:position:transform:safeAreaInsets:cycleDetector:oldReceiverValue:oldItems:seed:)(&v52);
    v46 = v52;
    v47 = DWORD2(v52);
    v48 = BYTE12(v52);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 56))(v15, 1, 1, AssociatedTypeWitness);
    v29 = v42;
    v30 = TransactionalPreferenceBinder.init(modifier:keyValue:phase:transaction:cycleDetector:lastResetSeed:lastValue:)(v41, v27, v39, v38, &v46, 0, v15, v42);
    MEMORY[0x1EEE9AC00](v30);
    v36 = v16;
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for Attribute<()>();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v29, closure #1 in Attribute.init<A>(_:)partial apply, (&v38 - 8), v16, MEMORY[0x1E69E73E0], v31, MEMORY[0x1E69E7410], v32);
    v33 = v29;
    v23 = v40;
    (*(v44 + 8))(v33, v16);
    AGGraphGetFlags();
    AGGraphSetFlags();
  }

  v54 = v60;
  v55 = v61;
  v56 = v62;
  v57 = v63;
  v52 = v58;
  v53 = v59;
  result = outlined destroy of _ViewInputs(&v52);
  v35 = v45;
  *v45 = v23;
  *(v35 + 2) = v25;
  *(v35 + 3) = v24;
  return result;
}

uint64_t TransactionalPreferenceBinder.init(modifier:keyValue:phase:transaction:cycleDetector:lastResetSeed:lastValue:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *(a5 + 8);
  v11 = *(a5 + 12);
  *a8 = a1;
  *(a8 + 4) = a2;
  *(a8 + 8) = a3;
  *(a8 + 12) = a4;
  *(a8 + 16) = *a5;
  *(a8 + 24) = v10;
  *(a8 + 28) = v11;
  *(a8 + 32) = a6;
  v12 = *(type metadata accessor for TransactionalPreferenceBinder() + 64);
  swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Optional();
  v14 = *(*(v13 - 8) + 32);

  return v14(a8 + v12, a7, v13);
}

uint64_t TransactionalPreferenceBinder.updateValue()(uint64_t a1)
{
  v3 = *(a1 + 16);
  v88 = *(a1 + 24);
  v91 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v83 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v84 = v78 - v6;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v82 = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v85 = v78 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v89 = v78 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v78 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v90 = v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v78 - v21;
  if (*(v1 + 32) != *AGGraphGetValue() >> 1)
  {
    *(v1 + 32) = *AGGraphGetValue() >> 1;
    *(v1 + 20) = 0xFFFFFFFFLL;
    *(v1 + 28) = 0;
    v23 = *(a1 + 64);
    (*(v7 + 8))(v1 + v23, v5);
    (*(v17 + 56))(v1 + v23, 1, 1, AssociatedTypeWitness);
  }

  Value = AGGraphGetValue();
  v26 = v25;
  v27 = *(v17 + 16);
  v96 = v22;
  v93 = v27;
  v94 = v17 + 16;
  v27(v22, Value, AssociatedTypeWitness);
  v92 = a1;
  v28 = *(a1 + 64);
  v29 = *(v7 + 16);
  v29(v16, v1 + v28, v5);
  v95 = v17;
  v30 = AssociatedTypeWitness;
  v31 = *(v17 + 48);
  v97 = v30;
  if (v31(v16, 1) == 1)
  {
    v32 = *(v7 + 8);
    v32(v16, v5);
LABEL_5:
    v32((v1 + v28), v5);
    goto LABEL_6;
  }

  v42 = *(v7 + 8);
  v41 = v7 + 8;
  v43 = v16;
  v44 = v42;
  v42(v43, v5);
  if ((v26 & 1) == 0)
  {
    return (*(v95 + 8))(v96, v97);
  }

  v81 = v44;
  v78[1] = v41 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v78[0] = v28;
  v79 = v31;
  v58 = v89;
  v29(v89, v1 + v28, v5);
  v78[2] = v41;
  v59 = v85;
  v60 = v97;
  v93(v85, v96, v97);
  (*(v95 + 56))(v59, 0, 1, v60);
  v61 = *(TupleTypeMetadata2 + 48);
  v62 = v84;
  v63 = v58;
  v64 = v79;
  v29(v84, v63, v5);
  v80 = v61;
  v29(&v62[v61], v59, v5);
  if (v64(v62, 1, v60) == 1)
  {
    v65 = v81;
    v81(v59, v5);
    v65(v89, v5);
    if (v64(&v62[v80], 1, v97) == 1)
    {
      v81(v62, v5);
      return (*(v95 + 8))(v96, v97);
    }
  }

  else
  {
    v66 = v82;
    v29(v82, v62, v5);
    v67 = v80;
    v68 = v97;
    if (v64(&v62[v80], 1, v97) != 1)
    {
      v71 = v95;
      v72 = v90;
      (*(v95 + 32))(v90, &v62[v67], v68);
      v73 = dispatch thunk of static Equatable.== infix(_:_:)();
      v74 = *(v71 + 8);
      v74(v72, v68);
      v75 = v66;
      v76 = v68;
      v77 = v81;
      v81(v85, v5);
      v77(v89, v5);
      v74(v75, v76);
      v32 = v77;
      v77(v62, v5);
      v28 = v78[0];
      if ((v73 & 1) == 0)
      {
        goto LABEL_5;
      }

      return (*(v95 + 8))(v96, v97);
    }

    v69 = v81;
    v81(v85, v5);
    v69(v89, v5);
    (*(v95 + 8))(v66, v68);
  }

  (*(v83 + 8))(v62, TupleTypeMetadata2);
  v28 = v78[0];
  v81((v1 + v78[0]), v5);
LABEL_6:
  v33 = v96;
  v34 = v97;
  v93((v1 + v28), v96, v97);
  v35 = v95;
  (*(v95 + 56))(v1 + v28, 0, 1, v34);
  AGGraphClearUpdate();
  v36 = *AGGraphGetValue();
  AGGraphSetUpdate();
  if (*(v1 + 20) != v36)
  {
    *(v1 + 20) = v36;
    *(v1 + 24) = 2;
    v38 = v92;
LABEL_14:
    AGGraphClearUpdate();
    v45 = *(v38 + 32);
    v46 = v91;
    v47 = v34;
    v48 = v88;
    closure #1 in PreferenceBinder.updateValue()(v1, v91, v88, v45, type metadata accessor for TransactionalPreferenceBinder, type metadata accessor for TransactionalPreferenceActionModifier, &unk_1F00A7528, partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.PreferenceKey.Value, @guaranteed Transaction) -> (), v98);
    AGGraphSetUpdate();
    v49 = v33;
    v50 = swift_allocObject();
    *(v50 + 16) = v46;
    *(v50 + 24) = v48;
    *(v50 + 32) = v45;
    *(v50 + 40) = *v98;
    AGGraphClearUpdate();
    closure #2 in TransactionalPreferenceBinder.updateValue()(v1, v98);
    AGGraphSetUpdate();
    v51 = v98[0];
    LOBYTE(v98[0]) = 13;
    v52 = v90;
    v93(v90, v49, v47);
    v53 = (*(v35 + 80) + 56) & ~*(v35 + 80);
    v54 = (v87 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    v55[2] = v46;
    v55[3] = v48;
    v55[4] = v45;
    v55[5] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.PreferenceKey.Value, @in_guaranteed Transaction) -> (@out ());
    v55[6] = v50;
    v56 = v55 + v53;
    v57 = v97;
    (*(v35 + 32))(v56, v52, v97);
    *(v55 + v54) = v51;

    static Update.enqueueAction(reason:_:)(v98, partial apply for closure #3 in TransactionalPreferenceBinder.updateValue(), v55);

    return (*(v35 + 8))(v96, v57);
  }

  v37 = *(v1 + 24);
  v38 = v92;
  if (v37)
  {
    v39 = v37 - 1;
    *(v1 + 24) = v39;
    if (v39)
    {
      goto LABEL_14;
    }
  }

  if (*(v1 + 28) == 1)
  {
    return (*(v35 + 8))(v33, v34);
  }

  v98[0] = 0;
  v98[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(44);

  v98[0] = 0;
  v98[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v98[0] = 0xD000000000000011;
  v98[1] = 0x800000018DD808E0;
  v70 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v70);

  MEMORY[0x193ABEDD0](0xD00000000000002ALL, 0x800000018DD75B90);
  specialized static Log.externalWarning(_:)(v98[0], v98[1]);

  result = (*(v35 + 8))(v33, v34);
  *(v1 + 28) = 1;
  return result;
}