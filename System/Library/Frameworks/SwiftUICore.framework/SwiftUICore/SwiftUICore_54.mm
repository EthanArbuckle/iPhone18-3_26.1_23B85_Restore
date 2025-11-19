void *sub_18D3320AC@<X0>(void *a1@<X8>)
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI16ScrollTargetRoleV0G0O_SayAC20ScrollableCollection_pGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

unsigned __int8 *closure #1 in ScrollTargetRole.SetLayout.value.getter(void *a1)
{
  type metadata accessor for ScrollTargetRole.Role?();
  result = AGGraphGetValue();
  v4 = *result;
  if (v4 == 2)
  {
    return result;
  }

  type metadata accessor for ScrollableCollection();
  Value = AGGraphGetValue();
  outlined init with copy of AnyTrackedValue(Value, v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *a1;
  v19 = *a1;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4 & 1);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_16;
  }

  v13 = v8;
  if (v7[3] >= v12)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *a1 = v7;
      if (v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v7 = v19;
      *a1 = v19;
      if (v13)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    specialized _NativeDictionary._insert(at:key:value:)(v9, v4 & 1, MEMORY[0x1E69E7CC0], v7);
    goto LABEL_10;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v12, isUniquelyReferenced_nonNull_native);
  v7 = v19;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(v4 & 1);
  if ((v13 & 1) != (v15 & 1))
  {
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v9 = v14;
  *a1 = v19;
  if ((v13 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v1 = v7[7];
  a1 = *(v1 + 8 * v9);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 8 * v9) = a1;
  if ((v16 & 1) == 0)
  {
LABEL_16:
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2] + 1, 1, a1);
    *(v1 + 8 * v9) = a1;
  }

  v18 = a1[2];
  v17 = a1[3];
  if (v18 >= v17 >> 1)
  {
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, a1);
    *(v1 + 8 * v9) = a1;
  }

  a1[2] = v18 + 1;
  return outlined init with take of AnyTrackedValue(v20, &a1[5 * v18 + 4]);
}

void type metadata accessor for ScrollTargetRole.Role?()
{
  if (!lazy cache variable for type metadata for ScrollTargetRole.Role?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ScrollTargetRole.Role?);
    }
  }
}

unint64_t type metadata accessor for ScrollableCollection()
{
  result = lazy cache variable for type metadata for ScrollableCollection;
  if (!lazy cache variable for type metadata for ScrollableCollection)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ScrollableCollection);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1 & 1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1 & 1, v2);
}

{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1 & 1, v2);
}

void type metadata accessor for _DictionaryStorage<ScrollTargetRole.Role, [ScrollableCollection]>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ScrollTargetRole.Role, [ScrollableCollection]>)
  {
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(255, &lazy cache variable for type metadata for [ScrollableCollection], &lazy cache variable for type metadata for ScrollableCollection, &protocol descriptor for ScrollableCollection, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type ScrollTargetRole.Role and conformance ScrollTargetRole.Role();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<ScrollTargetRole.Role, [ScrollableCollection]>);
    }
  }
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2 & 1;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t destroy for ShaderFunction(id *a1)
{
}

uint64_t View.layerEffect(_:maxSampleOffset:isEnabled:)(uint64_t a1, char a2, uint64_t a3, double a4, double a5)
{
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  *&v12 = *a1;
  v6 = v12;
  *(&v12 + 1) = v5;
  *&v13 = v7;
  *(&v13 + 1) = v8;
  *v14 = v9;
  *&v14[8] = a4;
  *&v14[16] = a5;
  v14[24] = a2;
  View.modifier<A>(_:)(&v12, a3, &type metadata for _ShaderFilterEffect);
  v15[0] = v12;
  v15[1] = v13;
  v16[0] = *v14;
  *(v16 + 9) = *&v14[9];
  v10 = v6;

  return outlined destroy of _ShaderFilterEffect(v15);
}

uint64_t initializeWithCopy for _ShaderFilterEffect(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v6 = v3;

  return a1;
}

uint64_t destroy for Shader(id *a1)
{
}

uint64_t View.monospaced(_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  View.transformEnvironment<A>(_:transform:)(KeyPath, a5, v9, a2);
}

uint64_t getEnumTagSinglePayload for SDFStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x76 && *(a1 + 8))
  {
    return (*a1 + 118);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x75)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t getEnumTag for ScrapeableContent.Content(void *a1)
{
  v1 = *a1 >> 60;
  if (v1 <= 8)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 9;
  }
}

void *destructiveInjectEnumTag for ScrapeableContent.Content(void *result, uint64_t a2)
{
  if (a2 < 9)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    *result = (8 * (a2 - 9)) | 0x9000000000000000;
  }

  return result;
}

void type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(255);
    _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_0(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v0 = type metadata accessor for AnimatorState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>);
    }
  }
}

void SpringAnimation.function.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  SpringModel.duration(epsilon:)(0.001);
  *a1 = v7;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = 5;
}

uint64_t specialized AnimatorState.update(_:at:environment:)(float64x2_t *a1, unint64_t a2, double a3)
{
  v4 = v3;
  v7 = *(v3 + 72);
  v8 = *(v3 + 80);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_20;
  }

  if (*(v3 + 125) <= 1u)
  {
    if (!*(v3 + 125))
    {
      *(v3 + 64) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 125) = v10;
      goto LABEL_11;
    }

    *(v3 + 125) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 80) = v8 - *(v3 + 64) + a3;
    *(v3 + 64) = a3;
LABEL_20:
    swift_beginAccess();
    v32 = vaddq_f64(*(v3 + 104), a1[1]);
    v34 = vaddq_f64(*(v3 + 88), *a1);
    swift_beginAccess();
    result = 0;
    v30 = vsubq_f64(v32, *(v3 + 48));
    *a1 = vsubq_f64(v34, *(v3 + 32));
    a1[1] = v30;
    return result;
  }

  if (*(v3 + 125) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 64))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 64) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 64);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 144);

  v39[0] = v14;
  v39[1] = AGCreateWeakAttribute();
  v40 = 0;
  v41 = v15;
  v16 = *(v4 + 152);
  if (v16 != 0.0)
  {
    v17 = *(v4 + 160);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>();
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>, MEMORY[0x1E69E6720]);
    v37.f64[1] = v20;
    v36.f64[0] = v16;
    v36.f64[1] = v17;
    specialized Dictionary.subscript.setter(&v36, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v22 = *(v4 + 48);
  v35[0] = *(v4 + 32);
  v35[1] = v22;
  v23 = *(*v21 + 120);
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  v25 = v24;
  v26 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);

  v23(&v36, v35, v39, v25, v26, v13);

  if (v38)
  {

    return 1;
  }

  else
  {
    v31 = v36;
    v33 = v37;
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v41, a2 | ((HIDWORD(a2) & 1) << 32), v13);
    *(v4 + 24) = v39[0];

    v28 = vsubq_f64(vaddq_f64(v33, a1[1]), *(v4 + 48));
    *a1 = vsubq_f64(vaddq_f64(v31, *a1), *(v4 + 32));
    a1[1] = v28;
    swift_beginAccess();
    *(v4 + 88) = v31;
    *(v4 + 104) = v33;
    *(v4 + 80) = a3;
    v29 = *(v4 + 72);
    if (v29 > 0.0)
    {
      *(v4 + 80) = v29 * (round(a3 / v29) + 1.0);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 56);
  v8 = *(v3 + 64);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_20;
  }

  if (*(v3 + 93) <= 1u)
  {
    if (!*(v3 + 93))
    {
      *(v3 + 48) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 93) = v10;
      goto LABEL_11;
    }

    *(v3 + 93) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 64) = v8 - *(v3 + 48) + a3;
    *(v3 + 48) = a3;
LABEL_20:
    swift_beginAccess();
    v31 = vaddq_f64(*(v3 + 72), *a1);
    swift_beginAccess();
    result = 0;
    *a1 = vsubq_f64(v31, *(v3 + 32));
    return result;
  }

  if (*(v3 + 93) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 48))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 48) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 48);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 112);

  v36[0] = v14;
  v36[1] = AGCreateWeakAttribute();
  v37 = 0;
  v38 = v15;
  v16 = *(v4 + 120);
  if (v16)
  {
    v17 = *(v4 + 128);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, CGFloat>>();
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, CGFloat>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, CGFloat>>, MEMORY[0x1E69E6720]);
    v32[3] = v20;
    v32[0] = v16;
    v32[1] = v17;
    specialized Dictionary.subscript.setter(v32, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v35 = *(v4 + 32);
  v22 = *(*v21 + 120);
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
  v24 = v23;
  v25 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);

  v22(v33, &v35, v36, v24, v25, v13);

  if (v34)
  {

    return 1;
  }

  else
  {
    v27 = *v33;
    v28 = *&v33[1];
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v38, a2 | ((HIDWORD(a2) & 1) << 32), v13);
    *(v4 + 24) = v36[0];

    v29 = v28 + a1->f64[1] - *(v4 + 40);
    a1->f64[0] = v27 + a1->f64[0] - *(v4 + 32);
    a1->f64[1] = v29;
    swift_beginAccess();
    *(v4 + 72) = v27;
    *(v4 + 80) = v28;
    *(v4 + 64) = a3;
    v30 = *(v4 + 56);
    if (v30 > 0.0)
    {
      *(v4 + 64) = v30 * (round(a3 / v30) + 1.0);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 104);
  v8 = *(v3 + 112);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_20;
  }

  if (*(v3 + 189) <= 1u)
  {
    if (!*(v3 + 189))
    {
      *(v3 + 96) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 189) = v10;
      goto LABEL_11;
    }

    *(v3 + 189) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 112) = v8 - *(v3 + 96) + a3;
    *(v3 + 96) = a3;
LABEL_20:
    swift_beginAccess();
    v43 = vaddq_f64(*(v3 + 136), a1[1]);
    v45 = vaddq_f64(*(v3 + 120), *a1);
    v39 = vaddq_f64(*(v3 + 168), a1[3]);
    v41 = vaddq_f64(*(v3 + 152), a1[2]);
    swift_beginAccess();
    result = 0;
    v35 = *(v3 + 64);
    v36 = *(v3 + 80);
    v37 = vsubq_f64(v43, *(v3 + 48));
    *a1 = vsubq_f64(v45, *(v3 + 32));
    a1[1] = v37;
    a1[2] = vsubq_f64(v41, v35);
    a1[3] = vsubq_f64(v39, v36);
    return result;
  }

  if (*(v3 + 189) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 96))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 96) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 96);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 208);

  v52[0] = v14;
  v52[1] = AGCreateWeakAttribute();
  v53 = 0;
  v54 = v15;
  v16 = *(v4 + 216);
  if (v16 != 0.0)
  {
    v17 = *(v4 + 224);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>();
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>, MEMORY[0x1E69E6720]);
    v48.f64[1] = v20;
    v47.f64[0] = v16;
    v47.f64[1] = v17;
    specialized Dictionary.subscript.setter(&v47, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v22 = *(v4 + 48);
  v46[0] = *(v4 + 32);
  v46[1] = v22;
  v23 = *(v4 + 80);
  v46[2] = *(v4 + 64);
  v46[3] = v23;
  v24 = *(*v21 + 120);
  type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>();
  v26 = v25;
  v27 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>);

  v24(&v47, v46, v52, v26, v27, v13);

  if (v51)
  {

    return 1;
  }

  else
  {
    v42 = v50;
    v44 = v48;
    v38 = v49;
    v40 = v47;
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v54, a2 | ((HIDWORD(a2) & 1) << 32), v13);
    *(v4 + 24) = v52[0];

    v29 = vaddq_f64(v38, a1[2]);
    v30 = vaddq_f64(v42, a1[3]);
    v31 = *(v4 + 64);
    v32 = *(v4 + 80);
    v33 = vsubq_f64(vaddq_f64(v44, a1[1]), *(v4 + 48));
    *a1 = vsubq_f64(vaddq_f64(v40, *a1), *(v4 + 32));
    a1[1] = v33;
    a1[2] = vsubq_f64(v29, v31);
    a1[3] = vsubq_f64(v30, v32);
    swift_beginAccess();
    *(v4 + 120) = v40;
    *(v4 + 136) = v44;
    *(v4 + 152) = v38;
    *(v4 + 168) = v42;
    *(v4 + 112) = a3;
    v34 = *(v4 + 104);
    if (v34 > 0.0)
    {
      *(v4 + 112) = v34 * (round(a3 / v34) + 1.0);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 64);
  v8 = *(v3 + 72);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_20;
  }

  if (*(v3 + 109) <= 1u)
  {
    if (!*(v3 + 109))
    {
      *(v3 + 56) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 109) = v10;
      goto LABEL_11;
    }

    *(v3 + 109) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 72) = v8 - *(v3 + 56) + a3;
    *(v3 + 56) = a3;
LABEL_20:
    swift_beginAccess();
    v35 = *(v3 + 96) + a1[1].f64[0];
    v37 = vaddq_f64(*(v3 + 80), *a1);
    swift_beginAccess();
    result = 0;
    v36 = *(v3 + 48);
    *a1 = vsubq_f64(v37, *(v3 + 32));
    a1[1].f64[0] = v35 - v36;
    return result;
  }

  if (*(v3 + 109) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 56))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 56) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 56);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 128);

  v44[0] = v14;
  v44[1] = AGCreateWeakAttribute();
  v45 = 0;
  v46 = v15;
  v16 = *(v4 + 136);
  if (v16 != 0.0)
  {
    v17 = *(v4 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>();
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>, MEMORY[0x1E69E6720]);
    v41 = v20;
    v38 = v16;
    v39 = v17;
    specialized Dictionary.subscript.setter(&v38, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v22 = *(v4 + 48);
  v42 = *(v4 + 32);
  v43 = v22;
  v23 = *(*v21 + 120);
  type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>();
  v25 = v24;
  v26 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>);

  v23(&v38, &v42, v44, v25, v26, v13);

  if (v41)
  {

    return 1;
  }

  else
  {
    v28 = v38;
    v29 = v39;
    v30 = v40;
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v46, a2 | ((HIDWORD(a2) & 1) << 32), v13);
    *(v4 + 24) = v44[0];

    v31 = v30 + a1[1].f64[0];
    v32 = *(v4 + 48);
    v33 = v29 + a1->f64[1] - *(v4 + 40);
    a1->f64[0] = v28 + a1->f64[0] - *(v4 + 32);
    a1->f64[1] = v33;
    a1[1].f64[0] = v31 - v32;
    swift_beginAccess();
    *(v4 + 88) = v29;
    *(v4 + 96) = v30;
    *(v4 + 72) = a3;
    *(v4 + 80) = v28;
    v34 = *(v4 + 64);
    if (v34 > 0.0)
    {
      *(v4 + 72) = v34 * (round(a3 / v34) + 1.0);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 72);
  v8 = *(v3 + 80);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_20;
  }

  if (*(v3 + 125) <= 1u)
  {
    if (!*(v3 + 125))
    {
      *(v3 + 64) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 125) = v10;
      goto LABEL_11;
    }

    *(v3 + 125) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 80) = v8 - *(v3 + 64) + a3;
    *(v3 + 64) = a3;
LABEL_20:
    swift_beginAccess();
    v31 = vaddq_f64(*(v3 + 104), a1[1]);
    v33 = vaddq_f64(*(v3 + 88), *a1);
    swift_beginAccess();
    result = 0;
    v29 = vsubq_f64(v31, *(v3 + 48));
    *a1 = vsubq_f64(v33, *(v3 + 32));
    a1[1] = v29;
    return result;
  }

  if (*(v3 + 125) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 64))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 64) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 64);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 144);

  v34[0] = v14;
  v34[1] = AGCreateWeakAttribute();
  v35 = 0;
  v36 = v15;
  v16 = *(v4 + 152);
  if (v16 != 0.0)
  {
    v17 = *(v4 + 160);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>();
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>, MEMORY[0x1E69E6720]);
    v38.f64[1] = v20;
    v37.f64[0] = v16;
    v37.f64[1] = v17;
    specialized Dictionary.subscript.setter(&v37, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v22 = *(v4 + 32);
  v23 = *(v4 + 40);
  v24 = *(v4 + 48);
  v25 = *(v4 + 56);

  specialized Animation.animate<A>(value:time:context:)(v34, v21, &v37, v22, v23, v24, v25, v13);
  v30 = v37;
  v32 = v38;

  if (v39)
  {

    return 1;
  }

  else
  {
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v36, a2 | ((HIDWORD(a2) & 1) << 32), v13);
    *(v4 + 24) = v34[0];

    v27 = vsubq_f64(vaddq_f64(v32, a1[1]), *(v4 + 48));
    *a1 = vsubq_f64(vaddq_f64(v30, *a1), *(v4 + 32));
    a1[1] = v27;
    swift_beginAccess();
    *(v4 + 88) = v30;
    *(v4 + 104) = v32;
    *(v4 + 80) = a3;
    v28 = *(v4 + 72);
    if (v28 > 0.0)
    {
      *(v4 + 80) = v28 * (round(a3 / v28) + 1.0);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 64);
  v8 = *(v3 + 72);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_20;
  }

  if (*(v3 + 109) <= 1u)
  {
    if (!*(v3 + 109))
    {
      *(v3 + 56) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 109) = v10;
      goto LABEL_11;
    }

    *(v3 + 109) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 72) = v8 - *(v3 + 56) + a3;
    *(v3 + 56) = a3;
LABEL_20:
    swift_beginAccess();
    v37 = *(v3 + 96) + a1[1].f64[0];
    v39 = vaddq_f64(*(v3 + 80), *a1);
    swift_beginAccess();
    result = 0;
    v38 = *(v3 + 48);
    *a1 = vsubq_f64(v39, *(v3 + 32));
    a1[1].f64[0] = v37 - v38;
    return result;
  }

  if (*(v3 + 109) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 56))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 56) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 56);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 128);

  v41[0] = v14;
  v41[1] = AGCreateWeakAttribute();
  v42 = 0;
  v43 = v15;
  v16 = *(v4 + 136);
  if (v16)
  {
    v17 = *(v4 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>();
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>, MEMORY[0x1E69E6720]);
    v40[3] = v20;
    v40[0] = v16;
    v40[1] = v17;
    specialized Dictionary.subscript.setter(v40, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v22 = *(v4 + 32);
  v23 = *(v4 + 40);
  v24 = *(v4 + 48);

  v25 = COERCE_DOUBLE(specialized Animation.animate<A>(value:time:context:)(v41, v21, v22, v23, v24, v13));
  v27 = v26;
  v29 = v28;
  v31 = v30;

  if (v31)
  {

    return 1;
  }

  else
  {
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v43, a2 | ((HIDWORD(a2) & 1) << 32), v13);
    *(v4 + 24) = v41[0];

    v33 = a1[1].f64[0] + v29;
    v34 = *(v4 + 48);
    v35 = a1->f64[1] + v27 - *(v4 + 40);
    a1->f64[0] = a1->f64[0] + v25 - *(v4 + 32);
    a1->f64[1] = v35;
    a1[1].f64[0] = v33 - v34;
    swift_beginAccess();
    *(v4 + 80) = v25;
    *(v4 + 88) = v27;
    *(v4 + 96) = v29;
    *(v4 + 72) = a3;
    v36 = *(v4 + 64);
    if (v36 > 0.0)
    {
      *(v4 + 72) = v36 * (round(a3 / v36) + 1.0);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 96);
  v8 = *(v3 + 104);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_19;
  }

  if (*(v3 + 169) <= 1u)
  {
    if (!*(v3 + 169))
    {
      *(v3 + 88) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 169) = v10;
      goto LABEL_11;
    }

    *(v3 + 169) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 104) = v8 - *(v3 + 88) + a3;
    *(v3 + 88) = a3;
LABEL_19:
    swift_beginAccess();
    v32 = *(v3 + 152);
    v33 = *(v3 + 156);
    v34 = *(v3 + 160);
    v71.f64[0] = *(v3 + 144);
    LOBYTE(v71.f64[1]) = v32;
    HIDWORD(v71.f64[1]) = v33;
    v58 = vaddq_f64(*(v3 + 112), *a1);
    v60 = vaddq_f64(*(v3 + 128), a1[1]);
    LOBYTE(v72.f64[0]) = v34;
    ResolvedGradientVector.add(_:scaledBy:)(&v71, 1.0);
    swift_beginAccess();
    v35 = *(v3 + 64);
    v36 = *(v3 + 72);
    v37 = *(v3 + 76);
    v38 = *(v3 + 80);
    v39 = vsubq_f64(v60, *(v3 + 48));
    *a1 = vsubq_f64(v58, *(v3 + 32));
    a1[1] = v39;
    v67.f64[0] = v35;
    LOBYTE(v67.f64[1]) = v36;
    HIDWORD(v67.f64[1]) = v37;
    LOBYTE(v68.f64[0]) = v38;
    ResolvedGradientVector.add(_:scaledBy:)(&v67, -1.0);
    return 0;
  }

  if (*(v3 + 169) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 88))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 88) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = *(v3 + 88);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 192);

  v80[0] = v14;
  v80[1] = AGCreateWeakAttribute();
  v81 = 0;
  v82 = v15;
  v16 = *(v4 + 200);
  if (v16)
  {
    v17 = *(v4 + 208);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>();
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>, MEMORY[0x1E69E6720]);
    *(&v77 + 1) = v20;
    *&v76 = v16;
    *(&v76 + 1) = v17;
    specialized Dictionary.subscript.setter(&v76, v19);
  }

  v21 = a3 - v13;
  swift_beginAccess();
  v22 = *(v4 + 16);
  swift_beginAccess();
  v23 = *(v4 + 48);
  v76 = *(v4 + 32);
  v77 = v23;
  v25 = *(v4 + 32);
  v24 = *(v4 + 48);
  v78 = *(v4 + 64);
  v79 = *(v4 + 80);
  v67 = v25;
  v68 = v24;
  v69 = *(v4 + 64);
  v70 = *(v4 + 80);
  type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>();
  if (v26 == MEMORY[0x1E69E63B0])
  {
    *v62 = v67.f64[0];
    v31 = *(*v22 + 120);

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v76, &v63, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
    v31(&v63, v62, v80, MEMORY[0x1E69E63B0], &protocol witness table for Double, v21);
    v71.f64[0] = v63.f64[0];
    LOBYTE(v71.f64[1]) = LOBYTE(v63.f64[1]);
  }

  else
  {
    v27 = v26;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v27 == v28)
    {
      v41 = v28;
      v62[0] = v67;
      v62[1] = v68;
      v42 = *(*v22 + 120);

      _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v76, &v63, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
      v43 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
      v42(&v63, v62, v80, v41, v43, v21);
      v71 = v63;
      v72 = v64;
      LOBYTE(v73) = v65;
    }

    else
    {
      v29 = *(*v22 + 120);

      _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v76, &v63, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
      v30 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
      v29(&v71, &v67, v80, v27, v30, v21);
    }
  }

  outlined destroy of Slice<IndexSet>(&v76, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
  v44 = v73;
  if (v73 == 0.0)
  {

    return 1;
  }

  else
  {
    v45 = v74;
    v46 = v75;
    v47 = HIDWORD(v74);
    v59 = v72;
    v61 = v71;
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v82, a2 | ((HIDWORD(a2) & 1) << 32), v21);
    *(v4 + 24) = v80[0];

    v56 = vaddq_f64(*a1, v61);
    v57 = vaddq_f64(a1[1], v59);
    v67.f64[0] = v44;
    LOBYTE(v67.f64[1]) = v45;
    HIDWORD(v67.f64[1]) = v47;
    LOBYTE(v68.f64[0]) = v46 & 1;
    ResolvedGradientVector.add(_:scaledBy:)(&v67, 1.0);
    v48 = *(v4 + 64);
    v49 = *(v4 + 72);
    v50 = *(v4 + 76);
    v51 = *(v4 + 80);
    v52 = vsubq_f64(v57, *(v4 + 48));
    *a1 = vsubq_f64(v56, *(v4 + 32));
    a1[1] = v52;
    v67.f64[0] = v48;
    LOBYTE(v67.f64[1]) = v49;
    HIDWORD(v67.f64[1]) = v50;
    LOBYTE(v68.f64[0]) = v51;
    ResolvedGradientVector.add(_:scaledBy:)(&v67, -1.0);
    swift_beginAccess();
    v53 = *(v4 + 128);
    v63 = *(v4 + 112);
    v54 = *(v4 + 144);
    v64 = v53;
    v65 = v54;
    v66 = *(v4 + 160);
    v67 = v61;
    v68 = v59;
    *&v69 = v44;
    *(&v69 + 1) = v45;
    v70 = v46;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v67, v62, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
    *(v4 + 112) = v61;
    *(v4 + 128) = v59;
    *(v4 + 144) = v44;
    *(v4 + 152) = v45;
    *(v4 + 160) = v46;
    outlined destroy of Slice<IndexSet>(&v63, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
    *(v4 + 104) = a3;
    v55 = *(v4 + 96);

    if (v55 > 0.0)
    {
      *(v4 + 104) = (round(a3 / v55) + 1.0) * *(v4 + 96);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 96);
  v8 = *(v3 + 104);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_19;
  }

  if (*(v3 + 173) <= 1u)
  {
    if (!*(v3 + 173))
    {
      *(v3 + 88) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 173) = v10;
      goto LABEL_11;
    }

    *(v3 + 173) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 104) = v8 - *(v3 + 88) + a3;
    *(v3 + 88) = a3;
