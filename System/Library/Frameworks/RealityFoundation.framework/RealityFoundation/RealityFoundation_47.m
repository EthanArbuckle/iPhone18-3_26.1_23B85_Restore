uint64_t specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(uint64_t *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_25;
  }

  v11 = a3;
  v6 = a1;
  v7 = *a1;
  if (*(*a1 + 16) < a3)
  {
    goto LABEL_25;
  }

  v9 = a5;
  v8 = a4;
  v10 = a2;
  v12 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v7;
  if ((result & 1) == 0)
  {
    goto LABEL_26;
  }

  while (1)
  {
    *v6 = v7;
    v14 = v8 == v9;
    v15 = v10 == v11;
    v22 = v6;
    if (v10 == v11 || v8 == v9)
    {
      break;
    }

    v16 = 0;
    v17 = 48 * v10;
    v18 = v11 - 1;
    v11 = v9 - 1;
    v6 = (a6 + 48 * v8 + 32);
    v19 = v8;
    while (v19 < v9)
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_22;
      }

      if (v19 >= *(a6 + 16))
      {
        goto LABEL_23;
      }

      v25 = *&v6[v16 + 2];
      v26 = *&v6[v16];
      v24 = *&v6[v16 + 4];
      if (one-time initialization token for identity != -1)
      {
        swift_once();
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
        v7 = result;
      }

      if (v10 >= *(v7 + 16))
      {
        goto LABEL_24;
      }

      v20 = (v7 + v17 + v16 * 8);
      v20[2] = v26;
      v20[3] = v25;
      v20[4] = v24;
      v14 = v11 == v19;
      v15 = v18 == v10;
      if (v18 != v10)
      {
        ++v10;
        v16 += 6;
        if (v11 != v19++)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    v7 = result;
  }

LABEL_18:
  *v22 = v7;
  if (!v15)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (!v14)
  {
LABEL_28:
    __break(1u);
  }

  return result;
}

{
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v12 = a3;
  v6 = a1;
  v7 = *a1;
  if (*(*a1 + 16) < a3)
  {
    goto LABEL_23;
  }

  v8 = a6;
  v9 = a5;
  v10 = a4;
  v11 = a2;
  v13 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v7;
  if ((result & 1) == 0)
  {
    goto LABEL_24;
  }

  while (1)
  {
    *v6 = v7;
    v15 = v10 == v9;
    v16 = v11 == v12;
    if (v11 == v12 || v10 == v9)
    {
      break;
    }

    --v12;
    v17 = v9 - 1;
    v18 = v10;
    while (v18 < v9)
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_20;
      }

      if (v18 >= *(v8 + 16))
      {
        goto LABEL_21;
      }

      v19 = *(v8 + 32 + 4 * v18);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
        v7 = result;
      }

      if (v11 >= *(v7 + 16))
      {
        goto LABEL_22;
      }

      *(v7 + 4 * v11 + 32) = v19;
      v15 = v17 == v18;
      v16 = v12 == v11;
      if (v12 != v11)
      {
        ++v11;
        if (v17 != v18++)
        {
          continue;
        }
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    v7 = result;
  }

LABEL_16:
  *v6 = v7;
  if (!v16)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (!v15)
  {
LABEL_26:
    __break(1u);
  }

  return result;
}

unint64_t specialized MutableCollection<>._partitionImpl(by:)(unint64_t result, uint64_t a2)
{
  v14[6] = a2;
  v4 = *v2;
  v5 = *(v2[1] + 16);
  if (*v2 >= v5)
  {
    return v4;
  }

  v6 = v2;
  v7 = result;
LABEL_3:
  v8 = 40 * v4 + 32;
  v9 = v4;
  while (1)
  {
    if (v4 < 0)
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

    v10 = v6[1];
    if (v9 >= *(v10 + 16))
    {
      goto LABEL_19;
    }

    outlined init with copy of __REAssetService(v10 + v8, v14);
    v11 = v7(v14);
    result = __swift_destroy_boxed_opaque_existential_1(v14);
    if (v3)
    {
      return v9;
    }

    if (v11)
    {
      break;
    }

    ++v9;
    v8 += 40;
    if (v9 >= v5)
    {
      return v9;
    }
  }

  v12 = v10 + 40 * v5 - 8;
  while (v9 < --v5)
  {
    if (v5 >= *(v10 + 16))
    {
      goto LABEL_20;
    }

    outlined init with copy of __REAssetService(v12, v14);
    v13 = v7(v14);
    result = __swift_destroy_boxed_opaque_existential_1(v14);
    v12 -= 40;
    if ((v13 & 1) == 0)
    {
      result = specialized MutableCollection.swapAt(_:_:)(v9, v5);
      v4 = v9 + 1;
      if (v9 + 1 < v5)
      {
        goto LABEL_3;
      }

      return v4;
    }
  }

  return v9;
}

uint64_t specialized MutableCollection<>._partitionImpl(by:)(uint64_t (*a1)(__int128 *))
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *v1;
  PartCount = DRMeshGetPartCount();
  if (PartCount < 1)
  {
    i = 0;
  }

  else
  {
    v6 = PartCount;
    for (i = 0; i < v6; ++i)
    {
      v14 = 0uLL;
      v15 = xmmword_1C18AB200;
      v16 = xmmword_1C189A7F0;
      v17 = xmmword_1C189A800;
      DRMeshGetPartAt();
      v8 = a1(&v14);
      if (v2)
      {
        break;
      }

      if (v8)
      {
        v9 = v6;
        while (1)
        {
          v10 = DRMeshGetPartCount();
          v6 = v9 - 1;
          if (v9 < 1 || v9 > v10)
          {
            __break(1u);
          }

          if (i >= v6)
          {
            goto LABEL_15;
          }

          v14 = 0uLL;
          v15 = xmmword_1C18AB200;
          v16 = xmmword_1C189A7F0;
          v17 = xmmword_1C189A800;
          DRMeshGetPartAt();
          v11 = a1(&v14);
          --v9;
          if ((v11 & 1) == 0)
          {
            specialized MutableCollection.swapAt(_:_:)(i, v6);
            break;
          }
        }
      }
    }
  }

LABEL_15:
  v12 = *MEMORY[0x1E69E9840];
  return i;
}

unint64_t specialized MutableCollection<>._partitionImpl(by:)(unint64_t result)
{
  v3 = *(*v1 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = result;
  v5 = 0;
LABEL_3:
  v6 = 48 * v5;
  v7 = v5;
  while (1)
  {
    if (v5 < 0)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    v8 = *v1;
    if (v7 >= *(*v1 + 16))
    {
      goto LABEL_21;
    }

    v9 = *(v8 + v6 + 32);
    v10 = *(v8 + v6 + 48);
    v11 = *(v8 + v6 + 64);
    if (one-time initialization token for identity != -1)
    {
      v16 = *(v8 + v6 + 48);
      v17 = *(v8 + v6 + 32);
      v15 = *(v8 + v6 + 64);
      swift_once();
      v11 = v15;
      v10 = v16;
      v9 = v17;
    }

    v18 = v9;
    v19 = v10;
    v20 = v11;
    result = v4(&v18);
    if (v2)
    {
      return v7;
    }

    if (result)
    {
      break;
    }

    ++v7;
    v6 += 48;
    if (v7 >= v3)
    {
      return v7;
    }
  }

  v12 = (v8 + 48 * v3);
  while (v7 < --v3)
  {
    if (v3 >= *(v8 + 16))
    {
      goto LABEL_22;
    }

    v13 = *v12;
    v14 = v12[1];
    v18 = *(v12 - 1);
    v19 = v13;
    v20 = v14;
    result = v4(&v18);
    v12 -= 3;
    if ((result & 1) == 0)
    {
      result = specialized MutableCollection.swapAt(_:_:)(v7, v3);
      v5 = v7 + 1;
      if (v7 + 1 < v3)
      {
        goto LABEL_3;
      }

      return ++v7;
    }
  }

  return v7;
}

{
  v3 = *(*v1 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = result;
  v5 = 0;
LABEL_3:
  v6 = v5;
  while (1)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v7 = *v1;
    if (v6 >= *(*v1 + 16))
    {
      goto LABEL_20;
    }

    v10 = *(v7 + 4 * v6 + 32);
    result = v4(&v10);
    if (v2)
    {
      return v6;
    }

    if (result)
    {
      break;
    }

    if (++v6 >= v3)
    {
      return v6;
    }
  }

  v8 = v3;
  while (1)
  {
    v3 = v8 - 1;
    if (v6 >= v8 - 1)
    {
      return v6;
    }

    if (v3 >= *(v7 + 16))
    {
      goto LABEL_21;
    }

    v9 = *(v7 + 28 + 4 * v8);
    result = v4(&v9);
    v8 = v3;
    if ((result & 1) == 0)
    {
      result = specialized MutableCollection.swapAt(_:_:)(v6, v3);
      v5 = v6 + 1;
      if ((v6 + 1) < v3)
      {
        goto LABEL_3;
      }

      return ++v6;
    }
  }
}

uint64_t specialized BidirectionalCollection.distance(from:to:)(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v4 = __OFSUB__(a2, a1);
  result = a2 - a1;
  v3 = result < 0;
  if (!((result < 0) ^ v4 | (result == 0)))
  {
    v2 -= a2;
    v4 = __OFSUB__(v2, 0x8000000000000001);
    v3 = (v2 + 0x7FFFFFFFFFFFFFFFLL) < 0;
    if (v2 >= 0x8000000000000001)
    {
      return result;
    }

    __break(1u);
  }

  if (v3 == v4)
  {
    return 0;
  }

  v6 = ~a2 + v2;
  v7 = v2 ^ 0x8000000000000000;
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v7 <= v6)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t specialized TimelineDefinition.__allocating_init(_:)(uint64_t a1)
{
  type metadata accessor for TimelineDefinition();
  result = swift_allocObject();
  if (!a1)
  {
    v6 = 0;
LABEL_8:
    *(result + 16) = v6;
    return result;
  }

  v3 = result;
  v4 = *(a1 + 16);

  v5 = REAssetHandleAssetType();
  if (v5 == 11)
  {
    RootTimeline = REAnimationSceneAssetGetRootTimeline();

    if (RootTimeline)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v5 == 5)
    {

LABEL_7:
      v6 = RETimelineDefinitionCreateFromTimeline();

      result = v3;
      goto LABEL_8;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized BidirectionalCollection.index(_:offsetBy:)(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_5:
    if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) >= a2)
    {
      __break(1u);
      return result;
    }

    goto LABEL_6;
  }

  if (!a2)
  {
    return result;
  }

  if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) <= a2 - 1)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  result += a2;
  return result;
}

double simd_mul(simd_float4x4 a1, simd_float4x4 a2)
{
  v2 = 0;
  v4[2] = a2.columns[2];
  v4[3] = a2.columns[3];
  memset(v5, 0, sizeof(v5));
  do
  {
    v5[v2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a1.columns[0], COERCE_FLOAT(v4[v2])), a1.columns[1], *&v4[v2], 1), a1.columns[2], v4[v2], 2), a1.columns[3], v4[v2], 3);
    ++v2;
  }

  while (v2 != 4);
  return *v5;
}

unint64_t lazy protocol witness table accessor for type JointTransforms.CodingKeys and conformance JointTransforms.CodingKeys()
{
  result = lazy protocol witness table cache variable for type JointTransforms.CodingKeys and conformance JointTransforms.CodingKeys;
  if (!lazy protocol witness table cache variable for type JointTransforms.CodingKeys and conformance JointTransforms.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JointTransforms.CodingKeys and conformance JointTransforms.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JointTransforms.CodingKeys and conformance JointTransforms.CodingKeys;
  if (!lazy protocol witness table cache variable for type JointTransforms.CodingKeys and conformance JointTransforms.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JointTransforms.CodingKeys and conformance JointTransforms.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JointTransforms.CodingKeys and conformance JointTransforms.CodingKeys;
  if (!lazy protocol witness table cache variable for type JointTransforms.CodingKeys and conformance JointTransforms.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JointTransforms.CodingKeys and conformance JointTransforms.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JointTransforms.CodingKeys and conformance JointTransforms.CodingKeys;
  if (!lazy protocol witness table cache variable for type JointTransforms.CodingKeys and conformance JointTransforms.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JointTransforms.CodingKeys and conformance JointTransforms.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BlendShapeWeights.CodingKeys and conformance BlendShapeWeights.CodingKeys()
{
  result = lazy protocol witness table cache variable for type BlendShapeWeights.CodingKeys and conformance BlendShapeWeights.CodingKeys;
  if (!lazy protocol witness table cache variable for type BlendShapeWeights.CodingKeys and conformance BlendShapeWeights.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BlendShapeWeights.CodingKeys and conformance BlendShapeWeights.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BlendShapeWeights.CodingKeys and conformance BlendShapeWeights.CodingKeys;
  if (!lazy protocol witness table cache variable for type BlendShapeWeights.CodingKeys and conformance BlendShapeWeights.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BlendShapeWeights.CodingKeys and conformance BlendShapeWeights.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BlendShapeWeights.CodingKeys and conformance BlendShapeWeights.CodingKeys;
  if (!lazy protocol witness table cache variable for type BlendShapeWeights.CodingKeys and conformance BlendShapeWeights.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BlendShapeWeights.CodingKeys and conformance BlendShapeWeights.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BlendShapeWeights.CodingKeys and conformance BlendShapeWeights.CodingKeys;
  if (!lazy protocol witness table cache variable for type BlendShapeWeights.CodingKeys and conformance BlendShapeWeights.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BlendShapeWeights.CodingKeys and conformance BlendShapeWeights.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Float] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySfGMd, &_sSaySfGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode()
{
  result = lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode;
  if (!lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode;
  if (!lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode;
  if (!lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode;
  if (!lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultIndices<JointTransforms> and conformance <> DefaultIndices<A>()
{
  result = lazy protocol witness table cache variable for type DefaultIndices<JointTransforms> and conformance <> DefaultIndices<A>;
  if (!lazy protocol witness table cache variable for type DefaultIndices<JointTransforms> and conformance <> DefaultIndices<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSIy17RealityFoundation15JointTransformsVGMd, &_sSIy17RealityFoundation15JointTransformsVGMR);
    lazy protocol witness table accessor for type JointTransforms and conformance JointTransforms();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultIndices<JointTransforms> and conformance <> DefaultIndices<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Slice<JointTransforms> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<JointTransforms> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<JointTransforms> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy17RealityFoundation15JointTransformsVGMd, &_ss5SliceVy17RealityFoundation15JointTransformsVGMR);
    lazy protocol witness table accessor for type JointTransforms and conformance JointTransforms();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<JointTransforms> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<JointTransforms> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<JointTransforms> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy17RealityFoundation15JointTransformsVGMd, &_ss5SliceVy17RealityFoundation15JointTransformsVGMR);
    lazy protocol witness table accessor for type JointTransforms and conformance JointTransforms();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<JointTransforms> and conformance <> Slice<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultIndices<BlendShapeWeights> and conformance <> DefaultIndices<A>()
{
  result = lazy protocol witness table cache variable for type DefaultIndices<BlendShapeWeights> and conformance <> DefaultIndices<A>;
  if (!lazy protocol witness table cache variable for type DefaultIndices<BlendShapeWeights> and conformance <> DefaultIndices<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSIy17RealityFoundation17BlendShapeWeightsVGMd, &_sSIy17RealityFoundation17BlendShapeWeightsVGMR);
    lazy protocol witness table accessor for type BlendShapeWeights and conformance BlendShapeWeights();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultIndices<BlendShapeWeights> and conformance <> DefaultIndices<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Slice<BlendShapeWeights> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<BlendShapeWeights> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<BlendShapeWeights> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy17RealityFoundation17BlendShapeWeightsVGMd, &_ss5SliceVy17RealityFoundation17BlendShapeWeightsVGMR);
    lazy protocol witness table accessor for type BlendShapeWeights and conformance BlendShapeWeights();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<BlendShapeWeights> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<BlendShapeWeights> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<BlendShapeWeights> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy17RealityFoundation17BlendShapeWeightsVGMd, &_ss5SliceVy17RealityFoundation17BlendShapeWeightsVGMR);
    lazy protocol witness table accessor for type BlendShapeWeights and conformance BlendShapeWeights();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<BlendShapeWeights> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnimationFillMode(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for AnimationFillMode(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimelineBaseProperties(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for TimelineBaseProperties(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy117_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 109) = *(a2 + 109);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for InvalidAnimationDefinition(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 117))
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

uint64_t storeEnumTagSinglePayload for InvalidAnimationDefinition(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 116) = 0;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 117) = 1;
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

    *(result + 117) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __REAssetBundle.__resource<A>(ofType:identifier:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = v3[5];
  v9 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v8);
  (*(v9 + 32))(v8, v9);
  String.utf8CString.getter();
  AssetHandle = REAssetManagerCreateAssetHandle();

  if (AssetHandle)
  {
    type metadata accessor for __REAsset();
    v11 = swift_allocObject();
    *(v11 + 16) = AssetHandle;
    type metadata accessor for __RERenderGraphEmitter();
    if (swift_dynamicCastMetatype())
    {
      *(swift_allocObject() + 16) = v11;
      v12 = swift_dynamicCast();
      return (*(*(a2 - 8) + 56))(a3, v12 ^ 1u, 1, a2);
    }

    else
    {
      (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
    }
  }

  else
  {
    v14 = *(*(a2 - 8) + 56);

    return v14(a3, 1, 1, a2);
  }
}

uint64_t __REAssetBundle.resource<A>(ofType:identifier:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return __REAssetBundle.__resource<A>(ofType:identifier:)(v5, a2, a3);
}

uint64_t __REAssetBundle.__renderGraphEmitter(identifier:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  (*(v5 + 32))(v4, v5);
  String.utf8CString.getter();
  AssetHandle = REAssetManagerCreateAssetHandle();

  result = 0;
  if (AssetHandle)
  {
    type metadata accessor for __REAsset();
    v8 = swift_allocObject();
    *(v8 + 16) = AssetHandle;
    type metadata accessor for __RERenderGraphEmitter();
    result = swift_allocObject();
    *(result + 16) = v8;
  }

  return result;
}

uint64_t AnimationPlaybackController.time.setter()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 16);
    REAnimationComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      v3 = *(v0 + 16);
      REAnimationComponentSetCurrentPlaybackTime();
      RENetworkMarkComponentDirty();
    }
  }

  return result;
}

uint64_t AnimationPlaybackController.setParent(parent:)(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 16);
    REAnimationComponentGetComponentType();
    ComponentByClass = REEntityGetComponentByClass();
    if (ComponentByClass)
    {
      v6 = ComponentByClass;
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v8 = *(Strong + 16);

        MEMORY[0x1C68F6270](v6, *(v1 + 16), v8, *(a1 + 16));
      }
    }
  }

  return result;
}

uint64_t AnimationPlaybackController.__allocating_init(entity:identifier:withObservation:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  AnimationPlaybackController.init(entity:identifier:withObservation:)(a1, a2, a3);
  return v6;
}

uint64_t AnimationPlaybackController.entity.getter()
{
  if (*(v0 + 40))
  {
    return 0;
  }

  else
  {
    return swift_weakLoadStrong();
  }
}

uint64_t key path getter for AnimationPlaybackController.isPaused : AnimationPlaybackController@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = AnimationPlaybackController.isPaused.getter();
  *a2 = result & 1;
  return result;
}

uint64_t AnimationPlaybackController.isPaused.getter(uint64_t a1, uint64_t (*a2)(uint64_t, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v21 - v9;
  swift_getKeyPath();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v12 = *(Strong + 16);
  REAnimationComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {

LABEL_6:

    goto LABEL_8;
  }

  ObservationRegistrar = REAnimationComponentGetOrCreateObservationRegistrar();
  outlined init with copy of ObservationRegistrar?(ObservationRegistrar, v10);
  outlined init with copy of ObservationRegistrar?(v10, v8);
  v14 = type metadata accessor for ObservationRegistrar();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {

    outlined destroy of ObservationRegistrar?(v10);
    outlined destroy of ObservationRegistrar?(v8);
  }

  else
  {
    v21[1] = v2;
    lazy protocol witness table accessor for type AnimationPlaybackController and conformance AnimationPlaybackController(&lazy protocol witness table cache variable for type AnimationPlaybackController and conformance AnimationPlaybackController);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    outlined destroy of ObservationRegistrar?(v10);
    (*(v15 + 8))(v8, v14);
  }

LABEL_8:
  v16 = swift_weakLoadStrong();
  if (!v16)
  {
    return 0;
  }

  v17 = *(v16 + 16);
  REAnimationComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (ComponentByClass)
  {
    v19 = a2(ComponentByClass, *(v2 + 16));
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

uint64_t key path getter for AnimationPlaybackController.isComplete : AnimationPlaybackController@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = AnimationPlaybackController.isComplete.getter();
  *a2 = result & 1;
  return result;
}

uint64_t AnimationPlaybackController.init(entity:identifier:withObservation:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  *(v3 + 40) = 0;
  swift_weakInit();
  *(v3 + 16) = a2;
  swift_weakAssign();
  v8 = *(a1 + 16);
  *(v3 + 32) = REEntityGetLocalId();
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(a1 + 16));
  *(v3 + 24) = Hasher._finalize()();
  if (a3)
  {
    v9 = *(a1 + 16);
    REAnimationComponentGetComponentType();
    ComponentByClass = REEntityGetComponentByClass();
    if (ComponentByClass)
    {
      v11 = ComponentByClass;

      MEMORY[0x1C68F6280](v11, a2, v4);
    }
  }

  return v4;
}

uint64_t AnimationPlaybackController.pause()(void (*a1)(void))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 16);
    REAnimationComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      v5 = *(v1 + 16);
      a1();
      RENetworkMarkComponentDirty();
    }
  }

  return result;
}

uint64_t AnimationPlaybackController.deinit()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 16);
    REAnimationComponentGetComponentType();
    ComponentByClass = REEntityGetComponentByClass();
    if (ComponentByClass)
    {
      MEMORY[0x1C68F6220](ComponentByClass, *(v0 + 16), v0);
    }
  }

  swift_weakDestroy();
  return v0;
}