LABEL_19:
    swift_beginAccess();
    v32 = *(v3 + 136);
    v33 = *(v3 + 140);
    v34 = *(v3 + 144);
    v35 = *(v3 + 152);
    v36 = *(v3 + 160);
    *&v83 = *(v3 + 128);
    BYTE8(v83) = v32;
    HIDWORD(v83) = v33;
    v74 = vaddq_f64(*(v3 + 112), *a1);
    v84[0] = v34;
    ResolvedGradientVector.add(_:scaledBy:)(&v83, 1.0);
    v37 = v35 + a1[2].f64[1];
    v38 = v36 + a1[3].f64[0];
    swift_beginAccess();
    v39 = *(v3 + 48);
    v40 = *(v3 + 56);
    v41 = *(v3 + 60);
    v42 = *(v3 + 64);
    v43 = *(v3 + 72);
    v44 = *(v3 + 80);
    *a1 = vsubq_f64(v74, *(v3 + 32));
    *&v81 = v39;
    BYTE8(v81) = v40;
    HIDWORD(v81) = v41;
    v82[0] = v42;
    ResolvedGradientVector.add(_:scaledBy:)(&v81, -1.0);
    result = 0;
    a1[2].f64[1] = v37 - v43;
    a1[3].f64[0] = v38 - v44;
    return result;
  }

  if (*(v3 + 173) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 88))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 88) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = *(v3 + 88);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 192);

  v90[0] = v14;
  v90[1] = AGCreateWeakAttribute();
  v91 = 0;
  v92 = v15;
  v16 = *(v4 + 200);
  if (v16)
  {
    v17 = *(v4 + 208);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>();
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>, MEMORY[0x1E69E6720]);
    *(&v87 + 1) = v20;
    *&v86 = v16;
    *(&v86 + 1) = v17;
    specialized Dictionary.subscript.setter(&v86, v19);
  }

  v21 = a3 - v13;
  swift_beginAccess();
  v22 = *(v4 + 16);
  swift_beginAccess();
  v23 = *(v4 + 48);
  v86 = *(v4 + 32);
  v87 = v23;
  v25 = *(v4 + 32);
  v24 = *(v4 + 48);
  v88 = *(v4 + 64);
  v89 = *(v4 + 80);
  v81 = v25;
  *v82 = v24;
  *&v82[16] = *(v4 + 64);
  *&v82[32] = *(v4 + 80);
  type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>();
  if (v26 == MEMORY[0x1E69E63B0])
  {
    *&v76[0] = v81;
    v31 = *(*v22 + 120);

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v86, &v77, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
    v31(&v77, v76, v90, MEMORY[0x1E69E63B0], &protocol witness table for Double, v21);
    *&v83 = v77;
    BYTE8(v83) = BYTE8(v77);
  }

  else
  {
    v27 = v26;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v27 == v28)
    {
      v46 = v28;
      v76[0] = v81;
      v76[1] = *v82;
      v47 = *(*v22 + 120);

      _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v86, &v77, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
      v48 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
      v47(&v77, v76, v90, v46, v48, v21);
      v83 = v77;
      *v84 = v78;
      v84[16] = v79;
    }

    else
    {
      v29 = *(*v22 + 120);

      _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v86, &v77, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
      v30 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
      v29(&v83, &v81, v90, v27, v30, v21);
    }
  }

  outlined destroy of Slice<IndexSet>(&v86, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
  v49 = *v84;
  if (*v84)
  {
    v50 = v83;
    v51 = v84[16];
    v72 = *&v84[21];
    v70 = v84[23];
    v71 = *&v84[17];
    v52 = a2 | ((HIDWORD(a2) & 1) << 32);
    v53 = v83;
    v73 = *&v84[8];
    v75 = v85;
    v54 = v84[8];
    v55 = HIDWORD(*&v84[8]);
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v92, v52, v21);
    *(v4 + 24) = v90[0];

    v56 = a1->f64[0] + *&v53;
    v57 = a1->f64[1] + *(&v53 + 1);
    *&v81 = v49;
    BYTE8(v81) = v54;
    HIDWORD(v81) = v55;
    v82[0] = v51 & 1;
    ResolvedGradientVector.add(_:scaledBy:)(&v81, 1.0);
    v58 = a1[2].f64[1] + v75.f64[0];
    v59 = a1[3].f64[0] + v75.f64[1];
    v60 = *(v4 + 48);
    v61 = *(v4 + 56);
    v62 = *(v4 + 60);
    v63 = *(v4 + 64);
    v64 = *(v4 + 72);
    v65 = *(v4 + 80);
    v66 = v57 - *(v4 + 40);
    a1->f64[0] = v56 - *(v4 + 32);
    a1->f64[1] = v66;
    *&v81 = v60;
    BYTE8(v81) = v61;
    HIDWORD(v81) = v62;
    v82[0] = v63;
    ResolvedGradientVector.add(_:scaledBy:)(&v81, -1.0);
    a1[2].f64[1] = v58 - v64;
    a1[3].f64[0] = v59 - v65;
    swift_beginAccess();
    v67 = *(v4 + 128);
    v77 = *(v4 + 112);
    v68 = *(v4 + 144);
    v78 = v67;
    v79 = v68;
    v80 = *(v4 + 160);
    v81 = v50;
    *v82 = v49;
    *&v82[24] = v75;
    *&v82[8] = v73;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v81, v76, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
    *(v4 + 112) = v50;
    *(v4 + 128) = v49;
    *(v4 + 136) = v73;
    *(v4 + 144) = v51;
    *(v4 + 151) = v70;
    *(v4 + 149) = v72;
    *(v4 + 145) = v71;
    *(v4 + 152) = v75;
    outlined destroy of Slice<IndexSet>(&v77, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
    *(v4 + 104) = a3;
    v69 = *(v4 + 96);

    if (v69 > 0.0)
    {
      *(v4 + 104) = (round(a3 / v69) + 1.0) * *(v4 + 96);
    }

    return 0;
  }

  else
  {

    return 1;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 96);
  v8 = *(v3 + 104);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_19;
  }

  if (*(v3 + 173) <= 1u)
  {
    if (!*(v3 + 173))
    {
      *(v3 + 88) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 173) = v10;
      goto LABEL_11;
    }

    *(v3 + 173) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 104) = v8 - *(v3 + 88) + a3;
    *(v3 + 88) = a3;
LABEL_19:
    swift_beginAccess();
    v32 = *(v3 + 136);
    v33 = *(v3 + 140);
    v34 = *(v3 + 144);
    v35 = *(v3 + 152);
    v36 = *(v3 + 160);
    *&v83 = *(v3 + 128);
    BYTE8(v83) = v32;
    HIDWORD(v83) = v33;
    v74 = vaddq_f64(*(v3 + 112), *a1);
    v84[0] = v34;
    ResolvedGradientVector.add(_:scaledBy:)(&v83, 1.0);
    v37 = v35 + a1[2].f64[1];
    v38 = v36 + a1[3].f64[0];
    swift_beginAccess();
    v39 = *(v3 + 48);
    v40 = *(v3 + 56);
    v41 = *(v3 + 60);
    v42 = *(v3 + 64);
    v43 = *(v3 + 72);
    v44 = *(v3 + 80);
    *a1 = vsubq_f64(v74, *(v3 + 32));
    *&v81 = v39;
    BYTE8(v81) = v40;
    HIDWORD(v81) = v41;
    v82[0] = v42;
    ResolvedGradientVector.add(_:scaledBy:)(&v81, -1.0);
    result = 0;
    a1[2].f64[1] = v37 - v43;
    a1[3].f64[0] = v38 - v44;
    return result;
  }

  if (*(v3 + 173) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 88))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 88) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = *(v3 + 88);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 192);

  v90[0] = v14;
  v90[1] = AGCreateWeakAttribute();
  v91 = 0;
  v92 = v15;
  v16 = *(v4 + 200);
  if (v16)
  {
    v17 = *(v4 + 208);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>();
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>, MEMORY[0x1E69E6720]);
    *(&v87 + 1) = v20;
    *&v86 = v16;
    *(&v86 + 1) = v17;
    specialized Dictionary.subscript.setter(&v86, v19);
  }

  v21 = a3 - v13;
  swift_beginAccess();
  v22 = *(v4 + 16);
  swift_beginAccess();
  v23 = *(v4 + 48);
  v86 = *(v4 + 32);
  v87 = v23;
  v25 = *(v4 + 32);
  v24 = *(v4 + 48);
  v88 = *(v4 + 64);
  v89 = *(v4 + 80);
  v81 = v25;
  *v82 = v24;
  *&v82[16] = *(v4 + 64);
  *&v82[32] = *(v4 + 80);
  type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>();
  if (v26 == MEMORY[0x1E69E63B0])
  {
    *&v76[0] = v81;
    v31 = *(*v22 + 120);

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v86, &v77, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
    v31(&v77, v76, v90, MEMORY[0x1E69E63B0], &protocol witness table for Double, v21);
    *&v83 = v77;
    BYTE8(v83) = BYTE8(v77);
  }

  else
  {
    v27 = v26;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v27 == v28)
    {
      v46 = v28;
      v76[0] = v81;
      v76[1] = *v82;
      v47 = *(*v22 + 120);

      _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v86, &v77, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
      v48 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
      v47(&v77, v76, v90, v46, v48, v21);
      v83 = v77;
      *v84 = v78;
      v84[16] = v79;
    }

    else
    {
      v29 = *(*v22 + 120);

      _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v86, &v77, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
      v30 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
      v29(&v83, &v81, v90, v27, v30, v21);
    }
  }

  outlined destroy of Slice<IndexSet>(&v86, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
  v49 = *v84;
  if (*v84)
  {
    v50 = v83;
    v51 = v84[16];
    v72 = *&v84[21];
    v70 = v84[23];
    v71 = *&v84[17];
    v52 = a2 | ((HIDWORD(a2) & 1) << 32);
    v53 = v83;
    v73 = *&v84[8];
    v75 = v85;
    v54 = v84[8];
    v55 = HIDWORD(*&v84[8]);
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v92, v52, v21);
    *(v4 + 24) = v90[0];

    v56 = a1->f64[0] + *&v53;
    v57 = a1->f64[1] + *(&v53 + 1);
    *&v81 = v49;
    BYTE8(v81) = v54;
    HIDWORD(v81) = v55;
    v82[0] = v51 & 1;
    ResolvedGradientVector.add(_:scaledBy:)(&v81, 1.0);
    v58 = a1[2].f64[1] + v75.f64[0];
    v59 = a1[3].f64[0] + v75.f64[1];
    v60 = *(v4 + 48);
    v61 = *(v4 + 56);
    v62 = *(v4 + 60);
    v63 = *(v4 + 64);
    v64 = *(v4 + 72);
    v65 = *(v4 + 80);
    v66 = v57 - *(v4 + 40);
    a1->f64[0] = v56 - *(v4 + 32);
    a1->f64[1] = v66;
    *&v81 = v60;
    BYTE8(v81) = v61;
    HIDWORD(v81) = v62;
    v82[0] = v63;
    ResolvedGradientVector.add(_:scaledBy:)(&v81, -1.0);
    a1[2].f64[1] = v58 - v64;
    a1[3].f64[0] = v59 - v65;
    swift_beginAccess();
    v67 = *(v4 + 128);
    v77 = *(v4 + 112);
    v68 = *(v4 + 144);
    v78 = v67;
    v79 = v68;
    v80 = *(v4 + 160);
    v81 = v50;
    *v82 = v49;
    *&v82[24] = v75;
    *&v82[8] = v73;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v81, v76, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
    *(v4 + 112) = v50;
    *(v4 + 128) = v49;
    *(v4 + 136) = v73;
    *(v4 + 144) = v51;
    *(v4 + 151) = v70;
    *(v4 + 149) = v72;
    *(v4 + 145) = v71;
    *(v4 + 152) = v75;
    outlined destroy of Slice<IndexSet>(&v77, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
    *(v4 + 104) = a3;
    v69 = *(v4 + 96);

    if (v69 > 0.0)
    {
      *(v4 + 104) = (round(a3 / v69) + 1.0) * *(v4 + 96);
    }

    return 0;
  }

  else
  {

    return 1;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 64);
  v8 = *(v3 + 72);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_20;
  }

  if (*(v3 + 109) <= 1u)
  {
    if (!*(v3 + 109))
    {
      *(v3 + 56) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 109) = v10;
      goto LABEL_11;
    }

    *(v3 + 109) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 72) = v8 - *(v3 + 56) + a3;
    *(v3 + 56) = a3;
LABEL_20:
    swift_beginAccess();
    v37 = *(v3 + 96) + a1[1].f64[0];
    v39 = vaddq_f64(*(v3 + 80), *a1);
    swift_beginAccess();
    result = 0;
    v38 = *(v3 + 48);
    *a1 = vsubq_f64(v39, *(v3 + 32));
    a1[1].f64[0] = v37 - v38;
    return result;
  }

  if (*(v3 + 109) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 56))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 56) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 56);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 128);

  v41[0] = v14;
  v41[1] = AGCreateWeakAttribute();
  v42 = 0;
  v43 = v15;
  v16 = *(v4 + 136);
  if (v16)
  {
    v17 = *(v4 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>();
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>, MEMORY[0x1E69E6720]);
    v40[3] = v20;
    v40[0] = v16;
    v40[1] = v17;
    specialized Dictionary.subscript.setter(v40, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v22 = *(v4 + 32);
  v23 = *(v4 + 40);
  v24 = *(v4 + 48);

  v25 = COERCE_DOUBLE(specialized Animation.animate<A>(value:time:context:)(v41, v21, v22, v23, v24, v13));
  v27 = v26;
  v29 = v28;
  v31 = v30;

  if (v31)
  {

    return 1;
  }

  else
  {
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v43, a2 | ((HIDWORD(a2) & 1) << 32), v13);
    *(v4 + 24) = v41[0];

    v33 = a1[1].f64[0] + v29;
    v34 = *(v4 + 48);
    v35 = a1->f64[1] + v27 - *(v4 + 40);
    a1->f64[0] = a1->f64[0] + v25 - *(v4 + 32);
    a1->f64[1] = v35;
    a1[1].f64[0] = v33 - v34;
    swift_beginAccess();
    *(v4 + 80) = v25;
    *(v4 + 88) = v27;
    *(v4 + 96) = v29;
    *(v4 + 72) = a3;
    v36 = *(v4 + 64);
    if (v36 > 0.0)
    {
      *(v4 + 72) = v36 * (round(a3 / v36) + 1.0);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 296);
  v8 = *(v3 + 304);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_22;
  }

  if (*(v3 + 573) <= 1u)
  {
    if (!*(v3 + 573))
    {
      *(v3 + 288) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 573) = v10;
      goto LABEL_11;
    }

    *(v3 + 573) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 304) = v8 - *(v3 + 288) + a3;
    *(v3 + 288) = a3;
LABEL_22:
    swift_beginAccess();
    v76 = *(v3 + 520);
    __src[12] = *(v3 + 504);
    __src[13] = v76;
    v77 = *(v3 + 552);
    __src[14] = *(v3 + 536);
    __src[15] = v77;
    v78 = *(v3 + 456);
    __src[8] = *(v3 + 440);
    __src[9] = v78;
    v79 = *(v3 + 488);
    __src[10] = *(v3 + 472);
    __src[11] = v79;
    v80 = *(v3 + 392);
    __src[4] = *(v3 + 376);
    __src[5] = v80;
    v81 = *(v3 + 424);
    __src[6] = *(v3 + 408);
    __src[7] = v81;
    v82 = *(v3 + 328);
    __src[0] = *(v3 + 312);
    __src[1] = v82;
    v83 = *(v3 + 360);
    __src[2] = *(v3 + 344);
    __src[3] = v83;
    v84 = a1[13];
    __dst[12] = a1[12];
    __dst[13] = v84;
    v85 = a1[15];
    __dst[14] = a1[14];
    __dst[15] = v85;
    v86 = a1[9];
    __dst[8] = a1[8];
    __dst[9] = v86;
    v87 = a1[11];
    __dst[10] = a1[10];
    __dst[11] = v87;
    v88 = a1[5];
    __dst[4] = a1[4];
    __dst[5] = v88;
    v89 = a1[7];
    __dst[6] = a1[6];
    __dst[7] = v89;
    v90 = a1[1];
    __dst[0] = *a1;
    __dst[1] = v90;
    v91 = a1[3];
    __dst[2] = a1[2];
    __dst[3] = v91;
    static ConcentricRectangle.AnimatableData.+ infix(_:_:)(__dst, __src, a1);
    swift_beginAccess();
    v92 = *(v3 + 240);
    __src[12] = *(v3 + 224);
    __src[13] = v92;
    v93 = *(v3 + 272);
    __src[14] = *(v3 + 256);
    __src[15] = v93;
    v94 = *(v3 + 176);
    __src[8] = *(v3 + 160);
    __src[9] = v94;
    v95 = *(v3 + 208);
    __src[10] = *(v3 + 192);
    __src[11] = v95;
    v96 = *(v3 + 112);
    __src[4] = *(v3 + 96);
    __src[5] = v96;
    v97 = *(v3 + 144);
    __src[6] = *(v3 + 128);
    __src[7] = v97;
    v98 = *(v3 + 48);
    __src[0] = *(v3 + 32);
    __src[1] = v98;
    v99 = *(v3 + 80);
    __src[2] = *(v3 + 64);
    __src[3] = v99;
    v100 = a1[13];
    __dst[12] = a1[12];
    __dst[13] = v100;
    v101 = a1[15];
    __dst[14] = a1[14];
    __dst[15] = v101;
    v102 = a1[9];
    __dst[8] = a1[8];
    __dst[9] = v102;
    v103 = a1[11];
    __dst[10] = a1[10];
    __dst[11] = v103;
    v104 = a1[5];
    __dst[4] = a1[4];
    __dst[5] = v104;
    v105 = a1[7];
    __dst[6] = a1[6];
    __dst[7] = v105;
    v106 = a1[1];
    __dst[0] = *a1;
    __dst[1] = v106;
    v107 = a1[3];
    __dst[2] = a1[2];
    __dst[3] = v107;
    static ConcentricRectangle.AnimatableData.- infix(_:_:)(__dst, __src, a1);
    return 0;
  }

  if (*(v3 + 573) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 288))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 288) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = *(v3 + 288);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 592);

  v159[0] = v14;
  v159[1] = AGCreateWeakAttribute();
  v160 = 0;
  v161 = v15;
  v16 = *(v4 + 600);
  if (v16 != 0.0)
  {
    v17 = *(v4 + 608);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ConcentricRectangle.AnimatableData>, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v19 = v18;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ConcentricRectangle.AnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ConcentricRectangle.AnimatableData>, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData);
    __src[1].f64[1] = v20;
    __src[0].f64[0] = v16;
    __src[0].f64[1] = v17;
    specialized Dictionary.subscript.setter(__src, v19);
  }

  v21 = a3 - v13;
  swift_beginAccess();
  v22 = *(v4 + 16);
  swift_beginAccess();
  v23 = *(v4 + 240);
  v138 = *(v4 + 224);
  v139 = v23;
  v24 = *(v4 + 272);
  v140 = *(v4 + 256);
  v141 = v24;
  v25 = *(v4 + 176);
  v134 = *(v4 + 160);
  v135 = v25;
  v26 = *(v4 + 208);
  v136 = *(v4 + 192);
  v137 = v26;
  v27 = *(v4 + 112);
  v130 = *(v4 + 96);
  v131 = v27;
  v28 = *(v4 + 144);
  v132 = *(v4 + 128);
  v133 = v28;
  v29 = *(v4 + 48);
  v126 = *(v4 + 32);
  v127 = v29;
  v30 = *(v4 + 80);
  v128 = *(v4 + 64);
  v129 = v30;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v31 == &type metadata for ConcentricRectangle.AnimatableData)
  {
    v109 = v126;
    v110 = v127;
    v34 = *(*v22 + 120);
    v35 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);

    v34(__dst, &v109, v159, &type metadata for ConcentricRectangle.AnimatableData, v35, v21);
    __src[0] = __dst[0];
    __src[1] = __dst[1];
    LOBYTE(__src[2].f64[0]) = LOBYTE(__dst[2].f64[0]);
  }

  else
  {
    v32 = *(*v22 + 120);
    v33 = lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData();

    v32(__src, &v126, v159, &type metadata for ConcentricRectangle.AnimatableData, v33, v21);
  }

  memcpy(__dst, __src, 0x101uLL);
  if (_s7SwiftUI19ConcentricRectangleV14AnimatableDataVSgWOg(__dst) == 1)
  {

    return 1;
  }

  v155 = __src[12];
  v156 = __src[13];
  v157 = __src[14];
  v158 = __src[15];
  v151 = __src[8];
  v152 = __src[9];
  v153 = __src[10];
  v154 = __src[11];
  v147 = __src[4];
  v148 = __src[5];
  v149 = __src[6];
  v150 = __src[7];
  v143 = __src[0];
  v144 = __src[1];
  v145 = __src[2];
  v146 = __src[3];
  specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v161, a2 | ((HIDWORD(a2) & 1) << 32), v21);
  *(v4 + 24) = v159[0];

  v37 = a1[13];
  v121 = a1[12];
  v122 = v37;
  v38 = a1[15];
  v123 = a1[14];
  v124 = v38;
  v39 = a1[9];
  v117 = a1[8];
  v118 = v39;
  v40 = a1[11];
  v119 = a1[10];
  v120 = v40;
  v41 = a1[5];
  v113 = a1[4];
  v114 = v41;
  v42 = a1[7];
  v115 = a1[6];
  v116 = v42;
  v43 = a1[1];
  v109 = *a1;
  v110 = v43;
  v44 = a1[3];
  v111 = a1[2];
  v112 = v44;
  static ConcentricRectangle.AnimatableData.+ infix(_:_:)(&v109, &v143, a1);
  v45 = *(v4 + 224);
  v46 = *(v4 + 256);
  v47 = *(v4 + 272);
  v122 = *(v4 + 240);
  v123 = v46;
  v124 = v47;
  v48 = *(v4 + 160);
  v49 = *(v4 + 192);
  v50 = *(v4 + 208);
  v118 = *(v4 + 176);
  v119 = v49;
  v120 = v50;
  v121 = v45;
  v51 = *(v4 + 96);
  v52 = *(v4 + 128);
  v53 = *(v4 + 144);
  v114 = *(v4 + 112);
  v115 = v52;
  v116 = v53;
  v117 = v48;
  v54 = *(v4 + 32);
  v55 = *(v4 + 64);
  v56 = *(v4 + 80);
  v110 = *(v4 + 48);
  v111 = v55;
  v112 = v56;
  v113 = v51;
  v57 = a1[12];
  v58 = a1[14];
  v59 = a1[15];
  v108[13] = a1[13];
  v108[14] = v58;
  v108[15] = v59;
  v109 = v54;
  v60 = a1[8];
  v61 = a1[10];
  v62 = a1[11];
  v108[9] = a1[9];
  v108[10] = v61;
  v108[11] = v62;
  v108[12] = v57;
  v63 = a1[5];
  v108[4] = a1[4];
  v108[5] = v63;
  v64 = a1[7];
  v108[6] = a1[6];
  v108[7] = v64;
  v108[8] = v60;
  v65 = a1[1];
  v108[0] = *a1;
  v108[1] = v65;
  v66 = a1[3];
  v108[2] = a1[2];
  v108[3] = v66;
  static ConcentricRectangle.AnimatableData.- infix(_:_:)(v108, &v109, a1);
  swift_beginAccess();
  v67 = v156;
  *(v4 + 504) = v155;
  *(v4 + 520) = v67;
  v68 = v158;
  *(v4 + 536) = v157;
  *(v4 + 552) = v68;
  v69 = v152;
  *(v4 + 440) = v151;
  *(v4 + 456) = v69;
  v70 = v154;
  *(v4 + 472) = v153;
  *(v4 + 488) = v70;
  v71 = v148;
  *(v4 + 376) = v147;
  *(v4 + 392) = v71;
  v72 = v150;
  *(v4 + 408) = v149;
  *(v4 + 424) = v72;
  v73 = v144;
  *(v4 + 312) = v143;
  *(v4 + 328) = v73;
  v74 = v146;
  *(v4 + 344) = v145;
  *(v4 + 360) = v74;
  v75 = *(v4 + 296);
  *(v4 + 304) = a3;
  if (v75 > 0.0)
  {
    *(v4 + 304) = v75 * (round(a3 / v75) + 1.0);
  }

  return 0;
}

{
  v4 = v3;
  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_20;
  }

  if (*(v3 + 141) <= 1u)
  {
    if (!*(v3 + 141))
    {
      *(v3 + 72) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 141) = v10;
      goto LABEL_11;
    }

    *(v3 + 141) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 88) = v8 - *(v3 + 72) + a3;
    *(v3 + 72) = a3;
LABEL_20:
    swift_beginAccess();
    v29 = *(v3 + 128) + a1[2].f64[0];
    v33 = vaddq_f64(*(v3 + 96), *a1);
    v35 = vaddq_f64(*(v3 + 112), a1[1]);
    swift_beginAccess();
    result = 0;
    v30 = *(v3 + 64);
    v31 = vsubq_f64(v35, *(v3 + 48));
    *a1 = vsubq_f64(v33, *(v3 + 32));
    a1[1] = v31;
    a1[2].f64[0] = v29 - v30;
    return result;
  }

  if (*(v3 + 141) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 72))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 72) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 72);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 160);

  v36[0] = v14;
  v36[1] = AGCreateWeakAttribute();
  v37 = 0;
  v38 = v15;
  v16 = *(v4 + 168);
  if (v16 != 0.0)
  {
    v17 = *(v4 + 176);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>();
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>, MEMORY[0x1E69E6720]);
    v40.f64[1] = v20;
    v39.f64[0] = v16;
    v39.f64[1] = v17;
    specialized Dictionary.subscript.setter(&v39, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v22 = *(v4 + 48);
  v43[0] = *(v4 + 32);
  v43[1] = v22;
  v44 = *(v4 + 64);

  specialized Animation.animate<A>(value:time:context:)(v43, v36, v21, &v39, v13);
  v32 = v39;
  v34 = v40;
  v23 = v41;

  if (v42)
  {

    return 1;
  }

  else
  {
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v38, a2 | ((HIDWORD(a2) & 1) << 32), v13);
    *(v4 + 24) = v36[0];

    v25 = v23 + a1[2].f64[0];
    v26 = *(v4 + 64);
    v27 = vsubq_f64(vaddq_f64(v34, a1[1]), *(v4 + 48));
    *a1 = vsubq_f64(vaddq_f64(v32, *a1), *(v4 + 32));
    a1[1] = v27;
    a1[2].f64[0] = v25 - v26;
    swift_beginAccess();
    *(v4 + 96) = v32;
    *(v4 + 112) = v34;
    *(v4 + 128) = v23;
    *(v4 + 88) = a3;
    v28 = *(v4 + 80);
    if (v28 > 0.0)
    {
      *(v4 + 88) = v28 * (round(a3 / v28) + 1.0);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 72);
  v8 = *(v3 + 80);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_22;
  }

  if (*(v3 + 125) <= 1u)
  {
    if (!*(v3 + 125))
    {
      *(v3 + 64) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 125) = v10;
      goto LABEL_11;
    }

    *(v3 + 125) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 80) = v8 - *(v3 + 64) + a3;
    *(v3 + 64) = a3;
LABEL_22:
    swift_beginAccess();
    v37 = vaddq_f64(*(v3 + 104), a1[1]);
    v39 = vaddq_f64(*(v3 + 88), *a1);
    swift_beginAccess();
    result = 0;
    v35 = vsubq_f64(v37, *(v3 + 48));
    *a1 = vsubq_f64(v39, *(v3 + 32));
    a1[1] = v35;
    return result;
  }

  if (*(v3 + 125) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 64))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 64) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = *(v3 + 64);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 144);

  v47[0] = v14;
  v47[1] = AGCreateWeakAttribute();
  v48 = 0;
  v49 = v15;
  v16 = *(v4 + 152);
  if (v16 != 0.0)
  {
    v17 = *(v4 + 160);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Edge.Corner.Style.AnimatableData>, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v19 = v18;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Edge.Corner.Style.AnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Edge.Corner.Style.AnimatableData>, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData);
    v45.f64[1] = v20;
    v44.f64[0] = v16;
    v44.f64[1] = v17;
    specialized Dictionary.subscript.setter(&v44, v19);
  }

  v21 = a3 - v13;
  swift_beginAccess();
  v22 = *(v4 + 16);
  swift_beginAccess();
  v23 = *(v4 + 32);
  v24 = *(v4 + 40);
  v25 = *(v4 + 48);
  v26 = *(v4 + 56);
  v43[0] = v23;
  v43[1] = v24;
  v43[2] = v25;
  v43[3] = v26;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v27 == &type metadata for Edge.Corner.Style.AnimatableData)
  {
    v40[0] = v23;
    v40[1] = v24;
    v40[2] = v25;
    v40[3] = v26;
    v31 = *(*v22 + 120);
    v32 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);

    v31(v41, v40, v47, &type metadata for Edge.Corner.Style.AnimatableData, v32, v21);
    LOBYTE(v32) = v42;
    v44 = v41[0];
    v45 = v41[1];
    v46 = v42;

    if (v32)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v28 = *(*v22 + 120);
    v29 = lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData();

    v28(&v44, v43, v47, &type metadata for Edge.Corner.Style.AnimatableData, v29, v21);

    if (v46)
    {
LABEL_15:

      return 1;
    }
  }

  v36 = v44;
  v38 = v45;
  specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v49, a2 | ((HIDWORD(a2) & 1) << 32), v21);
  *(v4 + 24) = v47[0];

  v33 = vsubq_f64(vaddq_f64(v38, a1[1]), *(v4 + 48));
  *a1 = vsubq_f64(vaddq_f64(v36, *a1), *(v4 + 32));
  a1[1] = v33;
  swift_beginAccess();
  *(v4 + 88) = v36;
  *(v4 + 104) = v38;
  *(v4 + 80) = a3;
  v34 = *(v4 + 72);
  if (v34 > 0.0)
  {
    *(v4 + 80) = v34 * (round(a3 / v34) + 1.0);
  }

  return 0;
}

void FrameVelocityFilter.addSample(_:time:)(double *a1, double a2, double a3, double a4, double a5)
{
  v6 = *a1;
  if ((*(v5 + 56) & 1) == 0)
  {
    v7 = *(v5 + 16);
    if (v7 < v6)
    {
      v19 = a3;
      v20 = a2;
      v18 = a4;
      v8 = a5;
      v9 = 1.0 / (v6 - v7);
      v21.origin.x = v9 * (a2 - *(v5 + 24));
      x = v21.origin.x;
      v21.origin.y = v9 * (a3 - *(v5 + 32));
      y = v21.origin.y;
      v21.size.width = v9 * (a4 - *(v5 + 40));
      width = v21.size.width;
      v21.size.height = v9 * (a5 - *(v5 + 48));
      height = v21.size.height;
      v14 = fabs(CGRectGetMinX(v21));
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      v15 = fabs(CGRectGetMaxX(v22));
      if (v14 <= v15)
      {
        v14 = v15;
      }

      v23.origin.x = x;
      v23.origin.y = y;
      v23.size.width = width;
      v23.size.height = height;
      v16 = fabs(CGRectGetMinY(v23));
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      v17 = fabs(CGRectGetMaxY(v24));
      if (v16 > v17)
      {
        v17 = v16;
      }

      if (v14 > v17)
      {
        v17 = v14;
      }

      if ((*(v5 + 8) & 1) == 0)
      {
        v17 = *v5 + (v17 - *v5) * 0.35;
      }

      *v5 = v17;
      *(v5 + 8) = 0;
      a5 = v8;
      a4 = v18;
      a3 = v19;
      a2 = v20;
    }
  }

  *(v5 + 16) = v6;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  *(v5 + 56) = 0;
}

uint64_t closure #1 in GraphDelegate.beginTransaction()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  specialized static NSRunLoop.addObserver(_:)(partial apply for closure #1 in closure #1 in GraphDelegate.beginTransaction(), v6);
}

Swift::Void __swiftcall GraphDelegate.beginTransaction()()
{
  v2 = v1;
  v3 = v0;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v4;
  v6 = objc_opt_self();

  if ([v6 isMainThread])
  {
    closure #1 in GraphDelegate.beginTransaction()(v4, v3, v2);
  }

  else
  {
    v7 = [objc_opt_self() mainRunLoop];
    type metadata accessor for AGGraphRef?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NSRunLoopMode>, type metadata accessor for NSRunLoopMode, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_18DDA6EB0;
    v9 = *MEMORY[0x1E695DA28];
    *(v8 + 32) = *MEMORY[0x1E695DA28];
    type metadata accessor for NSRunLoopMode(0);
    v10 = v9;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v13[4] = partial apply for closure #1 in GraphDelegate.beginTransaction();
    v13[5] = v5;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = thunk for @escaping @callee_guaranteed () -> ();
    v13[3] = &block_descriptor_20;
    v12 = _Block_copy(v13);

    [v7 performInModes:isa block:v12];

    _Block_release(v12);
  }
}

uint64_t sub_18D333B50()
{
  MEMORY[0x193AC4950](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18D333B88()
{

  return swift_deallocObject();
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance CountingIndexCollection<A>()
{
  swift_getWitnessTable();

  return Collection._copyToContiguousArray()();
}

uint64_t protocol witness for Sequence.makeIterator() in conformance CountingIndexCollection<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *(a1 - 8);
  (*(v8 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v5 = type metadata accessor for IndexingIterator();
  CountingIndexCollection.startIndex.getter(a2 + *(v5 + 36));
  v6 = *(v8 + 8);

  return v6(v2, a1);
}

uint64_t CountingIndexCollection.startIndex.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v9 - v4;
  dispatch thunk of Collection.startIndex.getter();
  v6 = dispatch thunk of Collection.isEmpty.getter();
  swift_getAssociatedConformanceWitness();
  (*(v3 + 32))(a1, v5, AssociatedTypeWitness);
  result = type metadata accessor for CountingIndex();
  v8 = a1 + *(result + 36);
  *v8 = 0;
  *(v8 + 8) = v6 & 1;
  return result;
}

uint64_t CountingIndexCollection.endIndex.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v8 - v4;
  dispatch thunk of Collection.endIndex.getter();
  swift_getAssociatedConformanceWitness();
  (*(v3 + 32))(a1, v5, AssociatedTypeWitness);
  result = type metadata accessor for CountingIndex();
  v7 = a1 + *(result + 36);
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t static CountingIndex.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for CountingIndex() + 36);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 8);
  if (v6)
  {
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance CountingIndexCollection<A>(uint64_t **a1))()
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
  v2[4] = CountingIndexCollection.subscript.read(v2);
  return protocol witness for Collection.subscript.read in conformance UnsafeMutableBufferProjectionPointer<A, B>;
}

uint64_t (*CountingIndexCollection.subscript.read(uint64_t *a1))()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v3 = *(AssociatedTypeWitness - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  CountingIndexCollection.subscript.getter(v4);
  return CountingIndexCollection.subscript.read;
}

uint64_t CountingIndexCollection.subscript.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = dispatch thunk of Collection.subscript.read();
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, v4, AssociatedTypeWitness);
  return v2(&v7, 0);
}

void protocol witness for Collection.subscript.read in conformance ArrayWith2Inline<A>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void ArrayWith2Inline.subscript.read(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance CountingIndexCollection<A>(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t))
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for CountingIndex();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  (*(v8 + 32))(&v13 - v10, a1, v7, v9);
  a4(v11, a2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t CountingIndexCollection.index(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  dispatch thunk of Collection.index(after:)();
  (*(v4 + 16))(v9, v12, AssociatedTypeWitness);
  dispatch thunk of Collection.endIndex.getter();
  swift_getAssociatedConformanceWitness();
  v13 = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = *(v4 + 8);
  v14(v6, AssociatedTypeWitness);
  if (v13)
  {
    v14(v12, AssociatedTypeWitness);
    v15 = 0;
LABEL_5:
    v19 = v22;
    (*(v4 + 32))(v22, v9, AssociatedTypeWitness);
    result = type metadata accessor for CountingIndex();
    v20 = v19 + *(result + 36);
    *v20 = v15;
    *(v20 + 8) = v13 & 1;
    return result;
  }

  result = type metadata accessor for CountingIndex();
  v17 = (a1 + *(result + 36));
  if ((v17[1] & 1) == 0)
  {
    v18 = *v17;
    result = (v14)(v12, AssociatedTypeWitness);
    v15 = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a6 - 8);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v16 + ((*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80)), *(v16 + 16), v14, v12);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a6);
  }

  return result;
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<A.Sequence.Element>) -> (@out A1, @error @owned Error)(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(v3 + 40))();
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t CountingIndexCollection.index(_:offsetBy:limitedBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v36 = a3;
  v37 = a5;
  v38 = *(*(a4 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  v32 = a2;
  v33 = a1;
  dispatch thunk of BidirectionalCollection.index(_:offsetBy:limitedBy:)();
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v34 + 8))(v10, v35);
    swift_getAssociatedConformanceWitness();
    v21 = type metadata accessor for CountingIndex();
    return (*(*(v21 - 8) + 56))(v37, 1, 1, v21);
  }

  v35 = *(v11 + 32);
  v35(v20, v10, AssociatedTypeWitness);
  v23 = *(v11 + 16);
  v36 = v17;
  v23(v17, v20, AssociatedTypeWitness);
  dispatch thunk of Collection.endIndex.getter();
  swift_getAssociatedConformanceWitness();
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = *(v11 + 8);
  v25(v14, AssociatedTypeWitness);
  if ((v24 & 1) == 0)
  {
    result = type metadata accessor for CountingIndex();
    v28 = (v33 + *(result + 36));
    v27 = v37;
    if ((v28[1] & 1) == 0)
    {
      v29 = *v28;
      result = (v25)(v20, AssociatedTypeWitness);
      v26 = v29 + v32;
      if (!__OFADD__(v29, v32))
      {
        goto LABEL_7;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  v25(v20, AssociatedTypeWitness);
  v26 = 0;
  v27 = v37;
LABEL_7:
  v35(v27, v36, AssociatedTypeWitness);
  v30 = type metadata accessor for CountingIndex();
  v31 = &v27[*(v30 + 36)];
  *v31 = v26;
  v31[8] = v24 & 1;
  return (*(*(v30 - 8) + 56))(v27, 0, 1, v30);
}

void storeEnumTagSinglePayload for CountingIndex(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = ((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v7 >= a3)
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = (a3 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
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

    if (v7 >= a2)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v8] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_29;
        }

        *&a1[v8] = 0;
      }

      else if (v12)
      {
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      }

      if (!a2)
      {
        return;
      }

LABEL_29:
      v15 = *(v6 + 56);

      v15();
      return;
    }
  }

  v13 = ~v7 + a2;
  bzero(a1, v8);
  if (v8 <= 3)
  {
    v14 = (v13 >> 8) + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v13;
    if (v12 > 1)
    {
LABEL_24:
      if (v12 == 2)
      {
        *&a1[v8] = v14;
      }

      else
      {
        *&a1[v8] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v12 > 1)
    {
      goto LABEL_24;
    }
  }

  if (v12)
  {
    a1[v8] = v14;
  }
}

uint64_t getEnumTagSinglePayload for CountingIndex(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v7 = (a2 - v5 + 255) >> 8;
  if (v6 <= 3)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v9 = 1;
  }

  if (v8 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = *&a1[v6];
      if (!*&a1[v6])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = *&a1[v6];
      if (!v11)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v10 || (v11 = a1[v6]) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v12 = (v11 - 1) << (8 * v6);
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return v5 + (v13 | v12) + 1;
}

uint64_t static CountingIndex.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v22 - v11;
  v13 = *(v6 + 16);
  v13(v22 - v11, a1, v10);
  v14 = type metadata accessor for CountingIndex();
  v15 = a1 + *(v14 + 36);
  if (*(v15 + 8))
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v16 = *v15;
  }

  v22[1] = v16;
  (v13)(v8, a2, a3);
  v17 = a2 + *(v14 + 36);
  if (*(v17 + 8))
  {
    v18 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v18 = *v17;
  }

  v22[0] = v18;
  v19 = < infix<A, B>(_:_:)();
  v20 = *(v6 + 8);
  v20(v8, a3);
  v20(v12, a3);
  return v19 & 1;
}

uint64_t CollectionChanges.endIndex.getter()
{
  v1 = *v0;
  v2 = type metadata accessor for CollectionChanges.Element();
  return MEMORY[0x193ABF2C0](v1, v2);
}

double SectionAccumulator.RowIDs.heterogeneous.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v3 + 56 * v4;
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  v8 = __OFADD__(v6, v7);
  v9 = v6 + v7;
  if (v8)
  {
    goto LABEL_16;
  }

  if (*(v3 + 80) == v9)
  {
LABEL_4:
    v10 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
LABEL_5:
      HeterogeneousCollection.init(_:)(v10, v21);
      v11 = v21[1];
      *a1 = v21[0];
      *(a1 + 16) = v11;
      return *&v11;
    }

    v1 = MEMORY[0x1E69E7CC0];
    v16 = __CocoaSet.count.getter();
    if (!v16)
    {
LABEL_17:
      v10 = v1;
      goto LABEL_5;
    }

    v1 = v16;
    v17 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs10AnyKeyPathC_Tt1g5(v16, 0);
    specialized Array._copyContents(initializing:)(v17 + 32, v1, MEMORY[0x1E69E7CC0]);
    v19 = v18;

    v10 = v17;
    if (v19 == v1)
    {
      goto LABEL_5;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v4 == 1 && *(v3 + 64) == 3)
  {
    v12 = *(v3 + 48);
    v13 = *(v3 + 56);
    v14 = *(v3 + 32);
    v15 = *(v3 + 40);
    *a1 = v14;
    *(a1 + 8) = v15;
    *(a1 + 16) = v12;
    *(a1 + 24) = v13;

    outlined copy of SectionAccumulator.RowIDs.IDs(v14, v15, v12, v13, 3u);
  }

  else
  {
    *&v11 = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return *&v11;
}

uint64_t outlined copy of SectionAccumulator.RowIDs.IDs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 1u)
  {
    if (a5 == 2)
    {
    }

    if (a5 == 3)
    {
    }
  }

  else if (a5)
  {
    if (a5 == 1)
    {
    }
  }

  else
  {
  }

  return result;
}