uint64_t AnimationPlaybackController.__deallocating_deinit()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 16);
    REAnimationComponentGetComponentType();
    ComponentByClass = REEntityGetComponentByClass();
    if (ComponentByClass)
    {
      MEMORY[0x1C68F6220](ComponentByClass, *(v0 + 16), v0);
    }
  }

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

Swift::Int AnimationPlaybackController.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C50](*(v0 + 16));
  MEMORY[0x1C68F4C10](*(v0 + 24));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnimationPlaybackController()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C50](*(v1 + 16));
  MEMORY[0x1C68F4C10](*(v1 + 24));
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AnimationPlaybackController()
{
  v1 = *v0;
  MEMORY[0x1C68F4C50](*(*v0 + 16));
  return MEMORY[0x1C68F4C10](*(v1 + 24));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnimationPlaybackController()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  MEMORY[0x1C68F4C50](*(*v0 + 16));
  MEMORY[0x1C68F4C10](*(v1 + 24));
  return Hasher._finalize()();
}

uint64_t key path getter for AnimationPlaybackController.isValid : AnimationPlaybackController@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = AnimationPlaybackController.isValid.getter();
  *a2 = result & 1;
  return result;
}

uint64_t key path getter for AnimationPlaybackController.isPlaying : AnimationPlaybackController@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = AnimationPlaybackController.isPlaying.getter();
  *a2 = result & 1;
  return result;
}

uint64_t key path getter for AnimationPlaybackController.isStopped : AnimationPlaybackController@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = AnimationPlaybackController.isStopped.getter();
  *a2 = result & 1;
  return result;
}

uint64_t (*AnimationPlaybackController.speed.modify(uint64_t a1))(float *a1, uint64_t a2)
{
  *a1 = v1;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 16);
    REAnimationComponentGetComponentType();
    v5 = 1.0;
    if (REEntityGetComponentByClass())
    {
      v6 = *(v1 + 16);
      if (REAnimationComponentIsValid())
      {
        v7 = *(v1 + 16);
        REAnimationComponentGetPlaybackSpeed();
        v5 = v8;
      }
    }
  }

  else
  {
    v5 = 1.0;
  }

  *(a1 + 8) = v5;
  return AnimationPlaybackController.speed.modify;
}

double AnimationPlaybackController.time.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v20 - v6;
  swift_getKeyPath();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v9 = *(Strong + 16);
  REAnimationComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {

LABEL_6:

    goto LABEL_8;
  }

  ObservationRegistrar = REAnimationComponentGetOrCreateObservationRegistrar();
  outlined init with copy of ObservationRegistrar?(ObservationRegistrar, v7);
  outlined init with copy of ObservationRegistrar?(v7, v5);
  v11 = type metadata accessor for ObservationRegistrar();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {

    outlined destroy of ObservationRegistrar?(v7);
    outlined destroy of ObservationRegistrar?(v5);
  }

  else
  {
    v20[1] = v0;
    lazy protocol witness table accessor for type AnimationPlaybackController and conformance AnimationPlaybackController(&lazy protocol witness table cache variable for type AnimationPlaybackController and conformance AnimationPlaybackController);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    outlined destroy of ObservationRegistrar?(v7);
    (*(v12 + 8))(v5, v11);
  }

LABEL_8:
  v13 = swift_weakLoadStrong();
  v14 = 0.0;
  if (v13)
  {
    v15 = *(v13 + 16);
    REAnimationComponentGetComponentType();
    if (REEntityGetComponentByClass() && (v16 = *(v0 + 16), (REAnimationComponentIsValid() & 1) != 0))
    {
      v17 = *(v0 + 16);
      REAnimationComponentGetCurrentPlaybackTime();
      v14 = v18;

      if ((~*&v14 & 0x7FF0000000000000) == 0 && (*&v14 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        return 0.0;
      }
    }

    else
    {
    }
  }

  return v14;
}

uint64_t key path setter for AnimationPlaybackController.time : AnimationPlaybackController(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return AnimationPlaybackController.time.setter();
}

uint64_t (*AnimationPlaybackController.time.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 8) = v1;
  *a1 = AnimationPlaybackController.time.getter();
  return AnimationPlaybackController.time.modify;
}

uint64_t AnimationPlaybackController.time.modify(uint64_t *a1)
{
  v1 = a1[1];
  v2 = *a1;
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 16);
    REAnimationComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      v5 = *(v1 + 16);
      REAnimationComponentSetCurrentPlaybackTime();
      RENetworkMarkComponentDirty();
    }
  }

  return result;
}

float AnimationPlaybackController.speed.getter(float (*a1)(uint64_t, void))
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 1.0;
  }

  v4 = *(Strong + 16);
  REAnimationComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  v6 = 1.0;
  if (ComponentByClass)
  {
    v7 = *(v1 + 16);
    v8 = ComponentByClass;
    if (REAnimationComponentIsValid())
    {
      v6 = a1(v8, *(v1 + 16));
    }
  }

  return v6;
}

uint64_t AnimationPlaybackController.speed.setter(void (*a1)(float), float a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 16);
    REAnimationComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      v7 = *(v2 + 16);
      a1(a2);
      RENetworkMarkComponentDirty();
    }
  }

  return result;
}

uint64_t (*AnimationPlaybackController.blendFactor.modify(uint64_t a1))(float *a1, uint64_t a2)
{
  *a1 = v1;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 16);
    REAnimationComponentGetComponentType();
    v5 = 1.0;
    if (REEntityGetComponentByClass())
    {
      v6 = *(v1 + 16);
      if (REAnimationComponentIsValid())
      {
        v7 = *(v1 + 16);
        REAnimationComponentGetBlendFactor();
        v5 = v8;
      }
    }
  }

  else
  {
    v5 = 1.0;
  }

  *(a1 + 8) = v5;
  return AnimationPlaybackController.blendFactor.modify;
}

uint64_t AnimationPlaybackController.speed.modify(float *a1, uint64_t a2, void (*a3)(float))
{
  v4 = *a1;
  v5 = a1[2];
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *(result + 16);
    REAnimationComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      v8 = *(v4 + 16);
      a3(v5);
      RENetworkMarkComponentDirty();
    }
  }

  return result;
}

double AnimationPlaybackController.duration.getter()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  v2 = *(Strong + 16);
  REAnimationComponentGetComponentType();
  v3 = 0.0;
  if (REEntityGetComponentByClass())
  {
    v4 = *(v0 + 16);
    if (REAnimationComponentIsValid())
    {
      v5 = *(v0 + 16);
      REAnimationComponentGetDuration();
      v3 = v6;
    }
  }

  return v3;
}

CMTimebaseRef AnimationPlaybackController.clock.getter()
{
  timebaseOut[1] = *MEMORY[0x1E69E9840];
  timebaseOut[0] = 0;
  v1 = *MEMORY[0x1E695E480];
  v2 = CMClockGetHostTimeClock();
  CMTimebaseCreateWithSourceClock(v1, v2, timebaseOut);

  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_8;
  }

  v4 = *(result + 2);
  if (!REEntityGetComponent())
  {

LABEL_8:
    if (timebaseOut[0])
    {
      v7 = timebaseOut[0];
LABEL_13:

      v12 = *MEMORY[0x1E69E9840];
      return v7;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = *(v0 + 16);
  if ((REAnimationComponentIsValid() & 1) == 0)
  {
    v8 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    v9 = *(v8 + 24);
    v10 = *(swift_unownedRetainStrong() + 24);

    ServiceLocator = REEngineGetServiceLocator();
    result = MEMORY[0x1C68FE1E0](ServiceLocator);
    if (result)
    {
      result = REAnimationServiceGetRootTimebase();
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v6 = *(v0 + 16);
  result = REAnimationComponentGetAnimationParentTimebase();
  if (result)
  {
LABEL_12:
    v7 = result;

    goto LABEL_13;
  }

  if (timebaseOut[0])
  {
    result = timebaseOut[0];
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t AnimationPlaybackController.clock.setter()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 16);
    if (REEntityGetComponent())
    {
      v3 = *(v0 + 16);
      if (REAnimationComponentIsValid())
      {
        type metadata accessor for CMTimebaseRef(0);
        v4 = swift_dynamicCastUnknownClassUnconditional();
        v5 = *(v0 + 16);
        v6 = v4;
        REAnimationComponentSetAnimationParentTimebase();
      }
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t (*AnimationPlaybackController.clock.modify(CMTimebaseRef *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = AnimationPlaybackController.clock.getter();
  return AnimationPlaybackController.clock.modify;
}

uint64_t AnimationPlaybackController.clock.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;
    swift_unknownObjectRetain();
    AnimationPlaybackController.clock.setter();

    return swift_unknownObjectRelease();
  }

  else
  {
    v6 = *a1;
    return AnimationPlaybackController.clock.setter();
  }
}

Swift::Void __swiftcall AnimationPlaybackController.stop(blendOutDuration:)(Swift::Double blendOutDuration)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v17 - v7;
  swift_getKeyPath();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v10 = *(Strong + 16);
  REAnimationComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {

LABEL_6:

    goto LABEL_8;
  }

  ObservationRegistrar = REAnimationComponentGetOrCreateObservationRegistrar();
  outlined init with copy of ObservationRegistrar?(ObservationRegistrar, v8);
  outlined init with copy of ObservationRegistrar?(v8, v5);
  v12 = type metadata accessor for ObservationRegistrar();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v5, 1, v12) == 1)
  {

    outlined destroy of ObservationRegistrar?(v8);
    outlined destroy of ObservationRegistrar?(v5);
  }

  else
  {
    v17[1] = v1;
    lazy protocol witness table accessor for type AnimationPlaybackController and conformance AnimationPlaybackController(&lazy protocol witness table cache variable for type AnimationPlaybackController and conformance AnimationPlaybackController);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    outlined destroy of ObservationRegistrar?(v8);
    (*(v13 + 8))(v5, v12);
  }

LABEL_8:
  v14 = swift_weakLoadStrong();
  if (v14)
  {
    v15 = *(v14 + 16);
    REAnimationComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      v16 = *(v1 + 16);
      REAnimationComponentStopAnimationWithTime();
      RENetworkMarkComponentDirty();
    }
  }
}

uint64_t lazy protocol witness table accessor for type AnimationPlaybackController and conformance AnimationPlaybackController(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnimationPlaybackController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RequestLoadable.enforceResourceSharingBeforeECSCommits()()
{
  v3 = v1;
  v4 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  *(inited + 56) = v4;
  *(inited + 64) = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v2, v4);
  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
}

uint64_t RequestLoadable.awaitForResourceSharing()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](RequestLoadable.awaitForResourceSharing(), 0, 0);
}

uint64_t RequestLoadable.awaitForResourceSharing()()
{
  v1 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 16) = xmmword_1C1887600;
  v9 = *(v0 + 16);
  *(v2 + 56) = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 32));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v1);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = RequestLoadable.awaitForResourceSharing();
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD00000000000001BLL, 0x80000001C18DF8A0, partial apply for closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:), v4, v7);
}

{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = RequestLoadable.awaitForResourceSharing();
  }

  else
  {
    v5 = *(v2 + 40);
    v6 = *(v2 + 48);

    v4 = specialized RequestLoadable.awaitForResourceSharing();
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = v0[5];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t static LoadUtilities.getURL(name:in:allowingExtensions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v48 = a5;
  v49 = type metadata accessor for URL();
  v9 = *(v49 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v46 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v46 - v19;
  v21 = MEMORY[0x1C68F3280](a1, a2, v18);
  v22 = [v21 pathExtension];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v52[0] = v23;
  v52[1] = v25;
  v51 = v52;
  LOBYTE(v23) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v50, a4);

  if ((v23 & 1) != 0 && (v26 = MEMORY[0x1C68F3280](a1, a2), v27 = [a3 URLForResource:v26 withExtension:0], v26, v27))
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = *(v9 + 32);
    v29 = v49;
    v28(v20, v16, v49);
    v30 = v48;
    v28(v48, v20, v29);
    return (*(v9 + 56))(v30, 0, 1, v29);
  }

  else
  {
    v32 = (a4 + 40);
    v33 = *(a4 + 16) + 1;
    while (--v33)
    {
      v34 = v32 + 2;
      v36 = *(v32 - 1);
      v35 = *v32;

      v37 = MEMORY[0x1C68F3280](a1, a2);
      v38 = MEMORY[0x1C68F3280](v36, v35);

      v39 = [a3 URLForResource:v37 withExtension:v38];

      v32 = v34;
      if (v39)
      {
        v40 = v47;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v41 = *(v9 + 32);
        v42 = v46;
        v43 = v40;
        v44 = v49;
        v41(v46, v43, v49);
        v45 = v48;
        v41(v48, v42, v44);
        return (*(v9 + 56))(v45, 0, 1, v44);
      }
    }

    return (*(v9 + 56))(v48, 1, 1, v49);
  }
}

uint64_t static LoadUtilities.getURLForMaterialX(name:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - v14;
  v16 = MEMORY[0x1C68F3280](a1, a2, v13);
  v17 = [v16 pathExtension];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  if (v18 == 2020373613 && v20 == 0xE400000000000000)
  {

LABEL_9:
    v27 = MEMORY[0x1C68F3280](a1, a2);
    v28 = [a3 URLForResource:v27 withExtension:0];

    if (v28)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = type metadata accessor for URL();
      (*(*(v29 - 8) + 56))(v15, 0, 1, v29);
    }

    else
    {
      v30 = type metadata accessor for URL();
      (*(*(v30 - 8) + 56))(v15, 1, 1, v30);
    }

    return outlined init with take of URL?(v15, a4);
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v22)
  {
    goto LABEL_9;
  }

  v23 = MEMORY[0x1C68F3280](a1, a2);
  v24 = MEMORY[0x1C68F3280](2020373613, 0xE400000000000000);
  v25 = [a3 URLForResource:v23 withExtension:v24];

  if (v25)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = type metadata accessor for URL();
    (*(*(v26 - 8) + 56))(v11, 0, 1, v26);
  }

  else
  {
    v31 = type metadata accessor for URL();
    (*(*(v31 - 8) + 56))(v11, 1, 1, v31);
  }

  v15 = v11;
  return outlined init with take of URL?(v15, a4);
}

uint64_t static LoadUtilities.getURLForRealityFile(name:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - v14;
  v16 = MEMORY[0x1C68F3280](a1, a2, v13);
  v17 = [v16 pathExtension];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  if (v18 == 0x7974696C616572 && v20 == 0xE700000000000000)
  {

LABEL_9:
    v27 = MEMORY[0x1C68F3280](a1, a2);
    v28 = [a3 URLForResource:v27 withExtension:0];

    if (v28)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = type metadata accessor for URL();
      (*(*(v29 - 8) + 56))(v15, 0, 1, v29);
    }

    else
    {
      v30 = type metadata accessor for URL();
      (*(*(v30 - 8) + 56))(v15, 1, 1, v30);
    }

    return outlined init with take of URL?(v15, a4);
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v22)
  {
    goto LABEL_9;
  }

  v23 = MEMORY[0x1C68F3280](a1, a2);
  v24 = MEMORY[0x1C68F3280](0x7974696C616572, 0xE700000000000000);
  v25 = [a3 URLForResource:v23 withExtension:v24];

  if (v25)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = type metadata accessor for URL();
    (*(*(v26 - 8) + 56))(v11, 0, 1, v26);
  }

  else
  {
    v31 = type metadata accessor for URL();
    (*(*(v31 - 8) + 56))(v11, 1, 1, v31);
  }

  v15 = v11;
  return outlined init with take of URL?(v15, a4);
}

uint64_t static LoadUtilities.getURLForRealityFile(withScene:in:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v71 = a2;
  v7 = type metadata accessor for URL();
  v69 = *(v7 - 8);
  v8 = *(v69 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1C68F3280](0x7974696C616572, 0xE700000000000000, v9);
  v13 = [a3 URLsForResourcesWithExtension:v12 subdirectory:0];

  if (!v13)
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_SStMd, &_s10Foundation3URLV_SStMR);
    v23 = *(*(v22 - 8) + 56);

    return v23(a4, 1, 1, v22);
  }

  v70 = a1;
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v15 + 120, &v72);
  v16 = v74;
  v17 = v75;
  __swift_project_boxed_opaque_existential_1(&v72, v74);
  v18 = *(v17 + 32);

  v68 = v18(v16, v17);
  result = __swift_destroy_boxed_opaque_existential_1(&v72);
  v62 = *(v14 + 16);
  if (!v62)
  {
LABEL_39:

    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_SStMd, &_s10Foundation3URLV_SStMR);
    return (*(*(v49 - 8) + 56))(a4, 1, 1, v49);
  }

  v20 = 0;
  v21 = v70;
  v65 = v14 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
  v67 = v69 + 16;
  v63 = v14;
  v64 = (v69 + 8);
  v60 = v15;
  v61 = v11;
  while (v20 < *(v14 + 16))
  {
    v24 = *(v69 + 72);
    v66 = v20;
    v25 = *(v69 + 16);
    v25(v11, v65 + v24 * v20, v7);
    URL._bridgeToObjectiveC()(v26);
    v28 = v27;
    v29 = RERealityFileMountFileAtURL();

    if (!v29)
    {
      goto LABEL_8;
    }

    result = RERealityFileGetAssetDescriptorCount();
    if (result < 0)
    {
      goto LABEL_46;
    }

    v30 = result;
    v59 = v25;
    if (result)
    {
      v31 = 0;
      v32 = MEMORY[0x1E69E7CC0];
      do
      {
        result = RERealityFileGetAssetDescriptorAtIndex();
        if (result)
        {
          result = RERealityFileAssetDescriptorAsSceneDescriptor();
          if (result)
          {
            v33 = result;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 16) + 1, 1, v32);
              v32 = result;
            }

            v35 = *(v32 + 16);
            v34 = *(v32 + 24);
            if (v35 >= v34 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v32);
              v32 = result;
            }

            *(v32 + 16) = v35 + 1;
            *(v32 + 8 * v35 + 32) = v33;
          }
        }

        ++v31;
      }

      while (v30 != v31);
    }

    else
    {
      v32 = MEMORY[0x1E69E7CC0];
    }

    v36 = *(v32 + 16);
    if (v36)
    {
      v37 = 0;
      v38 = v32 + 32;
      v58 = a4;
      v57 = v7;
      v55 = v36;
      v54 = v32 + 32;
      while (2)
      {
        if (v37 >= *(v32 + 16))
        {
          goto LABEL_47;
        }

        v39 = *(v38 + 8 * v37);
        if (RESceneDescriptorGetSceneName())
        {
          v40 = String.init(cString:)();
          v42 = v41;
          if (v40 != v21)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v40 = 0;
          v42 = 0xE000000000000000;
          if (v21)
          {
LABEL_31:
            if (_stringCompareWithSmolCheck(_:_:expecting:)())
            {

              v48 = v40;
              v47 = v42;
              goto LABEL_42;
            }

            v56 = v37 + 1;
            v43 = 4;
            v44 = &unk_1F40E4018;
            do
            {
              v45 = *(v44 - 1);
              v46 = *v44;
              v72 = v21;
              v73 = v71;

              MEMORY[0x1C68F3410](46, 0xE100000000000000);

              MEMORY[0x1C68F3410](v45, v46);

              v48 = v72;
              v47 = v73;
              if (v40 == v72 && v42 == v73)
              {
                v48 = v40;
LABEL_41:

                a4 = v58;
                v7 = v57;
                goto LABEL_42;
              }

              if (_stringCompareWithSmolCheck(_:_:expecting:)())
              {
                goto LABEL_41;
              }

              v44 += 2;
              --v43;
              v21 = v70;
            }

            while (v43);

            v37 = v56;
            a4 = v58;
            v7 = v57;
            v38 = v54;
            if (v56 != v55)
            {
              continue;
            }

            goto LABEL_7;
          }
        }

        break;
      }

      if (v42 == v71)
      {

        v47 = v42;
        v48 = v21;
LABEL_42:
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_SStMd, &_s10Foundation3URLV_SStMR);
        v51 = (a4 + *(v50 + 48));
        v52 = v61;
        v59(a4, v61, v7);
        *v51 = v48;
        v51[1] = v47;
        (*(*(v50 - 8) + 56))(a4, 0, 1, v50);
        RERealityFileUnmount();

        return (*v64)(v52, v7);
      }

      goto LABEL_31;
    }

LABEL_7:

    RERealityFileUnmount();
    v11 = v61;
LABEL_8:
    v20 = v66 + 1;
    result = (*v64)(v11, v7);
    v14 = v63;
    if (v20 == v62)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t NetworkSendBlockingCategory.supportsResourceSharingBeforeECSCommits.getter()
{
  v1 = *v0;
  if (one-time initialization token for categoriesSupportingResourceSharingBeforeECSCommits != -1)
  {
    v4 = *v0;
    swift_once();
    v1 = v4;
  }

  v2 = static RequestLoadableUtilities.categoriesSupportingResourceSharingBeforeECSCommits;

  return specialized Set.contains(_:)(v1, v2);
}

RealityFoundation::NetworkSendBlockingCategory_optional __swiftcall NetworkSendBlockingCategory.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NetworkSendBlockingCategory.init(rawValue:), v3);

  v7 = 10;
  if (v5 < 0xA)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t NetworkSendBlockingCategory.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x65727574786574;
    v7 = 0x6F4C797469746E65;
    if (v1 != 8)
    {
      v7 = 0x6F65646976;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 1752393069;
    if (v1 != 5)
    {
      v8 = 0x73636973796870;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6F6974616D696E61;
    v3 = 0x6D6E6F7269766E65;
    v4 = 0x4D6E49746C697562;
    if (v1 != 3)
    {
      v4 = 0xD000000000000013;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x6F69647561;
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
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NetworkSendBlockingCategory@<X0>(uint64_t *a1@<X8>)
{
  result = NetworkSendBlockingCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NetworkSendBlockingCategory()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NetworkSendBlockingCategory()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

uint64_t one-time initialization function for $clientIsOptingOutOfFlickerMitigations()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9TaskLocalCySbGMd, &_ss9TaskLocalCySbGMR);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  static RequestLoadableUtilities.$clientIsOptingOutOfFlickerMitigations = result;
  return result;
}

uint64_t one-time initialization function for categoriesSupportingResourceSharingBeforeECSCommits()
{
  result = closure #1 in variable initialization expression of static RequestLoadableUtilities.categoriesSupportingResourceSharingBeforeECSCommits();
  static RequestLoadableUtilities.categoriesSupportingResourceSharingBeforeECSCommits = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of static RequestLoadableUtilities.categoriesSupportingResourceSharingBeforeECSCommits()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x1C68F3280](0xD000000000000030, 0x80000001C18EB640);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v12, v13);
    outlined init with copy of Any(v13, v12);
    if (swift_dynamicCast())
    {
      if (v11 == 1)
      {
        v3 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation27NetworkSendBlockingCategoryO_SayAFGTt0g5Tf4g_n(outlined read-only object #0 of static NetworkSendBlockingCategory.allCases.getter);
        __swift_destroy_boxed_opaque_existential_1(v13);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v13);
        return MEMORY[0x1E69E7CD0];
      }

      return v3;
    }

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    LOBYTE(v12[0]) = outlined read-only object #0 of static NetworkSendBlockingCategory.allCases.getter[v4 + 32];
    if (closure #1 in closure #1 in variable initialization expression of static RequestLoadableUtilities.categoriesSupportingResourceSharingBeforeECSCommits(v12, 0xD000000000000030, 0x80000001C18EB640))
    {
      v8 = v12[0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v13[0] = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1);
        v5 = *&v13[0];
      }

      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        v5 = *&v13[0];
      }

      *(v5 + 16) = v7 + 1;
      *(v5 + v7 + 32) = v8;
    }

    ++v4;
  }

  while (v4 != 10);
  v3 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation27NetworkSendBlockingCategoryO_SayAFGTt0g5Tf4g_n(v5);

  return v3;
}

uint64_t closure #1 in closure #1 in variable initialization expression of static RequestLoadableUtilities.categoriesSupportingResourceSharingBeforeECSCommits(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = [objc_opt_self() standardUserDefaults];
  *&v25[0] = a2;
  *(&v25[0] + 1) = a3;

  MEMORY[0x1C68F3410](46, 0xE100000000000000);
  if (v5 > 4)
  {
    v15 = 0xE700000000000000;
    v16 = 0x65727574786574;
    v17 = 0xEA00000000006461;
    v18 = 0x6F4C797469746E65;
    if (v5 != 8)
    {
      v18 = 0x6F65646976;
      v17 = 0xE500000000000000;
    }

    if (v5 != 7)
    {
      v16 = v18;
      v15 = v17;
    }

    v19 = 0xE400000000000000;
    v20 = 1752393069;
    if (v5 != 5)
    {
      v20 = 0x73636973796870;
      v19 = 0xE700000000000000;
    }

    if (v5 <= 6)
    {
      v13 = v20;
    }

    else
    {
      v13 = v16;
    }

    if (v5 <= 6)
    {
      v14 = v19;
    }

    else
    {
      v14 = v15;
    }
  }

  else
  {
    v7 = 0xE90000000000006ELL;
    v8 = 0x6F6974616D696E61;
    v9 = 0xEB00000000746E65;
    v10 = 0x6D6E6F7269766E65;
    v11 = 0xEF6C616972657461;
    v12 = 0x4D6E49746C697562;
    if (v5 != 3)
    {
      v12 = 0xD000000000000013;
      v11 = 0x80000001C18DDAF0;
    }

    if (v5 != 2)
    {
      v10 = v12;
      v9 = v11;
    }

    if (v5)
    {
      v8 = 0x6F69647561;
      v7 = 0xE500000000000000;
    }

    if (v5 <= 1)
    {
      v13 = v8;
    }

    else
    {
      v13 = v10;
    }

    if (v5 <= 1)
    {
      v14 = v7;
    }

    else
    {
      v14 = v9;
    }
  }

  MEMORY[0x1C68F3410](v13, v14);

  v21 = MEMORY[0x1C68F3280](*&v25[0], *(&v25[0] + 1));

  v22 = [v6 objectForKey_];

  if (v22 && (_bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), outlined init with take of Any(v24, v25), outlined init with take of Any(v25, v24), (swift_dynamicCast() & 1) != 0))
  {
    return v26;
  }

  else
  {
    return 1;
  }
}

void closure #2 in static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(uint64_t a1, uint64_t a2)
{
  aBlock[4] = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_49_0;
  v3 = _Block_copy(aBlock);
  v4 = _Block_copy(v3);
  v5 = *(a2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v8[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v8[3] = &block_descriptor_56_1;
  v7 = _Block_copy(v8);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v7);
  _Block_release(v3);
}

uint64_t closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:)(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - v10;
  v12 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v12 + 120, v34);
  v13 = v35;
  v14 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  if ((*(v14 + 56))(v13, v14))
  {
    v15 = 0;
  }

  else
  {
    v15 = 3;
  }

  outlined init with copy of __REAssetService(v34, aBlock);
  LOBYTE(v32[0]) = v15;
  v16 = specialized __AssetLoadRequest.__allocating_init(assetService:resourceSharingScheduling:)(aBlock, v32);
  (*(v8 + 16))(v11, a1, v7);
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  (*(v8 + 32))(v18 + v17, v11, v7);
  *(v18 + ((v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
  aBlock[4] = partial apply for closure #2 in closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_37;
  v19 = _Block_copy(aBlock);
  v20 = _Block_copy(v19);
  v21 = *(v16 + 16);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  v32[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ();
  v32[5] = v22;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 1107296256;
  v32[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v32[3] = &block_descriptor_22_0;
  v23 = _Block_copy(v32);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v23);
  _Block_release(v19);

  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
  type metadata accessor for MainActor();

  v25 = v31;

  v26 = static MainActor.shared.getter();
  v27 = swift_allocObject();
  v28 = MEMORY[0x1E69E85E0];
  v27[2] = v26;
  v27[3] = v28;
  v27[4] = v25;
  v27[5] = v16;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #3 in closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:), v27);

  return __swift_destroy_boxed_opaque_existential_1(v34);
}

void closure #2 in closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:)(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    CheckedContinuation.resume(returning:)();
LABEL_5:
    aBlock[4] = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    aBlock[3] = &block_descriptor_29;
    v8 = _Block_copy(aBlock);
    v9 = _Block_copy(v8);
    v10 = *(a3 + 16);
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    v13[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
    v13[5] = v11;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v13[3] = &block_descriptor_36;
    v12 = _Block_copy(v13);

    REAssetLoadRequestSetCompletionHandler();
    _Block_release(v12);
    _Block_release(v8);
    return;
  }

  v4 = *(a3 + 16);
  RequestCopyError = REAssetLoadRequestCopyError();
  if (RequestCopyError)
  {
    v6 = RequestCopyError;
    v7 = specialized static LoadUtilities.convertCFErrorToEntityLoadError(error:)(RequestCopyError);

    aBlock[0] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t closure #3 in closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #3 in closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:), v7, v6);
}

uint64_t closure #3 in closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:)()
{
  v1 = v0[4];
  v2 = v0[2];

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v0[2] + 32);
    do
    {
      v5 = v0[3];
      v6 = v4[3];
      v7 = v4[4];
      __swift_project_boxed_opaque_existential_1(v4, v6);
      (*(v7 + 16))(v5, v6, v7);
      v4 += 5;
      --v3;
    }

    while (v3);
  }

  v8 = v0[1];

  return v8();
}

uint64_t withUnsafeOptOutOfFlickerMitigations<A>(_:file:line:)()
{
  if (one-time initialization token for $clientIsOptingOutOfFlickerMitigations != -1)
  {
    swift_once();
  }

  return TaskLocal.withValue<A>(_:operation:file:line:)();
}

uint64_t LoadRequest<A>.Fulfiller.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t LoadRequest<A>.CancellableHolder.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(uint64_t a1)
{
  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v3 + 120, v31);
  v4 = v32;
  v5 = v33;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  if ((*(v5 + 64))(v4, v5))
  {
    v6 = *(a1 + 16);
    v7 = a1 + 32;
    v8 = v6 + 1;
    v9 = v7;
    while (--v8)
    {
      outlined init with copy of __REAssetService(v9, aBlock);
      if (one-time initialization token for categoriesSupportingResourceSharingBeforeECSCommits != -1)
      {
        swift_once();
      }

      v9 += 40;
      v10 = static RequestLoadableUtilities.categoriesSupportingResourceSharingBeforeECSCommits;
      v11 = v28;
      v12 = v29;
      __swift_project_boxed_opaque_existential_1(aBlock, v28);
      (*(v12 + 1))(v26, v11, v12);
      v13 = specialized Set.contains(_:)(v26[0], v10);
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      if ((v13 & 1) == 0)
      {
        v14 = 0;
        goto LABEL_11;
      }
    }

    if (one-time initialization token for $clientIsOptingOutOfFlickerMitigations != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    v14 = LOBYTE(aBlock[0]) ^ 1;
LABEL_11:
    v15 = v14 & 1;
    outlined init with copy of __REAssetService(v31, aBlock);
    LOBYTE(v26[0]) = v15;
    v16 = specialized __AssetLoadRequest.__allocating_init(assetService:resourceSharingScheduling:)(aBlock, v26);
    if (!v1)
    {
      v18 = v16;
      v29 = partial apply for closure #2 in static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:);
      v30 = v16;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v28 = &block_descriptor_39;
      v19 = _Block_copy(aBlock);
      v20 = _Block_copy(v19);
      v21 = *(v18 + 16);
      v22 = swift_allocObject();
      *(v22 + 16) = v20;
      v26[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
      v26[5] = v22;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 1107296256;
      v26[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v26[3] = &block_descriptor_46_0;
      v23 = _Block_copy(v26);

      REAssetLoadRequestSetCompletionHandler();
      _Block_release(v23);
      _Block_release(v19);

      if (v6)
      {
        do
        {
          outlined init with copy of __REAssetService(v7, aBlock);
          v24 = v28;
          v25 = v29;
          __swift_project_boxed_opaque_existential_1(aBlock, v28);
          (*(v25 + 2))(v18, v24, v25);
          __swift_destroy_boxed_opaque_existential_1(aBlock);
          v7 += 40;
          --v6;
        }

        while (v6);
      }

      else
      {
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v31);
}

unint64_t lazy protocol witness table accessor for type [NetworkSendBlockingCategory] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [NetworkSendBlockingCategory] and conformance [A];
  if (!lazy protocol witness table cache variable for type [NetworkSendBlockingCategory] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay17RealityFoundation27NetworkSendBlockingCategoryOGMd, &_sSay17RealityFoundation27NetworkSendBlockingCategoryOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [NetworkSendBlockingCategory] and conformance [A]);
  }

  return result;
}

uint64_t type metadata completion function for LoadRequest<A>.Fulfiller()
{
  return type metadata completion function for LoadRequest<A>.Fulfiller();
}

{
  return swift_initClassMetadata2();
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized static LoadUtilities.convertCFErrorToEntityLoadError(error:)(__CFError *a1)
{
  Code = CFErrorGetCode(a1);
  if (Code == 300 || Code == 200)
  {
    goto LABEL_8;
  }

  if (Code != 100)
  {
    if (a1)
    {
      type metadata accessor for CFErrorRef(0);
      lazy protocol witness table accessor for type Entity.LoadError and conformance Entity.LoadError(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
      v3 = swift_allocError();
      *v4 = a1;
      v5 = a1;
      return v3;
    }

LABEL_8:
    type metadata accessor for Entity.LoadError(0);
    lazy protocol witness table accessor for type Entity.LoadError and conformance Entity.LoadError(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
    v3 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    return v3;
  }

  type metadata accessor for CancellationError();
  lazy protocol witness table accessor for type Entity.LoadError and conformance Entity.LoadError(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550]);
  v3 = swift_allocError();
  CancellationError.init()();
  return v3;
}

uint64_t lazy protocol witness table accessor for type Entity.LoadError and conformance Entity.LoadError(unint64_t *a1, void (*a2)(uint64_t))
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

void partial apply for closure #2 in closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:)(char a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #2 in closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:)(a1, v1 + v4, v5);
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #3 in closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return closure #3 in closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:)(a1, v4, v5, v7, v6);
}

uint64_t Entity.ComponentSet.doGet<A>(_:borrowStrongReference:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *v5;
  (*(a4 + 80))(&v25, a3, a4);
  v12 = *(v11 + 16);
  if (a3 == &type metadata for ModelComponent)
  {
    Component = REEntityGetComponent();
    if (Component)
    {
      *&v22 = Component;
      static ModelComponent.__fromCore(_:borrowStrongReference:)(&v22, a2 & 1, &v25);
      v22 = v25;
      v23 = v26;
      v24 = v27;
      v16 = swift_dynamicCast();
      return (*(off_1F410C670 + 7))(a5, v16 ^ 1u, 1, &type metadata for ModelComponent);
    }

    goto LABEL_15;
  }

  if (v25 == 36)
  {
    v13 = *(v11 + 16);
    (*(a4 + 104))(&v25, a3, a4);
    if (v25)
    {
      ComponentByClass = REEntityGetComponentByClass();
      if (ComponentByClass)
      {
        *&v22 = ComponentByClass;
        (*(a4 + 64))(&v22, a3, a4);
        return (*(a3[-1].Description + 7))(a5, 0, 1, a3);
      }
    }

    else
    {
      specialized static SceneManager.customComponentType(_:)(a1, a4);
      if (REEntityGetCustomComponent())
      {
        result = RECustomComponentGetObject();
        if (!result)
        {
          __break(1u);
          return result;
        }

        (*(a4 + 32))(result, a3, a4);
        return (*(a3[-1].Description + 7))(a5, 0, 1, a3);
      }
    }

    goto LABEL_15;
  }

  v18 = REEntityGetComponent();
  if (!v18)
  {
LABEL_15:
    v19 = *(a3[-1].Description + 7);
    v20 = a5;
    v21 = 1;
    goto LABEL_16;
  }

  *&v25 = v18;
  (*(a4 + 64))(&v25, a3, a4);
  v19 = *(a3[-1].Description + 7);
  v20 = a5;
  v21 = 0;
LABEL_16:

  return v19(v20, v21, 1, a3);
}

uint64_t Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v44 = a3;
  v48 = a2;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v43 - v16;
  v18 = *(a4 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v15);
  v46 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v45 = &v43 - v22;
  v47 = *v5;
  v23 = *(v47 + 16);
  (*(a5 + 80))(&v49, a4, a5);
  if (v49 == 36)
  {
    v24 = specialized static SceneManager.customComponentType(_:)(a1, a5);
    v45 = v23;
    ComponentByClass = REEntityGetComponentByClass();
    (*(v10 + 16))(v14, v48, v9);
    if ((*(v18 + 48))(v14, 1, a4) == 1)
    {
      result = (*(v10 + 8))(v14, v9);
      if (!ComponentByClass)
      {
        return result;
      }

      MEMORY[0x1EEE9AC00](result);
      *(&v43 - 2) = v45;
      *(&v43 - 1) = v24;
      v27 = partial apply for closure #4 in Entity.ComponentSet.doSetExistential(_:newValue:);
      v28 = MEMORY[0x1E69E7CA8] + 8;
      v29 = a1;
      v30 = a4;
      v31 = a5;
      return Entity.withMutation<A, B>(componentType:_:)(v29, v27, v30, v28, v31, &v49);
    }

    v35 = v46;
    (*(v18 + 32))(v46, v14, a4);
    if (ComponentByClass || REEntityAddComponentNoEvents())
    {
      Object = RECustomComponentGetObject();
      if (Object)
      {
        v37 = MEMORY[0x1EEE9AC00](Object);
        *(&v43 - 6) = a4;
        *(&v43 - 5) = a5;
        *(&v43 - 4) = a1;
        *(&v43 - 3) = v35;
        *(&v43 - 2) = v37;
        *(&v43 - 8) = v38;
        Entity.withMutation<A, B>(componentType:_:)(a1, partial apply for closure #3 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:), a4, MEMORY[0x1E69E7CA8] + 8, a5, &v49);
        if (!ComponentByClass)
        {
          REEntitySendAddAndActivateComponentEvents();
        }

        RENetworkMarkComponentDirty();
      }
    }
  }

  else
  {
    v32 = v48;
    v46 = a5;
    result = REComponentClassFromType();
    if (!result)
    {
      return result;
    }

    v33 = result;
    v43 = a1;
    (*(v10 + 16))(v17, v32, v9);
    if ((*(v18 + 48))(v17, 1, a4) == 1)
    {
      v34 = (*(v10 + 8))(v17, v9);
      MEMORY[0x1EEE9AC00](v34);
      *(&v43 - 2) = v23;
      *(&v43 - 1) = v33;
      v27 = partial apply for closure #2 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:);
      v28 = MEMORY[0x1E69E7CA8] + 8;
      v29 = v43;
      v30 = a4;
      v31 = v46;
      return Entity.withMutation<A, B>(componentType:_:)(v29, v27, v30, v28, v31, &v49);
    }

    v35 = v45;
    (*(v18 + 32))(v45, v17, a4);
    v39 = REEntityGetComponentByClass();
    v40 = v39;
    if (v39 || (v39 = REEntityAddComponentNoEvents()) != 0)
    {
      v41 = MEMORY[0x1EEE9AC00](v39);
      v42 = v46;
      *(&v43 - 6) = a4;
      *(&v43 - 5) = v42;
      *(&v43 - 4) = v35;
      *(&v43 - 3) = v41;
      *(&v43 - 16) = v44 & 1;
      Entity.withMutation<A, B>(componentType:_:)(v43, partial apply for closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:), a4, MEMORY[0x1E69E7CA8] + 8, v42, &v49);
      if (!v40)
      {
        REEntitySendAddAndActivateComponentEvents();
      }
    }
  }

  return (*(v18 + 8))(v35, a4);
}

uint64_t Entity.ComponentSet.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized Entity.ComponentSet.subscript.setter(a1, a2, a3, a4);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

BOOL Entity.ComponentSet.has(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  (*(a2 + 80))(&v9);
  v6 = *(v5 + 16);
  if (v9 == 36)
  {
    specialized static SceneManager.customComponentType(_:)(a1, a2);
    CustomComponent = REEntityGetCustomComponent();
  }

  else
  {
    CustomComponent = REEntityGetComponent();
  }

  return CustomComponent != 0;
}

uint64_t Entity.ComponentSet.set<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v15 - v11;
  v15[1] = *v3;
  v13 = *(a2 - 8);
  (*(v13 + 16))(v15 - v11, a1, a2, v10);
  (*(v13 + 56))(v12, 0, 1, a2);
  Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)(a2, v12, 0, a2, a3);
  return (*(v8 + 8))(v12, v7);
}

uint64_t specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3;
  v7 = result;
  if (a2 < 0)
  {
    v11 = 0;
    while (1)
    {
      v71 = v7 == v6;
      if (v7 == v6)
      {
        goto LABEL_63;
      }

      v9 = __OFSUB__(v7--, 1);
      if (v9)
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        return result;
      }

      v69 = v11 - 1;
LABEL_15:
      v12 = *(a4 + 16);
      result = REEntityGetComponentCount();
      if (result >= 1)
      {
        break;
      }

      v13 = 0;
LABEL_58:
      if (v13 < v7)
      {
        goto LABEL_59;
      }

LABEL_11:
      v11 = v69;
      v6 = a3;
      if (v69 <= a2)
      {
        goto LABEL_65;
      }
    }

    v13 = 0;
    while (1)
    {
      Shared = REEngineGetShared();
      if (Shared)
      {
        v17 = Shared;
        if (one-time initialization token for lock != -1)
        {
          swift_once();
        }

        v18 = static __ServiceLocator.lock;
        os_unfair_lock_lock((static __ServiceLocator.lock + 16));
        if (!static __ServiceLocator.sharedEngine || *(static __ServiceLocator.sharedEngine + 3) != v17)
        {
          type metadata accessor for __Engine();
          swift_allocObject();
          static __ServiceLocator.sharedEngine = __Engine.init(coreEngine:)(v17);

          specialized static SceneManager.customComponentType(_:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent);
          specialized static SceneManager.customComponentType(_:)(&type metadata for SceneOriginComponent, &protocol witness table for SceneOriginComponent);
        }

        os_unfair_lock_unlock(v18 + 4);
        v19 = static __ServiceLocator.sharedEngine;
        if (static __ServiceLocator.sharedEngine)
        {
          goto LABEL_45;
        }
      }

      else
      {
        static __ServiceLocator.sharedEngine = 0;

        v19 = static __ServiceLocator.sharedEngine;
        if (static __ServiceLocator.sharedEngine)
        {
          goto LABEL_45;
        }
      }

      Default = REEngineConfigurationCreateDefault();
      type metadata accessor for EngineConfiguration();
      v21 = swift_allocObject();
      *(v21 + 16) = Default;
      if (REGetRetainCount() >= 2)
      {
        v22 = *(v21 + 16);

        v23 = REEngineConfigurationClone();
        v24 = swift_allocObject();
        *(v24 + 16) = v23;

        v21 = v24;
      }

      v25 = *(v21 + 16);
      REEngineConfigurationSetClockMode();
      if (one-time initialization token for defaultServices != -1)
      {
        swift_once();
      }

      v26 = *(v21 + 16);
      if (REGetRetainCount() >= 2)
      {
        v27 = *(v21 + 16);

        v28 = REEngineConfigurationClone();
        v29 = swift_allocObject();
        *(v29 + 16) = v28;

        v21 = v29;
      }

      v30 = *(v21 + 16);
      REEngineConfigurationSetServicesToCreate();
      v31 = *(v21 + 16);
      if (REGetRetainCount() >= 2)
      {
        v32 = *(v21 + 16);

        v33 = REEngineConfigurationClone();
        v34 = swift_allocObject();
        *(v34 + 16) = v33;

        v21 = v34;
      }

      v35 = *(v21 + 16);
      REEngineConfigurationSetServicesToUpdate();
      v36 = *(v21 + 16);
      if (REGetRetainCount() >= 2)
      {
        v37 = *(v21 + 16);

        v38 = REEngineConfigurationClone();
        v39 = swift_allocObject();
        *(v39 + 16) = v38;

        v21 = v39;
      }

      v40 = *(v21 + 16);
      REEngineConfigurationSetStartupOptions();
      if (one-time initialization token for defaultRenderFlags != -1)
      {
        swift_once();
      }

      v41 = *(v21 + 16);
      if (REGetRetainCount() >= 2)
      {
        v42 = *(v21 + 16);

        v43 = REEngineConfigurationClone();
        v44 = swift_allocObject();
        *(v44 + 16) = v43;

        v21 = v44;
      }

      v45 = *(v21 + 16);
      REEngineConfigurationSetRenderFlags();
      if (!specialized static __ServiceLocator.__sharedEngine.getter())
      {
        v73[0] = v21;
        v46 = specialized static __Engine.makeSharedEngine(_:)(v73);
        v47 = v46[3];
        REEngineSetShared();
        static __ServiceLocator.sharedEngine = v46;

        static __ServiceLocator.createdSharedEngine = 1;
      }

      specialized static SceneManager.customComponentType(_:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent);
      result = specialized static SceneManager.customComponentType(_:)(&type metadata for SceneOriginComponent, &protocol witness table for SceneOriginComponent);
      v19 = static __ServiceLocator.sharedEngine;
      if (!static __ServiceLocator.sharedEngine)
      {
        goto LABEL_69;
      }

LABEL_45:
      result = swift_beginAccess();
      v48 = v19[5];
      if (!v48)
      {
        goto LABEL_68;
      }

      swift_beginAccess();
      outlined init with copy of __REAssetService(v48 + 80, v73);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit14__SceneService_pMd, &_s10RealityKit14__SceneService_pMR);
      type metadata accessor for SceneManager();
      swift_dynamicCast();
      v49 = *(a4 + 16);
      REEntityGetComponentAtIndex();
      Class = REComponentGetClass();
      swift_beginAccess();
      v51 = *(v72 + 16);
      swift_beginAccess();
      v52 = *(v51 + 24);
      if (*(v52 + 16) && (v53 = specialized __RawDictionaryStorage.find<A>(_:)(Class), (v54 & 1) != 0))
      {
        v14 = *(*(v52 + 56) + 80 * v53 + 48);

        if (v14 == 2)
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (one-time initialization token for handlesToCustomComponentTypes != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v55 = static SceneManager.handlesToCustomComponentTypes;
        if (*(static SceneManager.handlesToCustomComponentTypes + 16) && (v56 = specialized __RawDictionaryStorage.find<A>(_:)(Class), (v57 & 1) != 0))
        {
          v58 = *(*(v55 + 56) + 16 * v56);
          swift_endAccess();
          v59 = *(v72 + 16);
          swift_beginAccess();
          v60 = *(v59 + 16);
          if (!*(v60 + 16) || (v61 = specialized __RawDictionaryStorage.find<A>(_:)(v58), (v62 & 1) == 0))
          {

            if (v13 >= v7)
            {
              goto LABEL_11;
            }

LABEL_59:
            v73[0] = a4;
            result = Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)();
            if (result)
            {
              goto LABEL_11;
            }

            --v7;
            goto LABEL_15;
          }

          v63 = (*(v60 + 56) + 80 * v61);
          v64 = v63[1];
          v65 = v63[7];
          v66 = v63[9];
        }

        else
        {
          swift_endAccess();
        }
      }

      ++v13;
      v15 = *(a4 + 16);
      result = REEntityGetComponentCount();
      if (v13 >= result)
      {
        goto LABEL_58;
      }
    }
  }

  if (a2)
  {
    v8 = 0;
    while (1)
    {
      v71 = v7 == v6;
      if (v7 == v6)
      {
        break;
      }

      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        __break(1u);
        goto LABEL_67;
      }

      while (1)
      {
        v10 = *(a4 + 16);
        result = REEntityGetComponentCount();
        if (v7 >= result)
        {
          break;
        }

        v73[0] = a4;
        result = Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)();
        if (result)
        {
          break;
        }

        ++v7;
      }

      if (++v8 == a2)
      {
        goto LABEL_65;
      }
    }