uint64_t changedInsertsRemovesAndMoves(from:to:)@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v195 = type metadata accessor for IndexSetBuilder(0);
  MEMORY[0x1EEE9AC00](v195);
  v7 = &v177 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v190 = &v177 - v9;
  v10 = type metadata accessor for IndexSet();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v177 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v177 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v191 = &v177 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v189 = &v177 - v20;
  v21 = type metadata accessor for DiffResultBuilder(0);
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v22);
  v198 = &v177 - v25;
  v26 = *a1;
  v27 = *(*a1 + 16);
  if (!v27)
  {
    IndexSet.init(integersIn:)();
    IndexSet.init()();
    v49 = type metadata accessor for DiffResult(0);
    *&a3[*(v49 + 20)] = MEMORY[0x1E69E7CC0];
    return (*(v11 + 32))(&a3[*(v49 + 24)], v13, v10);
  }

  v185 = v7;
  v28 = *a2;
  v29 = *(v26 + 32);
  v196 = v26 + 32;
  v222 = v29;
  v30 = *(v28 + 16);
  if (!v30)
  {

    IndexSet.init(integersIn:)();
    v51 = type metadata accessor for DiffResult(0);
    IndexSet.init()();
    (*(v11 + 32))(a3, v16, v10);

    *&a3[*(v51 + 20)] = MEMORY[0x1E69E7CC0];
    return result;
  }

  v212 = v29;
  v183 = v24;
  v184 = v23;
  v182 = v11;
  v187 = v28;
  v31 = *(v28 + 32);
  v186 = v28 + 32;
  v221 = v31;
  v32 = a1[2];
  v213 = v31;
  if (v32)
  {
    v33 = a1[3];

    v34 = v32;
  }

  else
  {

    v36 = specialized HeterogeneousIndexLookupTable.init(_:)(v35);
    v33 = v37;
    a1[2] = v36;
    a1[3] = v37;
  }

  v38 = *(v34 + 16);
  v194 = v34;
  v193 = v26;
  if (v38 && (v39 = specialized __RawDictionaryStorage.find<A>(_:)(*(v213 + 16)), (v40 & 1) != 0))
  {
    v41 = *(*(v34 + 56) + 8 * v39);
  }

  else
  {
    v41 = 0;
  }

  v220 = v41;
  v42 = a1[1];
  v43 = *(v42 + 16);
  if (v43)
  {
    if (v33 == *(v42 + 4 * v43 + 28))
    {
      goto LABEL_14;
    }

LABEL_17:

    v46 = a1[1];
    v217 = *a1;
    v218 = v46;
    v219 = *(a1 + 1);
    v47 = *a2;
    v48 = a2[1];
    v216 = *(a2 + 1);
    *&v215 = v47;
    *(&v215 + 1) = v48;

    HeterogeneousCollection.differenceWithDuplicates(to:)(&v215, a3);
  }

  if (v33)
  {
    goto LABEL_17;
  }

LABEL_14:
  v202 = v41;
  if (a2[2])
  {
    v44 = a2[3];
    v45 = a2[2];
  }

  else
  {

    v53 = specialized HeterogeneousIndexLookupTable.init(_:)(v52);
    v44 = v54;
    a2[2] = v53;
    a2[3] = v54;
    v45 = v53;
  }

  v55 = *(v45 + 16);
  v192 = v45;
  if (v55)
  {
    v56 = v212;
    specialized __RawDictionaryStorage.find<A>(_:)(v212[2]);
    if (v57)
    {
    }

    else
    {
      v58 = 0;
    }
  }

  else
  {
    v58 = 0;
    v56 = v212;
  }

  v200 = v58;
  v214 = v58;
  v59 = a2[1];
  v60 = *(v59 + 16);
  if (!v60)
  {
    if (!v44)
    {
      goto LABEL_26;
    }

LABEL_210:

    v174 = a1[1];
    v217 = *a1;
    v218 = v174;
    v219 = *(a1 + 1);
    v175 = *a2;
    v176 = a2[1];
    v216 = *(a2 + 1);
    *&v215 = v175;
    *(&v215 + 1) = v176;

    HeterogeneousCollection.differenceWithDuplicates(to:)(&v215, a3);
  }

  if (v44 != *(v59 + 4 * v60 + 28))
  {
    goto LABEL_210;
  }

LABEL_26:
  v179 = v10;
  v180 = a3;

  v61 = v198;
  IndexSet.init()();
  v62 = v195;
  v63 = v61 + *(v195 + 20);
  *v63 = 0;
  *(v63 + 8) = 0;
  v178 = v63;
  *(v63 + 16) = 1;
  v64 = v61 + *(v184 + 24);
  IndexSet.init()();
  v65 = *(v62 + 20);
  v181 = v64;
  v66 = v64 + v65;
  *v66 = 0;
  *(v66 + 8) = 0;
  v177 = v66;
  v201 = 1;
  *(v66 + 16) = 1;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  result = swift_beginAccess();
  v210 = 0;
  v67 = 0;
  v212 = 0;
  v68 = 0;
  v197 = 0;
  v209 = 0;
  v205 = 0;
  v207 = 0;
  v69 = 0;
  v70 = 0;
  v208 = 0;
  v71 = 0;
  v204 = MEMORY[0x1E69E7CC0];
  v211 = 1;
  v199 = v213;
  v206 = v56;
  v72 = v202;
  v73 = v200;
  v188 = v27;
  v203 = v30;
  while (1)
  {
    if (v71 >= v27)
    {
      v69 = v208;
      if (v208 >= v30)
      {
        break;
      }
    }

    if (v30 == v69)
    {
      if (v73)
      {
        v75 = v72;
        v76 = v70;
        v56 = v206;
        result = (*(*v73 + 112))(v68, v206);
        if ((v77 & 1) == 0)
        {
          v89 = result;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v204 + 2) + 1, 1, v204);
            v204 = result;
          }

          v91 = *(v204 + 2);
          v90 = *(v204 + 3);
          if (v91 >= v90 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), v91 + 1, 1, v204);
            v204 = result;
          }

          v70 = v76;
          v72 = v75;
          v92 = v204;
          *(v204 + 2) = v91 + 1;
          v93 = &v92[16 * v91];
          *(v93 + 4) = v67;
          *(v93 + 5) = v89;
          v56 = v206;
          v30 = v203;
          goto LABEL_70;
        }

        v70 = v76;
        v72 = v75;
        v30 = v203;
      }

      if (v211)
      {
        if (__OFADD__(v67, 1))
        {
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
LABEL_220:
          __break(1u);
LABEL_221:
          __break(1u);
LABEL_222:
          __break(1u);
LABEL_223:
          __break(1u);
LABEL_224:
          __break(1u);
LABEL_225:
          __break(1u);
LABEL_226:
          __break(1u);
LABEL_227:
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
          return result;
        }

        if (v67 + 1 < v67)
        {
          goto LABEL_213;
        }

        v207 = v67 + 1;
        v211 = 0;
        v205 = v67;
      }

      else if (v207 == v67)
      {
        if (__OFADD__(v67, 1))
        {
          goto LABEL_218;
        }

        if (v67 + 1 < v205)
        {
          goto LABEL_221;
        }

        v207 = v67 + 1;
        v211 = 0;
      }

      else
      {
        v94 = v70;
        result = IndexSet.insert(integersIn:)();
        if (__OFADD__(v67, 1))
        {
          goto LABEL_216;
        }

        if (v67 + 1 < v67)
        {
          goto LABEL_220;
        }

        v207 = v67 + 1;
        v211 = 0;
        v205 = v67;
        v70 = v94;
      }

LABEL_70:
      ++v67;
      ++v68;
      v69 = v30;
      if (v68 == v56[3])
      {
        v68 = 0;
        v95 = v71 + 1;
        v69 = v30;
        v71 = v27;
        if (v95 != v27)
        {
          if ((v95 & 0x8000000000000000) != 0)
          {
            goto LABEL_214;
          }

          if (v95 >= *(v193 + 16))
          {
            goto LABEL_215;
          }

          v71 = v95;
          v96 = v72;
          v97 = v70;
          v98 = *(v196 + 8 * v95);
          v222 = v98;

          v99 = v192;
          if (*(v192 + 16))
          {
            v100 = specialized __RawDictionaryStorage.find<A>(_:)(v98[2]);
            v56 = v98;
            if (v101)
            {
              v74 = *(*(v99 + 56) + 8 * v100);
            }

            else
            {
              v74 = 0;
            }
          }

          else
          {
            v74 = 0;
            v56 = v98;
          }

          v214 = v74;

          v68 = 0;
          v69 = v203;
          v206 = v56;
          v73 = v74;
          v70 = v97;
          v72 = v96;
          v30 = v203;
        }
      }
    }

    else if (v27 == v71)
    {
      v78 = v213;
      if (v72 && (v78 = v199, result = (*(*v72 + 112))(v212, v199), (v79 & 1) == 0))
      {
        v70 = v209;
        v78 = v199;
        v80 = v210;
      }

      else
      {
        if (v201)
        {
          v80 = v210;
          v70 = v210 + 1;
          if (__OFADD__(v210, 1))
          {
            goto LABEL_217;
          }

          if (v70 < v210)
          {
            goto LABEL_219;
          }
        }

        else
        {
          if (v209 == v210)
          {
            v70 = v209 + 1;
            if (__OFADD__(v209, 1))
            {
              goto LABEL_227;
            }

            if (v70 < v197)
            {
              goto LABEL_228;
            }

            v201 = 0;
            v80 = v209;
            goto LABEL_96;
          }

          result = IndexSet.insert(integersIn:)();
          v80 = v210;
          v70 = v210 + 1;
          if (__OFADD__(v210, 1))
          {
            goto LABEL_226;
          }

          if (v70 < v210)
          {
            goto LABEL_229;
          }
        }

        v201 = 0;
        v197 = v80;
      }

LABEL_96:
      v210 = v80 + 1;
      v213 = v78;
      v105 = *(v78 + 24);
      v209 = v70;
      v71 = v27;
      v212 = (v212 + 1);
      if (v212 == v105)
      {
        v212 = 0;
        v106 = v69 + 1;
        v209 = v70;
        v69 = v30;
        v208 = v30;
        v71 = v27;
        if (v106 != v30)
        {
          if ((v106 & 0x8000000000000000) != 0)
          {
            goto LABEL_222;
          }

          if (v106 >= *(v187 + 16))
          {
            goto LABEL_223;
          }

          v69 = v106;
          v107 = v70;
          v221 = *(v186 + 8 * v106);
          v108 = v221;

          v109 = v194;
          v110 = *(v194 + 16);
          v199 = v108;
          if (v110)
          {
            v111 = specialized __RawDictionaryStorage.find<A>(_:)(*(v108 + 16));
            if (v112)
            {
              v113 = *(*(v109 + 56) + 8 * v111);
            }

            else
            {
              v113 = 0;
            }

            v108 = v199;
          }

          else
          {
            v113 = 0;
          }

          v220 = v113;

          v212 = 0;
          v70 = v107;
          v209 = v107;
          v213 = v108;
          v72 = v113;
          v208 = v69;
          v71 = v27;
          goto LABEL_140;
        }
      }
    }

    else
    {
      v202 = v70;
      if (v56[2] == *(v213 + 16) && (result = (*(*v56 + 112))(v68, v213, v212), (result & 1) != 0))
      {
        if (++v68 == v56[3])
        {
          ++v71;
          v81 = v210;
          v70 = v202;
          if (v71 == v27)
          {
            v68 = 0;
            v71 = v27;
            goto LABEL_190;
          }

          if ((v71 & 0x8000000000000000) != 0)
          {
            goto LABEL_244;
          }

          if (v71 >= *(v193 + 16))
          {
            goto LABEL_246;
          }

          v140 = *(v196 + 8 * v71);
          v222 = v140;

          v141 = v192;
          if (*(v192 + 16))
          {
            v142 = specialized __RawDictionaryStorage.find<A>(_:)(v140[2]);
            v56 = v140;
            if (v143)
            {
              v144 = *(*(v141 + 56) + 8 * v142);
            }

            else
            {
              v144 = 0;
            }
          }

          else
          {
            v144 = 0;
            v56 = v140;
          }

          v214 = v144;

          v68 = 0;
          v206 = v56;
          v73 = v144;
        }

        v81 = v210;
        v70 = v202;
LABEL_190:
        ++v67;
        v210 = v81 + 1;
        v151 = *(v213 + 24);
        v212 = (v212 + 1);
        if (v212 == v151)
        {
          v212 = 0;
          v132 = v69 + 1;
          v69 = v30;
          v208 = v30;
          if (v132 != v30)
          {
            if ((v132 & 0x8000000000000000) != 0)
            {
              goto LABEL_245;
            }

            if (v132 >= *(v187 + 16))
            {
              goto LABEL_247;
            }

            goto LABEL_194;
          }
        }
      }

      else
      {
        if (!v73)
        {
          if (!v72)
          {
            goto LABEL_85;
          }

          v83 = v56;
          v200 = 0;
          v87 = v72;
          v88 = 0;
          v86 = 1;
          goto LABEL_80;
        }

        v82 = *(*v73 + 112);
        v83 = v56;
        v200 = v73;
        result = v82(v68, v56);
        v85 = v72;
        v86 = v84;
        v87 = v85;
        if (v85)
        {
          v88 = result;
LABEL_80:
          result = (*(*v87 + 112))(v212, v213);
          if (v86)
          {
LABEL_84:
            v72 = v87;
            v73 = v200;
            v56 = v83;
            v27 = v188;
LABEL_85:
            v70 = v202;
            if (v211)
            {
              v104 = v67 + 1;
              if (__OFADD__(v67, 1))
              {
                goto LABEL_224;
              }

              if (v104 < v67)
              {
                goto LABEL_225;
              }
            }

            else
            {
              if (v207 == v67)
              {
                if (__OFADD__(v67, 1))
                {
                  goto LABEL_230;
                }

                if (v67 + 1 < v205)
                {
                  goto LABEL_233;
                }

                v207 = v67 + 1;
                goto LABEL_120;
              }

              result = IndexSet.insert(integersIn:)();
              v104 = v67 + 1;
              if (__OFADD__(v67, 1))
              {
                goto LABEL_231;
              }

              v70 = v202;
              if (v104 < v67)
              {
                goto LABEL_232;
              }
            }

            v207 = v104;
            v205 = v67;
LABEL_120:
            v211 = 0;
            ++v67;
            if (++v68 == v56[3])
            {
              v68 = 0;
              v211 = 0;
              v125 = v71 + 1;
              v71 = v27;
              if (v125 != v27)
              {
                if ((v125 & 0x8000000000000000) != 0)
                {
                  goto LABEL_234;
                }

                if (v125 >= *(v193 + 16))
                {
                  goto LABEL_235;
                }

                v71 = v125;
                v126 = *(v196 + 8 * v125);
                v222 = v126;

                v127 = v192;
                if (*(v192 + 16))
                {
                  v128 = specialized __RawDictionaryStorage.find<A>(_:)(v126[2]);
                  v56 = v126;
                  if (v129)
                  {
                    v124 = *(*(v127 + 56) + 8 * v128);
                  }

                  else
                  {
                    v124 = 0;
                  }
                }

                else
                {
                  v124 = 0;
                  v56 = v126;
                }

                v214 = v124;

                v68 = 0;
                v211 = 0;
LABEL_165:
                v206 = v56;
                v73 = v124;
                v70 = v202;
              }
            }
          }

          else
          {
            v103 = v210;
            if (v102)
            {
              v56 = v83;
              goto LABEL_128;
            }

            if (v88 >= v210)
            {
              v72 = v87;
              if (result >= v67)
              {
                if (result - v67 >= v88 - v210)
                {
                  ++v210;
                  v150 = *(v213 + 24);
                  v212 = (v212 + 1);
                  v73 = v200;
                  v56 = v83;
                  v27 = v188;
                  v70 = v202;
                  if (v212 == v150)
                  {
                    v212 = 0;
                    v132 = v69 + 1;
                    v69 = v30;
                    v208 = v30;
                    if (v132 != v30)
                    {
                      if ((v132 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_253;
                      }

                      if (v132 >= *(v187 + 16))
                      {
                        goto LABEL_255;
                      }

                      goto LABEL_194;
                    }
                  }
                }

                else
                {
                  result = swift_isUniquelyReferenced_nonNull_native();
                  if ((result & 1) == 0)
                  {
                    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v204 + 2) + 1, 1, v204);
                    v204 = result;
                  }

                  v146 = *(v204 + 2);
                  v145 = *(v204 + 3);
                  v70 = v202;
                  if (v146 >= v145 >> 1)
                  {
                    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v145 > 1), v146 + 1, 1, v204);
                    v204 = result;
                    v70 = v202;
                  }

                  v147 = v204;
                  *(v204 + 2) = v146 + 1;
                  v148 = &v147[16 * v146];
                  *(v148 + 4) = v67;
                  *(v148 + 5) = v88;
                  ++v67;
                  ++v68;
                  v56 = v83;
                  v118 = v68 == v83[3];
                  v72 = v87;
                  v73 = v200;
                  v27 = v188;
                  if (v118)
                  {
                    v68 = 0;
                    v119 = v71 + 1;
                    v71 = v188;
                    if (v119 != v188)
                    {
                      if ((v119 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_252;
                      }

                      if (v119 >= *(v193 + 16))
                      {
                        goto LABEL_254;
                      }

                      goto LABEL_114;
                    }
                  }
                }
              }

              else
              {
                ++v210;
                v131 = *(v213 + 24);
                v212 = (v212 + 1);
                v73 = v200;
                v56 = v83;
                v27 = v188;
                v70 = v202;
                if (v212 == v131)
                {
                  v212 = 0;
                  v132 = v69 + 1;
                  v69 = v30;
                  v208 = v30;
                  if (v132 != v30)
                  {
                    if ((v132 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_250;
                    }

                    if (v132 >= *(v187 + 16))
                    {
                      goto LABEL_251;
                    }

LABEL_194:
                    v69 = v132;
                    v221 = *(v186 + 8 * v132);
                    v152 = v221;

                    v153 = v194;
                    v154 = *(v194 + 16);
                    v199 = v152;
                    if (v154)
                    {
                      v155 = specialized __RawDictionaryStorage.find<A>(_:)(*(v152 + 16));
                      if (v156)
                      {
                        v72 = *(*(v153 + 56) + 8 * v155);
                      }

                      else
                      {
                        v72 = 0;
                      }

                      v27 = v188;
                    }

                    else
                    {
                      v72 = 0;
                    }

                    v220 = v72;
                    v157 = v199;

                    v212 = 0;
                    v213 = v157;
                    v208 = v69;
                    v70 = v202;
                    goto LABEL_140;
                  }
                }
              }
            }

            else
            {
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v204 + 2) + 1, 1, v204);
                v204 = result;
              }

              v115 = *(v204 + 2);
              v114 = *(v204 + 3);
              v70 = v202;
              if (v115 >= v114 >> 1)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v114 > 1), v115 + 1, 1, v204);
                v204 = result;
                v70 = v202;
              }

              v116 = v204;
              *(v204 + 2) = v115 + 1;
              v117 = &v116[16 * v115];
              *(v117 + 4) = v67;
              *(v117 + 5) = v88;
              ++v67;
              ++v68;
              v56 = v83;
              v118 = v68 == v83[3];
              v72 = v87;
              v73 = v200;
              v27 = v188;
              if (v118)
              {
                v68 = 0;
                v119 = v71 + 1;
                v71 = v188;
                if (v119 != v188)
                {
                  if ((v119 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_248;
                  }

                  if (v119 >= *(v193 + 16))
                  {
                    goto LABEL_249;
                  }

LABEL_114:
                  v71 = v119;
                  v120 = *(v196 + 8 * v119);
                  v222 = v120;

                  v121 = v192;
                  if (*(v192 + 16))
                  {
                    v122 = specialized __RawDictionaryStorage.find<A>(_:)(v120[2]);
                    v56 = v120;
                    if (v123)
                    {
                      v124 = *(*(v121 + 56) + 8 * v122);
                    }

                    else
                    {
                      v124 = 0;
                    }
                  }

                  else
                  {
                    v124 = 0;
                    v56 = v120;
                  }

                  v214 = v124;

                  v68 = 0;
                  goto LABEL_165;
                }
              }
            }
          }
        }

        else
        {
          if (v84)
          {
            goto LABEL_84;
          }

          v103 = v210;
LABEL_128:
          v27 = v188;
          if (v201)
          {
            if (__OFADD__(v103, 1))
            {
              goto LABEL_236;
            }

            v72 = v87;
            v209 = v103 + 1;
            v73 = v200;
            if (v103 + 1 < v103)
            {
              goto LABEL_237;
            }
          }

          else
          {
            if (v209 == v103)
            {
              v130 = v209 + 1;
              if (__OFADD__(v209, 1))
              {
                goto LABEL_239;
              }

              v72 = v87;
              ++v209;
              v73 = v200;
              if (v130 < v197)
              {
                goto LABEL_240;
              }

              goto LABEL_150;
            }

            result = IndexSet.insert(integersIn:)();
            v103 = v210;
            if (__OFADD__(v210, 1))
            {
              goto LABEL_238;
            }

            v72 = v87;
            v209 = v210 + 1;
            v73 = v200;
            if (v210 + 1 < v210)
            {
              goto LABEL_241;
            }
          }

          v197 = v103;
LABEL_150:
          v201 = 0;
          v210 = v103 + 1;
          v133 = *(v213 + 24);
          v70 = v209;
          v212 = (v212 + 1);
          if (v212 == v133)
          {
            v212 = 0;
            v201 = 0;
            v134 = v69 + 1;
            v69 = v30;
            v70 = v209;
            v208 = v30;
            if (v134 != v30)
            {
              if ((v134 & 0x8000000000000000) != 0)
              {
                goto LABEL_242;
              }

              if (v134 >= *(v187 + 16))
              {
                goto LABEL_243;
              }

              v69 = v134;
              v221 = *(v186 + 8 * v134);
              v135 = v221;

              v136 = v194;
              v137 = *(v194 + 16);
              v199 = v135;
              if (v137)
              {
                v138 = specialized __RawDictionaryStorage.find<A>(_:)(*(v135 + 16));
                if (v139)
                {
                  v72 = *(*(v136 + 56) + 8 * v138);
                }

                else
                {
                  v72 = 0;
                }

                v27 = v188;
              }

              else
              {
                v72 = 0;
              }

              v220 = v72;
              v149 = v199;

              v212 = 0;
              v201 = 0;
              v70 = v209;
              v213 = v149;
              v208 = v69;
LABEL_140:
              v30 = v203;
            }
          }
        }
      }
    }
  }

  v200 = v73;
  v158 = v70;

  v159 = *(v184 + 20);

  v160 = v198;
  *(v198 + v159) = v204;
  v161 = v178;
  v162 = v207;
  *v178 = v205;
  v161[1] = v162;
  *(v161 + 16) = v211 & 1;
  v163 = v177;
  *v177 = v197;
  v163[1] = v158;
  *(v163 + 16) = v201 & 1;
  v164 = v183;
  outlined init with copy of DiffResultBuilder(v160, v183);
  v165 = v190;
  outlined init with take of IndexSetBuilder(v164, v190);
  if ((*(v165 + *(v195 + 20) + 16) & 1) == 0)
  {
    IndexSet.insert(integersIn:)();
  }

  v166 = *(v182 + 32);
  v167 = v189;
  v168 = v179;
  v166(v189, v165, v179);
  v169 = *(v183 + *(v184 + 20));
  v170 = v185;
  outlined init with take of IndexSetBuilder(v183 + *(v184 + 24), v185);
  v171 = v180;
  if ((*(v170 + *(v195 + 20) + 16) & 1) == 0)
  {
    IndexSet.insert(integersIn:)();
  }

  v172 = v191;
  v166(v191, v170, v168);
  v166(v171, v167, v168);
  v173 = type metadata accessor for DiffResult(0);
  *&v171[*(v173 + 20)] = v169;
  v166(&v171[*(v173 + 24)], v172, v168);
  outlined destroy of DiffResultBuilder(v198);
}