LABEL_63:
    v7 = 0;
  }

  else
  {
    v71 = 0;
  }

LABEL_65:
  *a5 = v7;
  *(a5 + 8) = v71;
  return result;
}

uint64_t Entity.ComponentSet.count.getter()
{
  v1 = *v0;
  v8[1] = v1;
  v2 = *(v1 + 16);
  if (REEntityGetComponentCount() < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      v8[0] = v1;
      if (Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)())
      {
        break;
      }

      ++v3;
      v4 = *(v1 + 16);
    }

    while (v3 < REEntityGetComponentCount());
  }

  v8[0] = v3;
  v5 = *(v1 + 16);
  ComponentCount = REEntityGetComponentCount();
  return Entity.ComponentSet.distance(from:to:)(v8, &ComponentCount);
}

void (*Entity.ComponentSet.subscript.modify(void *a1, uint64_t a2, ValueMetadata *a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x38uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a4;
  v9[2] = v4;
  *v9 = a3;
  v11 = type metadata accessor for Optional();
  v10[3] = v11;
  v12 = *(v11 - 8);
  v10[4] = v12;
  v13 = *(v12 + 64);
  if (v8)
  {
    v10[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v10[6] = v14;
  v17 = *v4;

  Entity.ComponentSet.doGet<A>(_:borrowStrongReference:)(a3, 1, a3, a4, v15);

  return Entity.ComponentSet.subscript.modify;
}

void Entity.ComponentSet.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  if (a2)
  {
    (*(v6 + 8))((*a1)[6], v5);
  }

  else
  {
    v7 = v2[1];
    v8 = *v2;
    v10 = *v2[2];
    (*(v6 + 16))(v3, v4, v5);

    Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)(v8, v3, 1, v8, v7);
    v9 = *(v6 + 8);
    v9(v3, v5);

    v9(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v7);
    specialized Entity.ComponentSet.subscript.setter(v3, v9, v7, v8);
    v10 = *(v6 + 8);
    v10(v3, v7);
    v10(v4, v7);
  }

  else
  {
    specialized Entity.ComponentSet.subscript.setter((*a1)[6], v9, v7, v8);
    (*(v6 + 8))(v4, v7);
  }

  free(v4);
  free(v3);

  free(v2);
}

double Entity.ComponentSet.existentialBox(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  (*(a2 + 80))(&v16);
  v8 = *(v7 + 16);
  if (v16 == 36)
  {
    specialized static SceneManager.customComponentType(_:)(a1, a2);
    if (REEntityGetCustomComponent())
    {
      Object = RECustomComponentGetObject();
      if (Object)
      {
        v10 = Object;
        v11 = *(a2 + 32);
        *(a3 + 24) = a1;
        *(a3 + 32) = a2;
        __swift_allocate_boxed_opaque_existential_1(a3);
        v11(v10, a1, a2);
        return result;
      }
    }
  }

  else
  {
    Component = REEntityGetComponent();
    if (Component)
    {
      v15 = Component;
      v14 = *(a2 + 64);
      *(a3 + 24) = a1;
      *(a3 + 32) = a2;
      __swift_allocate_boxed_opaque_existential_1(a3);
      v14(&v15, a1, a2);
      return result;
    }
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  if (v7 == &type metadata for ModelComponent)
  {
    (*(v10 + 16))(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    swift_dynamicCast();
    v12 = v15;
    v13 = v16;
    v14 = v17;
    v18 = a2;
    ModelComponent.__toCore(_:returnStrongReference:)(&v18, a3 & 1);
  }

  else
  {
    *&v15 = a2;
    return (*(v8 + 72))(&v15, v7, v8);
  }
}

uint64_t closure #3 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v13[4] = a6;
  v13[3] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a2, a5);
  (*(a6 + 40))(v13, a3, 0, (a4 & 1) == 0, a5, a6);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t Entity.ComponentSet.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;

  Entity.ComponentSet.doSetExistential(_:newValue:)(a2, a3, a1);
  outlined destroy of Component?(a1);
}

uint64_t Entity.ComponentSet.doSetExistential(_:newValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  (*(a2 + 80))(v17);
  if (LODWORD(v17[0]) != 36)
  {
    result = REComponentClassFromType();
    if (!result)
    {
      return result;
    }

    outlined init with copy of Component?(a3, &v15);
    if (v16)
    {
      outlined init with take of ForceEffectBase(&v15, v17);
      ComponentByClass = REEntityGetComponentByClass();
      v12 = ComponentByClass;
      if (!ComponentByClass && (ComponentByClass = REEntityAddComponentNoEvents()) == 0 || (MEMORY[0x1EEE9AC00](ComponentByClass), Entity.withMutation<A, B>(componentType:_:)(a1, partial apply for closure #1 in Entity.ComponentSet.doSetExistential(_:newValue:), a1, MEMORY[0x1E69E7CA8] + 8, a2, &v15), !v12))
      {
        REEntitySendAddAndActivateComponentEvents();
      }

      return __swift_destroy_boxed_opaque_existential_1(v17);
    }

    v14 = outlined destroy of Component?(&v15);
    MEMORY[0x1EEE9AC00](v14);
    v13 = MEMORY[0x1E69E7CA8];
    return Entity.withMutation<A, B>(componentType:_:)(a1, partial apply for closure #4 in Entity.ComponentSet.doSetExistential(_:newValue:), a1, v13 + 8, a2, v17);
  }

  specialized static SceneManager.customComponentType(_:)(a1, a2);
  CustomComponent = REEntityGetCustomComponent();
  outlined init with copy of Component?(a3, &v15);
  if (v16)
  {
    outlined init with take of ForceEffectBase(&v15, v17);
    if (CustomComponent || REEntityAddComponentNoEvents())
    {
      Object = RECustomComponentGetObject();
      if (Object)
      {
        MEMORY[0x1EEE9AC00](Object);
        Entity.withMutation<A, B>(componentType:_:)(a1, partial apply for closure #3 in Entity.ComponentSet.doSetExistential(_:newValue:), a1, MEMORY[0x1E69E7CA8] + 8, a2, &v15);
        if (!CustomComponent)
        {
          REEntitySendAddAndActivateComponentEvents();
        }

        RENetworkMarkComponentDirty();
      }
    }

    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  result = outlined destroy of Component?(&v15);
  if (CustomComponent)
  {
    MEMORY[0x1EEE9AC00](result);
    v13 = MEMORY[0x1E69E7CA8];
    return Entity.withMutation<A, B>(componentType:_:)(a1, partial apply for closure #4 in Entity.ComponentSet.doSetExistential(_:newValue:), a1, v13 + 8, a2, v17);
  }

  return result;
}

void (*Entity.ComponentSet.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x68uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[11] = a3;
  v8[12] = v4;
  v8[10] = a2;
  (*(a3 + 80))(&v19, a2, a3);
  v10 = v19;
  v11 = *(*v4 + 16);
  *(v9 + 32) = 0;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  if (v10 == 36)
  {
    specialized static SceneManager.customComponentType(_:)(a2, a3);
    if (REEntityGetCustomComponent())
    {
      Object = RECustomComponentGetObject();
      if (Object)
      {
        v13 = Object;
        v14 = *(a3 + 32);
        *(v9 + 64) = a2;
        *(v9 + 72) = a3;
        __swift_allocate_boxed_opaque_existential_1((v9 + 40));
        v14(v13, a2, a3);
LABEL_10:
        outlined assign with take of Component?(v9 + 40, v9);
      }
    }
  }

  else
  {
    Component = REEntityGetComponent();
    if (Component)
    {
      v18 = Component;
      v16 = *(a3 + 64);
      *(v9 + 64) = a2;
      *(v9 + 72) = a3;
      __swift_allocate_boxed_opaque_existential_1((v9 + 40));
      v16(&v18, a2, a3);
      goto LABEL_10;
    }
  }

  return Entity.ComponentSet.subscript.modify;
}

uint64_t closure #1 in Entity.ComponentSet.doSetExistential(_:newValue:)(ValueMetadata *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a1 == &type metadata for ModelComponent)
  {
    outlined init with copy of __REAssetService(a3, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
    swift_dynamicCast();
    v9 = v12;
    v10 = v13;
    v11 = v14;
    v8 = a4;
    ModelComponent.__toCore(_:returnStrongReference:)(&v8, 0);
  }

  else
  {
    v5 = a3[3];
    v6 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v5);
    v15[0] = a4;
    return (*(v6 + 72))(v15, v5, v6);
  }
}

Swift::Void __swiftcall Entity.ComponentSet.set(_:)(Swift::OpaquePointer a1)
{
  v2 = *(a1._rawValue + 2);
  if (v2)
  {
    v3 = *v1;
    v4 = a1._rawValue + 32;
    do
    {
      outlined init with copy of __REAssetService(v4, v9);
      v8 = v3;
      __swift_project_boxed_opaque_existential_1(v9, v9[3]);
      DynamicType = swift_getDynamicType();
      v6 = v9[4];
      outlined init with copy of __REAssetService(v9, v7);
      Entity.ComponentSet.doSetExistential(_:newValue:)(DynamicType, v6, v7);
      outlined destroy of Component?(v7);
      __swift_destroy_boxed_opaque_existential_1(v9);
      v4 += 40;
      --v2;
    }

    while (v2);
  }
}

uint64_t Entity.ComponentSet.remove(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  Entity.ComponentSet.doSetExistential(_:newValue:)(a1, a2, v4);
  return outlined destroy of Component?(v4);
}

Swift::Void __swiftcall Entity.ComponentSet.removeAll()()
{
  v1 = 0;
  v2 = *v0;
  while (1)
  {
    while (1)
    {
      v3 = *(v2 + 16);
      if (v1 >= REEntityGetComponentCount())
      {
        break;
      }

      v14 = v2;
      if (Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)())
      {
        break;
      }

      ++v1;
    }

    v4 = *(v2 + 16);
    if (v1 == REEntityGetComponentCount())
    {
      break;
    }

    v5 = *(v2 + 16);
    ComponentCount = REEntityGetComponentCount();
    v7 = *(v2 + 16);
    if (REEntityGetComponentCount() < 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0;
      do
      {
        *&v11[0] = v2;
        if (Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)())
        {
          break;
        }

        ++v8;
        v9 = *(v2 + 16);
      }

      while (v8 < REEntityGetComponentCount());
    }

    specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(ComponentCount, -1, v8, v2, &v14);
    if (v15 == 1)
    {
      break;
    }

    *&v11[0] = v2;
    v13 = v14;
    Entity.ComponentSet.subscript.getter(&v13, &v14);
    v13 = v2;
    __swift_project_boxed_opaque_existential_1(&v14, v16);
    DynamicType = swift_getDynamicType();
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    Entity.ComponentSet.doSetExistential(_:newValue:)(DynamicType, v17, v11);
    outlined destroy of Component?(v11);
    __swift_destroy_boxed_opaque_existential_1(&v14);
    v1 = 0;
  }
}

uint64_t Entity.ComponentSet.subscript.getter@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, ValueMetadata *a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v22[2] = a3;
  v23 = a2;
  v24 = a1;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v22 - v16;
  v25 = *v6;
  Entity.ComponentSet.doGet<A>(_:borrowStrongReference:)(a4, 0, a4, a5, v22 - v16);
  Description = a4[-1].Description;
  if ((Description)[6](v17, 1, a4) != 1)
  {
    return (Description)[4](a6, v17, a4);
  }

  v22[1] = v6;
  v19 = *(v11 + 8);
  v20 = v19(v17, v10);
  v23(v20);
  (Description)[2](v14, a6, a4);
  (Description[7])(v14, 0, 1, a4);
  specialized Entity.ComponentSet.subscript.setter(v14, v24, a4, a5);
  return v19(v14, v10);
}

uint64_t Entity.ComponentSet.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  specialized Entity.ComponentSet.subscript.setter(a1, a2, a5, a6);
  v8 = *(*(a5 - 8) + 8);

  return v8(a1, a5);
}

void (*Entity.ComponentSet.subscript.modify(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, ValueMetadata *a5, uint64_t a6))(uint64_t **a1, char a2)
{
  v13 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(0x38uLL);
  }

  v15 = v14;
  *a1 = v14;
  v14[2] = a6;
  v14[3] = v6;
  *v14 = a2;
  v14[1] = a5;
  Description = a5[-1].Description;
  v14[4] = Description;
  v17 = Description[8];
  if (v13)
  {
    v14[5] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v14[5] = malloc(Description[8]);
    v18 = malloc(v17);
  }

  v15[6] = v18;
  Entity.ComponentSet.subscript.getter(a2, a3, a4, a5, a6, v18);
  return Entity.ComponentSet.subscript.modify;
}

uint64_t Entity._getComponent<A>()@<X0>(ValueMetadata *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  Entity.ComponentSet.doGet<A>(_:borrowStrongReference:)(a1, 0, a1, a2, a3);
}

uint64_t Entity._setComponent<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v17 - v12;
  v14 = *(a2 - 8);
  (*(v14 + 16))(&v17 - v12, a1, a2, v11);
  (*(v14 + 56))(v13, 0, 1, a2);
  v18 = v4;

  specialized Entity.ComponentSet.subscript.setter(v13, a2, a2, a3);
  (*(v9 + 8))(v13, v8);
  v15 = *(v18 + 16);

  if (v15 != *(v4 + 16))
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized Entity.ComponentSet.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;

  Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)(a3, a1, 0, a3, a4);
}

{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v16 - v12;
  v14 = *(a3 - 8);
  (*(v14 + 16))(&v16 - v12, a1, a3, v11);
  (*(v14 + 56))(v13, 0, 1, a3);
  specialized Entity.ComponentSet.subscript.setter(v13, a2, a3, a4);
  return (*(v9 + 8))(v13, v8);
}

uint64_t outlined destroy of Component?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pSgMd, &_s10RealityKit9Component_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with take of Component?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pSgMd, &_s10RealityKit9Component_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    v7 = 0;
    while (result - a3 + v7)
    {
      v8 = result + v7 - 1;
      if (__OFSUB__(result + v7, 1))
      {
LABEL_27:
        __break(1u);
        return result;
      }

      if (--v7 <= a2)
      {
        return v8;
      }
    }

    return 0;
  }

  if (a2)
  {
    v3 = a3 - result;
    if (a3 - result >= (a2 - 1))
    {
      v3 = a2 - 1;
    }

    if (v3 >= (result ^ 0x7FFFFFFFFFFFFFFFuLL))
    {
      v3 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v4 = v3 + 1;
    if (v4 > 4)
    {
      v9 = v4 & 3;
      if ((v4 & 3) == 0)
      {
        v9 = 4;
      }

      v5 = v4 - v9;
      v10 = 0uLL;
      v11 = result;
      v12 = vdupq_n_s64(1uLL);
      v13 = v5;
      do
      {
        v10 = vaddq_s64(v10, v12);
        v11 = vaddq_s64(v11, v12);
        v13 -= 4;
      }

      while (v13);
      v6 = vaddvq_s64(vpaddq_s64(v11, v10));
    }

    else
    {
      v5 = 0;
      v6 = result;
    }

    v14 = v5 + result - 0x7FFFFFFFFFFFFFFFLL;
    v15 = v5 + result - a3;
    v16 = a2 - v5;
    result = v6;
    while (v15)
    {
      if (!v14)
      {
        __break(1u);
        goto LABEL_27;
      }

      ++result;
      ++v14;
      ++v15;
      if (!--v16)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t partial apply for closure #2 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return REEntityRemoveComponentByClass();
}

uint64_t REAudioFileAssetConfigurationWrapper.init(configuration:)(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 1);
  v6 = a1[16];
  v7 = *(a1 + 3);
  v8 = a1[32];
  v10 = *(a1 + 5);
  v9 = *(a1 + 6);
  v22 = *(a1 + 14);
  v23 = a1[60];
  *(v1 + 16) = REAudioFileAssetConfigurationCreate();
  if (v2)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  REAudioFileAssetConfigurationSetStreaming();
  v11 = *(v1 + 16);
  REAudioFileAssetConfigurationSetRandomizeStart();
  v12 = *(v1 + 16);
  REAudioFileAssetConfigurationSetShouldLoop();
  v13 = *(v1 + 16);
  if (v9)
  {

    v14 = MEMORY[0x1C68F3280](v10, v9);
  }

  else
  {
    v14 = 0;
  }

  REAudioFileAssetConfigurationSetMixGroupName();

  if (v8 != 255)
  {
    v15 = *(v1 + 16);
    REAudioFileAssetConfigurationSetCalibrationMode();
    v16 = *(v1 + 16);
    REAudioFileAssetConfigurationSetCalibrationLevel();
  }

  if (v6 - 1 >= 2)
  {
    if (v6)
    {
      goto LABEL_14;
    }

    v18 = *(v1 + 16);
    REAudioFileAssetConfigurationSetNormalizationMode();
    goto LABEL_13;
  }

  v17 = *(v1 + 16);
  REAudioFileAssetConfigurationSetNormalizationMode();
  if (v6 <= 1)
  {
LABEL_13:
    v19 = *(v1 + 16);
    REAudioFileAssetConfigurationSetTargetLUFS();
  }

LABEL_14:

  if ((v23 & 1) == 0)
  {
    v20 = *(v1 + 16);
    REAudioFileAssetConfigurationSetLayoutTag();
  }

  return v1;
}

uint64_t REAudioFileAssetConfigurationWrapper.init(configuration:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 1);
  v5 = a1[16];
  v6 = *(a1 + 3);
  v7 = a1[32];
  v9 = *(a1 + 5);
  v8 = *(a1 + 6);
  v10 = *(a1 + 14);
  v11 = a1[60];
  *(v1 + 16) = REAudioFileAssetConfigurationCreate();
  REAudioFileAssetConfigurationSetRandomizeStart();
  v12 = *(v1 + 16);
  REAudioFileAssetConfigurationSetShouldLoop();
  v13 = *(v1 + 16);
  if (v8)
  {

    v14 = MEMORY[0x1C68F3280](v9, v8);
  }

  else
  {
    v14 = 0;
  }

  REAudioFileAssetConfigurationSetMixGroupName();

  if (v7 != 255)
  {
    v15 = *(v1 + 16);
    REAudioFileAssetConfigurationSetCalibrationLevel();
  }

  if (v5 - 1 >= 2)
  {
    if (v5)
    {
      goto LABEL_12;
    }

    v17 = *(v1 + 16);
    REAudioFileAssetConfigurationSetNormalizationMode();
    goto LABEL_11;
  }

  v16 = *(v1 + 16);
  REAudioFileAssetConfigurationSetNormalizationMode();
  if (v5 <= 1)
  {
LABEL_11:
    v18 = *(v1 + 16);
    REAudioFileAssetConfigurationSetTargetLUFS();
  }

LABEL_12:
  if (v7 != 255)
  {
    v19 = *(v1 + 16);
    REAudioFileAssetConfigurationSetCalibrationMode();
  }

  if ((v11 & 1) == 0)
  {
    v20 = *(v1 + 16);
    REAudioFileAssetConfigurationSetLayoutTag();
  }

  return v1;
}

uint64_t REAudioFileAssetConfigurationWrapper.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  REAudioFileAssetConfigurationDestroy();

  return swift_deallocClassInstance();
}

uint64_t __RKEntityLookupTable.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_10RealityKit6EntityCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  return v0;
}

uint64_t __RKEntityLookupTable.entity(for:)(uint64_t a1)
{
  v11[4] = 91;
  v11[5] = 0xE100000000000000;
  v12 = 0;
  v13 = 0xE000000000000000;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v3 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v3);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v4 = swift_beginAccess();
  v5 = *(v1 + 16);
  if (*(v5 + 16))
  {

    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x1EEE9AC00](v4);
  v11[2] = v8;
  v11[3] = a1;
  v12 = 91;
  v13 = 0xE100000000000000;
  v9 = static os_log_type_t.debug.getter();
  specialized InteractionsLogger.log(_:_:)(v9, &v12, partial apply for implicit closure #1 in __RKEntityLookupTable.entity(for:), v11);

  return v8;
}

uint64_t implicit closure #1 in __RKEntityLookupTable.entity(for:)(uint64_t a1)
{
  _StringGuts.grow(_:)(19);

  if (a1)
  {
    _print_unlocked<A, B>(_:_:)();
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x1C68F3410](v2, v3);

  MEMORY[0x1C68F3410](0x20726F6620, 0xE500000000000000);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID();
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v4);

  return 0x6E696E7275746552;
}

uint64_t __RKEntityLookupTable.uuid(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a1;
  v57 = a2;
  v3 = &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetMR;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetMd, &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetMR);
  v56 = *(v63 - 8);
  v4 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v60 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v53 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetSgMd, &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v55 = &v53 - v13;
  v66 = 91;
  v67 = 0xE100000000000000;
  v69 = 0;
  v70 = 0xE000000000000000;
  v68 = v2;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](v69, v70);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v14 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v14);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v53 = v66;
  v54 = v67;
  swift_beginAccess();
  v15 = *(v2 + 16);
  v18 = *(v15 + 64);
  v17 = v15 + 64;
  v16 = v18;
  v19 = 1 << *(*(v2 + 16) + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v62 = *(v2 + 16);
  result = swift_bridgeObjectRetain_n();
  v24 = 0;
  v58 = v17;
  if (v21)
  {
    while (1)
    {
      v25 = v8;
      v26 = v3;
      v27 = v24;
LABEL_9:
      v28 = __clz(__rbit64(v21)) | (v27 << 6);
      v29 = v62;
      v30 = *(v62 + 48);
      v65 = type metadata accessor for UUID();
      v31 = *(v65 - 8);
      v32 = v31;
      v33 = v30 + *(v31 + 72) * v28;
      v34 = v59;
      (*(v31 + 16))(v59, v33, v65);
      v35 = *(*(v29 + 56) + 8 * v28);
      v36 = v63;
      *&v34[*(v63 + 48)] = v35;
      v37 = v34;
      v3 = v26;
      outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v37, v25, &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetMd, v26);
      v38 = v60;
      outlined init with copy of [String : String](v25, v60, &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetMd, v3);
      v64 = *(*(v38 + *(v36 + 48)) + 16);

      v39 = *(v61 + 16);
      (*(v32 + 8))(v38, v65);
      if (v64 == v39)
      {
        break;
      }

      v21 &= v21 - 1;
      result = outlined destroy of BodyTrackingComponent?(v25, &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetMd, v3);
      v24 = v27;
      v8 = v25;
      v17 = v58;
      if (!v21)
      {
        goto LABEL_5;
      }
    }

    v41 = v55;
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v25, v55, &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetMd, &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetMR);
    v40 = v56;
    (*(v56 + 56))(v41, 0, 1, v63);
LABEL_13:
    v43 = v53;
    v42 = v54;

    v44 = (*(v40 + 48))(v41, 1, v63);
    v45 = v57;
    if (v44 == 1)
    {
      outlined destroy of BodyTrackingComponent?(v41, &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetSgMd, &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetSgMR);
      v46 = type metadata accessor for UUID();
      v47 = (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
    }

    else
    {
      v48 = *(v41 + *(v63 + 48));

      v49 = type metadata accessor for UUID();
      v50 = *(v49 - 8);
      (*(v50 + 32))(v45, v41, v49);
      v47 = (*(v50 + 56))(v45, 0, 1, v49);
    }

    MEMORY[0x1EEE9AC00](v47);
    v51 = v61;
    *(&v53 - 2) = v45;
    *(&v53 - 1) = v51;
    v69 = v43;
    v70 = v42;
    v52 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v52, &v69, partial apply for implicit closure #1 in __RKEntityLookupTable.uuid(for:), &v53 - 4);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v27 >= v22)
      {

        v41 = v55;
        v40 = v56;
        (*(v56 + 56))(v55, 1, 1, v63);
        goto LABEL_13;
      }

      v21 = *(v17 + 8 * v27);
      ++v24;
      if (v21)
      {
        v25 = v8;
        v26 = v3;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t implicit closure #1 in __RKEntityLookupTable.uuid(for:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v18 = 0;
  v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v18 = 0x6E696E7275746552;
  v19 = 0xEA00000000002067;
  outlined init with copy of [String : String](a1, v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v10 = 0xE300000000000000;
    v11 = 7104878;
  }

  else
  {
    v12 = MEMORY[0x1C68F24B0]();
    v10 = v13;
    (*(v9 + 8))(v7, v8);
    v11 = v12;
  }

  MEMORY[0x1C68F3410](v11, v10);

  MEMORY[0x1C68F3410](0x20726F6620, 0xE500000000000000);
  v16 = 0;
  v17 = 0xE000000000000000;
  v15[1] = a2;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](v16, v17);

  return v18;
}

uint64_t __RKEntityLookupTable.updateEntity(_:for:)(uint64_t a1, uint64_t a2)
{
  v16 = 91;
  v18 = 0;
  v19 = 0xE000000000000000;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v4 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v4);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  if (a1)
  {
    MEMORY[0x1EEE9AC00](v5);
    v14 = a2;
    v15 = a1;
    v16 = v6;
    v17 = 0xE100000000000000;

    v7 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v7, &v16, partial apply for implicit closure #1 in __RKEntityLookupTable.updateEntity(_:for:), v13);

    swift_beginAccess();

    v9 = specialized Dictionary._Variant.updateValue(_:forKey:)(v8, a2);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    v14 = a2;
    v16 = v10;
    v17 = 0xE100000000000000;
    v11 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v11, &v16, partial apply for implicit closure #2 in __RKEntityLookupTable.updateEntity(_:for:), v13);

    swift_beginAccess();
    v9 = specialized Dictionary.removeValue(forKey:)(a2);
    swift_endAccess();
  }

  return v9;
}

unint64_t implicit closure #1 in __RKEntityLookupTable.updateEntity(_:for:)()
{
  _StringGuts.grow(_:)(29);

  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID();
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v0);

  MEMORY[0x1C68F3410](540876893, 0xE400000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  return 0xD000000000000015;
}

unint64_t implicit closure #2 in __RKEntityLookupTable.updateEntity(_:for:)()
{
  _StringGuts.grow(_:)(30);

  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID();
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v0);

  MEMORY[0x1C68F3410](0x6C696E203D205DLL, 0xE700000000000000);
  return 0xD000000000000015;
}

Swift::Void __swiftcall __RKEntityLookupTable.removeAllEntities()()
{
  v1 = v0;
  v6[0] = 91;
  v6[1] = 0xE100000000000000;
  v6[4] = 0;
  v6[5] = 0xE000000000000000;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v2 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v2);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v3 = static os_log_type_t.debug.getter();
  specialized InteractionsLogger.log(_:_:)(v3, v6);

  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_10RealityKit6EntityCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  v5 = *(v1 + 16);
  *(v1 + 16) = v4;
}

uint64_t __RKEntityLookupTable.entity(name:)(uint64_t a1, uint64_t a2)
{
  v58 = a1;
  v59 = type metadata accessor for UUID();
  v4 = *(v59 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v52 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetSgMd, &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47 - v12;
  v60 = 91;
  v61 = 0xE100000000000000;
  v63 = 0;
  v64 = 0xE000000000000000;
  v62 = v2;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](v63, v64);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v14 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v14);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v47 = v60;
  v48 = v61;
  swift_beginAccess();
  v15 = *(v2 + 16);
  v16 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 64);
  v20 = (v17 + 63) >> 6;
  v49 = v4 + 32;
  v50 = v4 + 16;
  v54 = v4;
  v56 = v15;
  v57 = (v4 + 8);

  v22 = 0;
  v55 = a2;
  v53 = v13;
  v51 = v10;
  if (v19)
  {
    while (1)
    {
      v23 = v22;
LABEL_12:
      v26 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v27 = v26 | (v23 << 6);
      v28 = v56;
      v29 = v54;
      (*(v54 + 16))(v52, *(v56 + 48) + *(v54 + 72) * v27, v59);
      v30 = *(*(v28 + 56) + 8 * v27);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetMd, &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetMR);
      v32 = *(v31 + 48);
      v10 = v51;
      (*(v29 + 32))();
      *&v10[v32] = v30;
      (*(*(v31 - 8) + 56))(v10, 0, 1, v31);

      v25 = v23;
      a2 = v55;
      v13 = v53;
LABEL_13:
      outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v10, v13, &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetSgMd, &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetSgMR);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetMd, &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetMR);
      v34 = (*(*(v33 - 8) + 48))(v13, 1, v33);
      v35 = v58;
      if (v34 == 1)
      {

        MEMORY[0x1EEE9AC00](v43);
        *(&v47 - 2) = v35;
        *(&v47 - 1) = a2;
        v63 = v47;
        v64 = v48;
        v44 = static os_log_type_t.debug.getter();
        specialized InteractionsLogger.log(_:_:)(v44, &v63, partial apply for implicit closure #2 in __RKEntityLookupTable.entity(name:), &v47 - 4);

        return 0;
      }

      v36 = *&v13[*(v33 + 48)];
      v37 = *(v36 + 16);
      REEntityGetName();
      if (String.init(cString:)() == v35 && v38 == a2)
      {
        break;
      }

      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v40)
      {
        goto LABEL_24;
      }

      (*v57)(v13, v59);

      v22 = v25;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

LABEL_24:
    MEMORY[0x1EEE9AC00](v41);
    v45 = v58;
    *(&v47 - 4) = v36;
    *(&v47 - 3) = v45;
    *(&v47 - 2) = a2;
    v63 = v47;
    v64 = v48;
    v46 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v46, &v63, partial apply for implicit closure #1 in __RKEntityLookupTable.entity(name:), &v47 - 6);

    (*v57)(v13, v59);
    return v36;
  }

  else
  {
LABEL_5:
    if (v20 <= v22 + 1)
    {
      v24 = v22 + 1;
    }

    else
    {
      v24 = v20;
    }

    v25 = v24 - 1;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v20)
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetMd, &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetMR);
        (*(*(v42 - 8) + 56))(v10, 1, 1, v42);
        v19 = 0;
        goto LABEL_13;
      }

      v19 = *(v16 + 8 * v23);
      ++v22;
      if (v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t implicit closure #1 in __RKEntityLookupTable.entity(name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _StringGuts.grow(_:)(19);

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](0x20726F6620, 0xE500000000000000);
  MEMORY[0x1C68F3410](a2, a3);
  return 0x6E696E7275746552;
}

unint64_t implicit closure #2 in __RKEntityLookupTable.entity(name:)(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(20);

  MEMORY[0x1C68F3410](a1, a2);
  return 0xD000000000000012;
}

uint64_t __RKEntityLookupTable.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t __RKEntityLookupTable.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t specialized Dictionary._Variant.updateValue(_:forKey:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v29 = v14;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v16;
  if (*(v14 + 24) < v20)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, isUniquelyReferenced_nonNull_native);
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v3 & 1) == (v21 & 1))
    {
      goto LABEL_6;
    }

    v15 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v25 = v15;
    specialized _NativeDictionary.copy()();
    v15 = v25;
    v22 = v29;
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_10:
    v26 = v15;
    (*(v8 + 16))(v11, a2, v7);
    specialized _NativeDictionary._insert(at:key:value:)(v26, v11, a1, v22);
    v24 = 0;
    goto LABEL_11;
  }

LABEL_6:
  v22 = v29;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v23 = *(v22 + 56);
  v24 = *(v23 + 8 * v15);
  *(v23 + 8 * v15) = a1;
LABEL_11:
  *v4 = v22;
  return v24;
}

uint64_t specialized Dictionary._Variant.updateValue(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v14 = v11[2];
  v15 = __OFADD__(v14, (v13 ^ 1) & 1);
  v16 = v14 + ((v13 ^ 1) & 1);
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v13;
  if (v11[3] < v16)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, isUniquelyReferenced_nonNull_native);
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    v12 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v20 = v12;
    specialized _NativeDictionary.copy()();
    v12 = v20;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v11);

    v19 = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v18 = v11[7];
  v19 = *(v18 + 8 * v12);
  *(v18 + 8 * v12) = a1;
LABEL_11:
  *v5 = v11;
  return v19;
}

uint64_t static Entity.fromCore(_:ignoringEntityInfo:)(uint64_t a1, char a2)
{
  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();

    return swift_dynamicCastClassUnconditional();
  }

  else
  {
    result = REEntityIsBeingDestroyed();
    if (result)
    {
      __break(1u);
    }

    else if ((a2 & 1) != 0 || (v5 = specialized static Entity.entityInfoType(_:)()) == 0)
    {

      return makeEntity(for:)(a1);
    }

    else
    {
      v6 = (*(v5 + 232))();
      v7 = *(v6 + 16);

      MEMORY[0x1C68F9740](v7, 0);
      *(v6 + 16) = a1;
      MEMORY[0x1C68F9740](a1, v6);

      return v6;
    }
  }

  return result;
}

uint64_t Entity.__allocating_init()()
{
  v0 = swift_allocObject();
  Entity.init()();
  return v0;
}

uint64_t Entity.rcSceneEntity.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18AnchoringComponentVSgMd, &_s10RealityKit18AnchoringComponentVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v79 - v3;
  v5 = *(v0 + 16);
  Parent = REEntityGetParent();
  if (!Parent)
  {
    return 0;
  }

  v7 = Parent;
  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    v8 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    if (REEntityIsBeingDestroyed())
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v10 = specialized static Entity.entityInfoType(_:)();
    if (v10)
    {
      v9 = (*(v10 + 232))();
      v11 = *(v9 + 16);

      MEMORY[0x1C68F9740](v11, 0);
      *(v9 + 16) = v7;
      MEMORY[0x1C68F9740](v7, v9);

      goto LABEL_8;
    }

    v8 = makeEntity(for:)(v7);
  }

  v9 = v8;
LABEL_8:
  v12 = &static ComponentInfo.Platform.macOS;
  v13 = &type metadata for SceneOriginComponent;
  v80 = v4;
  while (1)
  {
    v14 = *(v9 + 16);
    v15 = v12[32];

    if (v15 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v16 = static SceneManager.customComponentTypeObjectIdToHandles;
    if (*(static SceneManager.customComponentTypeObjectIdToHandles + 16))
    {
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v18)
      {
        v19 = *(*(v16 + 56) + 8 * v17);
        goto LABEL_26;
      }
    }

    swift_endAccess();
    v20 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(v13, &protocol witness table for SceneOriginComponent, 0, 0);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = static SceneManager.customComponentTypeObjectIdToHandles;
    v81 = static SceneManager.customComponentTypeObjectIdToHandles;
    static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
    v25 = *(v22 + 16);
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v29 = v24;
    if (*(v22 + 24) < v28)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, isUniquelyReferenced_nonNull_native);
      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_84;
      }

LABEL_20:
      v31 = v81;
      if ((v29 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_20;
    }

    v32 = v23;
    specialized _NativeDictionary.copy()();
    v23 = v32;
    v31 = v81;
    if ((v29 & 1) == 0)
    {
LABEL_23:
      v31[(v23 >> 6) + 8] |= 1 << v23;
      *(v31[6] + 8 * v23) = v13;
      *(v31[7] + 8 * v23) = v20;
      v33 = v31[2];
      v27 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v27)
      {
        goto LABEL_77;
      }

      v31[2] = v34;
      goto LABEL_25;
    }

LABEL_21:
    *(v31[7] + 8 * v23) = v20;
LABEL_25:
    static SceneManager.customComponentTypeObjectIdToHandles = v31;