uint64_t specialized HeterogeneousIndexLookupTable.init(_:)(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v24 = MEMORY[0x1E69E7CC0];
    v3 = result;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    result = v3;
    v4 = 0;
    v5 = 0;
    v2 = v24;
    while (v4 < *(result + 16))
    {
      v6 = *(*(v3 + 32 + 8 * v4) + 24);
      v7 = v5 + v6;
      if (__OFADD__(v5, v6))
      {
        goto LABEL_23;
      }

      v25 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
        result = v3;
        v2 = v25;
      }

      ++v4;
      *(v2 + 16) = v9 + 1;
      *(v2 + 8 * v9 + 32) = v5;
      v5 = v7;
      if (v1 == v4)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v10 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSO_s12Zip2SequenceVys15ContiguousArrayVy7SwiftUI29AbstractHomogeneousCollectionCGSaySiGGTt1g503_s7h40UI29HeterogeneousIndexLookupTableVyACs15fgs4AA29jkl57CGcfcSOAG_Sit_tcfu_33_00d3769050a98b258c2836a15380bcfdAG_X11SOTf3nnpk_nTf1nc_n(result, v2);
    v11 = specialized Dictionary.compactMapValues<A>(_:)(v10);

    v12 = 1 << *(v11 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v11 + 64);
    v15 = (v12 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v16 = 0;
    v17 = 0;
    while (v14)
    {
      v18 = v16;
LABEL_17:
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v20 = *(**(*(v11 + 56) + ((v18 << 9) | (8 * v19))) + 88);

      v22 = v20(v21);

      v23 = __OFADD__(v17, v22);
      v17 += v22;
      if (v23)
      {
        __break(1u);
LABEL_20:

        return v11;
      }
    }

    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        goto LABEL_20;
      }

      v14 = *(v11 + 64 + 8 * v18);
      ++v16;
      if (v14)
      {
        v16 = v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSO_s12Zip2SequenceVys15ContiguousArrayVy7SwiftUI29AbstractHomogeneousCollectionCGSaySiGGTt1g503_s7h40UI29HeterogeneousIndexLookupTableVyACs15fgs4AA29jkl57CGcfcSOAG_Sit_tcfu_33_00d3769050a98b258c2836a15380bcfdAG_X11SOTf3nnpk_nTf1nc_n(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = MEMORY[0x1E69E7CC8];
  v35 = MEMORY[0x1E69E7CC8];
  v4 = *(a1 + 16);
  if (v4)
  {
    v33 = -v4;
    v5 = 4;
    v34 = a1;
    while (1)
    {
      v7 = v5 - 4;
      if ((v5 - 4) >= *(a1 + 16))
      {
        break;
      }

      v8 = *(v2 + 16);
      if (v7 == v8)
      {
        goto LABEL_19;
      }

      if (v7 >= v8)
      {
        goto LABEL_21;
      }

      v9 = *(a1 + 8 * v5);
      v10 = *(v2 + 8 * v5);
      v11 = *(v9 + 16);
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      v14 = v3[2];
      v15 = (v13 & 1) == 0;
      v16 = v14 + v15;
      if (__OFADD__(v14, v15))
      {
        goto LABEL_22;
      }

      v17 = v12;
      v18 = v13;
      v19 = v3[3];

      if (v19 < v16)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, 1);
        v3 = v35;
        v20 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
        if ((v18 & 1) != (v21 & 1))
        {
          goto LABEL_24;
        }

        v17 = v20;
      }

      if (v18)
      {
        v22 = v3[7];
        v23 = *(v22 + 8 * v17);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v22 + 8 * v17) = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
          *(v22 + 8 * v17) = v23;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v23);
          *(v22 + 8 * v17) = v23;
        }

        a1 = v34;
        v23[2] = v26 + 1;
        v6 = &v23[2 * v26];
        v6[4] = v9;
        v6[5] = v10;
        v2 = a2;
      }

      else
      {
        type metadata accessor for _ContiguousArrayStorage<Transaction.PendingListeners.WeakListener>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(AbstractHomogeneousCollection, Int)>, type metadata accessor for (AbstractHomogeneousCollection, Int), MEMORY[0x1E69E6F90]);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_18DDA6EB0;
        *(v27 + 32) = v9;
        *(v27 + 40) = v10;
        v3[(v17 >> 6) + 8] |= 1 << v17;
        *(v3[6] + 8 * v17) = v11;
        *(v3[7] + 8 * v17) = v27;
        v28 = v3[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_23;
        }

        v3[2] = v30;
        a1 = v34;
      }

      ++v5;
      if (v33 + v5 == 4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
LABEL_19:

    return v3;
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<(AbstractHomogeneousCollection, Int)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(AbstractHomogeneousCollection, Int)>)
  {
    type metadata accessor for (AGSubgraphRef, Int)(255, &lazy cache variable for type metadata for (AbstractHomogeneousCollection, Int), type metadata accessor for AbstractHomogeneousCollection);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(AbstractHomogeneousCollection, Int)>);
    }
  }
}

uint64_t specialized Dictionary.compactMapValues<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7CC8];
  v30 = MEMORY[0x1E69E7CC8];
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v13 = v12 | (v11 << 6);
        v14 = *(*(a1 + 56) + 8 * v13);
        if (*(v14 + 16))
        {
          break;
        }

        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v28 = *(*(a1 + 48) + 8 * v13);
      v29 = v2;
      v16 = **(v14 + 32);

      specialized _arrayForceCast<A, B>(_:)(v14);
      v27 = (*(v16 + 136))();

      v17 = *(v4 + 16);
      if (*(v4 + 24) <= v17)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17 + 1, 1);
        v4 = v30;
      }

      result = MEMORY[0x193AC1170](*(v4 + 40), v28);
      v18 = v4 + 64;
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      v2 = v29;
      if (((-1 << v20) & ~*(v4 + 64 + 8 * (v20 >> 6))) == 0)
      {
        break;
      }

      v22 = __clz(__rbit64((-1 << v20) & ~*(v4 + 64 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v4 + 48) + 8 * v22) = v28;
      *(*(v4 + 56) + 8 * v22) = v27;
      ++*(v4 + 16);
      if (!v8)
      {
        goto LABEL_7;
      }
    }

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
      v26 = *(v18 + 8 * v21);
      if (v26 != -1)
      {
        v22 = __clz(__rbit64(~v26)) + (v21 << 6);
        goto LABEL_23;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v15 >= v9)
      {

        return v4;
      }

      v8 = *(v5 + 8 * v15);
      ++v11;
      if (v8)
      {
        v11 = v15;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void type metadata accessor for (AbstractHomogeneousCollection, precedingElementCount: Int)()
{
  if (!lazy cache variable for type metadata for (AbstractHomogeneousCollection, precedingElementCount: Int))
  {
    type metadata accessor for AbstractHomogeneousCollection();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AbstractHomogeneousCollection, precedingElementCount: Int));
    }
  }
}

void type metadata accessor for (AbstractHomogeneousCollection, Int)()
{
  if (!lazy cache variable for type metadata for (AbstractHomogeneousCollection, Int))
  {
    type metadata accessor for AbstractHomogeneousCollection();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AbstractHomogeneousCollection, Int));
    }
  }
}

uint64_t static HomogeneousCollection.makeHomogenousIndexLookupTable(from:)(uint64_t a1)
{
  v3 = *(v1 + 160);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  if (v8 == 1)
  {
    v9 = *(a1 + 40);
    v44 = *(*(a1 + 32) + 32);
    type metadata accessor for ContiguousArray();
    swift_retain_n();

    swift_getWitnessTable();
    v10 = OrderedSet.init<A>(_:)();
    v12 = v11;
    type metadata accessor for HomogenousContiguousIndexLookupTable();
    v13 = swift_allocObject();
    v14 = *v13;
    v13[3] = v10;
    v13[4] = v12;
    v13[5] = v9;
    v13[2] = *(v14 + 120);

    return v13;
  }

  else
  {
    v16 = MEMORY[0x1E69E7668];
    swift_getTupleTypeMetadata2();
    v17 = static Array._allocateUninitialized(_:)();
    v18 = *(v1 + 168);
    v19 = specialized Dictionary.init(dictionaryLiteral:)(v17, v3, v16, v18);

    v20 = 0;
    v44 = v19;
    v21 = (a1 + 32);
    v22 = v8 + 1;
    v39 = a1 + 32;
    while (--v22)
    {
      v23 = *v21;
      v21 += 2;
      v24 = *(v23 + 24);
      v25 = __OFADD__(v20, v24);
      v20 += v24;
      if (v25)
      {
        __break(1u);
        break;
      }
    }

    v37[1] = v18;
    v42 = type metadata accessor for Dictionary();
    Dictionary.reserveCapacity(_:)(v20);
    if (v8)
    {
      v26 = 0;
      v38 = v8;
      while (1)
      {
        v27 = (v39 + 16 * v26);
        v28 = *v27;
        v29 = v27[1];

        result = ContiguousArray.count.getter();
        if (result < 0)
        {
          break;
        }

        v30 = result;
        if (result)
        {
          v40 = v28;
          v41 = v26;
          v31 = 0;
          v32 = 0x100000000;
          if (v29 < 0x100000000)
          {
            v32 = v29;
          }

          v33 = v32 - 0x100000000;
          v34 = v29;
          while (1)
          {
            result = ContiguousArray.subscript.getter();
            if ((v29 & 0x8000000000000000) != 0)
            {
              break;
            }

            if (!v33)
            {
              goto LABEL_24;
            }

            ++v31;
            v43 = v34;
            Dictionary.updateValue(_:forKey:)();
            (*(v4 + 8))(v6, v3);
            ++v33;
            ++v34;
            if (v30 == v31)
            {

              v8 = v38;
              v26 = v41;
              goto LABEL_11;
            }
          }

          __break(1u);
LABEL_24:
          __break(1u);
          break;
        }

LABEL_11:
        ++v26;

        if (v26 == v8)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_21:
      type metadata accessor for HomogenousDiscontiguousIndexLookupTable();
      v35 = v44;
      result = swift_allocObject();
      v36 = *result;
      *(result + 24) = v35;
      *(result + 16) = *(v36 + 120);
    }
  }

  return result;
}

uint64_t HomogeneousCollection.isElementEqual(at:toElementIn:at:)(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  ContiguousArray.subscript.getter();
  ContiguousArray.subscript.getter();
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  return v9 & 1;
}

uint64_t static TypedCanonicalViewID.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for TypedCanonicalViewID();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t outlined init with copy of DiffResultBuilder(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiffResultBuilder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t initializeWithCopy for DiffResultBuilder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(*(v6 - 8) + 16);
  v7(a1, a2, v6);
  v8 = type metadata accessor for IndexSetBuilder(0);
  v9 = *(v8 + 20);
  v10 = a1 + v9;
  v11 = a2 + v9;
  *v10 = *v11;
  *(v10 + 16) = *(v11 + 16);
  v12 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  v13 = a1 + v12;
  v14 = a2 + v12;

  v7(v13, v14, v6);
  v15 = *(v8 + 20);
  v16 = v13 + v15;
  v17 = v14 + v15;
  *v16 = *v17;
  *(v16 + 16) = *(v17 + 16);
  return a1;
}

uint64_t outlined init with take of IndexSetBuilder(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexSetBuilder(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DiffResultBuilder(uint64_t a1)
{
  v2 = type metadata accessor for DiffResultBuilder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t destroy for DiffResult(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexSet();
  v7 = *(*(v4 - 8) + 8);
  (v7)((v4 - 8), a1, v4);

  v5 = a1 + *(a2 + 24);

  return v7(v5, v4);
}

uint64_t HomogenousContiguousIndexLookupTable.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DiffResult.removes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for IndexSet();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DiffResult.inserts.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DiffResult(0) + 24);
  v4 = type metadata accessor for IndexSet();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t outlined consume of SectionAccumulator.RowIDs.IDs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 1u)
  {
    if (a5 == 2)
    {
    }

    if (a5 == 3)
    {
    }
  }

  else if (a5)
  {
    if (a5 == 1)
    {
    }
  }

  else
  {
  }

  return result;
}

uint64_t HomogeneousCollection.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double specialized AnimationBox.animate<A>(value:time:context:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D4>)
{
  v7 = *v3;
  v8 = *(*v3 + 160);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = v24 - v11;
  *v24 = v10;
  v24[1] = v13;
  v24[2] = v14;
  v24[3] = v15;
  (*(v9 + 16))(v24 - v11, v3 + *(v7 + 176), v8);
  v16 = *(v7 + 168);
  v17 = *(v16 + 16);
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  v19 = v18;
  v20 = _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_0(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
  v17(v25, v24, a1, v19, v20, v8, v16, a3);
  (*(v9 + 8))(v12, v8);
  v21 = v26;
  result = *v25;
  v23 = v25[1];
  *a2 = v25[0];
  *(a2 + 16) = v23;
  *(a2 + 32) = v21;
  return result;
}

void SpringAnimation.animate<A>(value:time:context:)(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  MEMORY[0x1EEE9AC00](*(a3 - 8));
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v15 == MEMORY[0x1E69E63B0])
  {
    *a4 = specialized SpringAnimation.animate<A>(value:time:context:)(a2, *a1, a5, *v5, v5[1]);
    *(a4 + 8) = v25 & 1;
    return;
  }

  v32 = v11;
  v16 = v12;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v17 == a3)
  {
    specialized SpringAnimation.animate<A>(value:time:context:)(a2, &v33, *a1, a1[1], a1[2], a1[3], a5, v5[1]);
    v26 = v34;
    *a4 = v33;
    *(a4 + 16) = v26;
    *(a4 + 32) = LOBYTE(v35);
    return;
  }

  v18 = v5[1];
  v19 = v5[3];
  v20 = sqrt(v18 / *v5);
  v21 = sqrt(*v5 * v18);
  v22 = v5[2] / (v21 + v21);
  if (v22 >= 1.0)
  {
    v24 = v20 - v19;
    v23 = 0.0;
  }

  else
  {
    v23 = v20 * sqrt(1.0 - v22 * v22);
    v24 = (v20 * v22 - v19) / v23;
  }

  *&v33 = v20;
  *(&v33 + 1) = v22;
  *&v34 = v23;
  *(&v34 + 1) = 0x3FF0000000000000;
  v35 = v24;
  SpringModel.duration(epsilon:)(0.001);
  if (v27 > a5)
  {
    v28 = SpringModel.sample(at:)(a5);
    if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v30 = v32;
      v31 = v28;
      if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (6.28318531 / sqrt(v18) > a5)
        {
LABEL_18:
          (*(v30 + 16))(v14, a1, a3);
          (*(v16 + 16))(a3, v16, v31);
          (*(v32 + 32))(a4, v14, a3);
          (*(v32 + 56))(a4, 0, 1, a3);
          return;
        }
      }

      else if (a5 < 0.0)
      {
        goto LABEL_18;
      }

      *(a2 + 17) = 1;
      goto LABEL_18;
    }
  }

  v29 = *(v32 + 56);

  v29(a4, 1, 1, a3);
}

void specialized SpringAnimation.animate<A>(value:time:context:)(uint64_t a1@<X0>, uint64_t a2@<X8>, float64_t a3@<D0>, float64_t a4@<D1>, float64_t a5@<D2>, float64_t a6@<D3>, double a7@<D4>, double a8@<D6>)
{
  SpringModel.duration(epsilon:)(0.001);
  v12 = 0uLL;
  if (v13 <= a7)
  {
    v15 = 1;
    v16 = 0uLL;
    goto LABEL_11;
  }

  v14 = SpringModel.sample(at:)(a7);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if ((*&a8 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (6.28318531 / sqrt(a8) > a7)
      {
LABEL_10:
        v15 = 0;
        v17.f64[0] = a3;
        v17.f64[1] = a4;
        v12 = vmulq_n_f64(v17, v14);
        v18.f64[0] = a5;
        v18.f64[1] = a6;
        v16 = vmulq_n_f64(v18, v14);
        goto LABEL_11;
      }
    }

    else if (a7 < 0.0)
    {
      goto LABEL_10;
    }

    *(a1 + 17) = 1;
    goto LABEL_10;
  }

  v15 = 1;
  v16 = 0uLL;
  v12 = 0uLL;
LABEL_11:
  *a2 = v12;
  *(a2 + 16) = v16;
  *(a2 + 32) = v15;
}

double SpringModel.sample(at:)(double a1)
{
  v2 = v1[1];
  if (v2 >= 1.0)
  {
    v8 = v1[3] + v1[4] * a1;
    v7 = v8 * exp(-(a1 * *v1));
  }

  else
  {
    v3 = v1[2] * a1;
    v4 = exp(-(v2 * *v1) * a1);
    v5 = v1[3];
    v6 = __sincos_stret(v3);
    v7 = v4 * (v5 * v6.__cosval + v6.__sinval * v1[4]);
  }

  return 1.0 - v7;
}

uint64_t static Text.+ infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  type metadata accessor for ConcatenatedTextStorage();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3 & 1;
  *(v16 + 40) = a4;
  *(v16 + 48) = a5;
  *(v16 + 56) = a6;
  a7 &= 1u;
  *(v16 + 64) = a7;
  *(v16 + 72) = a8;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  outlined copy of Text.Storage(a5, a6, a7);

  return v16;
}

uint64_t Font.smallCaps()(uint64_t a1)
{
  type metadata accessor for FontBox<Font.ModifierProvider<Font.FeatureSettingModifier>>();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = xmmword_18DDF4DE0;
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = xmmword_18DDF4DF0;

  return v3;
}

uint64_t ConcatenatedTextStorage.allowsTypesettingLanguage()()
{
  if (*(v0 + 32) == 1 && ((*(**(v0 + 16) + 112))() & 1) == 0)
  {
    return 0;
  }

  if (*(v0 + 64) == 1)
  {
    return (*(**(v0 + 48) + 112))() & 1;
  }

  return 1;
}

uint64_t ConcatenatedTextStorage.resolve<A>(into:in:with:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = a2[1];
  v11 = *a3;
  v12 = *(v5 + 16);
  v13 = *(v5 + 24);
  v14 = *(v5 + 32);
  v15 = *(v5 + 40);
  v22 = *a2;
  v9 = v22;
  v23 = v10;
  v21 = v11;
  Text.resolve<A>(into:in:with:)(a1, &v22, &v21, v12, v13, v14, v15, a4, a5);
  v16 = *(v5 + 48);
  v17 = *(v5 + 56);
  v18 = *(v5 + 64);
  v19 = *(v5 + 72);
  v22 = v9;
  v23 = v10;
  v21 = v11;
  return Text.resolve<A>(into:in:with:)(a1, &v22, &v21, v16, v17, v18, v19, a4, a5);
}

uint64_t outlined init with copy of Text.Style(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Text.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double NSAttributedString.oversizedDrawingMargin(from:)()
{
  v1 = *&v0;
  v36 = *MEMORY[0x1E69E9840];
  v2 = [v0 string];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  aBlock = v3;
  v31 = v5;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  LOBYTE(v2) = v6;

  v7 = 0.0;
  if ((v2 & 1) == 0)
  {
    v29 = MEMORY[0x1E69E7CD0];
    if (one-time initialization token for kitFont != -1)
    {
LABEL_27:
      swift_once();
    }

    v8 = static NSAttributedStringKey.kitFont;
    v9 = [*&v1 length];
    v10 = swift_allocObject();
    *(v10 + 16) = &v29;
    v11 = swift_allocObject();
    *(v11 + 16) = partial apply for closure #1 in NSAttributedString.allFonts();
    *(v11 + 24) = v10;
    v34 = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
    v35 = v11;
    aBlock = MEMORY[0x1E69E9820];
    v31 = 1107296256;
    v32 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    v33 = &block_descriptor_81;
    v12 = _Block_copy(&aBlock);

    [*&v1 enumerateAttribute:v8 inRange:0 options:v9 usingBlock:{0, v12}];
    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    v1 = v29;

    if ((*&v1 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for CTFontRef(0);
      lazy protocol witness table accessor for type ResolvedTextFilter and conformance ResolvedTextFilter(&lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef, type metadata accessor for CTFontRef);
      Set.Iterator.init(_cocoa:)();
      v15 = *&aBlock;
      v14 = v31;
      v16 = v32;
      v17 = v33;
      v18 = v34;
    }

    else
    {
      v19 = -1 << *(*&v1 + 32);
      v14 = *&v1 + 56;
      v16 = ~v19;
      v20 = -v19;
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      else
      {
        v21 = -1;
      }

      v18 = v21 & *(*&v1 + 56);

      v17 = 0;
      v15 = v1;
    }

    while (1)
    {
      if ((*&v15 & 0x8000000000000000) != 0)
      {
        if (!__CocoaSet.Iterator.next()() || (type metadata accessor for CTFontRef(0), swift_dynamicCast(), v26 = v29, v24 = v17, v25 = v18, v29 == 0.0))
        {
LABEL_24:
          outlined consume of Set<EventID>.Iterator._Variant();

          return v7;
        }
      }

      else
      {
        v22 = v17;
        v23 = v18;
        v24 = v17;
        if (!v18)
        {
          while (1)
          {
            v24 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              break;
            }

            if (v24 >= ((v16 + 64) >> 6))
            {
              goto LABEL_24;
            }

            v23 = *(v14 + 8 * v24);
            ++v22;
            if (v23)
            {
              goto LABEL_16;
            }
          }

          __break(1u);
          goto LABEL_27;
        }

LABEL_16:
        v25 = (v23 - 1) & v23;
        v26 = COERCE_DOUBLE(*(*(*&v15 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23))))));
        if (v26 == 0.0)
        {
          goto LABEL_24;
        }
      }

      v29 = 0.0;
      LanguageAwareOutsets = CTFontGetLanguageAwareOutsets();

      if (LanguageAwareOutsets && v7 <= v29)
      {
        v7 = v29;
      }

      v17 = v24;
      v18 = v25;
    }
  }

  return v7;
}

uint64_t TextScaleModifier.modify(style:environment:)(uint64_t result)
{
  if (*(v1 + 16) == 1)
  {
    *(result + 320) = *(v1 + 17);
  }

  return result;
}