LABEL_26:
    swift_endAccess();
    if (REEntityGetCustomComponent())
    {
      break;
    }

    v35 = type metadata accessor for AnchoringComponent(0);
    v36 = *(v9 + 16);

    if (REEntityGetComponent())
    {
      AnchoringComponent.init(from:)(v4);
      v37 = 0;
    }

    else
    {
      v37 = 1;
    }

    v38 = *(v35 - 8);
    (*(v38 + 56))(v4, v37, 1, v35);

    if ((*(v38 + 48))(v4, 1, v35) != 1)
    {
      outlined destroy of BodyTrackingComponent?(v4, &_s10RealityKit18AnchoringComponentVSgMd, &_s10RealityKit18AnchoringComponentVSgMR);
      return v9;
    }

    outlined destroy of BodyTrackingComponent?(v4, &_s10RealityKit18AnchoringComponentVSgMd, &_s10RealityKit18AnchoringComponentVSgMR);
    v39 = *(v9 + 16);
    v40 = REEntityGetParent();
    if (!v40)
    {

      return 0;
    }

    v41 = v40;
    if (REEntityGetSwiftObject())
    {

      type metadata accessor for Entity();
      v9 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      if (REEntityIsBeingDestroyed())
      {
        goto LABEL_78;
      }

      swift_beginAccess();
      v42 = static SceneManager.customComponentTypeObjectIdToHandles;
      if (*(static SceneManager.customComponentTypeObjectIdToHandles + 16) && (v43 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v44 & 1) != 0))
      {
        v45 = *(*(v42 + 56) + 8 * v43);
      }

      else
      {
        v46 = v13;
        v47 = v12;
        swift_endAccess();
        v48 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
        swift_beginAccess();
        v49 = swift_isUniquelyReferenced_nonNull_native();
        v50 = static SceneManager.customComponentTypeObjectIdToHandles;
        v81 = static SceneManager.customComponentTypeObjectIdToHandles;
        static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
        v52 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
        v53 = *(v50 + 16);
        v54 = (v51 & 1) == 0;
        v55 = v53 + v54;
        if (__OFADD__(v53, v54))
        {
          goto LABEL_79;
        }

        v56 = v51;
        if (*(v50 + 24) >= v55)
        {
          if ((v49 & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v55, v49);
          v57 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
          if ((v56 & 1) != (v58 & 1))
          {
            goto LABEL_84;
          }

          v52 = v57;
        }

        v12 = v47;
        v59 = v81;
        v13 = v46;
        if (v56)
        {
          *(*(v81 + 56) + 8 * v52) = v48;
          v4 = v80;
        }

        else
        {
          *(v81 + 8 * (v52 >> 6) + 64) |= 1 << v52;
          *(v59[6] + 8 * v52) = &type metadata for __EntityInfoComponent;
          *(v59[7] + 8 * v52) = v48;
          v60 = v59[2];
          v27 = __OFADD__(v60, 1);
          v61 = v60 + 1;
          v4 = v80;
          if (v27)
          {
            goto LABEL_80;
          }

          v59[2] = v61;
        }

        static SceneManager.customComponentTypeObjectIdToHandles = v59;
      }

      swift_endAccess();
      if (!REEntityGetCustomComponent())
      {
        goto LABEL_67;
      }

      Object = RECustomComponentGetObject();
      if (!Object)
      {
        goto LABEL_67;
      }

      v63 = *Object;
      if (*(Object + 8) || !v63)
      {
        v69 = *(Object + 8);
      }

      else
      {
        v64 = *v63;
        v65 = String.init(utf8String:)();
        if (v66)
        {
          v67 = v65;
        }

        else
        {
          v67 = 0;
        }

        if (v66)
        {
          v68 = v66;
        }

        else
        {
          v68 = 0xE000000000000000;
        }

        v63 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v64 == 42, v67, v68);

        type metadata accessor for IntrospectionDataCleanupHelper();
        *(swift_allocObject() + 16) = v63;
      }

      if (!v63)
      {
        goto LABEL_82;
      }

      v70 = String.init(utf8String:)();
      if (v71)
      {
        v72 = v71;
      }

      else
      {
        v70 = 0;
        v72 = 0xE000000000000000;
      }

      v73 = MEMORY[0x1C68F3280](v70, v72);

      v74 = NSClassFromString(v73);

      if (!v74)
      {
        goto LABEL_67;
      }

      swift_getObjCClassMetadata();
      type metadata accessor for Entity();
      v75 = swift_dynamicCastMetatype();
      if (v75)
      {
        v76 = (*(v75 + 232))();
        v77 = *(v76 + 16);

        MEMORY[0x1C68F9740](v77, 0);
        *(v76 + 16) = v41;
        MEMORY[0x1C68F9740](v41, v76);
      }

      else
      {
LABEL_67:
        v76 = makeEntity(for:)(v41);
      }

      v9 = v76;
    }
  }

  if (!RECustomComponentGetObject())
  {
    goto LABEL_83;
  }

  return v9;
}

uint64_t static Entity.__fromCore(_:)(uint64_t *a1)
{
  v1 = *a1;
  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();

    return swift_dynamicCastClassUnconditional();
  }

  else
  {
    result = REEntityIsBeingDestroyed();
    if (result)
    {
      __break(1u);
    }

    else
    {
      v3 = specialized static Entity.entityInfoType(_:)();
      if (v3)
      {
        v4 = (*(v3 + 232))();
        v5 = *(v4 + 16);

        MEMORY[0x1C68F9740](v5, 0);
        *(v4 + 16) = v1;
        MEMORY[0x1C68F9740](v1, v4);

        return v4;
      }

      else
      {

        return makeEntity(for:)(v1);
      }
    }
  }

  return result;
}

uint64_t Entity.init()()
{
  *(v0 + 16) = REEntityCreate();
  MEMORY[0x1C68F9740]();
  v1 = *(v0 + 16);
  RERelease();
  specialized setupEntityTraits<A>(_:)(v0);
  v2 = *(v0 + 16);
  REEntityGetOrAddComponent();

  __EntityInfoComponent.init(entity:)(v3, v8);
  v4 = v8[0];
  v5 = v8[1];

  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA02__c4InfoD0V_TtB5Tf4ndn_n(v4, v5, v0);

  v6 = *(v0 + 16);

  if (v6 == *(v0 + 16))
  {
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t Entity.init(_coreEntity:)(void *a1)
{
  *(v1 + 16) = *a1;
  MEMORY[0x1C68F9740]();
  return v1;
}

uint64_t (*Entity.components.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  a1[1] = v1;

  return Entity.Observable.children.modify;
}

uint64_t Entity.scene.getter()
{
  v1 = *(v0 + 16);
  result = REEntityGetSceneNullable();
  if (result)
  {
    v3 = result;
    v4 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    if (v4)
    {
      return swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      return Scene.init(coreScene:)(v3);
    }
  }

  return result;
}

uint64_t Entity.name.getter()
{
  v1 = *(v0 + 16);
  REEntityGetName();

  return String.init(cString:)();
}

uint64_t Entity.name.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - v6;
  swift_getKeyPath();
  v8 = *(v0 + 16);
  ObservationRegistrar = REEntityGetObservationRegistrar();
  if (ObservationRegistrar)
  {
    outlined init with copy of ObservationRegistrar?(ObservationRegistrar, v7);
    v10 = type metadata accessor for ObservationRegistrar();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v7, 1, v10) != 1)
    {
      v22 = v0;
      lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Entity and conformance Entity);
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();
      (*(v11 + 8))(v7, v10);
      goto LABEL_6;
    }
  }

  else
  {
    v12 = type metadata accessor for ObservationRegistrar();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  }

  outlined destroy of BodyTrackingComponent?(v7, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
LABEL_6:
  v13 = *(v0 + 16);
  String.utf8CString.getter();

  REEntitySetName();

  v14 = *(v0 + 16);
  RENetworkMarkEntityMetadataDirty();
  v15 = *(v0 + 16);
  v16 = REEntityGetObservationRegistrar();
  if (!v16)
  {

    v19 = type metadata accessor for ObservationRegistrar();
    (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
    return outlined destroy of BodyTrackingComponent?(v5, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  }

  outlined init with copy of ObservationRegistrar?(v16, v5);
  v17 = type metadata accessor for ObservationRegistrar();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v5, 1, v17) == 1)
  {

    return outlined destroy of BodyTrackingComponent?(v5, &_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  }

  v22 = v0;
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Entity and conformance Entity);
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  return (*(v18 + 8))(v5, v17);
}

uint64_t (*Entity.name.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 16);
  REEntityGetName();
  *a1 = String.init(cString:)();
  a1[1] = v4;
  return Entity.Observable.name.modify;
}

uint64_t Entity.__boundingBox.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = REEntityComputeMeshBounds();
  *a1 = v5;
  a1[1] = v6;
  return result;
}

uint64_t Entity.__findAssetDependencies(_:)(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v9 = a2;
  v3 = *(v2 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #1 in Entity.__findAssetDependencies(_:);
  *(v4 + 24) = &v7;
  REEntityFindAssetDependencies();

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Entity.isEnabled.setter(char a1)
{
  MEMORY[0x1C68F9730](*(v1 + 16), a1 & 1);
  v2 = *(v1 + 16);

  return RENetworkMarkEntityMetadataDirty();
}

uint64_t (*Entity.isEnabled.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  v3 = *(v1 + 16);
  *(a1 + 8) = REEntityGetSelfEnabled();
  return Entity.Observable.isEnabled.modify;
}

uint64_t Entity.findEntity(named:)()
{
  v1 = *(v0 + 16);
  String.utf8CString.getter();
  v2 = REEntityFindInHierarchyByName();

  if (!v2)
  {
    return 0;
  }

  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    return swift_dynamicCastClassUnconditional();
  }

  else
  {
    result = REEntityIsBeingDestroyed();
    if (result)
    {
      __break(1u);
    }

    else
    {
      v4 = specialized static Entity.entityInfoType(_:)();
      if (v4)
      {
        v5 = (*(v4 + 232))();
        v6 = *(v5 + 16);

        MEMORY[0x1C68F9740](v6, 0);
        *(v5 + 16) = v2;
        MEMORY[0x1C68F9740](v2, v5);

        return v5;
      }

      else
      {
        return makeEntity(for:)(v2);
      }
    }
  }

  return result;
}

uint64_t static Entity.classLoad(named:in:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  *(v6 + 112) = *a5;
  type metadata accessor for MainActor();
  *(v6 + 56) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 64) = v8;
  *(v6 + 72) = v7;

  return MEMORY[0x1EEE6DFA0](static Entity.classLoad(named:in:options:asyncOptions:), v8, v7);
}

uint64_t static Entity.classLoad(named:in:options:asyncOptions:)()
{
  v10 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  v9 = *(v0 + 112);
  v6 = static Entity.__loadAsync(named:in:options:asyncOptions:)(v5, v3, v4, v1, &v9);
  *(v0 + 80) = v6;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = static BodyTrackedEntity.classLoad(named:in:options:asyncOptions:);

  return _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v6);
}

uint64_t static Entity.classLoad(contentsOf:withName:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  *(v6 + 112) = *a5;
  type metadata accessor for MainActor();
  *(v6 + 56) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 64) = v8;
  *(v6 + 72) = v7;

  return MEMORY[0x1EEE6DFA0](static Entity.classLoad(contentsOf:withName:options:asyncOptions:), v8, v7);
}

uint64_t static Entity.classLoad(contentsOf:withName:options:asyncOptions:)()
{
  v10 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  v9 = *(v0 + 112);
  v6 = static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(v5, v3, v4, v1, &v9);
  *(v0 + 80) = v6;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = static AnchorEntity.classLoad(named:in:options:asyncOptions:);

  return _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v6);
}

uint64_t static Entity.classLoad(from:named:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  *(v7 + 48) = a5;
  *(v7 + 56) = v6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 120) = *a6;
  type metadata accessor for MainActor();
  *(v7 + 64) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 72) = v9;
  *(v7 + 80) = v8;

  return MEMORY[0x1EEE6DFA0](static Entity.classLoad(from:named:options:asyncOptions:), v9, v8);
}

uint64_t static Entity.classLoad(from:named:options:asyncOptions:)()
{
  v11 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v10 = *(v0 + 120);
  v7 = static Entity.loadAsync(from:named:options:asyncOptions:)(v5, v6, v3, v4, v1, &v10);
  *(v0 + 88) = v7;
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *v8 = v0;
  v8[1] = static ModelEntity.classLoad(from:named:options:asyncOptions:);

  return _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v7);
}

uint64_t Entity.copy(to:recursive:)(uint64_t a1, char a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = v2[2];
  v6 = REEntityCopy();
  MEMORY[0x1C68F9740](*(a1 + 16), 0);
  *(a1 + 16) = v6;
  MEMORY[0x1C68F9740](v6, a1);
  RERelease();
  result = Entity.didCloneHelper(from:recursive:)(v2, a2);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized setupEntityTraits<A>(_:)(uint64_t result)
{
  v1 = result;
  if (one-time initialization token for traitSetups != -1)
  {
    goto LABEL_8;
  }

  while (1)
  {
    rawValue = traitSetups._rawValue;
    v3 = *(traitSetups._rawValue + 2);
    if (!v3)
    {
      break;
    }

    v4 = 0;
    v5 = (traitSetups._rawValue + 40);
    while (v4 < rawValue[2])
    {
      ++v4;
      v7 = *(v5 - 1);
      v6 = *v5;

      v7(v1);

      v5 += 2;
      if (v3 == v4)
      {
        return result;
      }
    }

    __break(1u);
LABEL_8:
    result = swift_once();
  }

  return result;
}

uint64_t key path getter for Entity.name : Entity@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  REEntityGetName();
  result = String.init(cString:)();
  *a2 = result;
  a2[1] = v5;
  return result;
}

Swift::Int Entity.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(v0 + 16));
  return Hasher._finalize()();
}

uint64_t @objc closure #1 in Entity.findAssetDependencies(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v5 = a1;

  v2(&v5);
}

uint64_t static Entity.__disableUpdateInteractionEntities.setter(uint64_t a1)
{
  swift_beginAccess();
  static Entity.__disableUpdateInteractionEntities = a1;
}

uint64_t key path setter for static Entity.__disableUpdateInteractionEntities : Entity.Type(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  static Entity.__disableUpdateInteractionEntities = v1;
}

uint64_t Entity.__allocating_init(_coreEntity:)(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = *a1;
  MEMORY[0x1C68F9740]();
  return v2;
}

uint64_t static Entity.__testInit()()
{
  v0 = REEntityCreate();
  type metadata accessor for Entity();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  MEMORY[0x1C68F9740](v0, v1);
  return v1;
}

uint64_t Entity.__deallocating_deinit()
{
  MEMORY[0x1C68F9740](*(v0 + 16), 0);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Identifiable.id.getter in conformance Entity@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 16);
  result = REEntityGetLocalId();
  *a1 = result;
  return result;
}

uint64_t static Entity.fromCore(_:ignoringEntityInfo:preferAnchorEntity:)(uint64_t a1, char a2, char a3)
{
  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();

    return swift_dynamicCastClassUnconditional();
  }

  result = REEntityIsBeingDestroyed();
  if (result)
  {
    __break(1u);
    return result;
  }

  if ((a2 & 1) == 0)
  {
    v7 = specialized static Entity.entityInfoType(_:)();
    if (v7)
    {
      v8 = (*(v7 + 232))();
      v9 = *(v8 + 16);

      MEMORY[0x1C68F9740](v9, 0);
      *(v8 + 16) = a1;
      MEMORY[0x1C68F9740](a1, v8);

      return v8;
    }
  }

  if (a3)
  {
    REAnchoringComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      type metadata accessor for AnchorEntity();
      v8 = swift_allocObject();
      *(v8 + 16) = a1;
      MEMORY[0x1C68F9740](a1, v8);
      return v8;
    }
  }

  return makeEntity(for:)(a1);
}

uint64_t makeEntity(for:)(uint64_t a1)
{
  REDirectionalLightComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    type metadata accessor for DirectionalLight();
  }

  else
  {
    REPointLightComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      type metadata accessor for PointLight();
    }

    else
    {
      RESpotLightComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        type metadata accessor for SpotLight();
      }

      else
      {
        REPerspectiveCameraComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          type metadata accessor for PerspectiveCamera();
        }

        else
        {
          RESceneUnderstandingComponentGetComponentType();
          if (REEntityGetComponentByClass())
          {
            type metadata accessor for __RKSceneUnderstanding();
          }

          else
          {
            REMeshComponentGetComponentType();
            if (REEntityGetComponentByClass())
            {
              type metadata accessor for ModelEntity();
            }

            else
            {
              RERigidBodyComponentGetComponentType();
              if (REEntityGetComponentByClass())
              {
                type metadata accessor for __RKPhysics();
              }

              else
              {
                REAnchoringComponentGetComponentType();
                if (REEntityGetComponentByClass())
                {
                  type metadata accessor for AnchorEntity();
                }

                else
                {
                  type metadata accessor for Entity();
                }
              }
            }
          }
        }
      }
    }
  }

  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  MEMORY[0x1C68F9740](a1, v2);
  return v2;
}

uint64_t Entity.clone(recursive:)(char a1)
{
  v3 = *v1;
  v4 = swift_conformsToProtocol2();
  if (v4)
  {
    v5 = *(v4 + 8);
    v6 = v4;

    v5(a1 & 1, v3, v6);

    return swift_dynamicCastClassUnconditional();
  }

  else
  {
    v8 = (*(v3 + 232))();
    Entity.copy(to:recursive:)(v8, a1 & 1);
    v9 = type metadata accessor for Entity();
    v10 = *(v8 + 16);
    RENetworkComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    specialized static Entity.enumerateCore(entity:recursive:block:)(v8, 1, v9);
    static UuidRemapHelper.remapIdentifiersAndInteractions(root:)(v8);
    return v8;
  }
}

uint64_t Entity.__clone(recursive:remapInteractionIdentifiers:)(char a1, char a2)
{
  v5 = (*(*v2 + 232))();
  Entity.copy(to:recursive:)(v5, a1);
  v6 = type metadata accessor for Entity();
  v7 = *(v5 + 16);
  RENetworkComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  specialized static Entity.enumerateCore(entity:recursive:block:)(v5, 1, v6);
  if (a2)
  {
    static UuidRemapHelper.remapIdentifiersAndInteractions(root:)(v5);
  }

  return v5;
}