uint64_t sub_18D339AB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypesettingLanguage.Storage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t View.typesettingLanguageAwareLineHeightRatio(_:isEnabled:)(uint64_t *a1, char a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  KeyPath = swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = v5;
  *(v8 + 32) = v6;
  View.transformEnvironment<A>(_:transform:)(KeyPath, partial apply for closure #1 in View.typesettingLanguageAwareLineHeightRatio(_:isEnabled:), v8, a3);
}

uint64_t partial apply for closure #1 in View.typesettingLanguageAwareLineHeightRatio(_:isEnabled:)(uint64_t result)
{
  if (*(v1 + 16) == 1)
  {
    v2 = result;
    v3 = *(v1 + 32);
    v4 = *(v1 + 24);
    result = type metadata accessor for TypesettingConfiguration();
    v5 = v2 + *(result + 20);
    *v5 = v4;
    *(v5 + 8) = v3;
  }

  return result;
}

_BYTE *assignWithTake for TypesettingConfiguration(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1, 2, v6);
  v11 = v9(a2, 2, v7);
  if (!v10)
  {
    if (!v11)
    {
      v18 = type metadata accessor for Locale.Language();
      (*(*(v18 - 8) + 40))(a1, a2, v18);
      a1[*(v7 + 48)] = a2[*(v7 + 48)];
      goto LABEL_7;
    }

    outlined destroy of TypesettingConfiguration(a1, type metadata accessor for (Locale.Language, TypesettingLanguage.Flags));
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v13 = type metadata accessor for TypesettingLanguage.Storage(0);
    memcpy(a1, a2, *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  v12 = type metadata accessor for Locale.Language();
  (*(*(v12 - 8) + 32))(a1, a2, v12);
  a1[*(v7 + 48)] = a2[*(v7 + 48)];
  (*(v8 + 56))(a1, 0, 2, v7);
LABEL_7:
  v14 = *(a3 + 20);
  v15 = &a1[v14];
  v16 = &a2[v14];
  *v15 = *v16;
  v15[8] = v16[8];
  return a1;
}

uint64_t EnvironmentValues.typesettingConfiguration.setter(uint64_t a1)
{
  v3 = type metadata accessor for TypesettingConfiguration();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  outlined init with copy of TypesettingConfiguration(a1, &v13[-v7], type metadata accessor for TypesettingConfiguration);
  v9 = *v1;
  v10 = v1[1];
  v14 = *v1;
  v15 = v10;
  if (EnvironmentValues.bridgedEnvironmentResolver.getter())
  {
    (*(v11 + 16))(&type metadata for TypesettingConfigurationKey, v1, v8, &type metadata for TypesettingConfigurationKey, &protocol witness table for TypesettingConfigurationKey);
  }

  else
  {
    outlined init with copy of TypesettingConfiguration(v8, v5, type metadata accessor for TypesettingConfiguration);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA024TypesettingConfigurationF0VG_Tt2g5(v1, v5);

    outlined destroy of TypesettingConfiguration(v5, type metadata accessor for TypesettingConfiguration);
    if (v10)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA024TypesettingConfigurationK0VG_Ttg5(v9, *v1);
    }
  }

  outlined destroy of TypesettingConfiguration(a1, type metadata accessor for TypesettingConfiguration);
  return outlined destroy of TypesettingConfiguration(v8, type metadata accessor for TypesettingConfiguration);
}

uint64_t outlined destroy of TypesettingConfiguration(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t closure #1 in View.monospacedDigit()(void *a1)
{
  _s7SwiftUI15AnyFontModifierC6staticyACxmAA06StaticdE0RzlFZAA0D0V015MonospacedDigitE0V_Ttt0g5();
  MEMORY[0x193ABF170]();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

void protocol witness for static StaticFontModifier.modify(descriptor:in:) in conformance Font.MonospacedDigitModifier(const __CTFontDescriptor **a1, uint64_t a2)
{
  if ((*(a2 + 25) & 1) == 0)
  {
    v2 = *a1;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v5 = Int._bridgeToObjectiveC()().super.super.isa;
    CopyWithFeature = CTFontDescriptorCreateCopyWithFeature(v2, isa, v5);

    *a1 = CopyWithFeature;
  }
}

uint64_t ResolvedMulticolorStyle.init(in:bundle:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[1];
  v16 = *a1;
  v5 = v16;
  v17 = v6;
  *a3 = specialized Color.AccentColorProvider.resolve(in:)(&v16);
  *(a3 + 4) = v7;
  *(a3 + 8) = v8;
  *(a3 + 12) = v9;
  *(a3 + 16) = 2143289344;
  v16 = v5;
  v17 = v6;
  EnvironmentValues.colorScheme.getter(&v15);
  *(a3 + 20) = v15;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019ColorSchemeContrastI033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt1g5(v5, &v16);

    *(a3 + 21) = v16;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayGamutI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5, &v16);

    v11 = v16;
  }

  else
  {
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019ColorSchemeContrastS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(v5);
    if (v12)
    {
      v13 = *(v12 + 72);
    }

    else
    {
      v13 = 0;
    }

    *(a3 + 21) = v13;
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayGamutS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v5);
    if (v14)
    {
      v11 = *(v14 + 72);
    }

    else
    {
      v11 = 0;
    }
  }

  *(a3 + 22) = v11;
  *(a3 + 24) = a2;
  return result;
}

unint64_t specialized static Color.ResolvedHDR.named(_:bundle:in:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v8 = *a4;
  v7 = a4[1];
  if (one-time initialization token for namedTypes != -1)
  {
    swift_once();
  }

  v9 = static SystemColorType.namedTypes;
  if (*(static SystemColorType.namedTypes + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v11 & 1) != 0))
  {
    v21 = *(*(v9 + 56) + v10);
    v20[0] = v8;
    v20[1] = v7;
    SystemColorType.resolveHDR(in:)(v20, v22);
    v12 = 0;
    result = v22[0];
  }

  else
  {
    if (a3)
    {
      v22[0] = v8;
      v22[1] = v7;
      v14 = a3;

      v15 = Color.NamedColor.resolveCGColor(in:)(v22, a1, a2, a3);

      if (v15)
      {
        v16 = v15;
        v17 = specialized Color.Resolved.init(failableCGColor:)(v16);
        if ((v18 & 1) == 0)
        {
          v19 = v17;
          CGColorGetContentHeadroom();

          result = v19;
          v12 = 0;
          goto LABEL_12;
        }
      }
    }

    result = 0;
    v12 = 1;
  }

LABEL_12:
  LOBYTE(v22[0]) = v12;
  return result;
}

unint64_t ResolvedMulticolorStyle.resolveHDR(name:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 20);
  v7 = *(v2 + 21);
  v8 = *(v2 + 22);
  v9 = *(v2 + 24);
  if (a1 == 0xD000000000000012 && 0x800000018DD7AE20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    LOBYTE(v10) = 0;
  }

  else if (a1 == 0x6574696877 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    LOBYTE(v10) = 0;
    v5 = 0x3F8000003F800000;
  }

  else if (a1 == 0x6B63616C62 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = 0;
    LOBYTE(v10) = 0;
  }

  else
  {
    EnvironmentValues.init()(&v19);
    v12 = v19;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE019ExplicitColorSchemeF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2B5(&v19, v6);

    v13 = v20;
    if (v20)
    {
      v14 = v19;
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE019ExplicitColorSchemeK033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Ttg5(v12, v19);
    }

    else
    {

      v14 = v19;
    }

    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA019ColorSchemeContrastF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2B5(&v19, v7);

    if (v13)
    {
      v15 = v19;
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA019ColorSchemeContrastK033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Ttg5(v14, v19);
    }

    else
    {

      v15 = v19;
    }

    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA012DisplayGamutF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2B5(&v19, v8);

    if (v13)
    {
      v16 = v19;
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA012DisplayGamutK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v15, v19);
    }

    else
    {

      v16 = v19;
    }

    v18[0] = v16;
    v18[1] = v20;
    v5 = specialized static Color.ResolvedHDR.named(_:bundle:in:)(a1, a2, v9, v18);
    v10 = HIDWORD(v17) & 1;
  }

  LOBYTE(v19) = v10;
  return v5;
}

uint64_t getEnumTagSinglePayload for _BlendModeShapeStyle(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xEB)
  {
    v7 = 235;
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

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
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
      if (v5 >= 0xEB)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      if (v15 >= 0x15)
      {
        return v15 - 20;
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

unsigned int *storeEnumTagSinglePayload for _BlendModeShapeStyle(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xEB)
  {
    v7 = 235;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xEB)
      {
        *(result + v8) = a2 + 20;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ResolvedColorProvider(__int128 *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = *(a1 + 4);
  v5 = *a2;
  v6 = *(a2 + 4);
  return specialized static ResolvedColorProvider.== infix(_:_:)(&v3, &v5);
}

BOOL specialized static ResolvedColorProvider.== infix(_:_:)(float *a1, float *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    v2 = a1[1] == a2[1] && a1[2] == a2[2];
    v3 = v2 && a1[3] == a2[3];
    if (v3 && a1[4] == a2[4])
    {
      return 1;
    }
  }

  return result;
}

uint64_t ConcatenatedTextStorage.isEqual(to:)()
{
  v1 = v0;
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    return 0;
  }

  v3 = *(v0 + 16);
  v4 = *(v1 + 40);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  if (*(v1 + 32))
  {
    if (*(v2 + 32))
    {
      v19 = v2;
      v9 = *(*v3 + 96);

      outlined copy of Text.Storage(v5, v6, 1);

      if (v9(v5))
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    return 0;
  }

  if (*(v2 + 32))
  {
    return 0;
  }

  v19 = v2;
  v10 = *(v1 + 24);
  if (v3 == v5 && v10 == v6)
  {

    outlined copy of Text.Storage(v3, v10, 0);
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    outlined copy of Text.Storage(v5, v6, 0);

    if ((v12 & 1) == 0)
    {
LABEL_12:
      outlined consume of Text.Storage(v5, v6, v7);

      return 0;
    }
  }

LABEL_14:
  v13 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v4, v8);
  outlined consume of Text.Storage(v5, v6, v7);

  if ((v13 & 1) == 0)
  {
    goto LABEL_20;
  }

  v14 = *(v1 + 48);
  v15 = *(v1 + 72);
  v16 = *(v19 + 72);
  if ((*(v1 + 64) & 1) == 0)
  {
    if (*(v19 + 64) & 1) == 0 && (v14 == *(v19 + 48) && *(v1 + 56) == *(v19 + 56) || (_stringCompareWithSmolCheck(_:_:expecting:)()))
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if ((*(v19 + 64) & 1) == 0 || ((*(*v14 + 96))(*(v19 + 48)) & 1) == 0)
  {
LABEL_20:

    return 0;
  }

LABEL_25:
  v18 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v15, v16);

  return v18 & 1;
}

uint64_t VisualEffect.clipShape<A>(_:style:)@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21 = a5;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for _ClipEffect();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v21 - v17;
  (*(v11 + 16))(v13, a1, a4, v16);
  (*(v11 + 32))(v18, v13, a4);
  v19 = &v18[*(v14 + 36)];
  *v19 = a2 & 1;
  v19[1] = HIBYTE(a2) & 1;
  swift_getWitnessTable();
  VisualEffect.rendererEffect<A>(_:)(v18, a3, v14, v21, a6);
  return (*(v15 + 8))(v18, v14);
}

uint64_t assignWithCopy for Path(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of Path.Storage(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v12 = *(a1 + 32);
  *(a1 + 32) = v7;
  outlined consume of Path.Storage(v8, v9, v10, v11, v12);
  return a1;
}

uint64_t StyledTextResponder.deinit()
{
  outlined destroy of weak ViewGraphDelegate?(v0 + 16);
  swift_weakDestroy();
  v1 = *(v0 + 96);
  v8[2] = *(v0 + 80);
  v8[3] = v1;
  v8[4] = *(v0 + 112);
  v9 = *(v0 + 128);
  v2 = *(v0 + 64);
  v8[0] = *(v0 + 48);
  v8[1] = v2;
  outlined destroy of _ViewInputs(v8);

  v3 = *(v0 + 256);
  v10[6] = *(v0 + 240);
  v10[7] = v3;
  v11 = *(v0 + 272);
  v4 = *(v0 + 192);
  v10[2] = *(v0 + 176);
  v10[3] = v4;
  v5 = *(v0 + 224);
  v10[4] = *(v0 + 208);
  v10[5] = v5;
  v6 = *(v0 + 160);
  v10[0] = *(v0 + 144);
  v10[1] = v6;
  outlined destroy of ContentResponderHelper<ShapeStyledResponderData<StyledTextContentView>>(v10);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t StyledTextResponder.__deallocating_deinit()
{
  StyledTextResponder.deinit();

  return swift_deallocClassInstance();
}

void type metadata accessor for ContentResponderHelper<ShapeStyledResponderData<StyledTextContentView>>()
{
  if (!lazy cache variable for type metadata for ContentResponderHelper<ShapeStyledResponderData<StyledTextContentView>>)
  {
    type metadata accessor for ShapeStyledResponderData<StyledTextContentView>(255, &lazy cache variable for type metadata for ShapeStyledResponderData<StyledTextContentView>, &type metadata for StyledTextContentView, &protocol witness table for StyledTextContentView, type metadata accessor for ShapeStyledResponderData);
    v0 = type metadata accessor for ContentResponderHelper();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ContentResponderHelper<ShapeStyledResponderData<StyledTextContentView>>);
    }
  }
}

uint64_t outlined destroy of ContentResponderHelper<ShapeStyledResponderData<StyledTextContentView>>(uint64_t a1)
{
  type metadata accessor for ContentResponderHelper<ShapeStyledResponderData<StyledTextContentView>>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for ShapeStyledResponderData<StyledTextContentView>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(uint64_t a1, void *a2, double a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  if (*(v7 + 125))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v46 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v46)
  {
LABEL_25:
    swift_beginAccess();
    *(v7 + 16) = a1;

    swift_beginAccess();
    *(v7 + 32) = a3;
    *(v7 + 40) = a4;
    *(v7 + 48) = a5;
    *(v7 + 56) = a6;
    goto LABEL_8;
  }

LABEL_2:
  v12 = a7 - *(v7 + 64);
  swift_beginAccess();
  v13 = *(v7 + 24);
  v14 = *(v7 + 144);

  v53[0] = v13;
  v53[1] = AGCreateWeakAttribute();
  v54 = 0;
  v55 = v14;
  v15 = *(v7 + 152);
  if (v15)
  {
    v16 = *(v8 + 160);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>();
    v18 = v17;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>, MEMORY[0x1E69E6720]);
    *(&v52 + 1) = v19;
    *&v51 = v15;
    *(&v51 + 1) = v16;
    specialized Dictionary.subscript.setter(&v51, v18);
  }

  swift_beginAccess();
  v20 = *(v8 + 16);
  v21 = *(v8 + 24);
  swift_beginAccess();
  v22 = *(v8 + 32);
  v23 = *(v8 + 40);
  v24 = *(v8 + 48);
  v25 = *(v8 + 56);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v20, v21, v22, v23, v24, v25);

  *(v8 + 144) = 0;
  v26 = *(v8 + 48);
  v51 = *(v8 + 32);
  v52 = v26;
  v27 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  v29 = v28;
  v30 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);

  LOBYTE(v29) = v27(v31, &v51, v53, v29, v30, v12);

  if (v29)
  {
    *(v8 + 24) = v53[0];

    *(v8 + 16) = a1;

    v33.f64[0] = a5;
    v32 = a6;
    v34 = a4;
    v35.f64[0] = a3;
  }

  else
  {

    v36 = *(v8 + 32);
    v37 = *(v8 + 40);
    v38 = *(v8 + 48);
    v39 = *(v8 + 56);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v8 + 16), (v8 + 24), a1, v36, v37, v38, v39, v12, a3, a4, a5, a6);
    swift_endAccess();
    swift_endAccess();
    v34 = a4;
    v35.f64[0] = a3;
    v33.f64[0] = a5;
    v32 = a6;
  }

  v35.f64[1] = v34;
  v33.f64[1] = v32;
  v40 = vaddq_f64(*(v8 + 48), v33);
  *(v8 + 32) = vaddq_f64(*(v8 + 32), v35);
  *(v8 + 48) = v40;
  *(v8 + 80) = a7;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v42 & 1) == 0)
  {
    v43 = 0.0;
    if (*&result > 0.0)
    {
      v44 = log2(*&result * 240.0);
      v43 = exp2(floor(v44 + 0.01)) * 0.00416666667;
    }

    if (v43 >= *(v8 + 72))
    {
      v43 = *(v8 + 72);
    }

    *(v8 + 72) = v43;
    if (v43 >= 0.0166666667)
    {
      *&result = 0.0;
      v45 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
      if ((result & 0x100000000) != 0)
      {
        result = *(v8 + 120);
        v45 = *(v8 + 124);
      }

      else
      {
        v45 = 0;
      }
    }

    *(v8 + 120) = result;
    *(v8 + 124) = v45;
  }

  return result;
}

{
  v8 = v7;
  if (*(v7 + 125))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v46 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v46)
  {
LABEL_25:
    swift_beginAccess();
    *(v7 + 16) = a1;

    swift_beginAccess();
    *(v7 + 32) = a3;
    *(v7 + 40) = a4;
    *(v7 + 48) = a5;
    *(v7 + 56) = a6;
    goto LABEL_8;
  }

LABEL_2:
  v12 = a7 - *(v7 + 64);
  swift_beginAccess();
  v13 = *(v7 + 24);
  v14 = *(v7 + 144);

  v53[0] = v13;
  v53[1] = AGCreateWeakAttribute();
  v54 = 0;
  v55 = v14;
  v15 = *(v7 + 152);
  if (v15)
  {
    v16 = *(v8 + 160);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>();
    v18 = v17;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>, MEMORY[0x1E69E6720]);
    *(&v52 + 1) = v19;
    *&v51 = v15;
    *(&v51 + 1) = v16;
    specialized Dictionary.subscript.setter(&v51, v18);
  }

  swift_beginAccess();
  v20 = *(v8 + 16);
  v21 = *(v8 + 24);
  swift_beginAccess();
  v22 = *(v8 + 32);
  v23 = *(v8 + 40);
  v24 = *(v8 + 48);
  v25 = *(v8 + 56);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v20, v21, v22, v23, v24, v25);

  *(v8 + 144) = 0;
  v26 = *(v8 + 48);
  v51 = *(v8 + 32);
  v52 = v26;
  v27 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>();
  v29 = v28;
  v30 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);

  LOBYTE(v29) = v27(v31, &v51, v53, v29, v30, v12);

  if (v29)
  {
    *(v8 + 24) = v53[0];

    *(v8 + 16) = a1;

    v33.f64[0] = a5;
    v32 = a6;
    v34 = a4;
    v35.f64[0] = a3;
  }

  else
  {

    v36 = *(v8 + 32);
    v37 = *(v8 + 40);
    v38 = *(v8 + 48);
    v39 = *(v8 + 56);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v8 + 16), (v8 + 24), a1, v36, v37, v38, v39, v12, a3, a4, a5, a6);
    swift_endAccess();
    swift_endAccess();
    v34 = a4;
    v35.f64[0] = a3;
    v33.f64[0] = a5;
    v32 = a6;
  }

  v35.f64[1] = v34;
  v33.f64[1] = v32;
  v40 = vaddq_f64(*(v8 + 48), v33);
  *(v8 + 32) = vaddq_f64(*(v8 + 32), v35);
  *(v8 + 48) = v40;
  *(v8 + 80) = a7;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v42 & 1) == 0)
  {
    v43 = 0.0;
    if (*&result > 0.0)
    {
      v44 = log2(*&result * 240.0);
      v43 = exp2(floor(v44 + 0.01)) * 0.00416666667;
    }

    if (v43 >= *(v8 + 72))
    {
      v43 = *(v8 + 72);
    }

    *(v8 + 72) = v43;
    if (v43 >= 0.0166666667)
    {
      *&result = 0.0;
      v45 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
      if ((result & 0x100000000) != 0)
      {
        result = *(v8 + 120);
        v45 = *(v8 + 124);
      }

      else
      {
        v45 = 0;
      }
    }

    *(v8 + 120) = result;
    *(v8 + 124) = v45;
  }

  return result;
}

{
  v8 = v7;
  if (*(v7 + 125))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v44 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v44)
  {
LABEL_25:
    swift_beginAccess();
    *(v7 + 16) = a1;

    swift_beginAccess();
    *(v7 + 32) = a3;
    *(v7 + 40) = a4;
    *(v7 + 48) = a5;
    *(v7 + 56) = a6;
    goto LABEL_8;
  }

LABEL_2:
  v12 = a7 - *(v7 + 64);
  swift_beginAccess();
  v13 = *(v7 + 24);
  v14 = *(v7 + 144);

  v51[0] = v13;
  v51[1] = AGCreateWeakAttribute();
  v52 = 0;
  v53 = v14;
  v15 = *(v7 + 152);
  if (v15)
  {
    v16 = *(v7 + 160);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Edge.Corner.Style.AnimatableData>, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v18 = v17;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Edge.Corner.Style.AnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Edge.Corner.Style.AnimatableData>, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData);
    *(&v50 + 1) = v19;
    *&v49 = v15;
    *(&v49 + 1) = v16;
    specialized Dictionary.subscript.setter(&v49, v18);
  }

  swift_beginAccess();
  v20 = *(v7 + 16);
  v21 = *(v7 + 24);
  swift_beginAccess();
  v22 = *(v7 + 32);
  v23 = *(v7 + 40);
  v24 = *(v7 + 48);
  v25 = *(v7 + 56);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v20, v21, v22, v23, v24, v25);

  *(v7 + 144) = 0;
  v26 = *(v7 + 48);
  v49 = *(v7 + 32);
  v50 = v26;
  v27 = *(*a1 + 136);
  v28 = lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData();

  LOBYTE(v28) = v27(v29, &v49, v51, &type metadata for Edge.Corner.Style.AnimatableData, v28, v12);

  if (v28)
  {
    *(v8 + 24) = v51[0];

    *(v8 + 16) = a1;

    v31.f64[0] = a5;
    v30 = a6;
    v32 = a4;
    v33.f64[0] = a3;
  }

  else
  {

    v34 = *(v8 + 32);
    v35 = *(v8 + 40);
    v36 = *(v8 + 48);
    v37 = *(v8 + 56);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v8 + 16), (v8 + 24), a1, v34, v35, v36, v37, v12, a3, a4, a5, a6);
    swift_endAccess();
    swift_endAccess();
    v32 = a4;
    v33.f64[0] = a3;
    v31.f64[0] = a5;
    v30 = a6;
  }

  v33.f64[1] = v32;
  v31.f64[1] = v30;
  v38 = vaddq_f64(*(v8 + 48), v31);
  *(v8 + 32) = vaddq_f64(*(v8 + 32), v33);
  *(v8 + 48) = v38;
  *(v8 + 80) = a7;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v40 & 1) == 0)
  {
    v41 = 0.0;
    if (*&result > 0.0)
    {
      v42 = log2(*&result * 240.0);
      v41 = exp2(floor(v42 + 0.01)) * 0.00416666667;
    }

    if (v41 >= *(v8 + 72))
    {
      v41 = *(v8 + 72);
    }

    *(v8 + 72) = v41;
    if (v41 >= 0.0166666667)
    {
      *&result = 0.0;
      v43 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
      if ((result & 0x100000000) != 0)
      {
        result = *(v8 + 120);
        v43 = *(v8 + 124);
      }

      else
      {
        v43 = 0;
      }
    }

    *(v8 + 120) = result;
    *(v8 + 124) = v43;
  }

  return result;
}