uint64_t Entity.didCloneHelper(from:recursive:)(void *a1, char a2)
{
  v3 = v2;
  (*(*v2 + 248))();
  if (objc_getAssociatedObject(a1, "RealityKit.SceneResourceCacheEntry"))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v31, v32);
    __swift_project_boxed_opaque_existential_1(v32, v33);
    v6 = _bridgeAnythingToObjectiveC<A>(_:)();
    objc_setAssociatedObject(v2, "RealityKit.SceneResourceCacheEntry", v6, 0x301);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  swift_beginAccess();
  v7 = objc_getAssociatedObject(a1, &static __SceneResourceLoadResultLoadContext.loadContextForEntityKey);
  result = swift_endAccess();
  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v31, v32);
    __swift_project_boxed_opaque_existential_1(v32, v33);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    swift_beginAccess();
    objc_setAssociatedObject(v3, &static __SceneResourceLoadResultLoadContext.loadContextForEntityKey, v9, 0x301);
    swift_endAccess();
    swift_unknownObjectRelease();
    result = __swift_destroy_boxed_opaque_existential_1(v32);
  }

  if ((a2 & 1) == 0)
  {
    return result;
  }

  v10 = v3[2];
  result = REEntityGetChildCount();
  if (result < 0)
  {
    goto LABEL_45;
  }

  v11 = result;
  if (result)
  {
    v12 = 0;
    while (1)
    {
      v13 = v3[2];
      result = REEntityGetChildCount();
      if (v12 >= result)
      {
        break;
      }

      if (v11 == ++v12)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

LABEL_11:
  v14 = a1[2];
  result = REEntityGetChildCount();
  if (result < 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v15 = result;
  if (result)
  {
    v16 = 0;
    while (1)
    {
      v17 = a1[2];
      result = REEntityGetChildCount();
      if (v16 >= result)
      {
        break;
      }

      if (v15 == ++v16)
      {
        goto LABEL_16;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_16:
  if (v11 == v15)
  {
    if (!v11)
    {
      return result;
    }

    v18 = 0;
    while (1)
    {
      v20 = v3[2];

      result = REEntityGetChildCount();
      if (v18 >= result)
      {
        goto LABEL_41;
      }

      v21 = v3[2];
      result = REEntityGetChild();
      if (!result)
      {
        goto LABEL_48;
      }

      v22 = result;
      if (REEntityGetSwiftObject())
      {

        type metadata accessor for Entity();
        swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
          goto LABEL_43;
        }

        v23 = specialized static Entity.entityInfoType(_:)();
        if (v23)
        {
          v24 = (*(v23 + 232))();
          v25 = *(v24 + 16);

          MEMORY[0x1C68F9740](v25, 0);
          *(v24 + 16) = v22;
          MEMORY[0x1C68F9740](v22, v24);
        }

        else
        {
          makeEntity(for:)(v22);
        }
      }

      v26 = a1[2];

      result = REEntityGetChildCount();
      if (v18 >= result)
      {
        goto LABEL_42;
      }

      v27 = a1[2];
      result = REEntityGetChild();
      if (!result)
      {
        goto LABEL_49;
      }

      v28 = result;
      if (REEntityGetSwiftObject())
      {

        type metadata accessor for Entity();
        v19 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
          goto LABEL_44;
        }

        v29 = specialized static Entity.entityInfoType(_:)();
        if (v29)
        {
          v19 = (*(v29 + 232))();
          v30 = *(v19 + 16);

          MEMORY[0x1C68F9740](v30, 0);
          *(v19 + 16) = v28;
          MEMORY[0x1C68F9740](v28, v19);
        }

        else
        {
          v19 = makeEntity(for:)(v28);
        }
      }

      ++v18;
      Entity.didCloneHelper(from:recursive:)(v19, 1);

      if (v11 == v18)
      {
        return result;
      }
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SceneOriginComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SceneOriginComponent.CodingKeys and conformance SceneOriginComponent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SceneOriginComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SceneOriginComponent.CodingKeys and conformance SceneOriginComponent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SceneOriginComponent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation20SceneOriginComponentV10CodingKeys33_26648CD2CA3ECBBEA91C492555385A6ALLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation20SceneOriginComponentV10CodingKeys33_26648CD2CA3ECBBEA91C492555385A6ALLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SceneOriginComponent.CodingKeys and conformance SceneOriginComponent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance SceneOriginComponent(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation20SceneOriginComponentV10CodingKeys33_26648CD2CA3ECBBEA91C492555385A6ALLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation20SceneOriginComponentV10CodingKeys33_26648CD2CA3ECBBEA91C492555385A6ALLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SceneOriginComponent.CodingKeys and conformance SceneOriginComponent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

Swift::Int Entity.ForwardDirection.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t Entity.findEntity(id:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (REEntityGetLocalId() == a1)
  {

    return v2;
  }

  else
  {

    v5 = 0;
    while (1)
    {
      v6 = *(v2 + 16);
      if (v5 >= REEntityGetChildCount())
      {

        return 0;
      }

      v7 = *(v2 + 16);
      result = REEntityGetChildCount();
      if (v5 >= result)
      {
        break;
      }

      v9 = *(v2 + 16);
      result = REEntityGetChild();
      if (!result)
      {
        goto LABEL_22;
      }

      v10 = result;
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
          goto LABEL_21;
        }

        v11 = specialized static Entity.entityInfoType(_:)();
        if (v11)
        {
          v12 = (*(v11 + 232))();
          v13 = *(v12 + 16);

          MEMORY[0x1C68F9740](v13, 0);
          *(v12 + 16) = v10;
          MEMORY[0x1C68F9740](v10, v12);
        }

        else
        {
          makeEntity(for:)(v10);
        }
      }

      v14 = *(v2 + 16);
      result = REEntityGetChildCount();
      if (v5 >= result)
      {
        goto LABEL_20;
      }

      ++v5;
      v15 = Entity.findEntity(id:)(a1);

      if (v15)
      {

        return v15;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t Entity.descends(from:)(uint64_t a1)
{
  if (*(v1 + 16) == *(a1 + 16))
  {
    return 1;
  }

  result = specialized HasHierarchy.parent.getter();
  if (result)
  {
    v4 = Entity.descends(from:)(a1);

    return v4 & 1;
  }

  return result;
}

uint64_t specialized static Entity.entityInfoType(_:)()
{
  type metadata accessor for SceneManager();
  static SceneManager.customComponentType(_:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent);
  result = REEntityGetCustomComponent();
  if (result)
  {
    result = RECustomComponentGetObject();
    if (result)
    {
      v1 = *result;
      if (*(result + 8))
      {
        v2 = 1;
      }

      else
      {
        v2 = v1 == 0;
      }

      if (v2)
      {
        v3 = *(result + 8);
      }

      else
      {
        v4 = *v1;
        v5 = String.init(utf8String:)();
        if (v6)
        {
          v7 = v5;
        }

        else
        {
          v7 = 0;
        }

        if (v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = 0xE000000000000000;
        }

        v1 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v4 == 42, v7, v8);

        type metadata accessor for IntrospectionDataCleanupHelper();
        result = swift_allocObject();
        *(result + 16) = v1;
      }

      if (v1)
      {
        v9 = String.init(utf8String:)();
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v9 = 0;
          v11 = 0xE000000000000000;
        }

        v12 = MEMORY[0x1C68F3280](v9, v11);

        v13 = NSClassFromString(v12);

        if (v13)
        {
          swift_getObjCClassMetadata();
          type metadata accessor for Entity();
          return swift_dynamicCastMetatype();
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
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in Entity.__findAssetDependencies(_:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned OpaquePointer) -> ()(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t lazy protocol witness table accessor for type SceneOriginComponent.CodingKeys and conformance SceneOriginComponent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SceneOriginComponent.CodingKeys and conformance SceneOriginComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type SceneOriginComponent.CodingKeys and conformance SceneOriginComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneOriginComponent.CodingKeys and conformance SceneOriginComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneOriginComponent.CodingKeys and conformance SceneOriginComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type SceneOriginComponent.CodingKeys and conformance SceneOriginComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneOriginComponent.CodingKeys and conformance SceneOriginComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneOriginComponent.CodingKeys and conformance SceneOriginComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type SceneOriginComponent.CodingKeys and conformance SceneOriginComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneOriginComponent.CodingKeys and conformance SceneOriginComponent.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Entity and conformance Entity(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Entity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Entity.ForwardDirection and conformance Entity.ForwardDirection()
{
  result = lazy protocol witness table cache variable for type Entity.ForwardDirection and conformance Entity.ForwardDirection;
  if (!lazy protocol witness table cache variable for type Entity.ForwardDirection and conformance Entity.ForwardDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ForwardDirection and conformance Entity.ForwardDirection);
  }

  return result;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x1C68F41F0](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = __CocoaSet.count.getter();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t __RKEntityCollisionTrigger.__allocating_init(targetEntity:collidingEntities:tags:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  swift_beginAccess();
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 16) = 0;
  *(v6 + 18) = 0;
  return v6;
}

uint64_t __RKEntityCollisionTrigger.init(targetEntity:collidingEntities:tags:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = 0;
  swift_beginAccess();
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  *(v3 + 16) = 0;
  *(v3 + 18) = 0;
  return v3;
}

size_t __RKEntityCollisionTrigger.matches(with:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v111 = &v105[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v105[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v112 = &v105[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v105[-v15];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v105[-v18];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v105[-v21];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v105[-v24];
  type metadata accessor for __RKEntityCollisionTrigger();
  v109 = swift_dynamicCastClass();
  if (!v109)
  {
    goto LABEL_15;
  }

  v113 = v2;
  v26 = v110;
  swift_beginAccess();
  if (*(v26 + 24))
  {

    Entity.__interactionIdentifier.getter(v25);
  }

  else
  {
    (*(v3 + 56))(v25, 1, 1, v113);
  }

  v27 = v109;
  swift_beginAccess();
  v28 = *(v27 + 24);
  v108 = a1;
  if (v28)
  {

    Entity.__interactionIdentifier.getter(v22);

    v29 = v113;
  }

  else
  {
    v29 = v113;
    (*(v3 + 56))(v22, 1, 1, v113);
  }

  v30 = *(v6 + 48);
  outlined init with copy of UUID?(v25, v9);
  outlined init with copy of UUID?(v22, &v9[v30]);
  v107 = v3;
  v31 = *(v3 + 48);
  if (v31(v9, 1, v29) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of BodyTrackingComponent?(v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v31(&v9[v30], 1, v113) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      goto LABEL_30;
    }

    goto LABEL_13;
  }

  outlined init with copy of UUID?(v9, v19);
  if (v31(&v9[v30], 1, v29) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of BodyTrackingComponent?(v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v107 + 8))(v19, v29);
LABEL_13:
    outlined destroy of BodyTrackingComponent?(v9, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
LABEL_14:

    goto LABEL_15;
  }

  v39 = v107;
  v40 = v111;
  (*(v107 + 32))(v111, &v9[v30], v29);
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID);
  v106 = dispatch thunk of static Equatable.== infix(_:_:)();
  v41 = *(v39 + 8);
  v41(v40, v29);
  outlined destroy of BodyTrackingComponent?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of BodyTrackingComponent?(v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v41(v19, v29);
  outlined destroy of BodyTrackingComponent?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((v106 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_30:
  v42 = v110;
  v43 = *(v110 + 40);

  v45 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v44);

  v46 = *(v109 + 40);

  v48 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v47);

  LOBYTE(v46) = specialized Set.isDisjoint(with:)(v48, v45);

  if ((v46 & 1) == 0)
  {

    return 1;
  }

  v49 = *(v42 + 32);
  if (v49 >> 62)
  {
    if (v49 < 0)
    {
      v103 = *(v42 + 32);
    }

    v50 = __CocoaSet.count.getter();
  }

  else
  {
    v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v51 = v112;
  v52 = v107;
  v53 = MEMORY[0x1E69E7CC0];
  if (v50)
  {
    v114 = MEMORY[0x1E69E7CC0];

    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50 & ~(v50 >> 63), 0);
    if (v50 < 0)
    {
      __break(1u);
      goto LABEL_76;
    }

    v53 = v114;
    v54 = v49;
    v111 = (v49 & 0xC000000000000001);
    swift_beginAccess();
    v55 = 0;
    v56 = (v52 + 56);
    v57 = v50;
    do
    {
      if (v111)
      {
        v58 = MEMORY[0x1C68F41F0](v55, v54);
      }

      else
      {
        v58 = *(v54 + 8 * v55 + 32);
      }

      if (static __RKEntityUUIDComponent.registration && (v59 = *(v58 + 16), v60 = *(static __RKEntityUUIDComponent.registration + 4), REEntityGetCustomComponent()) && (Object = RECustomComponentGetObject()) != 0)
      {
        v62 = *(Object + 1);
        v63 = Object[7];
        v64 = Object[6];
        v65 = Object[5];
        v66 = Object[4];
        v67 = Object[3];
        v68 = Object[2];
        v69 = Object[1];
        v70 = *Object;
        UUID.init(uuid:)();

        v71 = 0;
      }

      else
      {

        v71 = 1;
      }

      (*v56)(v16, v71, 1, v113);
      v114 = v53;
      v73 = *(v53 + 16);
      v72 = *(v53 + 24);
      if (v73 >= v72 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v72 > 1, v73 + 1, 1);
        v53 = v114;
      }

      ++v55;
      *(v53 + 16) = v73 + 1;
      outlined init with take of UUID?(v16, v53 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v73);
      v51 = v112;
    }

    while (v57 != v55);

    v52 = v107;
  }

  v74 = *(v109 + 32);
  if (v74 >> 62)
  {
    v104 = *(v109 + 32);
    v75 = __CocoaSet.count.getter();
    v74 = v104;
  }

  else
  {
    v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v76 = MEMORY[0x1E69E7CC0];
  if (!v75)
  {
    goto LABEL_66;
  }

  v114 = MEMORY[0x1E69E7CC0];
  v77 = v74;

  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v75 & ~(v75 >> 63), 0);
  if (v75 < 0)
  {
LABEL_76:
    __break(1u);
    return result;
  }

  v76 = v114;
  v112 = (v77 & 0xC000000000000001);
  swift_beginAccess();
  v78 = v77;
  v79 = 0;
  v80 = (v52 + 56);
  v81 = v77;
  do
  {
    v82 = v75;
    if (v112)
    {
      v83 = MEMORY[0x1C68F41F0](v79, v78);
    }

    else
    {
      v83 = *(v78 + 8 * v79 + 32);
    }

    if (static __RKEntityUUIDComponent.registration && (v84 = *(v83 + 16), v85 = *(static __RKEntityUUIDComponent.registration + 4), REEntityGetCustomComponent()) && (v86 = RECustomComponentGetObject()) != 0)
    {
      v87 = *(v86 + 1);
      v88 = v86[7];
      v89 = v86[6];
      v90 = v86[5];
      v91 = v86[4];
      v92 = v86[3];
      v93 = v86[2];
      v94 = v86[1];
      v95 = *v86;
      UUID.init(uuid:)();

      v96 = 0;
    }

    else
    {

      v96 = 1;
    }

    (*v80)(v51, v96, 1, v113);
    v114 = v76;
    v97 = v51;
    v99 = *(v76 + 16);
    v98 = *(v76 + 24);
    if (v99 >= v98 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v98 > 1, v99 + 1, 1);
      v76 = v114;
    }

    ++v79;
    *(v76 + 16) = v99 + 1;
    outlined init with take of UUID?(v97, v76 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v99);
    v75 = v82;
    v51 = v97;
    v78 = v81;
  }

  while (v82 != v79);

LABEL_66:
  v100 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDVSg_SayAGGTt0g5Tf4g_n(v53);

  v101 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDVSg_SayAGGTt0g5Tf4g_n(v76);

  v102 = specialized Set.isDisjoint(with:)(v101, v100);

  if ((v102 & 1) == 0)
  {
    return 1;
  }

LABEL_15:
  type metadata accessor for __RKEntityTriggerGroup();
  result = swift_dynamicCastClass();
  if (result)
  {
    v33 = result;
    swift_beginAccess();
    v34 = *(v33 + 24);
    if (v34 >> 62)
    {
LABEL_70:
      v35 = __CocoaSet.count.getter();
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v35 != i; ++i)
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x1C68F41F0](i, v34);
        if (__OFADD__(i, 1))
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      else
      {
        if (i >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_70;
        }

        v37 = *(v34 + 8 * i + 32);

        if (__OFADD__(i, 1))
        {
          goto LABEL_27;
        }
      }

      v38 = __RKEntityCollisionTrigger.matches(with:)(v37);

      if (v38)
      {

        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t specialized Set.isDisjoint(with:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v26 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      if ((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(v6 + 48) + 16 * v22);
          v25 = *v24 == v18 && v24[1] == v17;
          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v26;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

{
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v4 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v6 = &v56 - v5;
  v75 = type metadata accessor for UUID();
  v7 = *(v75 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v64 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v61 = *(v10 - 8);
  v11 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v73 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v74 = &v56 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v60 = &v56 - v21;
  v22 = *(a2 + 16);
  if (!v22)
  {
    return 1;
  }

  v23 = *(a1 + 16);
  if (!v23)
  {
    return 1;
  }

  v56 = v20;
  if (v22 >= v23)
  {
    v24 = a1;
  }

  else
  {
    v24 = a2;
  }

  if (v22 >= v23)
  {
    v25 = a2;
  }

  else
  {
    v25 = a1;
  }

  v26 = v24 + 56;
  v27 = 1 << *(v24 + 32);
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  else
  {
    v28 = -1;
  }

  v29 = v28 & *(v24 + 56);
  v30 = (v27 + 63) >> 6;
  v71 = (v7 + 48);
  v62 = (v7 + 32);
  v66 = (v7 + 8);
  v69 = v25 + 56;
  v59 = v24;

  v32 = 0;
  v33 = &_s10Foundation4UUIDVSg_ADtMR;
  v63 = v25;
  v58 = v26;
  for (i = v30; ; v30 = i)
  {
    if (!v29)
    {
      while (1)
      {
        v34 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          __break(1u);
          return result;
        }

        if (v34 >= v30)
        {
          break;
        }

        v29 = *(v26 + 8 * v34);
        ++v32;
        if (v29)
        {
          v32 = v34;
          goto LABEL_19;
        }
      }

      return 1;
    }

LABEL_19:
    v35 = *(v59 + 48);
    v70 = *(v61 + 72);
    v36 = v60;
    outlined init with copy of UUID?(v35 + v70 * (__clz(__rbit64(v29)) | (v32 << 6)), v60);
    outlined init with take of UUID?(v36, v74);
    if (*(v25 + 16))
    {
      v37 = *(v25 + 40);
      Hasher.init(_seed:)();
      v38 = v56;
      outlined init with copy of UUID?(v74, v56);
      v68 = *v71;
      if (v68(v38, 1, v75) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v39 = v15;
        v40 = v64;
        v41 = v33;
        v42 = v75;
        (*v62)(v64, v38, v75);
        Hasher._combine(_:)(1u);
        _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID);
        dispatch thunk of Hashable.hash(into:)();
        v43 = v40;
        v15 = v39;
        v25 = v63;
        v44 = v42;
        v33 = v41;
        (*v66)(v43, v44);
      }

      v45 = Hasher._finalize()();
      v46 = -1 << *(v25 + 32);
      v47 = v45 & ~v46;
      if ((*(v69 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
      {
        break;
      }
    }

LABEL_13:
    v29 &= v29 - 1;
    result = outlined destroy of BodyTrackingComponent?(v74, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v26 = v58;
  }

  v67 = ~v46;
  while (1)
  {
    outlined init with copy of UUID?(*(v25 + 48) + v47 * v70, v15);
    v48 = *(v72 + 48);
    outlined init with copy of UUID?(v15, v6);
    outlined init with copy of UUID?(v74, &v6[v48]);
    v49 = v68;
    if (v68(v6, 1, v75) == 1)
    {
      break;
    }

    outlined init with copy of UUID?(v6, v73);
    if (v49(&v6[v48], 1, v75) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*v66)(v73, v75);
      goto LABEL_26;
    }

    v50 = &v6[v48];
    v51 = v73;
    v52 = v75;
    v53 = v64;
    (*v62)(v64, v50, v75);
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID);
    v65 = dispatch thunk of static Equatable.== infix(_:_:)();
    v54 = *v66;
    (*v66)(v53, v52);
    outlined destroy of BodyTrackingComponent?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v55 = v51;
    v33 = &_s10Foundation4UUIDVSg_ADtMR;
    v54(v55, v52);
    v25 = v63;
    outlined destroy of BodyTrackingComponent?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v65)
    {

      goto LABEL_37;
    }

LABEL_27:
    v47 = (v47 + 1) & v67;
    if (((*(v69 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  outlined destroy of BodyTrackingComponent?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v49(&v6[v48], 1, v75) != 1)
  {
LABEL_26:
    outlined destroy of BodyTrackingComponent?(v6, &_s10Foundation4UUIDVSg_ADtMd, v33);
    goto LABEL_27;
  }

  outlined destroy of BodyTrackingComponent?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_37:
  outlined destroy of BodyTrackingComponent?(v74, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return 0;
}

uint64_t __RKEntityCollisionTrigger.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = type metadata accessor for __RKEntityCollisionTrigger();
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  swift_beginAccess();
  *(v7 + 24) = v3;
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
  *(v7 + 16) = 0;
  *(v7 + 18) = 0;
  a1[3] = v6;
  *a1 = v7;
}

uint64_t __RKEntityCollisionTrigger.clone(matching:newEntity:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_beginAccess();
  v7 = v3[3];
  if (v7 && *(v7 + 16) == *(a1 + 16))
  {
    v21 = v3[4];
    v22 = v3[5];
    type metadata accessor for __RKEntityCollisionTrigger();
    v19 = swift_allocObject();
    *(v19 + 24) = 0;
    swift_beginAccess();
    *(v19 + 24) = a2;
    *(v19 + 32) = v21;
    *(v19 + 40) = v22;
    *(v19 + 16) = 0;
    *(v19 + 18) = 0;

    return v19;
  }

  v8 = v3[4];
  v27 = a1;
  MEMORY[0x1EEE9AC00](v6);
  v26[2] = &v27;

  v9 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v26, v8);

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v28 = MEMORY[0x1E69E7CC0];
  v11 = v3[4];
  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_24:
    v20 = MEMORY[0x1E69E7CC0];
LABEL_25:
    v24 = v3[3];
    v25 = v3[5];
    type metadata accessor for __RKEntityCollisionTrigger();
    v19 = swift_allocObject();
    *(v19 + 24) = 0;
    swift_beginAccess();
    *(v19 + 24) = v24;
    *(v19 + 32) = v20;
    *(v19 + 40) = v25;
    *(v19 + 16) = 0;
    *(v19 + 18) = 0;

    return v19;
  }

  if (v11 < 0)
  {
    v23 = v3[4];
  }

  result = __CocoaSet.count.getter();
  v12 = result;
  if (!result)
  {
    goto LABEL_24;
  }

LABEL_6:
  if (v12 >= 1)
  {

    for (i = 0; i != v12; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1C68F41F0](i, v11);
      }

      else
      {
        v15 = *(v11 + 8 * i + 32);
      }

      if (*(v15 + 16) == *(a2 + 16))
      {

        MEMORY[0x1C68F3650](v16);
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v18 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }
      }

      else
      {

        MEMORY[0x1C68F3650](v14);
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v17 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v20 = v28;

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t __RKEntityCollisionTrigger.__ivar_destroyer()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];
}

void *__RKEntityCollisionTrigger.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t __RKEntityCollisionTrigger.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t SetEntityPropertyAction.targetEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return outlined copy of ActionEntityResolution();
}

uint64_t SetEntityPropertyAction.targetEntity.setter(uint64_t *a1)
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

uint64_t SetEntityPropertyAction.key.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t SetEntityPropertyAction.key.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t SetEntityPropertyAction.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t SetEntityPropertyAction.value.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = *(a2 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 40);

  return v7(v2 + v4, a1, v6);
}

uint64_t (*SetEntityPropertyAction.value.modify(uint64_t a1, uint64_t a2))(void, void)
{
  result = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t SetEntityPropertyAction.init(targetEntity:key:value:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  v12 = a1[1];
  v13 = *(a1 + 16);
  v14 = *(type metadata accessor for SetEntityPropertyAction() + 40);
  (*(*(a5 - 8) + 56))(a6 + v14, 1, 1, a5);
  *a6 = v11;
  *(a6 + 8) = v12;
  *(a6 + 16) = v13;
  *(a6 + 24) = a2;
  *(a6 + 32) = a3;
  v15 = type metadata accessor for Optional();
  v16 = *(*(v15 - 8) + 40);

  return v16(a6 + v14, a4, v15);
}

uint64_t SetEntityPropertyAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v5 = type metadata accessor for Optional();
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v32 - v7;
  type metadata accessor for SetEntityPropertyAction.CodingKeys();
  swift_getWitnessTable();
  v8 = type metadata accessor for KeyedDecodingContainer();
  v35 = *(v8 - 8);
  v36 = v8;
  v9 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - v10;
  v12 = type metadata accessor for SetEntityPropertyAction();
  v33 = *(v12 - 8);
  v13 = *(v33 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - v15;
  v18 = *(*(a2 - 8) + 56);
  v41 = *(v17 + 40);
  v39 = v16;
  v18(&v16[v41], 1, 1, a2, v14);
  v19 = a1[3];
  v20 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v21 = v38;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    v25 = v39;
    __swift_destroy_boxed_opaque_existential_1(v40);
    return (*(v42 + 8))(&v25[v41], v43);
  }

  else
  {
    v38 = v12;
    v22 = v35;
    v23 = v37;
    v46 = 0;
    lazy protocol witness table accessor for type ActionEntityResolution and conformance ActionEntityResolution();
    v24 = v36;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v26 = v45;
    v27 = v39;
    *v39 = v44;
    v27[16] = v26;
    LOBYTE(v44) = 1;
    *(v27 + 3) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v27 + 4) = v28;
    static SetEntityPropertyAction.decodeValueIfPresent(from:forKey:)(a2, v23);
    (*(v22 + 8))(v11, v24);
    (*(v42 + 40))(&v27[v41], v23, v43);
    v29 = v33;
    v30 = v38;
    (*(v33 + 16))(v34, v27, v38);
    __swift_destroy_boxed_opaque_existential_1(v40);
    return (*(v29 + 8))(v27, v30);
  }
}

uint64_t SetEntityPropertyAction.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = type metadata accessor for Optional();
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v37 - v9;
  v42 = *(v6 - 8);
  v10 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v40 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v6;
  v46 = a2;
  v39 = *(a2 + 24);
  type metadata accessor for SetEntityPropertyAction.CodingKeys();
  swift_getWitnessTable();
  v13 = type metadata accessor for KeyedEncodingContainer();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = v3[1];
  v20 = v3;
  v21 = *(v3 + 16);
  v48 = *v3;
  v49 = v19;
  v50 = v21;
  v51 = 0;
  outlined copy of ActionEntityResolution();
  lazy protocol witness table accessor for type ActionEntityResolution and conformance ActionEntityResolution();
  v22 = v47;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v22)
  {
    outlined consume of ActionEntityResolution();
    return (*(v14 + 8))(v17, v13);
  }

  else
  {
    v24 = v43;
    v25 = v44;
    v47 = v14;
    v26 = v45;
    v27 = v46;
    outlined consume of ActionEntityResolution();
    v28 = v20[3];
    v29 = v20[4];
    LOBYTE(v48) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v38 = v17;
    v30 = v20 + *(v27 + 40);
    v31 = v26;
    (*(v25 + 16))(v24, v30, v26);
    v32 = v41;
    v33 = v42;
    if ((*(v42 + 48))(v24, 1, v41) == 1)
    {
      (*(v47 + 8))(v38, v13);
      return (*(v25 + 8))(v24, v31);
    }

    else
    {
      v34 = v40;
      (*(v33 + 32))(v40, v24, v32);
      v35 = v38;
      static SetEntityPropertyAction.encodeValue(_:to:forKey:)(v34, v38, 2, v32, v39);
      v36 = v47;
      (*(v33 + 8))(v34, v32);
      return (*(v36 + 8))(v35, v13);
    }
  }
}

unint64_t SetEntityPropertyAction.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SetEntityPropertyAction.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t SetEntityPropertyAction.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6E45746567726174;
  }

  if (a1 == 1)
  {
    return 7955819;
  }

  return 0x65756C6176;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SetEntityPropertyAction<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance SetEntityPropertyAction<A>.CodingKeys(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SetEntityPropertyAction<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance SetEntityPropertyAction<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SetEntityPropertyAction<A>.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = SetEntityPropertyAction.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SetEntityPropertyAction<A>.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = SetEntityPropertyAction.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SetEntityPropertyAction<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = SetEntityPropertyAction.CodingKeys.init(stringValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SetEntityPropertyAction<A>.CodingKeys@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = specialized SetEntityPropertyAction.CodingKeys.init(intValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SetEntityPropertyAction<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SetEntityPropertyAction<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t static SetEntityPropertyAction.decodeValueIfPresent(from:forKey:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  type metadata accessor for SetEntityPropertyAction.CodingKeys();
  swift_getWitnessTable();
  type metadata accessor for KeyedDecodingContainer();
  if (KeyedDecodingContainer.contains(_:)())
  {
    result = static SetEntityPropertyAction.decodeValue(from:forKey:)();
    if (v2)
    {
      return result;
    }

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return (*(*(a1 - 8) + 56))(a2, v6, 1, a1);
}

uint64_t static SetEntityPropertyAction.encodeValue(_:to:forKey:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v51 = a5;
  v53 = a3;
  v52 = a2;
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v45 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v43 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v43 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v48 = &v43 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v49 = &v43 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v50 = &v43 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v43 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v43 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v43 - v30;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v43 - v34;
  v54 = v7;
  v36 = *(v7 + 16);
  v36(&v43 - v34, a1, v37, v33);
  if (swift_dynamicCast())
  {
    (v36)(v31, a1, a4);
    swift_dynamicCast();
    LOBYTE(v56) = v53;
    type metadata accessor for SetEntityPropertyAction.CodingKeys();
    swift_getWitnessTable();
    type metadata accessor for KeyedEncodingContainer();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  else
  {
    v44 = v36;
    if (swift_dynamicCast())
    {
      v44(v28, a1, a4);
      swift_dynamicCast();
      LOBYTE(v56) = v53;
      type metadata accessor for SetEntityPropertyAction.CodingKeys();
      swift_getWitnessTable();
      type metadata accessor for KeyedEncodingContainer();
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
      if (swift_dynamicCast())
      {
        v44(v25, a1, a4);
        swift_dynamicCast();
        *&v56 = v59;
        v55 = v53;
        type metadata accessor for SetEntityPropertyAction.CodingKeys();
        swift_getWitnessTable();
        type metadata accessor for KeyedEncodingContainer();
        lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD2<Float> and conformance SIMD2<A>, &_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
        if (swift_dynamicCast())
        {
          v44(v22, a1, a4);
          swift_dynamicCast();
          v56 = v59;
          v55 = v53;
          type metadata accessor for SetEntityPropertyAction.CodingKeys();
          swift_getWitnessTable();
          type metadata accessor for KeyedEncodingContainer();
          lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
        }

        else
        {
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
          if (swift_dynamicCast())
          {
            v44(v50, a1, a4);
            swift_dynamicCast();
            v56 = v59;
            v55 = v53;
            type metadata accessor for SetEntityPropertyAction.CodingKeys();
            swift_getWitnessTable();
            type metadata accessor for KeyedEncodingContainer();
            lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>, &_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
          }

          else
          {
            type metadata accessor for simd_quatf(0);
            v39 = swift_dynamicCast();
            v40 = v53;
            if (v39)
            {
              v50 = v38;
              v44(v49, a1, a4);
              swift_dynamicCast();
              v56 = v59;
              v55 = v40;
              type metadata accessor for SetEntityPropertyAction.CodingKeys();
              swift_getWitnessTable();
              type metadata accessor for KeyedEncodingContainer();
              lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>, &_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
            }

            else
            {
              if (swift_dynamicCast())
              {
                v44(v48, a1, a4);
                swift_dynamicCast();
                LOBYTE(v56) = v40;
                type metadata accessor for SetEntityPropertyAction.CodingKeys();
                swift_getWitnessTable();
                type metadata accessor for KeyedEncodingContainer();
                KeyedEncodingContainer.encode(_:forKey:)();
                return (*(v54 + 8))(v35, a4);
              }

              if (swift_dynamicCast())
              {
                v44(v47, a1, a4);
                swift_dynamicCast();
                LOBYTE(v56) = v40;
                type metadata accessor for SetEntityPropertyAction.CodingKeys();
                swift_getWitnessTable();
                type metadata accessor for KeyedEncodingContainer();
                KeyedEncodingContainer.encode(_:forKey:)();
                return (*(v54 + 8))(v35, a4);
              }

              v42 = v44;
              if (swift_dynamicCast())
              {

                v42(v46, a1, a4);
                swift_dynamicCast();
                LOBYTE(v56) = v40;
                type metadata accessor for SetEntityPropertyAction.CodingKeys();
                swift_getWitnessTable();
                type metadata accessor for KeyedEncodingContainer();
                KeyedEncodingContainer.encode(_:forKey:)();

                return (*(v54 + 8))(v35, a4);
              }

              if (!swift_dynamicCast())
              {
                type metadata accessor for SetEntityPropertyAction.DecodingErrors();
                swift_getWitnessTable();
                swift_allocError();
                swift_willThrow();
                return (*(v54 + 8))(v35, a4);
              }

              v42(v45, a1, a4);
              swift_dynamicCast();
              v56 = v59;
              v57 = v60;
              v58 = v61;
              v55 = v40;
              type metadata accessor for SetEntityPropertyAction.CodingKeys();
              swift_getWitnessTable();
              type metadata accessor for KeyedEncodingContainer();
              lazy protocol witness table accessor for type Transform and conformance Transform();
            }
          }
        }
      }

      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }
  }

  return (*(v54 + 8))(v35, a4);
}

uint64_t type metadata completion function for SetEntityPropertyAction(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SetEntityPropertyAction(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 40) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      v17 = a1 & 0xFFFFFFFFFFFFFFF8;
      if ((v6 & 0x80000000) != 0)
      {
        v19 = (*(v4 + 48))((v17 + v8 + 40) & ~v8);
        if (v19 >= 2)
        {
          return v19 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *(v17 + 32);
        if (v18 >= 0xFFFFFFFF)
        {
          LODWORD(v18) = -1;
        }

        return (v18 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void storeEnumTagSinglePayload for SetEntityPropertyAction(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 40) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
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
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *(a1 + v13) = v19;
              }

              else
              {
                *(a1 + v13) = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        *(a1 + 2) = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      *(a1 + v13) = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *(a1 + v13) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *(a1 + v13) = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  *(a1 + v13) = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  v21 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((v9 & 0x80000000) != 0)
  {
    v22 = ((v21 + v11 + 40) & ~v11);
    if (v9 >= a2)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;

      v26((v21 + v11 + 40) & ~v11, v27);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (~v9 + a2);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(v21 + 24) = a2 & 0x7FFFFFFF;
    *(v21 + 32) = 0;
  }

  else
  {
    *(v21 + 32) = a2 - 1;
  }
}

uint64_t static SetEntityPropertyAction.decodeValue(from:forKey:)()
{
  if (swift_dynamicCastMetatype())
  {
    type metadata accessor for SetEntityPropertyAction.CodingKeys();
    swift_getWitnessTable();
    type metadata accessor for KeyedDecodingContainer();
    result = KeyedDecodingContainer.decode(_:forKey:)();
    if (v0)
    {
      return result;
    }

    return swift_dynamicCast();
  }

  if (swift_dynamicCastMetatype())
  {
    type metadata accessor for SetEntityPropertyAction.CodingKeys();
    swift_getWitnessTable();
    type metadata accessor for KeyedDecodingContainer();
    result = KeyedDecodingContainer.decode(_:forKey:)();
    if (v0)
    {
      return result;
    }

    return swift_dynamicCast();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
  if (swift_dynamicCastMetatype())
  {
    type metadata accessor for SetEntityPropertyAction.CodingKeys();
    swift_getWitnessTable();
    type metadata accessor for KeyedDecodingContainer();
    v2 = &lazy protocol witness table cache variable for type SIMD2<Float> and conformance SIMD2<A>;
    v3 = &_ss5SIMD2VySfGMd;
    v4 = &_ss5SIMD2VySfGMR;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    if (swift_dynamicCastMetatype())
    {
      type metadata accessor for SetEntityPropertyAction.CodingKeys();
      swift_getWitnessTable();
      type metadata accessor for KeyedDecodingContainer();
      v2 = &lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>;
      v3 = &_ss5SIMD3VySfGMd;
      v4 = &_ss5SIMD3VySfGMR;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
      if (!swift_dynamicCastMetatype())
      {
        type metadata accessor for simd_quatf(0);
        if (swift_dynamicCastMetatype())
        {
          type metadata accessor for SetEntityPropertyAction.CodingKeys();
          swift_getWitnessTable();
          type metadata accessor for KeyedDecodingContainer();
          lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>, &_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
          result = KeyedDecodingContainer.decode<A>(_:forKey:)();
          if (!v0)
          {
            return swift_dynamicCast();
          }
        }

        else if (swift_dynamicCastMetatype())
        {
          type metadata accessor for SetEntityPropertyAction.CodingKeys();
          swift_getWitnessTable();
          type metadata accessor for KeyedDecodingContainer();
          result = KeyedDecodingContainer.decode(_:forKey:)();
          if (!v0)
          {
            return swift_dynamicCast();
          }
        }

        else if (swift_dynamicCastMetatype())
        {
          type metadata accessor for SetEntityPropertyAction.CodingKeys();
          swift_getWitnessTable();
          type metadata accessor for KeyedDecodingContainer();
          result = KeyedDecodingContainer.decode(_:forKey:)();
          if (!v0)
          {
            return swift_dynamicCast();
          }
        }

        else if (swift_dynamicCastMetatype())
        {
          type metadata accessor for SetEntityPropertyAction.CodingKeys();
          swift_getWitnessTable();
          type metadata accessor for KeyedDecodingContainer();
          result = KeyedDecodingContainer.decode(_:forKey:)();
          if (!v0)
          {
            return swift_dynamicCast();
          }
        }

        else if (swift_dynamicCastMetatype())
        {
          type metadata accessor for SetEntityPropertyAction.CodingKeys();
          swift_getWitnessTable();
          type metadata accessor for KeyedDecodingContainer();
          lazy protocol witness table accessor for type Transform and conformance Transform();
          result = KeyedDecodingContainer.decode<A>(_:forKey:)();
          if (!v0)
          {
            return swift_dynamicCast();
          }
        }

        else
        {
          type metadata accessor for SetEntityPropertyAction.DecodingErrors();
          swift_getWitnessTable();
          swift_allocError();
          return swift_willThrow();
        }

        return result;
      }

      type metadata accessor for SetEntityPropertyAction.CodingKeys();
      swift_getWitnessTable();
      type metadata accessor for KeyedDecodingContainer();
      v2 = &lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>;
      v3 = &_ss5SIMD4VySfGMd;
      v4 = &_ss5SIMD4VySfGMR;
    }
  }

  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(v2, v3, v4);
  result = KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (!v0)
  {
    return swift_dynamicCast();
  }

  return result;
}

void specialized SetEntityPropertyActionHandler.setKeyValueOnEntity(event:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v47 - v10;
  if ((*(*a1 + 40) & 1) != 0 || (Strong = swift_weakLoadStrong()) == 0)
  {
    v51 = 0;
    v52 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v48 = type metadata accessor for SetEntityPropertyAction();
    swift_getMetatypeMetadata();
    v20 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v20);

    MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18E1E80);
    v22 = v51;
    v21 = v52;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static AnimationLogger.logger);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v51 = v27;
      *v26 = 136315138;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v51);
      _os_log_impl(&dword_1C1358000, v24, v25, "%s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1C6902A30](v27, -1, -1);
      MEMORY[0x1C6902A30](v26, -1, -1);
    }

    goto LABEL_10;
  }

  v13 = Strong;
  v14 = type metadata accessor for SetEntityPropertyAction();
  v15 = a1 + *(type metadata accessor for ActionEvent() + 36);
  v16 = *(v15 + 8);
  v17 = *(v15 + 16);
  v51 = *v15;
  v52 = v16;
  v53 = v17;
  outlined copy of ActionEntityResolution();
  v18 = ActionEntityResolution.resolve(from:)(v13);
  outlined consume of ActionEntityResolution();
  if (!v18)
  {
    v51 = 0;
    v52 = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v48 = v14;
    swift_getMetatypeMetadata();
    v28 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v28);

    MEMORY[0x1C68F3410](0xD00000000000003BLL, 0x80000001C18E42F0);
    v29 = *(v13 + 16);
    REEntityGetName();
    v30 = String.init(cString:)();
    MEMORY[0x1C68F3410](v30);

    MEMORY[0x1C68F3410](10535, 0xE200000000000000);
    v32 = v51;
    v31 = v52;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static AnimationLogger.logger);

    v24 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v51 = v36;
      *v35 = 136315138;
      *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v31, &v51);
      _os_log_impl(&dword_1C1358000, v24, v34, "%s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x1C6902A30](v36, -1, -1);
      MEMORY[0x1C6902A30](v35, -1, -1);
    }

LABEL_10:

LABEL_11:

    return;
  }

  v47[1] = v13;
  v19 = *(v14 + 40);
  v47[0] = *(v5 + 16);
  (v47[0])(v11, v15 + v19, v4);
  if ((*(*(a2 - 8) + 48))(v11, 1, a2) == 1)
  {
    (*(v5 + 8))(v11, v4);
LABEL_20:
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20BindableDataInternal_pMd, &_s17RealityFoundation20BindableDataInternal_pMR);
  if (!swift_dynamicCast())
  {
    goto LABEL_20;
  }

  if (!*(&v49 + 1))
  {
LABEL_21:
    outlined destroy of BindableDataInternal?(&v48);
    v51 = 0;
    v52 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v48 = v14;
    swift_getMetatypeMetadata();
    v39 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v39);

    MEMORY[0x1C68F3410](0xD000000000000021, 0x80000001C18E46A0);
    (v47[0])(v9, v15 + v19, v4);
    v40 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v40);

    MEMORY[0x1C68F3410](0xD000000000000031, 0x80000001C18E46D0);
    MEMORY[0x1C68F3410](*(v15 + 24), *(v15 + 32));
    MEMORY[0x1C68F3410](39, 0xE100000000000000);
    v42 = v51;
    v41 = v52;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static AnimationLogger.logger);

    v24 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v51 = v46;
      *v45 = 136315138;
      *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v41, &v51);
      _os_log_impl(&dword_1C1358000, v24, v44, "%s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x1C6902A30](v46, -1, -1);
      MEMORY[0x1C6902A30](v45, -1, -1);
    }

    goto LABEL_11;
  }

  outlined init with take of BindableDataInternal(&v48, &v51);
  v37 = v54;
  v38 = v55;
  __swift_project_boxed_opaque_existential_1(&v51, v54);
  (*(v38 + 56))(*(v15 + 24), *(v15 + 32), v18, v37, v38);

  __swift_destroy_boxed_opaque_existential_1(&v51);
}

uint64_t outlined destroy of BindableDataInternal?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20BindableDataInternal_pSgMd, &_s17RealityFoundation20BindableDataInternal_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AudioResource.ChannelLayoutError and conformance AudioResource.ChannelLayoutError()
{
  result = lazy protocol witness table cache variable for type AudioResource.ChannelLayoutError and conformance AudioResource.ChannelLayoutError;
  if (!lazy protocol witness table cache variable for type AudioResource.ChannelLayoutError and conformance AudioResource.ChannelLayoutError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioResource.ChannelLayoutError and conformance AudioResource.ChannelLayoutError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AudioResource.ChannelLayoutError and conformance AudioResource.ChannelLayoutError;
  if (!lazy protocol witness table cache variable for type AudioResource.ChannelLayoutError and conformance AudioResource.ChannelLayoutError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioResource.ChannelLayoutError and conformance AudioResource.ChannelLayoutError);
  }

  return result;
}

unint64_t protocol witness for LocalizedError.errorDescription.getter in conformance AudioResource.ChannelLayoutError()
{
  if (*v0)
  {
    result = 0xD000000000000046;
  }

  else
  {
    result = 0xD00000000000003DLL;
  }

  *v0;
  return result;
}

unint64_t lazy protocol witness table accessor for type AudioResource.Error and conformance AudioResource.Error()
{
  result = lazy protocol witness table cache variable for type AudioResource.Error and conformance AudioResource.Error;
  if (!lazy protocol witness table cache variable for type AudioResource.Error and conformance AudioResource.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioResource.Error and conformance AudioResource.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AudioResource.Error and conformance AudioResource.Error;
  if (!lazy protocol witness table cache variable for type AudioResource.Error and conformance AudioResource.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioResource.Error and conformance AudioResource.Error);
  }

  return result;
}

uint64_t __RKWaitAction.__allocating_init(duration:block:)(uint64_t a1, uint64_t a2, float a3)
{
  v6 = swift_allocObject();
  *(v6 + 120) = a2;
  *(v6 + 128) = 0x3F80624DD2F1A9FCLL;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0;
  *(v6 + 108) = a3;
  *(v6 + 112) = a1;
  return __RKEntityAction.init(targetEntity:)(0);
}

uint64_t __RKWaitAction.init(duration:block:)(uint64_t a1, uint64_t a2, float a3)
{
  *(v3 + 120) = a2;
  *(v3 + 128) = 0x3F80624DD2F1A9FCLL;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 184) = 0;
  *(v3 + 108) = a3;
  *(v3 + 112) = a1;
  return __RKEntityAction.init(targetEntity:)(0);
}

uint64_t __RKWaitAction.perform(with:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v18 = StaticString.description.getter();
  v19 = v3;
  MEMORY[0x1C68F3410](8250, 0xE200000000000000);
  v5 = v18;
  v4 = v19;
  swift_beginAccess();
  if (*(v1 + 104) == 1 && *(v1 + 96) == 1 && (swift_beginAccess(), *(v1 + 105) == 1) || (v6 = *(v2 + 16), !RESceneGetECSManagerNullable()))
  {

    return 0;
  }

  else
  {
    v7 = *(v1 + 96);
    v8 = *(v1 + 104);
    v9 = 1;
    *(v1 + 96) = 1;
    *(v1 + 104) = 1;
    v18 = v7;
    LOBYTE(v19) = v8;
    __RKEntityAction.state.didset(&v18);
    *(v1 + 184) = 0;
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = *(v1 + 32);
    v12 = *(v1 + 40);
    *(v1 + 32) = partial apply for closure #1 in __RKWaitAction.perform(with:);
    *(v1 + 40) = v10;

    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v11);

    *(v1 + 176) = *(v1 + 108);
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    v13 = swift_allocObject();
    swift_weakInit();
    _s10RealityKit5SceneC9subscribe2to2on_7Combine11Cancellable_pxm_AA11EventSource_pSgyxctAA0I0RzlFAA0C6EventsO6UpdateV_Tt0g5(v16, partial apply for closure #2 in __RKWaitAction.perform(with:), v13, &v18);

    outlined destroy of BodyTrackingComponent?(v16, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v18, v1 + 136);
    swift_endAccess();
    v18 = v5;
    v19 = v4;
    v14 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v14, &v18);
  }

  return v9;
}