uint64_t specialized AnimatorState.forkListeners(animation:state:interval:)(uint64_t result, uint64_t a2, double a3, double a4, double a5, double a6)
{
  if ((*(v6 + 144) & 1) == 0)
  {
    v12 = result;
    swift_beginAccess();
    v13 = *(v6 + 136);
    if (v13 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v14 = *(v6 + 152);
    v15 = *(v6 + 160);
    v16 = *(v6 + 136);
    *&v26 = v12;
    *(&v26 + 1) = a2;
    *&v27 = a3;
    *(&v27 + 1) = a4;
    *&v28 = a5;
    *(&v28 + 1) = a6;
    *&v29 = v14;
    *(&v29 + 1) = v15;
    v30 = v16;
    swift_beginAccess();
    v17 = *(v6 + 168);

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v26, v25, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 168) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
      *(v6 + 168) = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17);
    }

    v17[2] = v20 + 1;
    v21 = &v17[9 * v20];
    *(v21 + 2) = v26;
    v22 = v27;
    v23 = v28;
    v24 = v29;
    v21[12] = v30;
    *(v21 + 4) = v23;
    *(v21 + 5) = v24;
    *(v21 + 3) = v22;
    *(v6 + 168) = v17;
    swift_endAccess();
    *(v6 + 136) = MEMORY[0x1E69E7CC0];

    v25[0] = v12;
    v25[1] = a2;
    *&v25[2] = a3;
    *&v25[3] = a4;
    *&v25[4] = a5;
    *&v25[5] = a6;
    v25[6] = v14;
    v25[7] = v15;
    v25[8] = v16;
    return outlined destroy of Slice<IndexSet>(v25, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork);
  }

  return result;
}

{
  if ((*(v6 + 144) & 1) == 0)
  {
    v12 = result;
    swift_beginAccess();
    v13 = *(v6 + 136);
    if (v13 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v14 = *(v6 + 152);
    v15 = *(v6 + 160);
    v16 = *(v6 + 136);
    v18[0] = v12;
    v18[1] = a2;
    *&v18[2] = a3;
    *&v18[3] = a4;
    *&v18[4] = a5;
    *&v18[5] = a6;
    v18[6] = v14;
    v18[7] = v15;
    v18[8] = v16;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v18, v17, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork);
    specialized Array.append(_:)(v18);
    swift_endAccess();
    *(v6 + 136) = MEMORY[0x1E69E7CC0];

    v17[0] = v12;
    v17[1] = a2;
    *&v17[2] = a3;
    *&v17[3] = a4;
    *&v17[4] = a5;
    *&v17[5] = a6;
    v17[6] = v14;
    v17[7] = v15;
    v17[8] = v16;
    return outlined destroy of Slice<IndexSet>(v17, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork);
  }

  return result;
}

{
  if ((*(v6 + 144) & 1) == 0)
  {
    v12 = result;
    swift_beginAccess();
    v13 = *(v6 + 136);
    if (v13 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v14 = *(v6 + 152);
    v15 = *(v6 + 160);
    v16 = *(v6 + 136);
    v18[0] = v12;
    v18[1] = a2;
    *&v18[2] = a3;
    *&v18[3] = a4;
    *&v18[4] = a5;
    *&v18[5] = a6;
    v18[6] = v14;
    v18[7] = v15;
    v18[8] = v16;
    swift_beginAccess();

    outlined init with copy of AnimatorState<Edge.Corner.Style.AnimatableData>.Fork(v18, v17);
    specialized Array.append(_:)(v18);
    swift_endAccess();
    *(v6 + 136) = MEMORY[0x1E69E7CC0];

    v17[0] = v12;
    v17[1] = a2;
    *&v17[2] = a3;
    *&v17[3] = a4;
    *&v17[4] = a5;
    *&v17[5] = a6;
    v17[6] = v14;
    v17[7] = v15;
    v17[8] = v16;
    return outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v17, &lazy cache variable for type metadata for AnimatorState<Edge.Corner.Style.AnimatableData>.Fork, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData, type metadata accessor for AnimatorState.Fork);
  }

  return result;
}

uint64_t specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v27 = *a1;
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
  v28 = swift_dynamicCastClass();
  if (v28)
  {
    v29 = *(v28 + 16);

    v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v31 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
    }

    v32 = a4 + a9;
    v33 = a5 + a10;
    v34 = a6 + a11;
    v36 = v31[2];
    v35 = v31[3];
    if (v36 >= v35 >> 1)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v31);
    }

    v31[2] = v36 + 1;
    v37 = &v31[5 * v36];
    v37[4] = v32;
    v37[5] = v33;
    v37[6] = v34;
    v37[7] = a7 + a12;
    *(v37 + 8) = v30;
    type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>();
    v63 = v38;
    v62[0] = v31;
    specialized Dictionary.subscript.setter(v62, v38);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
    }

    v40 = *(v29 + 2);
    v39 = *(v29 + 3);
    if (v40 >= v39 >> 1)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v29);
    }

    *(v29 + 2) = v40 + 1;
    v41 = &v29[16 * v40];
    *(v41 + 4) = a3;
    *(v41 + 5) = a8;
    result = swift_allocObject();
    *(result + 16) = v29;
    *a1 = result;
  }

  else
  {
    v64 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v43 = *a2;

    v44 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(v64, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44[2] + 1, 1, v44);
    }

    v46 = v44[2];
    v45 = v44[3];
    if (v46 >= v45 >> 1)
    {
      v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v44);
    }

    v44[2] = v46 + 1;
    v47 = &v44[5 * v46];
    v47[4] = a4;
    v47[5] = a5;
    v47[6] = a6;
    v47[7] = a7;
    *(v47 + 8) = v43;
    type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>();
    v49 = v48;
    v63 = v48;
    v62[0] = v44;
    specialized Dictionary.subscript.setter(v62, v48);
    v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v51 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(v64, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51[2] + 1, 1, v51);
    }

    v52 = a4 + a9;
    v53 = a5 + a10;
    v54 = a6 + a11;
    v56 = v51[2];
    v55 = v51[3];
    if (v56 >= v55 >> 1)
    {
      v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v51);
    }

    v51[2] = v56 + 1;
    v57 = &v51[5 * v56];
    v57[4] = v52;
    v57[5] = v53;
    v57[6] = v54;
    v57[7] = a7 + a12;
    *(v57 + 8) = v50;
    v63 = v49;
    v62[0] = v51;
    specialized Dictionary.subscript.setter(v62, v49);
    v58 = v64;

    *a2 = v58;

    v59 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v27, a3, a8);
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    *a1 = v60;
  }

  return result;
}

{
  type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>();
  if (v27 == MEMORY[0x1E69E63B0])
  {

    return specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a3, a4, a8, a9);
  }

  else
  {
    v28 = v27;
    v75 = a8;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v28 == v29)
    {

      return specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
    }

    else
    {
      v30 = *a1;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
      v31 = swift_dynamicCastClass();
      if (v31)
      {
        v32 = *(v31 + 16);

        v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v34 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34[2] + 1, 1, v34);
        }

        v35 = a4 + a9;
        v36 = a5 + a10;
        v37 = v34[2];
        v38 = v34[3];
        v39 = v37 + 1;
        if (v37 >= v38 >> 1)
        {
          v66 = v34;
          v67 = v34[2];
          v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v37 + 1, 1, v66);
          v37 = v67;
          v34 = v68;
        }

        v34[2] = v39;
        v40 = &v34[5 * v37];
        v40[4] = v35;
        v40[5] = v36;
        v40[6] = a6 + a11;
        v40[7] = a7 + a12;
        *(v40 + 8) = v33;
        type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>();
        v79 = v41;
        v78[0] = v34;
        specialized Dictionary.subscript.setter(v78, v41);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32);
        }

        v43 = *(v32 + 2);
        v42 = *(v32 + 3);
        if (v43 >= v42 >> 1)
        {
          v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v32);
        }

        *(v32 + 2) = v43 + 1;
        v44 = &v32[16 * v43];
        *(v44 + 4) = a3;
        *(v44 + 5) = a8;
        result = swift_allocObject();
        *(result + 16) = v32;
        *a1 = result;
      }

      else
      {
        v80 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v46 = *a2;

        v47 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v80, type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2] + 1, 1, v47);
        }

        v48 = v47[2];
        v49 = v47[3];
        v50 = v48 + 1;
        if (v48 >= v49 >> 1)
        {
          v69 = v47;
          v70 = v47[2];
          v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v48 + 1, 1, v69);
          v48 = v70;
          v47 = v71;
        }

        v47[2] = v50;
        v51 = &v47[5 * v48];
        v51[4] = a4;
        v51[5] = a5;
        v51[6] = a6;
        v51[7] = a7;
        *(v51 + 8) = v46;
        type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>();
        v53 = v52;
        v79 = v52;
        v78[0] = v47;
        specialized Dictionary.subscript.setter(v78, v52);
        v54 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v55 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v80, type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55[2] + 1, 1, v55);
        }

        v56 = a4 + a9;
        v57 = a5 + a10;
        v58 = a6 + a11;
        v59 = v55[2];
        v60 = v55[3];
        v61 = v59 + 1;
        if (v59 >= v60 >> 1)
        {
          v77 = v59 + 1;
          v72 = v55;
          v73 = v55[2];
          v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v59 + 1, 1, v72);
          v59 = v73;
          v61 = v77;
          v55 = v74;
        }

        v55[2] = v61;
        v62 = &v55[5 * v59];
        v62[4] = v56;
        v62[5] = v57;
        v62[6] = v58;
        v62[7] = a7 + a12;
        *(v62 + 8) = v54;
        v79 = v53;
        v78[0] = v55;
        specialized Dictionary.subscript.setter(v78, v53);
        v63 = v80;

        *a2 = v63;

        v64 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v30, a3, v75);
        v65 = swift_allocObject();
        *(v65 + 16) = v64;
        *a1 = v65;
      }
    }
  }

  return result;
}

{
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v27 == &type metadata for Edge.Corner.Style.AnimatableData)
  {

    return specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  }

  else
  {
    v28 = *a1;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
    v29 = swift_dynamicCastClass();
    if (v29)
    {
      v30 = *(v29 + 16);

      v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v32 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(*a2, &lazy cache variable for type metadata for CombinedAnimationState<Edge.Corner.Style.AnimatableData>, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32[2] + 1, 1, v32);
      }

      v34 = v32[2];
      v33 = v32[3];
      if (v34 >= v33 >> 1)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v32);
      }

      v32[2] = v34 + 1;
      v35 = &v32[5 * v34];
      v35[4] = a4 + a9;
      v35[5] = a5 + a10;
      v35[6] = a6 + a11;
      v35[7] = a7 + a12;
      *(v35 + 8) = v31;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<Edge.Corner.Style.AnimatableData>, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData, type metadata accessor for CombinedAnimationState);
      v60 = v36;
      v59[0] = v32;
      specialized Dictionary.subscript.setter(v59, v36);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
      }

      v38 = *(v30 + 2);
      v37 = *(v30 + 3);
      if (v38 >= v37 >> 1)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v30);
      }

      *(v30 + 2) = v38 + 1;
      v39 = &v30[16 * v38];
      *(v39 + 4) = a3;
      *(v39 + 5) = a8;
      result = swift_allocObject();
      *(result + 16) = v30;
      *a1 = result;
    }

    else
    {
      v61 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v41 = *a2;

      v42 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v61, &lazy cache variable for type metadata for CombinedAnimationState<Edge.Corner.Style.AnimatableData>, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42[2] + 1, 1, v42);
      }

      v44 = v42[2];
      v43 = v42[3];
      if (v44 >= v43 >> 1)
      {
        v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v42);
      }

      v42[2] = v44 + 1;
      v45 = &v42[5 * v44];
      v45[4] = a4;
      v45[5] = a5;
      v45[6] = a6;
      v45[7] = a7;
      *(v45 + 8) = v41;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<Edge.Corner.Style.AnimatableData>, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData, type metadata accessor for CombinedAnimationState);
      v47 = v46;
      v60 = v46;
      v59[0] = v42;
      specialized Dictionary.subscript.setter(v59, v46);
      v48 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v49 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v61, &lazy cache variable for type metadata for CombinedAnimationState<Edge.Corner.Style.AnimatableData>, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49[2] + 1, 1, v49);
      }

      v51 = v49[2];
      v50 = v49[3];
      v52 = v51 + 1;
      if (v51 >= v50 >> 1)
      {
        v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v49);
        v52 = v51 + 1;
        v49 = v57;
      }

      v49[2] = v52;
      v53 = &v49[5 * v51];
      v53[4] = a4 + a9;
      v53[5] = a5 + a10;
      v53[6] = a6 + a11;
      v53[7] = a7 + a12;
      *(v53 + 8) = v48;
      v60 = v47;
      v59[0] = v49;
      specialized Dictionary.subscript.setter(v59, v47);
      v54 = v61;

      *a2 = v54;

      v55 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v28, a3, a8);
      v56 = swift_allocObject();
      *(v56 + 16) = v55;
      *a1 = v56;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation()
{
  result = lazy protocol witness table cache variable for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation;
  if (!lazy protocol witness table cache variable for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation;
  if (!lazy protocol witness table cache variable for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation;
  if (!lazy protocol witness table cache variable for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for DefaultCombiningAnimation(uint64_t a1)
{
  result = lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation();
  *(a1 + 8) = result;
  return result;
}

uint64_t _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(uint64_t a1, uint64_t (*a2)(void))
{
  if (!*(a1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = a2(0);
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
  if ((v5 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v4, v7);
  outlined init with take of Any(v7, v8);
  outlined init with take of Any(v8, v7);
  swift_dynamicCast();
  return v9;
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Entry()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Entry)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(255);
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v0 = type metadata accessor for CombinedAnimationState.Entry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Entry);
    }
  }
}

uint64_t type metadata completion function for CombinedAnimationState.Entry()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(255);
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v0 = type metadata accessor for CombinedAnimationState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>);
    }
  }
}

uint64_t specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(uint64_t a1, uint64_t a2, double a3)
{
  type metadata accessor for AnimationBox<DefaultCombiningAnimation>();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = *(v6 + 16);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
    }

    v9 = *(v7 + 16);
    v8 = *(v7 + 24);
    if (v9 >= v8 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 16) = v9 + 1;
    v10 = v7 + 16 * v9;
    *(v10 + 32) = a2;
    v11 = (v10 + 40);
  }

  else
  {
    type metadata accessor for _ContiguousArrayStorage<DefaultCombiningAnimation.Entry>();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_18DDAB4C0;
    *(v7 + 32) = a1;
    *(v7 + 40) = 0;
    *(v7 + 48) = a2;
    v11 = (v7 + 56);
  }

  *v11 = a3;
  return v7;
}

void type metadata accessor for AnimationBox<DefaultCombiningAnimation>()
{
  if (!lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>)
  {
    lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation();
    v0 = type metadata accessor for AnimationBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<DefaultCombiningAnimation.Entry>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<DefaultCombiningAnimation.Entry>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DefaultCombiningAnimation.Entry>);
    }
  }
}

void DefaultCombiningAnimation.animate<A>(value:time:context:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, double a6@<D0>)
{
  v103 = type metadata accessor for Optional();
  v12 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v81 - v16;
  v97 = a4;
  v18 = type metadata accessor for CombinedAnimationState.Entry();
  v94 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v101 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v99 = &v81 - v21;
  MEMORY[0x1EEE9AC00](*(a3 - 8));
  v89 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v100 = &v81 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v81 - v27;
  if (a3 == MEMORY[0x1E69E63B0])
  {
    specialized DefaultCombiningAnimation.animate<A>(value:time:context:)(a1, a2, a6);
    *a5 = v73;
    *(a5 + 8) = v74 & 1;
    return;
  }

  v84 = v26;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v29 == a3)
  {
    specialized DefaultCombiningAnimation.animate<A>(value:time:context:)(a1, a2, &v107, a6);
    v75 = v108;
    *a5 = v107;
    *(a5 + 16) = v75;
    *(a5 + 32) = v109;
    return;
  }

  v105 = v12;
  v102 = v28;
  v90 = v14;
  v30 = a3;
  v31 = type metadata accessor for AnimationState();
  AnimationState.combinedState.getter(v31);
  v32 = MEMORY[0x193ABF270]();

  if (v32 == *(a2 + 16))
  {
    v33 = *(v97 + 8);
    v96 = v30;
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    if (v32)
    {
      v92 = v33;
      v98 = v17;
      v82 = a5;
      v34 = 0;
      v35 = a2;
      v36 = (v94 + 8);
      v93 = (v84 + 16);
      v86 = (v105 + 2);
      v88 = (v84 + 48);
      v83 = (v84 + 32);
      v95 = (v84 + 8);
      v91 = (v105 + 1);
      v37 = (v35 + 40);
      v87 = (v94 + 8);
      while (1)
      {
        v104 = v32;
        v105 = v37;
        AnimationState.combinedState.getter(v31);
        v46 = v99;
        Array.subscript.getter();

        v47 = *&v46[*(v18 + 36)];
        v48 = *v36;

        v48(v46, v18);
        v49 = v36;
        if (v47)
        {
          v50 = *(a1 + 8);
          v51 = *(a1 + 17);
          LOBYTE(v108) = *(a1 + 16);
          BYTE1(v108) = v51;
          *&v107 = v47;
          *(&v107 + 1) = v50;
          v52 = a1;
          v53 = v31;
          v54 = v52;
          AnimationState.combinedState.getter(v31);
          v55 = v101;
          Array.subscript.getter();

          v56 = v100;
          v57 = v96;
          (*v93)(v100, v55, v96);
          v48(v55, v18);
          dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
          v44 = v105;
          v58 = *(v105 - 1);
          v59 = a6 - *v105;

          v60 = v98;
          Animation.animate<A>(value:time:context:)(v56, &v107, v58, v57, v97, v98, v59);

          v61 = v90;
          (*v86)(v90, v60, v103);
          v85 = *v88;
          if (v85(v61, 1, v57) == 1)
          {
            (*v91)(v61, v103);
            v31 = v53;
            v62 = v53;
            a1 = v54;
            v106 = AnimationState.combinedState.getter(v62);
            v63 = type metadata accessor for Array();
            Array._makeMutableAndUnique()();
            v64 = v106;
            Array._checkSubscript_mutating(_:)(v34);
            *(v64 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v34 + *(v18 + 36)) = 0;

            _ViewInputs.base.modify(v63, v65);
            specialized AnimationState.combinedState.setter(v106, v31);

            v66 = v100;
            dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
            v38 = *v95;
            (*v95)(v66, v57);
          }

          else
          {
            v67 = v89;
            (*v83)();
            v68 = v107;

            v31 = v53;
            v69 = v53;
            a1 = v54;
            v106 = AnimationState.combinedState.getter(v69);
            v70 = type metadata accessor for Array();
            Array._makeMutableAndUnique()();
            v71 = v106;
            Array._checkSubscript_mutating(_:)(v34);
            *(v71 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v34 + *(v18 + 36)) = v68;
            v44 = v105;

            _ViewInputs.base.modify(v70, v72);
            specialized AnimationState.combinedState.setter(v106, v31);

            dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
            v38 = *v95;
            (*v95)(v67, v57);
            v38(v100, v57);
          }

          v45 = v104;
          v36 = v87;
          if (v104 == 1)
          {
            *(a1 + 17) = BYTE1(v108);
            v78 = v98;
            v79 = v96;
            if (v85(v98, 1, v96) == 1)
            {
              v38(v102, v79);
              (*v91)(v78, v103);
              (*(v84 + 56))(v82, 1, 1, v79);
            }

            else
            {
              (*v91)(v78, v103);
              v80 = v82;
              (*(v84 + 32))(v82, v102, v79);
              (*(v84 + 56))(v80, 0, 1, v79);
            }

            return;
          }

          (*v91)(v98, v103);
        }

        else
        {
          AnimationState.combinedState.getter(v31);
          Array.subscript.getter();

          v38 = *v95;
          v39 = v102;
          v40 = a1;
          v41 = v31;
          v42 = v96;
          (*v95)(v102, v96);
          v43 = v101;
          (*v93)(v39, v101, v42);
          v48(v43, v18);
          v31 = v41;
          a1 = v40;
          v36 = v49;
          v45 = v104;
          v44 = v105;
        }

        v37 = v44 + 2;
        ++v34;
        v32 = v45 - 1;
        if (!v32)
        {
          a5 = v82;
          goto LABEL_21;
        }
      }
    }

    v38 = *(v84 + 8);
LABEL_21:
    v77 = v96;
    v38(v102, v96);
    (*(v84 + 56))(a5, 1, 1, v77);
  }

  else
  {
    v76 = *(v84 + 56);

    v76(a5, 1, 1, v30);
  }
}

void specialized DefaultCombiningAnimation.animate<A>(value:time:context:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = a1;
  v8 = *(_s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVyAHy12CoreGraphics7CGFloatVAKGALG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAMGTt0B5(*a1) + 16);

  v9 = *(a2 + 16);
  if (v8 != v9 || v9 == 0)
  {
    v11 = 0uLL;
    v12 = 1;
    v13 = 0uLL;
LABEL_48:
    *a3 = v11;
    *(a3 + 16) = v13;
    *(a3 + 32) = v12;
  }

  else
  {
    v50 = a3;
    type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>();
    v15 = v14;
    v16 = 0;
    v17 = (a2 + 40);
    v59 = 0u;
    v60 = 0u;
    v18 = 8;
    v51 = v5;
    while (1)
    {
      v19 = *v5;
      if (*(*v5 + 16) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15), (v21 & 1) != 0))
      {
        outlined init with copy of Any(*(v19 + 56) + 32 * v20, v68);
        outlined init with take of Any(v68, &v61);
        outlined init with take of Any(&v61, v68);
        swift_dynamicCast();
        v22 = v65[0];
      }

      else
      {
        v22 = MEMORY[0x1E69E7CC0];
      }

      if (v16 >= *(v22 + 16))
      {
        break;
      }

      v23 = *(v22 + v18 * 8);

      if (v23)
      {
        v25 = *v5;
        v24 = v5[1];
        v26 = *(v5 + 17);
        v66 = *(v5 + 16);
        v67 = v26;
        v65[0] = v23;
        v65[1] = v24;
        if (*(v25 + 16) && (v27 = specialized __RawDictionaryStorage.find<A>(_:)(v15), (v28 & 1) != 0))
        {
          outlined init with copy of Any(*(v25 + 56) + 32 * v27, v68);
          outlined init with take of Any(v68, &v61);
          outlined init with take of Any(&v61, v68);
          swift_dynamicCast();
          v29 = v64;
        }

        else
        {
          v29 = MEMORY[0x1E69E7CC0];
        }

        if (v16 >= v29[2])
        {
          goto LABEL_50;
        }

        v58 = v8;
        v30 = v15;
        v54 = *&v29[v18 - 2];
        v56 = *&v29[v18 - 4];

        v31 = *(v17 - 1);
        v32 = a4 - *v17;
        v52 = vsubq_f64(v56, v60);
        v53 = vsubq_f64(v54, v59);
        v68[0] = v52;
        v68[1] = v53;
        v33 = *(*v31 + 120);
        type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
        v35 = v34;
        v36 = _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_0(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);

        v33(&v61, v68, v65, v35, v36, v32);

        v55 = v62;
        v57 = v61;
        v37 = v63;
        if (v63)
        {
          v15 = v30;
          if (*(v25 + 16) && (v38 = specialized __RawDictionaryStorage.find<A>(_:)(v30), (v39 & 1) != 0))
          {
            outlined init with copy of Any(*(v25 + 56) + 32 * v38, v68);
            outlined init with take of Any(v68, &v61);
            outlined init with take of Any(&v61, v68);
            swift_dynamicCast();
            v40 = v64;
          }

          else
          {
            v40 = MEMORY[0x1E69E7CC0];
          }

          v5 = v51;
          v8 = v58;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = specialized _ArrayBuffer._consumeAndCreateNew()(v40);
          }

          if (v16 >= v40[2])
          {
            goto LABEL_53;
          }

          v40[v18] = 0;

          *&v62.f64[1] = v15;
          *&v61.f64[0] = v40;
          specialized Dictionary.subscript.setter(&v61, v15);
          v49 = v52;
          v48 = v53;
        }

        else
        {
          v44 = v65[0];
          v15 = v30;
          if (*(v25 + 16) && (v45 = specialized __RawDictionaryStorage.find<A>(_:)(v30), (v46 & 1) != 0))
          {
            outlined init with copy of Any(*(v25 + 56) + 32 * v45, v68);
            outlined init with take of Any(v68, &v61);
            outlined init with take of Any(&v61, v68);

            swift_dynamicCast();
            v47 = v64;
          }

          else
          {

            v47 = MEMORY[0x1E69E7CC0];
          }

          v5 = v51;
          v8 = v58;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = specialized _ArrayBuffer._consumeAndCreateNew()(v47);
          }

          if (v16 >= v47[2])
          {
            goto LABEL_52;
          }

          v47[v18] = v44;

          *&v62.f64[1] = v15;
          *&v61.f64[0] = v47;
          specialized Dictionary.subscript.setter(&v61, v15);
          v48 = v55;
          v49 = v57;
        }

        v59 = vaddq_f64(v59, v48);
        v60 = vaddq_f64(v60, v49);
        if (v8 == 1)
        {
          *(v5 + 17) = v67;
          if (v37)
          {

            v12 = 1;
            a3 = v50;
            v13 = v55;
            v11 = v57;
            goto LABEL_48;
          }

          v12 = 0;
          v13 = v59;
          v11 = v60;
          goto LABEL_47;
        }
      }

      else
      {
        if (*(v19 + 16) && (v41 = specialized __RawDictionaryStorage.find<A>(_:)(v15), (v42 & 1) != 0))
        {
          outlined init with copy of Any(*(v19 + 56) + 32 * v41, v68);
          outlined init with take of Any(v68, &v61);
          outlined init with take of Any(&v61, v68);
          swift_dynamicCast();
          v43 = v65[0];
        }

        else
        {
          v43 = MEMORY[0x1E69E7CC0];
        }

        if (v16 >= *(v43 + 16))
        {
          goto LABEL_51;
        }

        v59 = *(v43 + v18 * 8 - 16);
        v60 = *(v43 + v18 * 8 - 32);
      }

      v18 += 5;
      v17 += 2;
      ++v16;
      if (!--v8)
      {
        v11 = 0uLL;
        v12 = 1;
        v13 = 0uLL;
LABEL_47:
        a3 = v50;
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
  }
}

uint64_t Text.typesettingLanguageAwareLineHeightRatio(_:isEnabled:)(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, char a5, char *a6)
{
  if (a2)
  {
    v10 = *(a1 + 8);
    v11 = *a1;
    type metadata accessor for LanguageAwareLineHeightRatioTextModifier();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v10;
    outlined copy of Text.Storage(a3, a4, a5 & 1);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a6 + 2) + 1, 1, a6);
    }

    v14 = *(a6 + 2);
    v13 = *(a6 + 3);
    if (v14 >= v13 >> 1)
    {
      a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, a6);
    }

    *(a6 + 2) = v14 + 1;
    v15 = &a6[16 * v14];
    *(v15 + 4) = v12;
    v15[40] = -64;
  }

  else
  {
    outlined copy of Text.Storage(a3, a4, a5 & 1);
  }

  return a3;
}

BOOL specialized static Image.RenderingModeProvider.== infix(_:_:)(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a1[8];
  v3 = *(a2 + 8);
  if (*a1 != *a2 && ((*(**a1 + 96))() & 1) == 0)
  {
    return 0;
  }

  if (v2 != 2)
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 2;
}

uint64_t LanguageAwareLineHeightRatioTextModifier.isEqual(to:)()
{
  result = swift_dynamicCastClass();
  if (result)
  {
    v2 = *(result + 16);
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    if (*(result + 24) == 1)
    {
      if (v2 == 0.0)
      {
        if (v3 != 0.0)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }
      }

      else if (*&v2 == 1)
      {
        if (*&v3 != 1)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (*&v3 <= 1uLL)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v2 != v3)
      {
        v4 = 1;
      }

      if (v4)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyTransformModifier<TypesettingConfiguration>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t Text.textScale(_:isEnabled:)(char *a1, char a2, uint64_t a3, uint64_t a4, char a5, char *a6)
{
  v11 = *a1;
  type metadata accessor for TextScaleModifier();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 17) = v11;
  outlined copy of Text.Storage(a3, a4, a5 & 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a6 + 2) + 1, 1, a6);
  }

  v14 = *(a6 + 2);
  v13 = *(a6 + 3);
  if (v14 >= v13 >> 1)
  {
    a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, a6);
  }

  *(a6 + 2) = v14 + 1;
  v15 = &a6[16 * v14];
  *(v15 + 4) = v12;
  v15[40] = -64;
  return a3;
}

uint64_t assignWithCopy for Text.Sizing(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t ConcatenatedTextStorage.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  outlined consume of Text.Storage(v1, v2, v3);

  outlined consume of Text.Storage(*(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type GloballySimultaneousGestureCombiner and conformance GloballySimultaneousGestureCombiner()
{
  result = lazy protocol witness table cache variable for type GloballySimultaneousGestureCombiner and conformance GloballySimultaneousGestureCombiner;
  if (!lazy protocol witness table cache variable for type GloballySimultaneousGestureCombiner and conformance GloballySimultaneousGestureCombiner)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GloballySimultaneousGestureCombiner and conformance GloballySimultaneousGestureCombiner);
  }

  return result;
}

uint64_t LanguageAwareLineHeightRatioTextModifier.modify(style:environment:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = a1 + *(type metadata accessor for Text.Style(0) + 84);
  result = type metadata accessor for TypesettingConfiguration();
  v6 = v4 + *(result + 20);
  *v6 = v2;
  *(v6 + 8) = v3;
  return result;
}

void type metadata accessor for AnyDynamicFontModifier<LanguageAwareLineHeightRatioFontModifier>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for AnyDynamicFontModifier();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void protocol witness for FontModifier.modify(descriptor:in:) in conformance LanguageAwareLineHeightRatioFontModifier(const __CTFontDescriptor **a1)
{
  v3 = *v1;
  type metadata accessor for _EnvironmentKeyTransformModifier<TypesettingConfiguration>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(CFStringRef, Any)>, type metadata accessor for (CFStringRef, Any), MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18DDA6EB0;
  v5 = *MEMORY[0x1E69657E0];
  *(inited + 32) = *MEMORY[0x1E69657E0];
  *(inited + 64) = MEMORY[0x1E69E63B0];
  *(inited + 40) = v3;
  v6 = v5;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, Any)(inited + 32);
  v7 = *a1;
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v7, isa);

  *a1 = CopyWithAttributes;
}

uint64_t outlined destroy of (CFStringRef, Any)(uint64_t a1)
{
  type metadata accessor for (CFStringRef, Any)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (CFStringRef, Any)()
{
  if (!lazy cache variable for type metadata for (CFStringRef, Any))
  {
    type metadata accessor for CFStringRef(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (CFStringRef, Any));
    }
  }
}

uint64_t closure #1 in applyNode #1 (start:style:node:transform:section:) in _LazyLayout_Subviews.apply(from:style:to:)(void *a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9)
{
  v14 = *a2;
  v50 = *a4;
  LODWORD(v51) = *(a4 + 8);
  v15 = outlined init with copy of _ViewList_Node(a3, &v72);
  if (v77 > 2u)
  {
    LODWORD(v52) = v72;
    *(&v52 + 1) = *(&v72 + 1);
    *&v53[0] = v73;
    BYTE8(v53[0]) = BYTE8(v73);
    v55 = v14;
    *v69 = v50;
    v69[8] = v51;
    MEMORY[0x1EEE9AC00](v15);
    v40 = a5;
    v41 = a6;
    v42 = a7;
    v43 = a8;
    v26 = _ViewList_Section.applyNodes(from:style:transform:to:)(a1, &v55, v69, closure #2 in applyNode #1 (start:style:node:transform:section:) in _LazyLayout_Subviews.apply(from:style:to:)partial apply, v39);

    return v26 & 1;
  }

  if (v77 == 1)
  {
    *&v69[32] = v74;
    v70 = v75;
    v71[0] = *v76;
    *(v71 + 13) = *&v76[13];
    *v69 = v72;
    *&v69[16] = v73;
    v16 = *(&v72 + 1);
    if (v14)
    {
      v16 = *(&v72 + 1) * (v14 >> 1);
      if ((*(&v72 + 1) * (v14 >> 1)) >> 64 != v16 >> 63)
      {
        goto LABEL_35;
      }
    }

    v17 = *a1 - v16;
    if (*a1 >= v16)
    {
      outlined destroy of _ViewList_Sublist(v69);
      *a1 = v17;
    }

    else
    {
      v47 = a5;
      v48 = a7;
      v49 = a8;
      *&v52 = v50;
      BYTE8(v52) = v51;
      _ViewList_TemporarySublistTransform.apply(sublist:)(v69);
      v18 = *v69;
      if (*&v69[8] < *v69)
      {
        goto LABEL_36;
      }

      swift_beginAccess();
      swift_beginAccess();
      if (v18 != *(&v18 + 1))
      {
        v19 = 0x80000000;
        if (v18 > 0x80000000)
        {
          v19 = v18;
        }

        v50 = (a9 & 0x1000000000000) >> 48;
        v51 = v19;
        v45 = HIDWORD(a9) & 1;
        v46 = ((a9 & 0x10000000000) >> 40);
        v20 = v18;
        do
        {
          v67[0] = 0;
          if (v18 < 0xFFFFFFFF80000000)
          {
            goto LABEL_33;
          }

          if (v51 == v20)
          {
            goto LABEL_34;
          }

          v21 = *&v69[20];
          v22 = *&v69[24];
          outlined init with copy of _ViewList_SubgraphElements(&v69[32], &v55);
          v57 = v20;
          v58 = v21;
          v59 = v22;
          v60 = *&v71[1];
          v61 = DWORD2(v71[1]);
          v62 = BYTE12(v71[1]);
          v63 = a9;
          v64 = v45;
          v65 = v46;
          v66 = v50;
          v23 = *v47;
          v24 = *(v47 + 2);
          outlined init with copy of _LazyLayout_Subview.Data(&v55, v53);
          v25 = *(a6 + 16);
          *&v52 = v23;
          DWORD2(v52) = v24;
          v54 = v25;

          (v48)(&v52, v67);
          outlined destroy of _LazyLayout_Subview(&v52);
          outlined destroy of _LazyLayout_Subview.Data(&v55);
          ++*(a6 + 16);
          if (v67[0] == 1)
          {
            outlined destroy of _ViewList_Sublist(v69);
            v26 = 0;
            return v26 & 1;
          }
        }

        while (*(&v18 + 1) != ++v20);
      }

      outlined destroy of _ViewList_Sublist(v69);
    }

    v26 = 1;
    return v26 & 1;
  }

  v49 = v14;
  if (v77 != 2)
  {
    goto LABEL_37;
  }

  v46 = &v44;
  MEMORY[0x1EEE9AC00](v15);
  v27 = 0;
  v39[0] = a5;
  v39[1] = a6;
  v40 = a7;
  v41 = a8;
  LODWORD(v42) = a9;
  BYTE4(v42) = BYTE4(a9) & 1;
  BYTE5(v42) = v28;
  BYTE6(v42) = v29;
  v47 = (v30 + 32);
  v48 = v30;
  v31 = *(v30 + 16);
  while (1)
  {
    if (v27 == v31)
    {
      v27 = v31;
      memset(v69, 0, 44);
      goto LABEL_24;
    }

    if ((v27 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v27 >= *(v48 + 16))
    {
      goto LABEL_32;
    }

    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(&v47[6 * v27++], v69);
LABEL_24:
    *(v53 + 12) = *&v69[28];
    v52 = *v69;
    v53[0] = *&v69[16];
    v26 = *&v69[24] == 0;
    if (*&v69[24])
    {
      v32 = DWORD2(v53[1]);
      outlined init with take of _ViewList_Elements(&v52, v69);
      v33 = *&v69[24];
      v34 = *&v69[32];
      __swift_project_boxed_opaque_existential_1(v69, *&v69[24]);
      v68[0] = v49;
      v55 = v50;
      v56 = v51;
      v35 = *(v34 + 64);
      v67[1] = 0;
      v36 = v35(a1, v68, v32, &v55, closure #1 in applyNode #1 (start:style:node:transform:section:) in _LazyLayout_Subviews.apply(from:style:to:)partial apply, &v38, v33, v34);
      __swift_destroy_boxed_opaque_existential_1(v69);
      if (v36)
      {
        continue;
      }
    }

    return v26 & 1;
  }

  __break(1u);
LABEL_32:
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
  LODWORD(v43) = 0;
  v42 = 570;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t one-time initialization function for namedTypes()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI15SystemColorTypeOTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for namedTypes);
  type metadata accessor for (String, SystemColorType)();
  result = swift_arrayDestroy();
  static SystemColorType.namedTypes = v0;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI15SystemColorTypeOTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<String, SystemColorType>();
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
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
      *(v3[7] + result) = v7;
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

void type metadata accessor for _DictionaryStorage<String, SystemColorType>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<String, SystemColorType>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<String, SystemColorType>);
    }
  }
}

void type metadata accessor for (String, SystemColorType)()
{
  if (!lazy cache variable for type metadata for (String, SystemColorType))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, SystemColorType));
    }
  }
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
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
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return outlined init with take of Any(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
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

uint64_t protocol witness for Shape.path(in:) in conformance Path@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  result = outlined copy of Path.Storage(v3, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return result;
}

int8x16_t protocol witness for Shape.path(in:) in conformance Rectangle._Inset@<Q0>(int8x16_t *a1@<X8>, double a2@<D0>)
{
  v19 = CGRectInset(*&a2, *v5, *v5);
  y = v19.origin.y;
  x = v19.origin.x;
  width = v19.size.width;
  height = v19.size.height;
  IsNull = CGRectIsNull(v19);
  *v8.i64 = x;
  *&v8.i64[1] = y;
  *v9.i64 = width;
  *&v9.i64[1] = height;
  if (IsNull)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  v11 = vdupq_n_s64(v10);
  if (IsNull)
  {
    v12 = 6;
  }

  else
  {
    v12 = 0;
  }

  v13 = vbicq_s8(v8, v11);
  result = vbicq_s8(v9, v11);
  *a1 = v13;
  a1[1] = result;
  a1[2].i8[0] = v12;
  return result;
}

uint64_t sub_18D33E800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
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
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t FileArchiveReader.__deallocating_deinit()
{
  v1 = *(v0 + 48);

  return swift_deallocClassInstance();
}

void *FileArchiveReader.UnmapBuffer.__deallocating_deinit()
{
  result = *(v0 + 16);
  if (result)
  {
    munmap(result, *(v0 + 24));

    return swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static ViewDecoders.registerDecodableFactoryType<A>(_:forID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static ViewDecoders.shared);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = off_1EAB0F5C8;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a5, a6, a2, a3, isUniquelyReferenced_nonNull_native);
  off_1EAB0F5C8 = v12;

  os_unfair_lock_unlock(&static ViewDecoders.shared);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = result;
      specialized _NativeDictionary.copy()();
      result = v23;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a6 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 24 * result);
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a4, a5, a1, a2, a3, v25);
  }

  return result;
}

char *FileArchiveReader.__allocating_init(url:)(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSFileHandle);
  (*(v4 + 16))(v6, a1, v3);
  v8 = v6;
  v9 = v7;
  v10 = @nonobjc NSFileHandle.__allocating_init(forReadingFrom:)(v8);
  if (v1)
  {
    (*(v4 + 8))(a1, v3);
  }

  else
  {
    v11 = v10;
    swift_allocObject();
    v9 = FileArchiveReader.init(file:)(v11);
    (*(v4 + 8))(a1, v3);
  }

  return v9;
}

id @nonobjc NSFileHandle.__allocating_init(forReadingFrom:)(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  URL._bridgeToObjectiveC()(v13);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

char *FileArchiveReader.init(file:)(void *a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = [a1 seekToEndOfFile];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  v5 = v4;
  if (v4 >= 0x8000)
  {
    v6 = mmap(0, v4, 1, 2, [a1 fileDescriptor], 0);
  }

  else
  {
    v6 = MAP_FAILED.getter();
  }

  v7 = v6;
  result = MAP_FAILED.getter();
  if (v7)
  {
    if (!result || v7 != result)
    {
      *(v1 + 6) = 0;
      type metadata accessor for FileArchiveReader.UnmapBuffer();
      v9 = swift_allocObject();
      *(v9 + 16) = v7;
      *(v9 + 24) = v5;
LABEL_9:
      *(v1 + 7) = v9;
      v1 = ArchiveReader.init(buffer:)(v7, v5);

      return v1;
    }
  }

  else if (result)
  {
    *(v1 + 6) = 0;
    __break(1u);
    goto LABEL_23;
  }

  v20[0] = 0;
  if (![a1 seekToOffset:0 error:v20])
  {
    v14 = v20[0];
    _convertNSErrorToError(_:)();

    goto LABEL_16;
  }

  v10 = v20[0];
  v11 = NSFileHandle.readToEnd()();
  if (v2)
  {
LABEL_17:

    swift_deallocPartialClassInstance();
    return v1;
  }

  if (v12 >> 60 == 15)
  {
    lazy protocol witness table accessor for type Error and conformance Error();
    swift_allocError();
    *v13 = 5;
    *(v13 + 8) = 1;
LABEL_16:
    swift_willThrow();
    goto LABEL_17;
  }

  v15 = v11;
  v16 = v12;
  v17.super.isa = Data._bridgeToObjectiveC()().super.isa;
  *(v1 + 6) = v17;
  result = [(objc_class *)v17.super.isa bytes];
  v18 = *(v1 + 6);
  if (v18)
  {
    v7 = result;
    v19 = v18;
    v5 = [v19 length];
    outlined consume of Data?(v15, v16);

    v9 = 0;
    goto LABEL_9;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

char *ArchiveReader.init(buffer:)(char *result, uint64_t a2)
{
  v3 = 1;
  if (a2 < 1 || (a2 & 7) != 0)
  {
    goto LABEL_10;
  }

  if (result)
  {
    v4 = &result[a2];
    v5 = &result[a2 - 4];
    if (v5 < result)
    {
      v3 = 1;
LABEL_10:
      lazy protocol witness table accessor for type Error and conformance Error();
      swift_allocError();
      *v9 = v3;
      *(v9 + 8) = 1;
      swift_willThrow();
      type metadata accessor for ArchiveReader();
      swift_deallocPartialClassInstance();
      return v2;
    }

    if (*v5 != -782886287)
    {
      v3 = 2;
      goto LABEL_10;
    }

    v6 = *(v4 - 2);
    v7 = &v4[-16 * v6 - 8];
    v8 = (v7 - result);
    if (v7 < result)
    {
      v3 = 3;
      goto LABEL_10;
    }

    if (v7 - result >= 0)
    {
      v2[2] = result;
      v2[3] = a2;
      v2[4] = v7;
      v2[5] = v6;
      if (v6)
      {
        v10 = &v7[16 * v6];
        while (1)
        {
          v11 = *(v7 + 1);
          if (__CFADD__(v11, *v7) || v8 < v11 + *v7)
          {
            break;
          }

          v7 += 16;
          if (v7 == v10)
          {
            return v2;
          }
        }

        lazy protocol witness table accessor for type Error and conformance Error();
        swift_allocError();
        *v12 = 4;
        *(v12 + 8) = 1;
        swift_willThrow();
      }

      return v2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void type metadata accessor for [Int]()
{
  if (!lazy cache variable for type metadata for [Int])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [Int]);
    }
  }
}

uint64_t lazy protocol witness table accessor for type [Int] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for [Int]();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void ArchiveReader.subscript.getter(uint64_t a1)
{
  v3 = type metadata accessor for Data.Deallocator();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  if (v7)
  {
    v8 = (*(v1 + 32) + 16 * a1);
    v9 = *v8;
    if (*v8 < 0)
    {
      __break(1u);
    }

    else
    {
      v10 = v8[1];

      if ((v10 & 0x8000000000000000) == 0)
      {
        v11 = swift_allocObject();
        *(v11 + 16) = v1;
        *v6 = TextShadowModifier.__ivar_destroyer;
        v6[1] = v11;
        (*(v4 + 104))(v6, *MEMORY[0x1E6969028], v3);
        specialized Data.init(bytesNoCopy:count:deallocator:)(v7 + v9, v10, v6);
        return;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t specialized Data.init(bytesNoCopy:count:deallocator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Data.Deallocator();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Data.Deallocator._deallocator.getter();
  if (a2)
  {
    type metadata accessor for __DataStorage();
    swift_allocObject();

    v10 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
    (*(v7 + 16))(v9, a3, v6);
    if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E6969010])
    {
      v11 = __DataStorage._capacity.modify();
      *v12 |= 0x8000000000000000;
      v11(v16, 0);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    v14 = specialized Data._Representation.init(_:count:)(v10, a2);
  }

  else
  {
    v13 = Data.Deallocator._deallocator.getter();
    v13(a1, 0);

    v14 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v14;
}

uint64_t specialized Data._Representation.init(_:count:)(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = __DataStorage._bytes.getter();
  if (v3)
  {
    result = __DataStorage._offset.getter();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = MEMORY[0x193ABC2C0]();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = specialized Data.InlineData.init(_:)(v3, v7);

  return v8;
}