uint64_t specialized static __RKVisibilityShowMoveInAnimation.createVisibilityShowMoveInAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:)(float32x4_t *a1, double a2, float a3, float32x4_t a4, uint64_t a5, _BYTE *a6)
{
  v54 = a1[1];
  if (*a6)
  {
    if (*a6 == 1)
    {
      v56._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 117, 0, MEMORY[0x1E69E7CC0]);
      v7 = &outlined read-only object #1 of static __RKVisibilityShowMoveInAnimation.createVisibilityShowMoveInAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }

    else
    {
      v56._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 81, 0, MEMORY[0x1E69E7CC0]);
      v7 = &outlined read-only object #2 of static __RKVisibilityShowMoveInAnimation.createVisibilityShowMoveInAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }
  }

  else
  {
    v56._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 45, 0, MEMORY[0x1E69E7CC0]);
    v7 = &outlined read-only object #0 of static __RKVisibilityShowMoveInAnimation.createVisibilityShowMoveInAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
  }

  __makeXfos(_:_:)(v7, &v56);
  rawValue = v56._rawValue;
  if (!*(v56._rawValue + 2))
  {

    return MEMORY[0x1E69E7CC0];
  }

  RESampledAnimationDefaultParameters();
  v9 = rawValue[2];
  if (v9)
  {
    v10 = &rawValue[6 * v9];
    v52 = *v10;
    v53 = *(v10 - 1);
    v51 = v10[1];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }
  }

  else
  {
LABEL_40:
    __break(1u);
  }

  rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9 + 1, 1, rawValue);
LABEL_9:
  v9 = rawValue[2];
  v11 = rawValue[3];
  v12 = v9 + 1;
  if (v9 >= v11 >> 1)
  {
    rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v9 + 1, 1, rawValue);
  }

  rawValue[2] = v12;
  v13 = rawValue + 2;
  v14 = &rawValue[6 * v9 + 4];
  *v14 = v53;
  v14[1] = v52;
  v14[2] = v51;
  v56._rawValue = rawValue;
  v15 = 0.0;
  v16 = 8;
  do
  {
    v17 = *&rawValue[v16];
    v18 = fabsf(*&v17);
    if ((LODWORD(v18) & 0x7FFFFF) != 0)
    {
      v19 = v15;
    }

    else
    {
      v19 = v18;
    }

    if ((~LODWORD(v18) & 0x7F800000) != 0)
    {
      v19 = v18;
    }

    if (v18 >= v15)
    {
      v15 = v19;
    }

    v20 = fabsf(*(&v17 + 1));
    if (v20 >= v15)
    {
      if ((LODWORD(v20) & 0x7FFFFF) == 0)
      {
        v15 = v20;
      }

      if ((~LODWORD(v20) & 0x7F800000) != 0)
      {
        v15 = v20;
      }
    }

    v21 = fabsf(*(&v17 + 2));
    if (v21 >= v15)
    {
      if ((~LODWORD(v21) & 0x7F800000) != 0)
      {
        v15 = v21;
      }

      else if ((LODWORD(v21) & 0x7FFFFF) == 0)
      {
        v15 = v21;
      }
    }

    v16 += 6;
    --v12;
  }

  while (v12);
  v22 = 0;
  v23 = a3 / v15;
  v24 = v15 <= 0.0;
  v25 = 1.0;
  if (!v24)
  {
    v25 = v23;
  }

  v26 = vmulq_f32(v54, v54);
  *v26.i8 = vadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL));
  v26.i32[0] = vadd_f32(*v26.i8, vdup_lane_s32(*v26.i8, 1)).u32[0];
  v27 = vrecpe_f32(v26.u32[0]);
  v28 = vmul_f32(v27, vrecps_f32(v26.u32[0], v27));
  v29 = vmulq_n_f32(vmulq_f32(v54, xmmword_1C1899C90), vmul_f32(v28, vrecps_f32(v26.u32[0], v28)).f32[0]);
  v30 = vnegq_f32(a4);
  v31 = vtrn2q_s32(a4, vtrn1q_s32(a4, v30));
  v32 = vrev64q_s32(a4);
  v32.i32[0] = v30.i32[1];
  v32.i32[3] = v30.i32[2];
  v33 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(a4, v30, 8uLL), *v29.f32, 1), vextq_s8(v31, v31, 8uLL), v29.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(a4, v29, 3), v32, v29, 2));
  v34 = vmulq_f32(v33, xmmword_1C1899C90);
  v35 = vnegq_f32(v34);
  v36 = vtrn2q_s32(v34, vtrn1q_s32(v34, v35));
  v37 = vextq_s8(v36, v36, 8uLL);
  v38 = vrev64q_s32(v34);
  v38.i32[0] = v35.i32[1];
  v38.i32[3] = v35.i32[2];
  v39 = vdupq_lane_s32(*v33.f32, 0);
  v40 = vextq_s8(v34, v35, 8uLL);
  v41 = vdupq_laneq_s32(v33, 2);
  v42 = 8;
  do
  {
    if (v22 >= *v13)
    {
      __break(1u);
      goto LABEL_40;
    }

    v43 = vsubq_f32(*&rawValue[v42], *&v13[6 * *v13]);
    v44 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v40, vmuls_lane_f32(v25, *v43.f32, 1)), v37, v25 * v43.f32[0]), v38, vmuls_lane_f32(v25, v43, 2));
    v45 = vnegq_f32(v44);
    v46 = vtrn2q_s32(v44, vtrn1q_s32(v44, v45));
    v47 = vrev64q_s32(v44);
    v47.i32[0] = v45.i32[1];
    v47.i32[3] = v45.i32[2];
    v48 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v44, v33, 3), v47, v41), vmlaq_f32(vmulq_lane_f32(vextq_s8(v44, v45, 8uLL), *v33.f32, 1), vextq_s8(v46, v46, 8uLL), v39));
    v48.i32[3] = a4.i32[3];
    ++v22;
    *&rawValue[v42] = v48;
    v42 += 6;
  }

  while (v9 + 1 != v22);
  result = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
  if (result)
  {
    v50 = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_1C1887600;
    *(result + 32) = v50;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AudioResource.Normalization.Kind.hash(into:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return MEMORY[0x1C68F4C10](0);
    }

    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  MEMORY[0x1C68F4C10](v4);
  if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  return MEMORY[0x1C68F4C50](v5);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance AudioResource.Normalization.Kind(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (*(a1 + 8) == 1)
  {
    if (v3 != 1)
    {
      return 0;
    }

LABEL_6:
    v4 = *a2;
    return *a1 == v2;
  }

  return v3 == 2 && *&v2 == 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AudioResource.Normalization.Kind()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  AudioResource.Normalization.Kind.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AudioResource.Normalization.Kind()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  AudioResource.Normalization.Kind.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

uint64_t static AudioResource.Normalization.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      v5 = *a1;
      v6 = *a2;
      if (v4 != 1 || v2 != v3)
      {
        return 0;
      }
    }

    else if (v4 != 2 || *&v3 != 0)
    {
      return 0;
    }
  }

  else
  {
    v9 = *a1;
    v10 = *a2;
    if (*(a2 + 8))
    {
      v11 = 0;
    }

    else
    {
      v11 = v2 == v3;
    }

    if (!v11)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t AudioResource.Normalization.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) != 1)
    {
      return MEMORY[0x1C68F4C10](0);
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1C68F4C10](v2);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x1C68F4C50](v3);
}

Swift::Int AudioResource.Normalization.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1C68F4C10](0);
      return Hasher._finalize()();
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x1C68F4C10](v3);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x1C68F4C50](v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AudioResource.Normalization(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      v5 = *a1;
      v6 = *a2;
      if (v4 != 1 || v2 != v3)
      {
        return 0;
      }
    }

    else if (v4 != 2 || *&v3 != 0)
    {
      return 0;
    }
  }

  else
  {
    v9 = *a1;
    v10 = *a2;
    if (*(a2 + 8))
    {
      v11 = 0;
    }

    else
    {
      v11 = v2 == v3;
    }

    if (!v11)
    {
      return 0;
    }
  }

  return 1;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AudioResource.Normalization()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1C68F4C10](0);
      return Hasher._finalize()();
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x1C68F4C10](v3);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x1C68F4C50](v4);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type AudioResource.Normalization and conformance AudioResource.Normalization()
{
  result = lazy protocol witness table cache variable for type AudioResource.Normalization and conformance AudioResource.Normalization;
  if (!lazy protocol witness table cache variable for type AudioResource.Normalization and conformance AudioResource.Normalization)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioResource.Normalization and conformance AudioResource.Normalization);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AudioResource.Normalization.Kind and conformance AudioResource.Normalization.Kind()
{
  result = lazy protocol witness table cache variable for type AudioResource.Normalization.Kind and conformance AudioResource.Normalization.Kind;
  if (!lazy protocol witness table cache variable for type AudioResource.Normalization.Kind and conformance AudioResource.Normalization.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioResource.Normalization.Kind and conformance AudioResource.Normalization.Kind);
  }

  return result;
}

uint64_t StateMachineParameter.init(name:bindTarget:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a3;
  v10 = a3[1];
  v11 = *(a3 + 16);
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = -1;
  v12 = type metadata accessor for StateMachineParameter();
  (*(*(a4 - 8) + 56))(a5 + *(v12 + 40), 1, 1, a4);
  *a5 = a1;
  *(a5 + 8) = a2;
  result = outlined consume of BindTarget?(*(a5 + 16), *(a5 + 24), *(a5 + 32));
  *(a5 + 16) = v9;
  *(a5 + 24) = v10;
  *(a5 + 32) = v11;
  return result;
}

uint64_t StateMachineParameter.value(entity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(v6 + 8);
  v9 = type metadata accessor for BindableValue();
  v10 = type metadata accessor for Optional();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  v14 = *(v9 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v29 - v19;
  v21 = *(v3 + 32);
  if (v21 == 255)
  {
    v26 = *v3;
    v27 = *(v3 + 8);

    return static StateMachineUtils.getOrCreateEntityParameter<A>(entity:name:type:)(a1, v26, v27, v7, v7, v6, a3);
  }

  else
  {
    v32 = v17;
    v33 = a3;
    v23 = *(v3 + 16);
    v22 = *(v3 + 24);
    v31 = v3;
    v34 = a1;
    v36 = v23;
    v37 = v22;
    v38 = v21;
    v29 = v18;
    v30 = v22;
    v24 = v21;
    outlined copy of BindTarget?(v23, v22, v21);

    BindableValuesReference.subscript.getter(&v36, v7, v8, v13);
    outlined consume of BindTarget(v36, v37, v38);

    if ((*(v14 + 48))(v13, 1, v9) == 1)
    {
      (*(v29 + 8))(v13, v32);
      v36 = 0;
      v37 = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      v34 = v36;
      v35 = v37;
      MEMORY[0x1C68F3410](0xD000000000000016, 0x80000001C18EB2D0);
      MEMORY[0x1C68F3410](*v31, v31[1]);
      MEMORY[0x1C68F3410](0xD000000000000019, 0x80000001C18EB2F0);
      v36 = v23;
      v37 = v30;
      v38 = v24;
      v28 = specialized static InternalBindPath.pathFromTarget(_:_:)(&v36, 1);
      MEMORY[0x1C68F3410](v28);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      (*(v14 + 32))(v20, v13, v9);
      BindableValue.value.getter(v9, v33);
      return (*(v14 + 8))(v20, v9);
    }
  }

  return result;
}

uint64_t StateMachineParameter.setValue(entity:newValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a1;
  v4 = *(a3 + 16);
  v40 = *(v4 - 8);
  v41 = a2;
  v5 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v39 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v43 = v8[1];
  v9 = type metadata accessor for BindableValue();
  v10 = type metadata accessor for Optional();
  v37 = *(v10 - 8);
  v38 = v10;
  v11 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v42 = &v36 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  v19 = *(v9 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v36 - v25;
  v27 = *(v3 + 32);
  if (v27 == 255)
  {
    v30 = *v3;
    v18 = *(v3 + 8);
    v31 = v44;
    static StateMachineUtils.createEntityParameterIfDoesNotExist<A>(entity:name:type:)(v44, v30, v18, v4, v4);
    v47 = v31;

    Entity.ParameterSet.subscript.getter(v30, v18);

    if ((*(v19 + 48))(v13, 1, v9) != 1)
    {
      (*(v19 + 32))(v23, v13, v9);
      v32 = v39;
      (*(v40 + 16))(v39, v41, v4);
      BindableValue.value.setter(v32, v9);
      v33 = v42;
      (*(v19 + 16))(v42, v23, v9);
      (*(v19 + 56))(v33, 0, 1, v9);
      v47 = v44;

      specialized Entity.ParameterSet.subscript.setter(v33, v30, v18, v4, v4, v43);
      (*(v37 + 8))(v33, v38);
      (*(v19 + 8))(v23, v9);
    }

    __break(1u);
  }

  else
  {
    v23 = *(v3 + 16);
    v13 = *(v3 + 24);
    v8 = v3;
    v45 = v44;
    v47 = v23;
    v48 = v13;
    v49 = v27;
    outlined copy of BindTarget?(v23, v13, v27);
    outlined copy of BindTarget?(v23, v13, v27);

    BindableValuesReference.subscript.getter(&v47, v4, v43, v18);
    outlined consume of BindTarget(v47, v48, v49);

    if ((*(v19 + 48))(v18, 1, v9) != 1)
    {
      (*(v19 + 32))(v26, v18, v9);
      v28 = v39;
      (*(v40 + 16))(v39, v41, v4);
      BindableValue.value.setter(v28, v9);
      v29 = v42;
      (*(v19 + 16))(v42, v26, v9);
      (*(v19 + 56))(v29, 0, 1, v9);
      v47 = v23;
      v48 = v13;
      v49 = v27;
      v45 = v44;

      BindableValuesReference.subscript.setter(v29, &v47, v4, v4);
      (*(v19 + 8))(v26, v9);
    }
  }

  (*(v37 + 8))(v18, v38);
  v47 = 0;
  v48 = 0xE000000000000000;
  _StringGuts.grow(_:)(51);
  v45 = v47;
  v46 = v48;
  MEMORY[0x1C68F3410](0xD000000000000016, 0x80000001C18EB2D0);
  MEMORY[0x1C68F3410](*v8, v8[1]);
  MEMORY[0x1C68F3410](0xD000000000000019, 0x80000001C18EB2F0);
  v47 = v23;
  v48 = v13;
  v49 = v27;
  v35 = specialized static InternalBindPath.pathFromTarget(_:_:)(&v47, 1);
  MEMORY[0x1C68F3410](v35);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t StateMachineParameter.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t StateMachineParameter.bindTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return outlined copy of BindTarget?(v2, v3, v4);
}

uint64_t StateMachineParameter.bindTarget.setter(uint64_t *a1)
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

uint64_t StateMachineParameter.resetValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t StateMachineParameter.resetValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = *(a2 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 40);

  return v7(v2 + v4, a1, v6);
}

uint64_t (*StateMachineParameter.resetValue.modify(uint64_t a1, uint64_t a2))(void, void)
{
  result = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t StateMachineParameter.id.getter()
{
  v0 = sub_1C136CB78();

  return v0;
}

void type metadata completion function for StateMachineParameter(uint64_t a1)
{
  type metadata accessor for BindTarget?();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    type metadata accessor for Optional();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for StateMachineParameter(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v11 = v9 + ((v8 + 33) & ~v8);
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
      if ((v6 & 0x80000000) != 0)
      {
        v18 = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 17) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *(a1 + 1);
        if (v17 >= 0xFFFFFFFF)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
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

void storeEnumTagSinglePayload for StateMachineParameter(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v13 = ((v11 + 33) & ~v11) + v12;
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
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
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
        a1[2] = BYTE2(v20);
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
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
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

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v9 & 0x80000000) != 0)
  {
    v21 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 17) & ~v11);
    if (v9 >= a2)
    {
      v25 = *(v7 + 56);
      v26 = a2 + 1;
      v27 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 17) & ~v11;

      v25(v27, v26);
    }

    else
    {
      if (v12 <= 3)
      {
        v22 = ~(-1 << (8 * v12));
      }

      else
      {
        v22 = -1;
      }

      if (v12)
      {
        v23 = v22 & (~v9 + a2);
        if (v12 <= 3)
        {
          v24 = v12;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v12);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

void type metadata accessor for BindTarget?()
{
  if (!lazy cache variable for type metadata for BindTarget?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BindTarget?);
    }
  }
}

uint64_t _proto_StereoProjectiveTransformCameraComponent_v1._proto_transforms_v1.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t _proto_StereoProjectiveTransformCameraComponent_v1._proto_eyePositions_v1.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t _proto_StereoProjectiveTransformCameraComponent_v1._proto_eyeOrientations_v1.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

double _proto_StereoProjectiveTransformCameraComponent_v1.init(transforms:)@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  a2[1] = &outlined read-only object #0 of _proto_StereoProjectiveTransformCameraComponent_v1.init(transforms:);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo10simd_quatfaGMd, &_ss23_ContiguousArrayStorageCySo10simd_quatfaGMR);
  v3 = swift_allocObject();
  *&result = 2;
  v3[1] = xmmword_1C1897FC0;
  v3[2] = *&zmmword_1C1887630[48];
  v3[3] = *&zmmword_1C1887630[48];
  a2[2] = v3;
  return result;
}

__n128 static _proto_StereoProjectiveTransformCameraComponent_v1.__fromCore(_:)@<Q0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  RECustomMatrixCameraComponentGetProjectionMatrix();
  v26 = v5;
  v27 = v4;
  v24 = v7;
  v25 = v6;
  RECustomMatrixCameraComponentGetProjectionMatrix();
  v22 = v9;
  v23 = v8;
  v20 = v11;
  v21 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13simd_float4x4aGMd, &_ss23_ContiguousArrayStorageCySo13simd_float4x4aGMR);
  v12 = swift_allocObject();
  v12[1] = xmmword_1C1897FC0;
  v12[2] = v27;
  v12[3] = v26;
  v12[4] = v25;
  v12[5] = v24;
  v12[6] = v23;
  v12[7] = v22;
  v12[8] = v21;
  v12[9] = v20;
  *a2 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMR);
  v13 = swift_allocObject();
  v13[1] = xmmword_1C1897FC0;
  v13[2] = 0u;
  v13[3] = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo10simd_quatfaGMd, &_ss23_ContiguousArrayStorageCySo10simd_quatfaGMR);
  v14 = swift_allocObject();
  v14[1] = xmmword_1C1897FC0;
  v14[2] = *&zmmword_1C1887630[48];
  v14[3] = *&zmmword_1C1887630[48];
  RECustomMatrixCameraComponentGetLocalEyePose();
  v28 = v15;
  v29 = v16;
  RECustomMatrixCameraComponentGetLocalEyePose();
  v13[2] = v28;
  v13[3] = v17;
  result = v29;
  v14[2] = v29;
  v14[3] = v19;
  a2[1] = v13;
  a2[2] = v14;
  return result;
}

uint64_t *_proto_StereoProjectiveTransformCameraComponent_v1.__toCore(_:)(uint64_t *result)
{
  v2 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = *result;
  v5 = v1[1];
  v4 = v1[2];
  v6 = *(v2 + 64);
  v7 = *(v2 + 80);
  v8 = *(v2 + 32);
  v9 = *(v2 + 48);
  result = RECustomMatrixCameraComponentSetRenderProjectionMatrix();
  if (*(v2 + 16) < 2uLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = *(v2 + 128);
  v11 = *(v2 + 144);
  v12 = *(v2 + 96);
  v13 = *(v2 + 112);
  result = RECustomMatrixCameraComponentSetRenderProjectionMatrix();
  if (!*(v5 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!*(v4 + 16))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = *(v4 + 32);
  v15 = *(v5 + 32);
  result = RECustomMatrixCameraComponentSetLocalEyePose();
  if (*(v5 + 16) < 2uLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(v4 + 16) < 2uLL)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v16 = *(v4 + 48);
  v17 = *(v5 + 48);
  RECustomMatrixCameraComponentSetLocalEyePose();
  RECustomMatrixCameraComponentSetAutoFitFullScreenAspect();
  RECustomMatrixCameraComponentSetEyeCount();

  return RENetworkMarkComponentDirty();
}

float32x4_t *static _proto_StereoProjectiveTransformCameraComponent_v1.== infix(_:_:)(float32x4_t **a1, float32x4_t **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (*a1)[1].i64[0];
  if (v4 != (*a2)[1].i64[0])
  {
    return 0;
  }

  result = a1[1];
  v7 = a1[2];
  v9 = a2[1];
  v10 = a2[2];
  if (v4)
  {
    v11 = v2 == v3;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
LABEL_10:
    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZs5SIMD3VySfG_Tt1g5(result, v9))
    {

      return _sSasSQRzlE2eeoiySbSayxG_ABtFZSo10simd_quatfa_Tt1g5(v7, v10);
    }

    return 0;
  }

  v12 = v3 + 5;
  v13 = v2 + 3;
  while (v4)
  {
    if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*v13, v12[-2]), vceqq_f32(v13[-1], v12[-3])), vandq_s8(vceqq_f32(v13[1], v12[-1]), vceqq_f32(v13[2], *v12)))) & 0x80000000) == 0)
    {
      return 0;
    }

    v12 += 4;
    v13 += 4;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance _proto_StereoProjectiveTransformCameraComponent_v1(float32x4_t **a1, float32x4_t **a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSo13simd_float4x4a_Tt1g5(*a1, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs5SIMD3VySfG_Tt1g5(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZSo10simd_quatfa_Tt1g5(v3, v5);
}

BOOL specialized static SystemDependency.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a1[1] >> 62;
  if (!v4)
  {
    if (v3 >> 62)
    {
      return 0;
    }

    return *a1 == v2;
  }

  if (v4 == 1)
  {
    if (v3 >> 62 != 1)
    {
      return 0;
    }

    return *a1 == v2;
  }

  return v3 >> 62 == 2 && v2 == 0 && v3 == 0x8000000000000000;
}

uint64_t getEnumTagSinglePayload for SystemDependency(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFE && *(a1 + 16))
  {
    return (*a1 + 16382);
  }

  v3 = (((*(a1 + 8) >> 50) >> 12) | (4 * ((*(a1 + 8) >> 50) & 0xC00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for SystemDependency(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *result = a2 - 16382;
    *(result + 8) = 0;
    if (a3 >= 0x3FFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t getEnumTag for SystemDependency(void *a1)
{
  v1 = a1[1];
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

void *destructiveInjectEnumTag for SystemDependency(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
    *result &= 0xFFFFFFFFFFFFFF8uLL;
    result[1] = v2;
  }

  else
  {
    *result = 8 * (a2 - 2);
    result[1] = 0x8000000000000000;
  }

  return result;
}

void *_sSv17RealityFoundationE7toArray0C08capacitySayxGxm_SitlFs6UInt32V_Ttg5(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (a1 <= 0)
  {
    v4 = 4 * a1;
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
    v4 = 4 * a1;
    v5 = swift_allocObject();
    v6 = _swift_stdlib_malloc_size(v5);
    a2 = v3;
    v7 = v6 - 32;
    if (v6 < 32)
    {
      v7 = v6 - 29;
    }

    v5[2] = a1;
    v5[3] = 2 * (v7 >> 2);
  }

  memcpy(v5 + 4, a2, v4);
  return v5;
}

void *_sSv17RealityFoundationE7toArray0C08capacitySayxGxm_SitlFs5SIMD3VySfG_Ttg5(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (a1 <= 0)
  {
    v4 = 16 * a1;
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMR);
    v4 = 16 * a1;
    v5 = swift_allocObject();
    v6 = _swift_stdlib_malloc_size(v5);
    a2 = v3;
    v7 = v6 - 32;
    if (v6 < 32)
    {
      v7 = v6 - 17;
    }

    v5[2] = a1;
    v5[3] = 2 * (v7 >> 4);
  }

  memcpy(v5 + 4, a2, v4);
  return v5;
}

void *_sSv17RealityFoundationE7toArray0C08capacitySayxGxm_SitlFs5SIMD2VySfG_Ttg5(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (a1 <= 0)
  {
    v4 = 8 * a1;
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD2VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD2VySfGGMR);
    v4 = 8 * a1;
    v5 = swift_allocObject();
    v6 = _swift_stdlib_malloc_size(v5);
    a2 = v3;
    v7 = v6 - 32;
    if (v6 < 32)
    {
      v7 = v6 - 25;
    }

    v5[2] = a1;
    v5[3] = 2 * (v7 >> 3);
  }

  memcpy(v5 + 4, a2, v4);
  return v5;
}

uint64_t MXISceneResource.__allocating_init(mxiScene:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = CustomMaterial.Program.__allocating_init(surfaceShader:geometryModifier:descriptor:);

  return specialized MXISceneResource.__allocating_init(mxiScene:)(a1);
}

uint64_t MXISceneResource.sceneType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t MXISceneResource.coreTextures.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    result = v8;
    v4 = (v1 + 32);
    v5 = *(v8 + 16);
    do
    {
      v6 = *v4;
      v9 = result;
      v7 = *(result + 24);
      if (v5 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v5 + 1, 1);
        result = v9;
      }

      *(result + 16) = v5 + 1;
      *(result + 8 * v5 + 32) = v6;
      ++v4;
      ++v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

void *MXISceneResource.deinit()
{
  v1 = v0[7];
  RERelease();
  if (v0[8])
  {
    RERelease();
  }

  v2 = v0[9];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[9];

    v5 = 32;
    do
    {
      v6 = *(v2 + v5);
      RERelease();
      v5 += 8;
      --v3;
    }

    while (v3);
  }

  if (v0[10])
  {
    RERelease();
  }

  v7 = v0[9];

  return v0;
}

uint64_t MXISceneResource.__deallocating_deinit()
{
  MXISceneResource.deinit();

  return swift_deallocClassInstance();
}

uint64_t closure #2 in static MXISceneResource.createLowLevelMesh(mxiScene:)(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, __int128 *a5)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

  v5 = a3;
  if (a3)
  {
    if (*(a4 + 16) < a3)
    {
LABEL_10:
      __break(1u);
      return result;
    }

    v7 = (a4 + 32);
    v8 = (result + 8);
    v9 = 0x2AAAAAAAAAAAAAAALL;
    while (1)
    {
      v10 = *v7;
      *(v8 - 1) = *v7;
      if (!v9)
      {
        break;
      }

      *v8 = DWORD2(v10);
      v8 += 3;
      v11 = *a5;
      v12 = a5[1];
      result = REAABBExpandedToIncludePoint();
      HIDWORD(v13) = v15;
      HIDWORD(v14) = v16;
      --v9;
      *a5 = v13;
      a5[1] = v14;
      ++v7;
      if (!--v5)
      {
        return result;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t closure #3 in static MXISceneResource.createLowLevelMesh(mxiScene:)(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

  if (a3)
  {
    if (*(a4 + 16) < a3)
    {
LABEL_10:
      __break(1u);
      return result;
    }

    for (i = 0xC000000000000000; i; ++i)
    {
      *(result + 8 * i) = *(a4 + 32 + 8 * i);
      if (!--a3)
      {
        return result;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t closure #4 in static MXISceneResource.createLowLevelMesh(mxiScene:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 < 0)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (a3)
  {
    v4 = 0;
    v5 = (result + 4);
    v6 = 36;
    while (v4 != 0x4000000000000000)
    {
      if (v4 >= *(*a4 + 16))
      {
        goto LABEL_10;
      }

      *(v5 - 1) = *(*a4 + 8 * v4 + 32);
      if (v4 >= *(*a4 + 16))
      {
        goto LABEL_11;
      }

      ++v4;
      *v5 = *(*a4 + v6);
      v5 += 2;
      v6 += 8;
      if (a3 == v4)
      {
        return result;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t specialized closure #1 in fillSplitIndices #1 <A>(of:) in static MXISceneResource.createLowLevelMesh(mxiScene:)(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t *a7)
{
  if (result)
  {
    v7 = (a2 - result) / 2;
  }

  else
  {
    v7 = 0;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_77;
  }

  v9 = result;
  v43 = v7;
  if (a3)
  {
    if (*(a4 + 16) >= a3)
    {
      v10 = a6;
      v11 = 0;
      v12 = a4 + 32;
      v13 = a6 + 32;
      v14 = MEMORY[0x1E69E7CC0];
      v45 = v12;
      v46 = a3;
      v47 = a6 + 32;
      while (1)
      {
        if (*(v12 + v11))
        {
          if (*(v12 + v11) == 1)
          {
            v15 = 3 * v11;
            if ((v11 * 3) >> 64 != (3 * v11) >> 63)
            {
              __break(1u);
LABEL_59:
              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
LABEL_71:
              __break(1u);
LABEL_72:
              __break(1u);
LABEL_73:
              __break(1u);
LABEL_74:
              __break(1u);
LABEL_75:
              __break(1u);
LABEL_76:
              __break(1u);
LABEL_77:
              __break(1u);
LABEL_78:
              __break(1u);
              goto LABEL_79;
            }

            if ((v15 & 0x8000000000000000) != 0)
            {
              goto LABEL_61;
            }

            v16 = *(v10 + 16);
            if (v15 >= v16)
            {
              goto LABEL_62;
            }

            v17 = *(v13 + 12 * v11);
            if (HIWORD(v17))
            {
              goto LABEL_64;
            }

            v18 = v14;
            result = swift_isUniquelyReferenced_nonNull_native();
            if (result)
            {
              v14 = v18;
            }

            else
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1, v18);
              v14 = result;
            }

            v20 = *(v14 + 16);
            v19 = *(v14 + 24);
            v21 = v20 + 1;
            v13 = v47;
            if (v20 >= v19 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v14);
              v13 = v47;
              v14 = result;
            }

            *(v14 + 16) = v21;
            *(v14 + 2 * v20 + 32) = v17;
            if (v15 + 1 >= v16)
            {
              goto LABEL_67;
            }

            v22 = v10;
            v23 = a5;
            v24 = v9;
            v25 = *(v13 + 4 * (v15 + 1));
            if (HIWORD(v25))
            {
              goto LABEL_69;
            }

            v26 = *(v14 + 24);
            v27 = v20 + 2;
            if ((v20 + 2) > (v26 >> 1))
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v20 + 2, 1, v14);
              v13 = v47;
              v14 = result;
            }

            *(v14 + 16) = v27;
            *(v14 + 2 * v21 + 32) = v25;
            if (v15 + 2 >= v16)
            {
              goto LABEL_71;
            }

            v28 = *(v13 + 4 * (v15 + 2));
            if (HIWORD(v28))
            {
              goto LABEL_72;
            }

            v29 = *(v14 + 24);
            if ((v20 + 3) > (v29 >> 1))
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v20 + 3, 1, v14);
              v13 = v47;
              v14 = result;
            }

            *(v14 + 16) = v20 + 3;
            *(v14 + 2 * v27 + 32) = v28;
            v9 = v24;
            a5 = v23;
            v10 = v22;
            v12 = v45;
            a3 = v46;
          }
        }

        else
        {
          v30 = 3 * v11;
          if ((v11 * 3) >> 64 != (3 * v11) >> 63)
          {
            goto LABEL_59;
          }

          if ((v30 & 0x8000000000000000) != 0)
          {
            goto LABEL_60;
          }

          v31 = *(v10 + 16);
          if (v30 >= v31)
          {
            goto LABEL_63;
          }

          v32 = *(v13 + 12 * v11);
          if (HIWORD(v32))
          {
            goto LABEL_65;
          }

          *(v9 + 2 * *a5) = v32;
          if (__OFADD__(*a5, 1))
          {
            goto LABEL_66;
          }

          if (v30 + 1 >= v31)
          {
            goto LABEL_68;
          }

          v33 = *(v13 + 4 * (v30 + 1));
          if (HIWORD(v33))
          {
            goto LABEL_70;
          }

          *(v9 + 2 * (*a5 + 1)) = v33;
          if (__OFADD__(*a5, 2))
          {
            goto LABEL_73;
          }

          v34 = v30 + 2;
          if (v34 >= v31)
          {
            goto LABEL_74;
          }

          v35 = *(v13 + 4 * v34);
          if (HIWORD(v35))
          {
            goto LABEL_75;
          }

          *(v9 + 2 * (*a5 + 2)) = v35;
          if (__OFADD__(*a5, 3))
          {
            goto LABEL_76;
          }

          *a5 += 3;
        }

        if (a3 == ++v11)
        {
          goto LABEL_42;
        }
      }
    }

    goto LABEL_81;
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_42:
  v36 = *(v14 + 16);
  *a7 = v36;
  v37 = *a5;
  v38 = v43 - *a5;
  if (v43 < *a5)
  {
    goto LABEL_78;
  }

  if (v37 < 0)
  {
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    return result;
  }

  if (!v9)
  {
    v38 = 0;
  }

  if (v36 > v38)
  {
    goto LABEL_80;
  }

  v39 = (v14 + 32);
  v40 = (v9 + 2 * v37);
  if (v9)
  {
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  if (v39 != v41 || &v39[2 * v36] <= v41)
  {
    memmove(v41, v39, 2 * v36);
  }
}

{
  if (result)
  {
    v7 = (a2 - result) / 4;
  }

  else
  {
    v7 = 0;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_64;
  }

  v8 = a5;
  v9 = result;
  v36 = v7;
  if (a3)
  {
    if (*(a4 + 16) >= a3)
    {
      v10 = 0;
      v11 = a4 + 32;
      v12 = a6 + 32;
      v13 = MEMORY[0x1E69E7CC0];
      v39 = a3;
      v40 = a6;
      v38 = a4 + 32;
      while (1)
      {
        if (*(v11 + v10))
        {
          if (*(v11 + v10) == 1)
          {
            v14 = 3 * v10;
            if ((v10 * 3) >> 64 != (3 * v10) >> 63)
            {
              __break(1u);
LABEL_52:
              __break(1u);
LABEL_53:
              __break(1u);
LABEL_54:
              __break(1u);
LABEL_55:
              __break(1u);
LABEL_56:
              __break(1u);
LABEL_57:
              __break(1u);
LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
              goto LABEL_66;
            }

            if ((v14 & 0x8000000000000000) != 0)
            {
              goto LABEL_53;
            }

            v15 = *(a6 + 16);
            if (v14 >= v15)
            {
              goto LABEL_55;
            }

            v16 = *(v12 + 12 * v10);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1, v13);
              v13 = result;
            }

            v18 = *(v13 + 16);
            v17 = *(v13 + 24);
            v19 = v18 + 1;
            if (v18 >= v17 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v13);
              v13 = result;
            }

            *(v13 + 16) = v19;
            *(v13 + 4 * v18 + 32) = v16;
            if (v14 + 1 >= v15)
            {
              goto LABEL_58;
            }

            v20 = v9;
            v21 = *(v12 + 4 * (v14 + 1));
            v22 = *(v13 + 24);
            v23 = v18 + 2;
            if ((v18 + 2) > (v22 >> 1))
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v18 + 2, 1, v13);
              v13 = result;
            }

            *(v13 + 16) = v23;
            *(v13 + 4 * v19 + 32) = v21;
            if (v14 + 2 >= v15)
            {
              goto LABEL_59;
            }

            v24 = *(v12 + 4 * (v14 + 2));
            v25 = *(v13 + 24);
            if ((v18 + 3) > (v25 >> 1))
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v18 + 3, 1, v13);
              v13 = result;
            }

            a3 = v39;
            a6 = v40;
            v11 = v38;
            *(v13 + 16) = v18 + 3;
            *(v13 + 4 * v23 + 32) = v24;
            v9 = v20;
            v8 = a5;
          }
        }

        else
        {
          v26 = 3 * v10;
          if ((v10 * 3) >> 64 != (3 * v10) >> 63)
          {
            goto LABEL_52;
          }

          if ((v26 & 0x8000000000000000) != 0)
          {
            goto LABEL_54;
          }

          v27 = *(a6 + 16);
          if (v26 >= v27)
          {
            goto LABEL_56;
          }

          *(v9 + 4 * *v8) = *(v12 + 12 * v10);
          if (__OFADD__(*v8, 1))
          {
            goto LABEL_57;
          }

          if (v26 + 1 >= v27)
          {
            goto LABEL_60;
          }

          *(v9 + 4 * (*v8 + 1)) = *(v12 + 4 * (v26 + 1));
          if (__OFADD__(*v8, 2))
          {
            goto LABEL_61;
          }

          v28 = v26 + 2;
          if (v28 >= v27)
          {
            goto LABEL_62;
          }

          *(v9 + 4 * (*v8 + 2)) = *(v12 + 4 * v28);
          if (__OFADD__(*v8, 3))
          {
            goto LABEL_63;
          }

          *v8 += 3;
        }

        if (a3 == ++v10)
        {
          goto LABEL_35;
        }
      }
    }

    goto LABEL_68;
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_35:
  v29 = *(v13 + 16);
  *a7 = v29;
  v30 = *v8;
  v31 = v36 - *v8;
  if (v36 < *v8)
  {
    goto LABEL_65;
  }

  if (v30 < 0)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return result;
  }

  if (!v9)
  {
    v31 = 0;
  }

  if (v29 > v31)
  {
    goto LABEL_67;
  }

  v32 = (v13 + 32);
  v33 = (v9 + 4 * v30);
  if (v9)
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  if (v32 != v34 || &v32[4 * v29] <= v34)
  {
    memmove(v34, v32, 4 * v29);
  }
}

uint64_t $defer #1 () in MXISceneResource.init(mxiScene:)(void *a1, uint64_t *a2, uint64_t *a3)
{
  if (*a1)
  {
    RERelease();
  }

  v5 = *a2;
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = 32;
    do
    {
      v8 = *(v5 + v7);
      RERelease();
      v7 += 8;
      --v6;
    }

    while (v6);
  }

  result = *a3;
  if (*a3)
  {

    return RERelease();
  }

  return result;
}

uint64_t closure #1 in static MXISceneResource.wrapColorTextures(mxiScene:)(void *a1)
{
  v2 = Selector.init(_:)();
  if ([a1 respondsToSelector_])
  {
    v3 = [a1 performSelector_];
    v4 = a1;
    if (v3)
    {
      swift_unknownObjectRetain();
      v5 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo10MTLTexture_pGMd, &_sSaySo10MTLTexture_pGMR);
      if (swift_dynamicCast())
      {
        return v8;
      }
    }

    else
    {
      v7 = a1;
    }
  }

  return MEMORY[0x1E69E7CC0];
}

Swift::Int MXISceneResource.MXISceneType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

char *specialized static MXISceneResource.fromCFArray(_:)(const __CFArray *a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(a1);
  if (Count < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = Count;
  if (Count)
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
      v13[0] = 0;
      v7 = ValueAtIndex;
      CFNumberGetValue(v7, kCFNumberLongType, v13);
      v8 = v13[0];
      if (!v13[0])
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
      }

      v10 = *(v5 + 2);
      v9 = *(v5 + 3);
      if (v10 >= v9 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v5);
      }

      ++v4;

      *(v5 + 2) = v10 + 1;
      *&v5[8 * v10 + 32] = v8;
      if (v3 == v4)
      {
        goto LABEL_12;
      }
    }

LABEL_14:
    __break(1u);
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_12:
  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

char *specialized static MXISceneResource.toCFArray(_:)(char *result)
{
  v1 = *(result + 2);
  if (v1)
  {
    v2 = result;
    v11 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = v11;
    v4 = (v2 + 32);
    v5 = *(v11 + 16);
    do
    {
      v6 = *v4;
      v7 = *(v11 + 24);
      v8 = v5 + 1;
      if (v5 >= v7 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v5 + 1, 1);
      }

      *(v11 + 16) = v8;
      *(v11 + 8 * v5 + 32) = v6;
      ++v4;
      ++v5;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
    v8 = *(MEMORY[0x1E69E7CC0] + 16);
  }

  if (v8 >> 60)
  {
    __break(1u);
  }

  else
  {
    v9 = swift_slowAlloc();
    memcpy(v9, (v3 + 32), 8 * v8);
    v10 = CFArrayCreate(0, v9, v8, 0);
    result = MEMORY[0x1C6902A30](v9, -1, -1);
    if (v10)
    {

      return v10;
    }
  }

  __break(1u);
  return result;
}

void specialized static MXISceneResource.createLowLevelMesh(mxiScene:)(char *a1)
{
  v3 = v1;
  v4 = a1;
  v5 = [a1 triangleCount];
  v6 = [v4 vertexCount];
  v7 = v6 > 0xFFFE;
  v8 = [v4 triangleIndices];
  v9 = [v8 contents];
  v10 = v8;
  if (!is_mul_ok(v5, 3uLL))
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  if (((3 * v5) & 0x8000000000000000) != 0)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  *&v123 = _sSv17RealityFoundationE7toArray0C08capacitySayxGxm_SitlFs6UInt32V_Ttg5(3 * v5, v9);
  v12 = [v4 triangleSliceIndices];
  v13 = [v12 contents];
  v14 = v12;
  v121 = _sSv17RealityFoundationE7toArray0C08capacitySayxGxm_SitlFs6UInt32V_Ttg5(v5, v13);
  v8 = [v4 vertexPositions];
  v15 = [v8 contents];
  v16 = v8;
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_114:
    __break(1u);
LABEL_115:
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v8, 1);
    v39 = aBlock;
    v11 = *(aBlock + 24);
    v40 = v11 >> 1;
    goto LABEL_44;
  }

  v122 = _sSv17RealityFoundationE7toArray0C08capacitySayxGxm_SitlFs5SIMD3VySfG_Ttg5(v6, v15);
  v17 = [v4 vertexUVs];
  v18 = [v17 contents];
  v19 = v17;
  v20 = _sSv17RealityFoundationE7toArray0C08capacitySayxGxm_SitlFs5SIMD2VySfG_Ttg5(v6, v18);
  v2 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
    v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v2 + 16) = v6;
    bzero((v2 + 32), 8 * v6);
  }

  v137 = v2;
  v115 = v5;
  v118 = v6;
  v119 = v20;
  v116 = v6 > 0xFFFE;
  if (v5)
  {
    if (v5 > v121[2])
    {
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    v120 = v4;
    v117 = v3;
    v8 = 0;
    v21 = (v122 + 32);
    v7 = v123 + 40;
    v3 = 32;
    v4 = v5;
    while (1)
    {
      v22 = *(v123 + 16);
      if (v8 >= v22)
      {
        break;
      }

      v11 = v8 + 1;
      if (v8 + 1 >= v22)
      {
        goto LABEL_104;
      }

      v11 = v8 + 2;
      if (v8 + 2 >= v22)
      {
        goto LABEL_105;
      }

      v6 = *(v7 - 8);
      v23 = *(v122 + 16);
      if (v23 <= v6)
      {
        goto LABEL_106;
      }

      v24 = *(v7 - 4);
      if (v23 <= v24)
      {
        goto LABEL_107;
      }

      v5 = *v7;
      if (v23 <= v5)
      {
        goto LABEL_108;
      }

      v25 = *(v121 + v3);
      v26 = vabsq_f32(*&v21[2 * v24]);
      v124 = vabsq_f32(*&v21[2 * v6]);
      v125 = v26;
      v126 = vabsq_f32(*&v21[2 * v5]);
      if ([v120 type])
      {
        v27.i32[0] = v124.i32[1];
        if (v124.f32[0] > v124.f32[1])
        {
          v27.f32[0] = v124.f32[0];
        }

        if (v27.f32[0] <= v124.f32[2])
        {
          v27.f32[0] = v124.f32[2];
        }

        v124 = v27;
        v27.i32[0] = DWORD1(v125);
        if (*&v125 > *(&v125 + 1))
        {
          v27.f32[0] = *&v125;
        }

        if (v27.f32[0] <= *(&v125 + 2))
        {
          v27.f32[0] = *(&v125 + 2);
        }

        v125 = v27;
        v27.i32[0] = v126.i32[1];
        if (v126.f32[0] > v126.f32[1])
        {
          v27.f32[0] = v126.f32[0];
        }

        if (v27.f32[0] <= v126.f32[2])
        {
          v27.f32[0] = v126.f32[2];
        }
      }

      else
      {
        v28 = v124;
        v28.i32[0] = v124.i32[2];
        v124 = v28;
        v29 = v125;
        LODWORD(v29) = DWORD2(v125);
        v125 = v29;
        v27 = v126;
        v27.i32[0] = v126.i32[2];
      }

      v126 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      }

      v30 = *(v2 + 16);
      if (v30 <= v6)
      {
        goto LABEL_109;
      }

      *&v31 = v25;
      *&v32 = v25;
      HIDWORD(v32) = v124.i32[0];
      v11 = v2 + 32;
      *(v2 + 32 + 8 * v6) = v32;
      if (v30 <= v24)
      {
        goto LABEL_110;
      }

      *(v11 + 8 * v24) = __PAIR64__(v125, v31);
      if (v30 <= v5)
      {
        goto LABEL_111;
      }

      HIDWORD(v31) = v126.i32[0];
      *(v11 + 8 * v5) = v31;
      v137 = v2;
      v8 += 3;
      v7 += 12;
      v3 += 4;
      if (!--v4)
      {

        v3 = v117;
        v4 = v120;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

LABEL_38:
  v33 = v4;
  v34 = [v4 opaqueTriangleCount];
  v35 = [objc_opt_self() standardUserDefaults];
  v36 = MEMORY[0x1C68F3280](0xD00000000000002CLL, 0x80000001C18EB430);
  v37 = [v35 BOOLForKey_];

  v4 = 0;
  if (v37 && !v34)
  {
    v38 = getTriangleOpacityResults(mxiScene:)(v33);
    if (v3)
    {

LABEL_54:

      return;
    }

    v4 = v38;
  }

  *&v125 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation12LowLevelMeshC9AttributeVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation12LowLevelMeshC9AttributeVGMR);
  v2 = swift_allocObject();
  v126 = xmmword_1C1897FD0;
  *(v2 + 16) = xmmword_1C1897FD0;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 40) = 30;
  *(v2 + 64) = 5;
  *(v2 + 72) = xmmword_1C18C3830;
  *(v2 + 88) = 1;
  *(v2 + 96) = 6;
  *(v2 + 104) = xmmword_1C18C3830;
  *(v2 + 120) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation12LowLevelMeshC6LayoutVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation12LowLevelMeshC6LayoutVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = v126;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = xmmword_1C18C3840;
  *(v6 + 64) = xmmword_1C18C3850;
  *(v6 + 80) = xmmword_1C1898F00;
  *(v6 + 96) = 8;
  v126.i64[0] = *(v123 + 16);
  aBlock = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v39 = aBlock;
  v7 = *(v6 + 32);
  v5 = *(aBlock + 16);
  v11 = *(aBlock + 24);
  v40 = v11 >> 1;
  v8 = v5 + 1;
  if (v11 >> 1 <= v5)
  {
    goto LABEL_115;
  }

LABEL_44:
  *(v39 + 16) = v8;
  *(v39 + 8 * v5 + 32) = v7;
  v41 = *(v6 + 56);
  v42 = v5 + 2;
  if (v40 < (v5 + 2))
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v5 + 2, 1);
    v39 = aBlock;
  }

  *(v39 + 16) = v42;
  *(v39 + 8 * v8 + 32) = v41;
  v43 = *(v6 + 80);
  v44 = *(v39 + 24);
  if ((v5 + 3) > (v44 >> 1))
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v5 + 3, 1);
  }

  v45 = aBlock;
  *(aBlock + 16) = v5 + 3;
  *(v45 + 8 * v42 + 32) = v43;
  v46 = specialized Sequence<>.max()(v45);
  v48 = v47;

  if (v48)
  {
    v49 = 0;
  }

  else
  {
    v49 = v46;
  }

  v50 = __OFADD__(v49, 1);
  v51 = v49 + 1;
  if (v50)
  {
    __break(1u);
    goto LABEL_117;
  }

  aBlock = v51;
  v52 = v118;
  v132 = v118;
  v133 = v2;
  v134 = v6;
  v135 = v126.i64[0];
  v136 = v116;
  type metadata accessor for LowLevelMesh();
  swift_allocObject();
  LowLevelMesh.init(descriptor:)(&aBlock);
  if (v3)
  {

    goto LABEL_54;
  }

  v121 = v4;
  v117 = 0;
  v124.i64[0] = &v115;
  v129 = xmmword_1C189A7F0;
  v130 = xmmword_1C189A800;
  MEMORY[0x1EEE9AC00](v53);
  v111 = v52;
  v112 = v122;
  v113 = &v129;
  v55 = *(v54 + 16);
  v56 = v54;
  v57 = swift_allocObject();
  *(v57 + 16) = partial apply for closure #2 in static MXISceneResource.createLowLevelMesh(mxiScene:);
  *(v57 + 24) = &v109;
  v58 = swift_allocObject();
  *(v58 + 16) = _s17RealityFoundation12LowLevelMeshC22withUnsafeMutableBytes11bufferIndex_ySi_ySwXEtFySv_SitXEfU_TA_0;
  *(v58 + 24) = v57;
  v135 = _sSvSiIgyy_SvSiIegyy_TRTA_0;
  v136 = v58;
  aBlock = MEMORY[0x1E69E9820];
  v132 = 1107296256;
  v133 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ();
  v134 = &block_descriptor_36;
  v59 = _Block_copy(&aBlock);
  v60 = v55;

  DRMeshUpdateVertices();

  _Block_release(v59);
  LOBYTE(v59) = swift_isEscapingClosureAtFileLocation();

  if (v59)
  {
    goto LABEL_118;
  }

  v124.i64[0] = &v115;
  MEMORY[0x1EEE9AC00](v61);
  v113 = v52;
  v114 = v119;
  v62 = *(v56 + 16);
  v63 = swift_allocObject();
  *(v63 + 16) = partial apply for closure #3 in static MXISceneResource.createLowLevelMesh(mxiScene:);
  *(v63 + 24) = &v111;
  v64 = swift_allocObject();
  *(v64 + 16) = closure #1 in LowLevelMesh.withUnsafeMutableBytes(bufferIndex:_:)partial apply;
  *(v64 + 24) = v63;
  v135 = thunk for @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ()partial apply;
  v136 = v64;
  aBlock = MEMORY[0x1E69E9820];
  v132 = 1107296256;
  v133 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ();
  v134 = &block_descriptor_56_0;
  v65 = _Block_copy(&aBlock);
  v66 = v62;

  DRMeshUpdateVertices();

  _Block_release(v65);
  LOBYTE(v65) = swift_isEscapingClosureAtFileLocation();

  if (v65)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  MEMORY[0x1EEE9AC00](v67);
  v113 = v52;
  v114 = &v137;
  v68 = *(v56 + 16);
  v69 = swift_allocObject();
  *(v69 + 16) = partial apply for closure #4 in static MXISceneResource.createLowLevelMesh(mxiScene:);
  *(v69 + 24) = &v111;
  v70 = swift_allocObject();
  *(v70 + 16) = closure #1 in LowLevelMesh.withUnsafeMutableBytes(bufferIndex:_:)partial apply;
  *(v70 + 24) = v69;
  v135 = thunk for @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ()partial apply;
  v136 = v70;
  aBlock = MEMORY[0x1E69E9820];
  v132 = 1107296256;
  v133 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ();
  v134 = &block_descriptor_67;
  v71 = _Block_copy(&aBlock);
  v72 = v68;

  DRMeshUpdateVertices();

  _Block_release(v71);
  LOBYTE(v71) = swift_isEscapingClosureAtFileLocation();

  if (v71)
  {
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v74 = v121;
  if (v121)
  {
    if (v118 <= 0xFFFE)
    {
      v127 = 0;
      v128 = 0;
      MEMORY[0x1EEE9AC00](v73);
      v109 = v115;
      v110 = v74;
      v111 = &v128;
      v112 = v123;
      v113 = &v127;
      v92 = *(v56 + 16);
      v93 = swift_allocObject();
      *(v93 + 16) = partial apply for specialized closure #1 in fillSplitIndices #1 <A>(of:) in static MXISceneResource.createLowLevelMesh(mxiScene:);
      *(v93 + 24) = v108;
      v94 = swift_allocObject();
      *(v94 + 16) = closure #1 in LowLevelMesh.withUnsafeMutableBytes(bufferIndex:_:)partial apply;
      *(v94 + 24) = v93;
      v135 = thunk for @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ()partial apply;
      v136 = v94;
      aBlock = MEMORY[0x1E69E9820];
      v132 = 1107296256;
      v133 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ();
      v134 = &block_descriptor_110;
      v95 = _Block_copy(&aBlock);
      v96 = v92;

      DRMeshUpdateIndices();

      _Block_release(v95);
      LOBYTE(v95) = swift_isEscapingClosureAtFileLocation();

      if ((v95 & 1) == 0)
      {
        v97 = v128;
        swift_beginAccess();
        v125 = v130;
        v126 = v129;
        v98 = *(v56 + 16);
        if (!__OFADD__(DRMeshGetPartCount(), 1))
        {
          DRMeshSetPartCount();
          if (!__OFSUB__(DRMeshGetPartCount(), 1))
          {
            if ((v97 & 0x8000000000000000) == 0)
            {
              DRMeshSetPartAt();

              if ((v97 + 0x4000000000000000) >= 0)
              {
                v99 = v127;
                v125 = v130;
                v126 = v129;
                v83 = *(v56 + 16);
                if (!__OFADD__(DRMeshGetPartCount(), 1))
                {
                  DRMeshSetPartCount();
                  if (!__OFSUB__(DRMeshGetPartCount(), 1))
                  {
                    if (((v99 | (2 * v97)) & 0x8000000000000000) == 0)
                    {
LABEL_84:
                      DRMeshSetPartAt();

LABEL_102:

                      return;
                    }

                    goto LABEL_139;
                  }

                  goto LABEL_137;
                }

                goto LABEL_135;
              }

              goto LABEL_133;
            }

            goto LABEL_131;
          }

          goto LABEL_129;
        }

        goto LABEL_127;
      }

      goto LABEL_125;
    }

    v127 = 0;
    v128 = 0;
    MEMORY[0x1EEE9AC00](v73);
    v109 = v115;
    v110 = v74;
    v111 = &v128;
    v112 = v123;
    v113 = &v127;
    v75 = *(v56 + 16);
    v76 = swift_allocObject();
    *(v76 + 16) = partial apply for specialized closure #1 in fillSplitIndices #1 <A>(of:) in static MXISceneResource.createLowLevelMesh(mxiScene:);
    *(v76 + 24) = v108;
    v77 = swift_allocObject();
    *(v77 + 16) = closure #1 in LowLevelMesh.withUnsafeMutableBytes(bufferIndex:_:)partial apply;
    *(v77 + 24) = v76;
    v135 = thunk for @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ()partial apply;
    v136 = v77;
    aBlock = MEMORY[0x1E69E9820];
    v132 = 1107296256;
    v133 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ();
    v134 = &block_descriptor_99_0;
    v78 = _Block_copy(&aBlock);
    v79 = v75;

    DRMeshUpdateIndices();

    _Block_release(v78);
    LOBYTE(v78) = swift_isEscapingClosureAtFileLocation();

    if ((v78 & 1) == 0)
    {
      v80 = v128;
      swift_beginAccess();
      v125 = v130;
      v126 = v129;
      v81 = *(v56 + 16);
      if (!__OFADD__(DRMeshGetPartCount(), 1))
      {
        DRMeshSetPartCount();
        if (!__OFSUB__(DRMeshGetPartCount(), 1))
        {
          if ((v80 & 0x8000000000000000) == 0)
          {
            DRMeshSetPartAt();

            if (!(v80 >> 61))
            {
              v82 = v127;
              v125 = v130;
              v126 = v129;
              v83 = *(v56 + 16);
              if (!__OFADD__(DRMeshGetPartCount(), 1))
              {
                DRMeshSetPartCount();
                if (!__OFSUB__(DRMeshGetPartCount(), 1))
                {
                  if ((v82 & 0x8000000000000000) == 0)
                  {
                    goto LABEL_84;
                  }

                  goto LABEL_138;
                }

                goto LABEL_136;
              }

              goto LABEL_134;
            }

            goto LABEL_132;
          }

          goto LABEL_130;
        }

        goto LABEL_128;
      }

      goto LABEL_126;
    }

LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if ((v125 & 0x8000000000000000) != 0)
  {
    goto LABEL_121;
  }

  v84 = 3 * v125;
  if ((v125 * 3) >> 64 != (3 * v125) >> 63)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  if (__OFSUB__(v126.i64[0], v84))
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v122 = v126.i64[0] - v84;
  if (v118 < 0xFFFF)
  {
    if (v84 + 0x4000000000000000 < 0)
    {
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    v85 = v56;
    MEMORY[0x1EEE9AC00](v73);
    v113 = v123;
    v100 = *(v56 + 16);
    v101 = swift_allocObject();
    *(v101 + 16) = partial apply for closure #6 in static MXISceneResource.createLowLevelMesh(mxiScene:);
    *(v101 + 24) = &v111;
    v102 = swift_allocObject();
    *(v102 + 16) = closure #1 in LowLevelMesh.withUnsafeMutableBytes(bufferIndex:_:)partial apply;
    *(v102 + 24) = v101;
    v135 = thunk for @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ()partial apply;
    v136 = v102;
    aBlock = MEMORY[0x1E69E9820];
    v132 = 1107296256;
    v133 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ();
    v134 = &block_descriptor_88_1;
    v103 = _Block_copy(&aBlock);
    v104 = v100;

    DRMeshUpdateIndices();

    _Block_release(v103);
    LOBYTE(v103) = swift_isEscapingClosureAtFileLocation();

    if (v103)
    {
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    v91 = 2 * v84;
  }

  else
  {
    if ((v84 - 0x2000000000000000) >> 62 != 3)
    {
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    v85 = v56;
    MEMORY[0x1EEE9AC00](v73);
    v113 = v123;
    v86 = *(v56 + 16);
    v87 = swift_allocObject();
    *(v87 + 16) = partial apply for closure #5 in static MXISceneResource.createLowLevelMesh(mxiScene:);
    *(v87 + 24) = &v111;
    v88 = swift_allocObject();
    *(v88 + 16) = _s17RealityFoundation12LowLevelMeshC22withUnsafeMutableBytes11bufferIndex_ySi_ySwXEtFySv_SitXEfU_TA_0;
    *(v88 + 24) = v87;
    v135 = thunk for @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ()partial apply;
    v136 = v88;
    aBlock = MEMORY[0x1E69E9820];
    v132 = 1107296256;
    v133 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ();
    v134 = &block_descriptor_77;
    v89 = _Block_copy(&aBlock);
    v90 = v86;

    DRMeshUpdateIndices();

    _Block_release(v89);
    LOBYTE(v89) = swift_isEscapingClosureAtFileLocation();

    if (v89)
    {
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    v91 = 4 * v84;
  }

  v123 = v129;
  v124 = v130;
  v105 = *(v85 + 16);
  v106 = __OFADD__(DRMeshGetPartCount(), 1);
  if (v125)
  {
    if (!v106)
    {
      DRMeshSetPartCount();
      if (!__OFSUB__(DRMeshGetPartCount(), 1))
      {
        if ((v84 & 0x8000000000000000) == 0)
        {
          DRMeshSetPartAt();

          v125 = v130;
          v126 = v129;
          v107 = *(v85 + 16);
          if (!__OFADD__(DRMeshGetPartCount(), 1))
          {
            DRMeshSetPartCount();
            if (!__OFSUB__(DRMeshGetPartCount(), 1))
            {
              if (((v91 | v122) & 0x8000000000000000) == 0)
              {
                DRMeshSetPartAt();

                goto LABEL_102;
              }

              goto LABEL_145;
            }

LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
            goto LABEL_146;
          }

LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

LABEL_142:
        __break(1u);
        goto LABEL_143;
      }

LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (v106)
  {
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  DRMeshSetPartCount();
  if (!__OFSUB__(DRMeshGetPartCount(), 1))
  {
    DRMeshSetPartAt();

    goto LABEL_102;
  }

LABEL_151:
  __break(1u);
}

uint64_t specialized static MXISceneResource.wrapColorTextures(mxiScene:)(uint64_t a1)
{
  v1[17] = a1;
  type metadata accessor for MainActor();
  v1[18] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[19] = v3;
  v1[20] = v2;

  return MEMORY[0x1EEE6DFA0](specialized static MXISceneResource.wrapColorTextures(mxiScene:), v3, v2);
}

uint64_t specialized static MXISceneResource.wrapColorTextures(mxiScene:)()
{
  v1 = MEMORY[0x1E69E7CC0];
  v0[16] = MEMORY[0x1E69E7CC0];
  v2 = v0[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_ADtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_ADtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v4 = *MEMORY[0x1E6998F20];
  *(inited + 32) = *MEMORY[0x1E6998F20];
  v5 = *MEMORY[0x1E6998F28];
  *(inited + 40) = *MEMORY[0x1E6998F28];
  v6 = v4;
  v7 = v5;
  v0[21] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ADTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, CFStringRef)(inited + 32);
  v8 = closure #1 in static MXISceneResource.wrapColorTextures(mxiScene:)(v2);
  v0[22] = v8;
  if (v8 >> 62)
  {
    v10 = __CocoaSet.count.getter();
    v0[23] = v10;
    if (v10)
    {
LABEL_3:
      v0[24] = v1;
      v11 = v0[22];
      if ((v11 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1C68F41F0](0);
      }

      else
      {
        if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x1EEE6DFA0](v10, v11, v9);
        }

        v12 = *(v11 + 32);
        swift_unknownObjectRetain();
      }

      v0[25] = v12;
      v0[26] = 1;
      v13 = v0[21];
      type metadata accessor for CFStringRef(0);
      lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      RETextureAssetDataCreateWithTexture();

      v15 = specialized static __ServiceLocator.shared.getter();
      swift_beginAccess();
      outlined init with copy of __REAssetService(v15 + 120, (v0 + 8));
      v16 = v0[11];
      v17 = v0[12];
      __swift_project_boxed_opaque_existential_1(v0 + 8, v16);
      (*(v17 + 32))(v16, v17);
      TextureAssetFromData = REAssetManagerCreateTextureAssetFromData();
      v0[27] = TextureAssetFromData;
      __swift_destroy_boxed_opaque_existential_1(v0 + 8);
      RERelease();
      v0[28] = type metadata accessor for TextureResource();
      v19 = swift_allocObject();
      v0[29] = v19;
      *(v19 + 16) = TextureAssetFromData;
      *(v19 + 24) = 0;
      RERetain();
      REAssetSetSwiftObject();
      v10 = specialized static MXISceneResource.wrapColorTextures(mxiScene:);
      v11 = 0;
      v9 = 0;

      return MEMORY[0x1EEE6DFA0](v10, v11, v9);
    }
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[23] = v10;
    if (v10)
    {
      goto LABEL_3;
    }
  }

  v20 = v0[21];
  v21 = v0[22];
  v22 = v0[18];

  v23 = v0[1];
  v24 = MEMORY[0x1E69E7CC0];

  return v23(v24);
}

{
  v2 = v0[28];
  v1 = v0[29];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  v3 = swift_allocObject();
  v0[30] = v3;
  *(v3 + 16) = xmmword_1C1887600;
  *(v3 + 56) = v2;
  *(v3 + 64) = &protocol witness table for TextureResource;
  *(v3 + 32) = v1;

  v4 = swift_task_alloc();
  v0[31] = v4;
  *(v4 + 16) = v3;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[32] = v6;
  *v6 = v0;
  v6[1] = specialized static MXISceneResource.wrapColorTextures(mxiScene:);
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD00000000000001BLL, 0x80000001C18DF8A0, partial apply for closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:), v4, v7);
}

{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  v2[33] = v0;

  v5 = v2[31];
  v6 = v2[30];
  if (v0)
  {
    v8 = v2[21];
    v7 = v2[22];

    v9 = specialized static MXISceneResource.wrapColorTextures(mxiScene:);
  }

  else
  {

    v9 = specialized static MXISceneResource.wrapColorTextures(mxiScene:);
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

{
  return MEMORY[0x1EEE6DFA0](specialized static MXISceneResource.wrapColorTextures(mxiScene:), *(v0 + 152), *(v0 + 160));
}

{
  v1 = v0[29];
  v2 = v0[27];
  RERelease();

  MEMORY[0x1C68F3650](v3);
  if (*((v0[16] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[16] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v26 = *((v0[16] & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v4 = v0[29];
  v5 = v0[25];
  v6 = v0[26];
  v7 = v0[23];
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_unknownObjectRelease();

  v10 = v0[16];
  if (v6 != v7)
  {
    v16 = v0[26];
    v0[24] = v10;
    v17 = v0[22];
    if ((v17 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1C68F41F0](v16);
      v18 = v8;
    }

    else
    {
      if (v16 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v18 = *(v17 + 8 * v16 + 32);
      v8 = swift_unknownObjectRetain();
    }

    v0[25] = v18;
    v0[26] = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
      v19 = v0[21];
      type metadata accessor for CFStringRef(0);
      lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      RETextureAssetDataCreateWithTexture();

      v21 = specialized static __ServiceLocator.shared.getter();
      swift_beginAccess();
      outlined init with copy of __REAssetService(v21 + 120, (v0 + 8));
      v22 = v0[11];
      v23 = v0[12];
      __swift_project_boxed_opaque_existential_1(v0 + 8, v22);
      (*(v23 + 32))(v22, v23);
      TextureAssetFromData = REAssetManagerCreateTextureAssetFromData();
      v0[27] = TextureAssetFromData;
      __swift_destroy_boxed_opaque_existential_1(v0 + 8);
      RERelease();
      v0[28] = type metadata accessor for TextureResource();
      v25 = swift_allocObject();
      v0[29] = v25;
      *(v25 + 16) = TextureAssetFromData;
      *(v25 + 24) = 0;
      RERetain();
      REAssetSetSwiftObject();
      v8 = specialized static MXISceneResource.wrapColorTextures(mxiScene:);
      v17 = 0;
      v9 = 0;

      return MEMORY[0x1EEE6DFA0](v8, v17, v9);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v8, v17, v9);
  }

  v11 = v0[21];
  v12 = v0[22];
  v13 = v0[18];

  v14 = v0[1];

  return v14(v10);
}

{
  v1 = v0[24];

  v2 = v0[19];
  v3 = v0[20];

  return MEMORY[0x1EEE6DFA0](specialized static MXISceneResource.wrapColorTextures(mxiScene:), v2, v3);
}

{
  v1 = v0[29];
  v2 = v0[25];
  v3 = v0[18];
  swift_unknownObjectRelease();

  v4 = v0[1];
  v5 = v0[33];

  return v4();
}

uint64_t specialized static MXISceneResource.wrapColorTexture(texture:)(uint64_t a1)
{
  v1[16] = a1;
  type metadata accessor for MainActor();
  v1[17] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[18] = v3;
  v1[19] = v2;

  return MEMORY[0x1EEE6DFA0](specialized static MXISceneResource.wrapColorTexture(texture:), v3, v2);
}

uint64_t specialized static MXISceneResource.wrapColorTexture(texture:)()
{
  v1 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_ADtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_ADtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v3 = *MEMORY[0x1E6998F20];
  *(inited + 32) = *MEMORY[0x1E6998F20];
  v4 = *MEMORY[0x1E6998F28];
  *(inited + 40) = *MEMORY[0x1E6998F28];
  v5 = v3;
  v6 = v4;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ADTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, CFStringRef)(inited + 32);
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  RETextureAssetDataCreateWithTexture();

  v8 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v8 + 120, (v0 + 8));
  v9 = v0[11];
  v10 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v9);
  (*(v10 + 32))(v9, v10);
  TextureAssetFromData = REAssetManagerCreateTextureAssetFromData();
  v0[20] = TextureAssetFromData;
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  RERelease();
  type metadata accessor for TextureResource();
  v12 = swift_allocObject();
  v0[21] = v12;
  *(v12 + 16) = TextureAssetFromData;
  *(v12 + 24) = 0;
  RERetain();
  REAssetSetSwiftObject();
  v13 = swift_task_alloc();
  v0[22] = v13;
  *v13 = v0;
  v13[1] = specialized static MXISceneResource.wrapColorTexture(texture:);

  return specialized RequestLoadable.awaitForResourceSharing()();
}

{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 152);
  v6 = *(v2 + 144);
  if (v0)
  {
    v7 = specialized static MXISceneResource.wrapColorTexture(texture:);
  }

  else
  {
    v7 = specialized static MXISceneResource.wrapColorTexture(texture:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

{
  v1 = v0[20];
  v2 = v0[17];

  RERelease();
  v3 = v0[1];
  v4 = v0[21];

  return v3(v4);
}

{
  v1 = v0[21];
  v2 = v0[17];

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_ADtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_ADtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v2 = *MEMORY[0x1E6998F20];
  *(inited + 32) = *MEMORY[0x1E6998F20];
  v3 = *MEMORY[0x1E6998F28];
  *(inited + 40) = *MEMORY[0x1E6998F28];
  v4 = v2;
  v5 = v3;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ADTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, CFStringRef)(inited + 32);
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  RETextureAssetDataCreateWithTexture();

  v7 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v7 + 120, v16);
  v8 = v17;
  v9 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  (*(v9 + 32))(v8, v9);
  TextureAssetFromData = REAssetManagerCreateTextureAssetFromData();
  __swift_destroy_boxed_opaque_existential_1(v16);
  RERelease();
  v11 = type metadata accessor for TextureResource();
  v12 = swift_allocObject();
  *(v12 + 16) = TextureAssetFromData;
  *(v12 + 24) = 0;
  RERetain();
  REAssetSetSwiftObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_1C1887600;
  *(v13 + 32) = v12;
  v14 = (v13 + 32);
  *(v13 + 56) = v11;
  *(v13 + 64) = &protocol witness table for TextureResource;

  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(v13);
  if (v0)
  {

    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1(v14);
    RERelease();
  }

  return v12;
}

uint64_t specialized MXISceneResource.__allocating_init(mxiScene:)(uint64_t a1)
{
  v1[32] = a1;
  type metadata accessor for MainActor();
  v1[33] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[34] = v3;
  v1[35] = v2;

  return MEMORY[0x1EEE6DFA0](specialized MXISceneResource.__allocating_init(mxiScene:), v3, v2);
}

{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 288);
  v6 = *v2;
  *(v4 + 296) = a1;
  *(v4 + 304) = v1;

  v7 = *(v3 + 280);
  v8 = *(v3 + 272);
  if (v1)
  {
    v9 = specialized MXISceneResource.__allocating_init(mxiScene:);
  }

  else
  {
    v9 = specialized MXISceneResource.__allocating_init(mxiScene:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 320);
  v6 = *v2;
  *(v4 + 328) = a1;
  *(v4 + 336) = v1;

  v7 = *(v3 + 280);
  v8 = *(v3 + 272);
  if (v1)
  {
    v9 = specialized MXISceneResource.__allocating_init(mxiScene:);
  }

  else
  {
    v9 = specialized MXISceneResource.__allocating_init(mxiScene:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

{
  v4 = *v2;
  v5 = *(*v2 + 352);
  v6 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {
    v7 = v4[34];
    v8 = v4[35];
    v9 = specialized MXISceneResource.__allocating_init(mxiScene:);
  }

  else
  {
    v10 = v4[43];
    swift_unknownObjectRelease();
    v4[46] = a1;
    v7 = v4[34];
    v8 = v4[35];
    v9 = specialized MXISceneResource.__allocating_init(mxiScene:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t specialized MXISceneResource.__allocating_init(mxiScene:)()
{
  specialized static MXISceneResource.createLowLevelMesh(mxiScene:)(*(v0 + 256));
  v2 = v1;
  type metadata accessor for MeshResource();
  v3 = swift_task_alloc();
  *(v0 + 288) = v3;
  *v3 = v0;
  v3[1] = specialized MXISceneResource.__allocating_init(mxiScene:);

  return MeshResource.init(from:)(v2);
}

{
  v1 = *(*(v0 + 296) + 16);
  *(v0 + 312) = v1;
  if (v1)
  {
    v2 = [*(v0 + 256) isPremultipliedAlpha];
    v3 = MEMORY[0x1E69E7CC0];
    *(v0 + 376) = v2;
    *(v0 + 232) = 0;
    *(v0 + 240) = v3;
    *(v0 + 248) = 0;
    v4 = swift_task_alloc();
    *(v0 + 320) = v4;
    *v4 = v0;
    v4[1] = specialized MXISceneResource.__allocating_init(mxiScene:);
    v5 = *(v0 + 256);

    return specialized static MXISceneResource.wrapColorTextures(mxiScene:)(v5);
  }

  else
  {
    v8 = *(v0 + 256);
    v7 = *(v0 + 264);

    lazy protocol witness table accessor for type MXISceneResource.MXISceneResourceError and conformance MXISceneResource.MXISceneResourceError();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();

    v10 = *(v0 + 8);

    return v10();
  }
}

{
  v1 = *(v0 + 328);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v31 = *(v0 + 328);
    }

    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = *(v0 + 264);

      if (v2 < 1)
      {
        __break(1u);
      }

      else
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v5 = 0;
          v6 = MEMORY[0x1E69E7CC0];
          do
          {
            v7 = *(MEMORY[0x1C68F41F0](v5, *(v0 + 328)) + 16);
            RERetain();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
            }

            v9 = *(v6 + 2);
            v8 = *(v6 + 3);
            if (v9 >= v8 >> 1)
            {
              v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
            }

            ++v5;
            swift_unknownObjectRelease();
            *(v6 + 2) = v9 + 1;
            *&v6[8 * v9 + 32] = v7;
          }

          while (v2 != v5);
        }

        else
        {
          v10 = *(v0 + 328) + 32;
          v6 = MEMORY[0x1E69E7CC0];
          do
          {
            v11 = *(*v10 + 16);

            RERetain();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
            }

            v13 = *(v6 + 2);
            v12 = *(v6 + 3);
            if (v13 >= v12 >> 1)
            {
              v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v6);
            }

            *(v6 + 2) = v13 + 1;
            *&v6[8 * v13 + 32] = v11;
            v10 += 8;
            --v2;
          }

          while (v2);
        }

        v14 = *(v0 + 328);

        *(v0 + 240) = v6;
        v15 = *(v0 + 312);
        v16 = *(v0 + 256);

        v36 = [v16 type];
        [v16 verticalFOV];
        v18 = v17;
        [v16 aspectRatio];
        v20 = v19;
        [v16 depthRange];
        v22 = v21;
        [v16 depthRange];
        v24 = v23;
        v39 = [v16 numLayers];
        v38 = [v16 resolutionWidth];
        v37 = [v16 resolutionHeight];
        type metadata accessor for MXISceneResource();
        v25 = swift_allocObject();
        *(v25 + 16) = 0;
        *(v25 + 20) = xmmword_1C18C2760;
        *(v25 + 36) = 0x80000000010;
        *(v25 + 44) = 2048;
        *(v25 + 48) = 1;
        RERetain();
        *(v25 + 56) = v15;
        *(v25 + 64) = 0;
        v26 = *(v6 + 2);
        if (v26)
        {
          v27 = (v6 + 32);
          do
          {
            v28 = *v27++;
            RERetain();
            --v26;
          }

          while (v26);
        }

        v29 = *(v0 + 376);
        v34 = *(v0 + 256);
        v35 = *(v0 + 296);
        *(v25 + 72) = v6;
        *(v25 + 80) = 0;
        swift_beginAccess();
        *(v25 + 16) = v36 == 1;
        swift_beginAccess();
        *(v25 + 20) = v18;
        swift_beginAccess();
        *(v25 + 24) = v20;
        swift_beginAccess();
        *(v25 + 28) = v22;
        swift_beginAccess();
        *(v25 + 32) = v24;
        swift_beginAccess();
        *(v25 + 36) = v39;
        swift_beginAccess();
        *(v25 + 40) = v38;
        swift_beginAccess();
        *(v25 + 44) = v37;
        swift_beginAccess();
        *(v25 + 48) = v29;
        $defer #1 () in MXISceneResource.init(mxiScene:)((v0 + 232), (v0 + 240), (v0 + 248));

        v30 = *(v0 + 8);

        return v30(v25);
      }

      return result;
    }
  }

  v32 = [*(v0 + 256) colorTexture];
  *(v0 + 344) = v32;
  v33 = swift_task_alloc();
  *(v0 + 352) = v33;
  *v33 = v0;
  v33[1] = specialized MXISceneResource.__allocating_init(mxiScene:);

  return specialized static MXISceneResource.wrapColorTexture(texture:)(v32);
}

{
  v1 = v0[37];
  v3 = v0[32];
  v2 = v0[33];

  $defer #1 () in MXISceneResource.init(mxiScene:)(v0 + 29, v0 + 30, v0 + 31);

  v4 = v0[42];
  v5 = v0[1];

  return v5();
}

{
  v1 = *(v0 + 368);
  v2 = *(v0 + 328);
  v3 = *(v0 + 264);

  v4 = *(v1 + 16);
  *(v0 + 232) = v4;
  RERetain();

  v5 = *(v0 + 312);
  v6 = *(v0 + 256);

  v24 = [v6 type];
  [v6 verticalFOV];
  v8 = v7;
  [v6 aspectRatio];
  v10 = v9;
  [v6 depthRange];
  v12 = v11;
  [v6 depthRange];
  v14 = v13;
  v26 = [v6 numLayers];
  v25 = [v6 resolutionWidth];
  v27 = [v6 resolutionHeight];
  type metadata accessor for MXISceneResource();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 20) = xmmword_1C18C2760;
  *(v15 + 36) = 0x80000000010;
  *(v15 + 44) = 2048;
  *(v15 + 48) = 1;
  RERetain();
  *(v15 + 56) = v5;
  if (v4)
  {
    RERetain();
  }

  *(v15 + 64) = v4;
  v16 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v16)
  {
    v17 = (MEMORY[0x1E69E7CC0] + 32);
    do
    {
      v18 = *v17++;
      RERetain();
      --v16;
    }

    while (v16);
  }

  v19 = *(v0 + 376);
  v22 = *(v0 + 256);
  v23 = *(v0 + 296);
  *(v15 + 72) = MEMORY[0x1E69E7CC0];
  *(v15 + 80) = 0;
  swift_beginAccess();
  *(v15 + 16) = v24 == 1;
  swift_beginAccess();
  *(v15 + 20) = v8;
  swift_beginAccess();
  *(v15 + 24) = v10;
  swift_beginAccess();
  *(v15 + 28) = v12;
  swift_beginAccess();
  *(v15 + 32) = v14;
  swift_beginAccess();
  *(v15 + 36) = v26;
  swift_beginAccess();
  *(v15 + 40) = v25;
  swift_beginAccess();
  *(v15 + 44) = v27;
  swift_beginAccess();
  *(v15 + 48) = v19;
  $defer #1 () in MXISceneResource.init(mxiScene:)((v0 + 232), (v0 + 240), (v0 + 248));

  v20 = *(v0 + 8);

  return v20(v15);
}

{
  v1 = v0[43];
  v2 = v0[41];
  v3 = v0[37];
  v5 = v0[32];
  v4 = v0[33];

  swift_unknownObjectRelease();

  $defer #1 () in MXISceneResource.init(mxiScene:)(v0 + 29, v0 + 30, v0 + 31);

  v6 = v0[45];
  v7 = v0[1];

  return v7();
}

{
  v2 = v0[32];
  v1 = v0[33];

  v3 = v0[38];
  v4 = v0[1];

  return v4();
}

uint64_t specialized static MXISceneResource.wrapColorTextures(mxiScene:)(void *a1)
{
  v30 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_ADtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_ADtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v3 = *MEMORY[0x1E6998F20];
  *(inited + 32) = *MEMORY[0x1E6998F20];
  v4 = *MEMORY[0x1E6998F28];
  *(inited + 40) = *MEMORY[0x1E6998F28];
  v5 = v3;
  v6 = v4;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ADTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, CFStringRef)(inited + 32);
  v7 = closure #1 in static MXISceneResource.wrapColorTextures(mxiScene:)(a1);
  v8 = v7;
  if (v7 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v10 = 0;
    while ((v8 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1C68F41F0](v10, v8);
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_16;
      }

LABEL_10:
      v25 = v11;
      type metadata accessor for CFStringRef(0);
      lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      RETextureAssetDataCreateWithTexture();

      v14 = specialized static __ServiceLocator.shared.getter();
      swift_beginAccess();
      outlined init with copy of __REAssetService(v14 + 120, v27);
      v15 = v28;
      v16 = v29;
      __swift_project_boxed_opaque_existential_1(v27, v28);
      (*(v16 + 32))(v15, v16);
      TextureAssetFromData = REAssetManagerCreateTextureAssetFromData();
      __swift_destroy_boxed_opaque_existential_1(v27);
      RERelease();
      v18 = type metadata accessor for TextureResource();
      v19 = swift_allocObject();
      *(v19 + 16) = TextureAssetFromData;
      *(v19 + 24) = 0;
      RERetain();
      REAssetSetSwiftObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
      v20 = swift_initStackObject();
      *(v20 + 16) = xmmword_1C1887600;
      *(v20 + 32) = v19;
      v21 = (v20 + 32);
      *(v20 + 56) = v18;
      *(v20 + 64) = &protocol witness table for TextureResource;

      specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(v20);
      if (v26)
      {

        swift_unknownObjectRelease();

        swift_setDeallocating();
        __swift_destroy_boxed_opaque_existential_1(v21);

        return v18;
      }

      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1(v21);
      RERelease();

      MEMORY[0x1C68F3650](v22);
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      swift_unknownObjectRelease();
      v18 = v30;
      ++v10;
      if (v25 == i)
      {
        goto LABEL_20;
      }
    }

    if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v12 = *(v8 + 8 * v10 + 32);
    swift_unknownObjectRetain();
    v11 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_10;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v18;
}

char *specialized MXISceneResource.__allocating_init(mxiScene:)(char *a1)
{
  specialized static MXISceneResource.createLowLevelMesh(mxiScene:)(a1);
  if (v2)
  {
    goto LABEL_3;
  }

  v5 = v4;
  v6 = type metadata accessor for MeshResource();
  v7 = v5;
  v1 = v6;
  v9 = *(MeshResource.init(from:)(v7) + 16);
  if (!v9)
  {
    lazy protocol witness table accessor for type MXISceneResource.MXISceneResourceError and conformance MXISceneResource.MXISceneResourceError();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();

LABEL_3:

    return v1;
  }

  v10 = [a1 isPremultipliedAlpha];
  v11 = specialized static MXISceneResource.wrapColorTextures(mxiScene:)(a1);
  v13 = v11;
  v14 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v45 = v11;
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_13:
    [a1 colorTexture];
    v16 = specialized static MXISceneResource.wrapColorTexture(texture:)();
    swift_unknownObjectRelease();
    v43 = *(v16 + 16);
    v13 = v45;
    if (!v14)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v45 = v11;
  if (!__CocoaSet.count.getter())
  {
    goto LABEL_13;
  }

LABEL_10:
  v43 = 0;
  if (!v14)
  {
LABEL_11:
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_15;
  }

LABEL_14:
  v15 = __CocoaSet.count.getter();
LABEL_15:
  v17 = MEMORY[0x1E69E7CC0];
  v44 = v10;
  if (!v15)
  {
LABEL_28:
    v38 = [a1 type];
    [a1 verticalFOV];
    v28 = v27;
    [a1 aspectRatio];
    v30 = v29;
    [a1 depthRange];
    v32 = v31;
    [a1 depthRange];
    v34 = v33;
    v39 = [a1 numLayers];
    v40 = [a1 resolutionWidth];
    v42 = [a1 resolutionHeight];
    type metadata accessor for MXISceneResource();
    v1 = swift_allocObject();
    *(v1 + 16) = 0;
    *(v1 + 20) = xmmword_1C18C2760;
    *(v1 + 36) = 0x80000000010;
    *(v1 + 44) = 2048;
    *(v1 + 48) = 1;
    RERetain();
    *(v1 + 56) = v9;
    if (v43)
    {
      RERetain();
    }

    *(v1 + 64) = v43;
    v35 = *(v17 + 16);
    if (v35)
    {
      v36 = (v17 + 32);
      do
      {
        v37 = *v36++;
        RERetain();
        --v35;
      }

      while (v35);
    }

    *(v1 + 72) = v17;
    *(v1 + 80) = 0;
    swift_beginAccess();
    *(v1 + 16) = v38 == 1;
    swift_beginAccess();
    *(v1 + 20) = v28;
    swift_beginAccess();
    *(v1 + 24) = v30;
    swift_beginAccess();
    *(v1 + 28) = v32;
    swift_beginAccess();
    *(v1 + 32) = v34;
    swift_beginAccess();
    *(v1 + 36) = v39;
    swift_beginAccess();
    *(v1 + 40) = v40;
    swift_beginAccess();
    *(v1 + 44) = v42;
    swift_beginAccess();
    *(v1 + 48) = v44;

    return v1;
  }

  v46 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v41 = v9;
    v17 = v46;
    v18 = v45;
    if ((v45 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v15; ++i)
      {
        v20 = *(MEMORY[0x1C68F41F0](i, v18) + 16);
        swift_unknownObjectRelease();
        v22 = *(v46 + 16);
        v21 = *(v46 + 24);
        if (v22 >= v21 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
          v18 = v45;
        }

        *(v46 + 16) = v22 + 1;
        *(v46 + 8 * v22 + 32) = v20;
      }
    }

    else
    {
      v23 = v45 + 32;
      v24 = *(v46 + 16);
      do
      {
        v25 = *(*v23 + 16);
        v26 = *(v46 + 24);
        if (v24 >= v26 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v24 + 1, 1);
        }

        *(v46 + 16) = v24 + 1;
        *(v46 + 8 * v24 + 32) = v25;
        v23 += 8;
        ++v24;
        --v15;
      }

      while (v15);
    }

    v9 = v41;
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type MXISceneResource.MXISceneType and conformance MXISceneResource.MXISceneType()
{
  result = lazy protocol witness table cache variable for type MXISceneResource.MXISceneType and conformance MXISceneResource.MXISceneType;
  if (!lazy protocol witness table cache variable for type MXISceneResource.MXISceneType and conformance MXISceneResource.MXISceneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MXISceneResource.MXISceneType and conformance MXISceneResource.MXISceneType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MXISceneResource.MXISceneResourceError and conformance MXISceneResource.MXISceneResourceError()
{
  result = lazy protocol witness table cache variable for type MXISceneResource.MXISceneResourceError and conformance MXISceneResource.MXISceneResourceError;
  if (!lazy protocol witness table cache variable for type MXISceneResource.MXISceneResourceError and conformance MXISceneResource.MXISceneResourceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MXISceneResource.MXISceneResourceError and conformance MXISceneResource.MXISceneResourceError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MXISceneResource.MXISceneResourceError and conformance MXISceneResource.MXISceneResourceError;
  if (!lazy protocol witness table cache variable for type MXISceneResource.MXISceneResourceError and conformance MXISceneResource.MXISceneResourceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MXISceneResource.MXISceneResourceError and conformance MXISceneResource.MXISceneResourceError);
  }

  return result;
}

uint64_t outlined destroy of (CFStringRef, CFStringRef)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_ABtMd, &_sSo11CFStringRefa_ABtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *partial apply for closure #5 in static MXISceneResource.createLowLevelMesh(mxiScene:)(void *result, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (result)
  {
    v4 = (a2 - result) / 4;
  }

  else
  {
    result = 0;
    v4 = 0;
  }

  v5 = *(v3 + 16);
  if (v4 < v5)
  {
    __break(1u);
  }

  else
  {
    v6 = (v3 + 32);
    v7 = v3 + 32 + 4 * v5;
    if (result != v6 || result >= v7)
    {
      return memmove(result, v6, 4 * v5);
    }
  }

  return result;
}

_WORD *partial apply for closure #6 in static MXISceneResource.createLowLevelMesh(mxiScene:)(_WORD *result)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    while (1)
    {
      v6 = *v4++;
      v5 = v6;
      if (HIWORD(v6))
      {
        break;
      }

      *result++ = v5;
      if (!--v3)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in fillSplitIndices #1 <A>(of:) in static MXISceneResource.createLowLevelMesh(mxiScene:)(uint64_t a1, uint64_t a2)
{
  return partial apply for specialized closure #1 in fillSplitIndices #1 <A>(of:) in static MXISceneResource.createLowLevelMesh(mxiScene:)(a1, a2, specialized closure #1 in fillSplitIndices #1 <A>(of:) in static MXISceneResource.createLowLevelMesh(mxiScene:));
}

{
  return partial apply for specialized closure #1 in fillSplitIndices #1 <A>(of:) in static MXISceneResource.createLowLevelMesh(mxiScene:)(a1, a2, specialized closure #1 in fillSplitIndices #1 <A>(of:) in static MXISceneResource.createLowLevelMesh(mxiScene:));
}

Swift::Void __swiftcall TimelineBaseProperties.writeProperties(_:)(Swift::OpaquePointer a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 36);
  v29 = *(v1 + 41);
  v27 = *(v1 + 40);
  v28 = *(v1 + 42);
  v7 = *(v1 + 43);
  v8 = *(v1 + 48);
  if (*(v1 + 8))
  {
    v9 = *v1;
    v10 = *(v1 + 8);
  }

  else if (*(v8 + 16))
  {
    v11 = *(v8 + 16);
    RETimelineDefinitionGetName();
    v9 = String.init(cString:)();
    v10 = v12;
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  v13 = MEMORY[0x1C68F3280](v9, v10);

  v14 = [v13 UTF8String];
  v15 = v13;
  if (!v14)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  MEMORY[0x1C68FFF50](a1._rawValue, v14);
  v16 = v3;
  v17 = v4;
  v18 = v5;
  if (v5 == 255)
  {
    if (*(v8 + 16))
    {
      RETimelineDefinitionGetTargetPath();
      v19 = String.init(cString:)();
      static InternalBindPath.targetFromPath(_:)(v19, v20, &v30);

      v16 = v30;
      v17 = v31;
      v18 = v32;
    }

    else
    {
      v16 = 0;
      v18 = 0;
      v17 = 0xE000000000000000;
    }
  }

  v30 = v16;
  v31 = v17;
  v32 = v18;
  outlined copy of BindTarget?(v3, v4, v5);
  v21 = specialized static InternalBindPath.pathFromTarget(_:_:)(&v30, 1);
  v23 = v22;
  outlined consume of BindTarget(v30, v31, v32);
  v24 = MEMORY[0x1C68F3280](v21, v23);

  v25 = [v24 UTF8String];
  v26 = v24;
  if (!v25)
  {
    goto LABEL_25;
  }

  RETimelineDefinitionSetTargetPath();
  if ((v27 & 1) != 0 && *(v8 + 16))
  {
    RETimelineDefinitionGetAnimationLayer();
  }

  RETimelineDefinitionSetAnimationLayer();
  if ((v28 & 1) != 0 && *(v8 + 16))
  {
    RETimelineDefinitionGetFillMode();
  }

  RETimelineDefinitionSetFillMode();
  if (v7 == 2 && *(v8 + 16))
  {
    RETimelineDefinitionIsAdditive();
  }

  RETimelineDefinitionSetAdditive();
}

BOOL TimelineClipProperties.isClipped.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  v3 = *(v0 + 24);
  v4 = *(v0 + 25);
  v5 = *(v0 + 40);
  v6 = *(v0 + 41);
  v22 = *(v0 + 6);
  v7 = *(v0 + 56);
  v20 = *v0;
  v21 = *(v0 + 8);
  v8 = *(v0 + 19);
  v23 = *(v0 + 80);
  v24 = *(v0 + 72);
  v9 = v0[18];
  if (v2)
  {
    if (*(v9 + 16) && RETimelineDefinitionGetClipStart())
    {
      return 1;
    }
  }

  else if ((v0[1] & 1) == 0)
  {
    return 1;
  }

  if (v4)
  {
    if (*(v9 + 16) && RETimelineDefinitionGetClipEnd())
    {
      return 1;
    }
  }

  else if ((v3 & 1) == 0)
  {
    return 1;
  }

  if (v6)
  {
    if (*(v9 + 16) && RETimelineDefinitionGetClipDuration())
    {
      return 1;
    }
  }

  else if ((v5 & 1) == 0)
  {
    return 1;
  }

  if (v7)
  {
    if (!*(v9 + 16))
    {
      goto LABEL_22;
    }

    v10 = *(v9 + 16);
    if (RETimelineDefinitionGetTimelineType() != 2)
    {
      goto LABEL_22;
    }

    RETimelineDefinitionGetClipOffset();
  }

  else
  {
    v11 = v22;
  }

  if (v11 != 0.0)
  {
    return 1;
  }

LABEL_22:
  if ((v24 & 1) == 0)
  {
    v13 = v21;
LABEL_27:
    if (v13 != 0.0)
    {
      return 1;
    }

    goto LABEL_28;
  }

  if (*(v9 + 16))
  {
    v12 = *(v9 + 16);
    if (RETimelineDefinitionGetTimelineType() == 2)
    {
      RETimelineDefinitionGetClipDelay();
      goto LABEL_27;
    }
  }

LABEL_28:
  if (v23)
  {
    if (!*(v9 + 16))
    {
      goto LABEL_34;
    }

    v14 = *(v9 + 16);
    if (RETimelineDefinitionGetTimelineType() != 2)
    {
      goto LABEL_34;
    }

    RETimelineDefinitionGetClipSpeed();
  }

  else
  {
    v15 = v8;
  }

  if (v15 == 1.0)
  {
LABEL_34:
    v26 = v20;
    v27 = v1;
    v28 = v2;
    *v29 = *(v0 + 10);
    *&v29[6] = v0[2];
    v30 = v3;
    v31 = v4;
    *v32 = *(v0 + 26);
    *&v32[6] = v0[4];
    v33 = v5;
    v34 = v6;
    v36 = *(v0 + 23);
    v35 = *(v0 + 42);
    v37 = v22;
    v38 = v7;
    *v39 = *(v0 + 57);
    *&v39[3] = *(v0 + 15);
    v40 = v21;
    v41 = v24;
    v42 = *(v0 + 73);
    v43 = *(v0 + 75);
    v44 = v8;
    v45 = v23;
    v16 = *(v0 + 81);
    v17 = *(v0 + 97);
    v18 = *(v0 + 113);
    *&v48[15] = *(v0 + 8);
    *v48 = v18;
    v47 = v17;
    v46 = v16;
    v49 = v9;
    AnyActionAnimation.repeatMode.getter(&v25);
    return v25 != 0;
  }

  return 1;
}

uint64_t TimelineClipProperties.createClip()()
{
  v1 = *(v0 + 112);
  v11 = *(v0 + 96);
  v12 = v1;
  v13 = *(v0 + 128);
  v14 = *(v0 + 144);
  v2 = *(v0 + 48);
  v9[2] = *(v0 + 32);
  v9[3] = v2;
  v3 = *(v0 + 80);
  v9[4] = *(v0 + 64);
  v10 = v3;
  v4 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v4;
  if (*(&v10 + 1))
  {
    if (*(*(&v10 + 1) + 16))
    {
LABEL_3:

      closure #1 in TimelineClipProperties.createClip()(v9, &v8);

      return v8;
    }
  }

  else
  {
    if (*(v14 + 16))
    {
      ClipSourceRef = RETimelineDefinitionCreateClipSourceRef();
      if (ClipSourceRef)
      {
        v7 = ClipSourceRef;
        type metadata accessor for TimelineDefinition();
        *(swift_allocObject() + 16) = v7;
        RERetain();
        RERelease();
        goto LABEL_3;
      }
    }

    type metadata accessor for TimelineDefinition();
    *(swift_allocObject() + 16) = 0;
  }

  return 0;
}

void *specialized Sequence._copyContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_18;
  }

  if (!a3)
  {
LABEL_18:
    *result = a4;
    result[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = *(a4 + 16);
    if (v4)
    {
      v5 = v4 - 1;
      if (v4 - 1 >= (a3 - 1))
      {
        v5 = a3 - 1;
      }

      v6 = v5 + 1;
      if (v6 > 8 && (a2 - a4 - 32) >= 0x20)
      {
        v10 = v6 & 7;
        if ((v6 & 7) == 0)
        {
          v10 = 8;
        }

        v7 = v6 - v10;
        v8 = v7 + 1;
        v9 = (a2 + 4 * v7);
        v11 = (a4 + 48);
        v12 = (a2 + 16);
        v13 = v7;
        do
        {
          v14 = *v11;
          *(v12 - 1) = *(v11 - 1);
          *v12 = v14;
          v11 += 2;
          v12 += 2;
          v13 -= 8;
        }

        while (v13);
      }

      else
      {
        v7 = 0;
        v8 = 1;
        v9 = a2;
      }

      while (1)
      {
        *v9 = *(a4 + 32 + 4 * v7);
        if (a3 == v8)
        {
          break;
        }

        v7 = v8;
        ++v9;
        if (v4 + 1 == ++v8)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
      a3 = v4;
    }

    goto LABEL_18;
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copyContents(initializing:)(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
LABEL_14:
    *result = a4;
    result[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = *(a4 + 16);
    if (v4)
    {
      v5 = 0;
      v6 = (a4 + 64);
      v7 = a3 - 1;
      while (v5 < *(a4 + 16))
      {
        v8 = *(v6 - 2);
        v9 = *(v6 - 1);
        v10 = *v6;
        if (one-time initialization token for identity != -1)
        {
          v11 = result;
          v12 = a2;
          v13 = a4;
          v14 = a3;
          v16 = *(v6 - 1);
          v17 = *(v6 - 2);
          v15 = *v6;
          swift_once();
          v10 = v15;
          v9 = v16;
          v8 = v17;
          a2 = v12;
          a3 = v14;
          result = v11;
          a4 = v13;
        }

        *a2 = v8;
        a2[1] = v9;
        a2[2] = v10;
        if (v7 == v5)
        {
          goto LABEL_14;
        }

        a2 += 3;
        ++v5;
        v6 += 3;
        if (v4 == v5)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_16;
    }

LABEL_13:
    a3 = v4;
    goto LABEL_14;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t specialized BidirectionalCollection.index(_:offsetBy:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = result;
  if (a2 < 0)
  {
    v9 = 0;
    while (1)
    {
      v7 = __OFSUB__(v5--, 1);
      if (v7)
      {
        goto LABEL_63;
      }

      v66 = v9 - 1;
LABEL_13:
      v10 = *(a3 + 16);
      result = REEntityGetComponentCount();
      if (result >= 1)
      {
        break;
      }

      v11 = 0;
LABEL_56:
      if (v11 < v5)
      {
        goto LABEL_57;
      }

LABEL_10:
      v9 = v66;
      if (v66 <= a2)
      {
        goto LABEL_61;
      }
    }

    v11 = 0;
    while (1)
    {
      Shared = REEngineGetShared();
      if (Shared)
      {
        v15 = Shared;
        if (one-time initialization token for lock != -1)
        {
          swift_once();
        }

        v16 = static __ServiceLocator.lock;
        os_unfair_lock_lock((static __ServiceLocator.lock + 16));
        if (!static __ServiceLocator.sharedEngine || *(static __ServiceLocator.sharedEngine + 3) != v15)
        {
          type metadata accessor for __Engine();
          swift_allocObject();
          static __ServiceLocator.sharedEngine = __Engine.init(coreEngine:)(v15);

          specialized static SceneManager.customComponentType(_:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent);
          specialized static SceneManager.customComponentType(_:)(&type metadata for SceneOriginComponent, &protocol witness table for SceneOriginComponent);
        }

        os_unfair_lock_unlock(v16 + 4);
        v17 = static __ServiceLocator.sharedEngine;
        if (static __ServiceLocator.sharedEngine)
        {
          goto LABEL_43;
        }
      }

      else
      {
        static __ServiceLocator.sharedEngine = 0;

        v17 = static __ServiceLocator.sharedEngine;
        if (static __ServiceLocator.sharedEngine)
        {
          goto LABEL_43;
        }
      }

      Default = REEngineConfigurationCreateDefault();
      type metadata accessor for EngineConfiguration();
      v19 = swift_allocObject();
      *(v19 + 16) = Default;
      if (REGetRetainCount() >= 2)
      {
        v20 = *(v19 + 16);

        v21 = REEngineConfigurationClone();
        v22 = swift_allocObject();
        *(v22 + 16) = v21;

        v19 = v22;
      }

      v23 = *(v19 + 16);
      REEngineConfigurationSetClockMode();
      if (one-time initialization token for defaultServices != -1)
      {
        swift_once();
      }

      v24 = *(v19 + 16);
      if (REGetRetainCount() >= 2)
      {
        v25 = *(v19 + 16);

        v26 = REEngineConfigurationClone();
        v27 = swift_allocObject();
        *(v27 + 16) = v26;

        v19 = v27;
      }

      v28 = *(v19 + 16);
      REEngineConfigurationSetServicesToCreate();
      v29 = *(v19 + 16);
      if (REGetRetainCount() >= 2)
      {
        v30 = *(v19 + 16);

        v31 = REEngineConfigurationClone();
        v32 = swift_allocObject();
        *(v32 + 16) = v31;

        v19 = v32;
      }

      v33 = *(v19 + 16);
      REEngineConfigurationSetServicesToUpdate();
      v34 = *(v19 + 16);
      if (REGetRetainCount() >= 2)
      {
        v35 = *(v19 + 16);

        v36 = REEngineConfigurationClone();
        v37 = swift_allocObject();
        *(v37 + 16) = v36;

        v19 = v37;
      }

      v38 = *(v19 + 16);
      REEngineConfigurationSetStartupOptions();
      if (one-time initialization token for defaultRenderFlags != -1)
      {
        swift_once();
      }

      v39 = *(v19 + 16);
      if (REGetRetainCount() >= 2)
      {
        v40 = *(v19 + 16);

        v41 = REEngineConfigurationClone();
        v42 = swift_allocObject();
        *(v42 + 16) = v41;

        v19 = v42;
      }

      v43 = *(v19 + 16);
      REEngineConfigurationSetRenderFlags();
      if (!specialized static __ServiceLocator.__sharedEngine.getter())
      {
        v69[0] = v19;
        v44 = specialized static __Engine.makeSharedEngine(_:)(v69);
        v45 = v44[3];
        REEngineSetShared();
        static __ServiceLocator.sharedEngine = v44;

        static __ServiceLocator.createdSharedEngine = 1;
      }

      specialized static SceneManager.customComponentType(_:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent);
      result = specialized static SceneManager.customComponentType(_:)(&type metadata for SceneOriginComponent, &protocol witness table for SceneOriginComponent);
      v17 = static __ServiceLocator.sharedEngine;
      if (!static __ServiceLocator.sharedEngine)
      {
        goto LABEL_65;
      }

LABEL_43:
      result = swift_beginAccess();
      v46 = v17[5];
      if (!v46)
      {
        goto LABEL_64;
      }

      swift_beginAccess();
      outlined init with copy of __REAssetService(v46 + 80, v69);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit14__SceneService_pMd, &_s10RealityKit14__SceneService_pMR);
      type metadata accessor for SceneManager();
      swift_dynamicCast();
      v47 = *(a3 + 16);
      REEntityGetComponentAtIndex();
      Class = REComponentGetClass();
      swift_beginAccess();
      v49 = *(v68 + 16);
      swift_beginAccess();
      v50 = *(v49 + 24);
      if (*(v50 + 16) && (v51 = specialized __RawDictionaryStorage.find<A>(_:)(Class), (v52 & 1) != 0))
      {
        v12 = *(*(v50 + 56) + 80 * v51 + 48);

        if (v12 == 2)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (one-time initialization token for handlesToCustomComponentTypes != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v53 = static SceneManager.handlesToCustomComponentTypes;
        if (*(static SceneManager.handlesToCustomComponentTypes + 16) && (v54 = specialized __RawDictionaryStorage.find<A>(_:)(Class), (v55 & 1) != 0))
        {
          v56 = *(*(v53 + 56) + 16 * v54);
          swift_endAccess();
          v57 = *(v68 + 16);
          swift_beginAccess();
          v58 = *(v57 + 16);
          if (!*(v58 + 16) || (v59 = specialized __RawDictionaryStorage.find<A>(_:)(v56), (v60 & 1) == 0))
          {

            if (v11 >= v5)
            {
              goto LABEL_10;
            }

LABEL_57:
            v69[0] = a3;
            result = Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)();
            if (result)
            {
              goto LABEL_10;
            }

            --v5;
            goto LABEL_13;
          }

          v61 = (*(v58 + 56) + 80 * v59);
          v62 = v61[1];
          v63 = v61[7];
          v64 = v61[9];
        }

        else
        {
          swift_endAccess();
        }
      }

      ++v11;
      v13 = *(a3 + 16);
      result = REEntityGetComponentCount();
      if (v11 >= result)
      {
        goto LABEL_56;
      }
    }
  }

  if (a2)
  {
    v6 = 0;
    while (1)
    {
      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        break;
      }

      while (1)
      {
        v8 = *(a3 + 16);
        result = REEntityGetComponentCount();
        if (v5 >= result)
        {
          break;
        }

        v69[0] = a3;
        result = Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)();
        if (result)
        {
          break;
        }

        ++v5;
      }

      if (++v6 == a2)
      {
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
  }

  else
  {
LABEL_61:
    *a4 = v5;
  }

  return result;
}

void (*specialized MutableCollection<>.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(void ***a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[5] = a3;
  v7[6] = v3;
  v7[4] = a2;
  v10 = *v3;
  result = v3[1];
  v11 = *(result + 2);
  if (v11 < *v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v10 > a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v11 >= a3)
  {
    v8[2] = v10;
    v8[3] = result;
    *v8 = a2;
    v8[1] = a3;

    return MutableCollection<>.subscript.modifyspecialized ;
  }

LABEL_10:
  __break(1u);
  return result;
}

void MutableCollection<>.subscript.modifyspecialized (void ***a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = (*a1)[5];
  v8 = (*a1)[6];
  v9 = (*a1)[4];
  if (a2)
  {
    v10 = (*a1)[3];

    specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(v8, v9, v7, v3, v4, v6, v5);
  }

  else
  {
    specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)((*a1)[6], v9, v7, v3, v4, v6, v5);
  }

  v11 = v2[3];

  free(v2);
}

uint64_t specialized MutableCollection<>.subscript.modify(void *a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  v9 = *v3;
  result = DRMeshGetPartCount();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result >= a3)
  {
    v8[1] = a3;
    v8[2] = v9;
    *v8 = a2;
    v11 = v9;
    return MutableCollection<>.subscript.modifyspecialized ;
  }

LABEL_10:
  __break(1u);
  return result;
}

void MutableCollection<>.subscript.modifyspecialized (uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[3];
  if (a2)
  {
    v8 = (*a1)[2];
    specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(v6, v7, v5, v3, v4);
  }

  else
  {
    specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)((*a1)[5], v7, v5, v3, v4);
  }

  free(v2);
}

{
  MutableCollection<>.subscript.modifyspecialized (a1, a2, specialized _writeBackMutableSlice<A, B>(_:bounds:slice:));
}

{
  MutableCollection<>.subscript.modifyspecialized (a1, a2, specialized _writeBackMutableSlice<A, B>(_:bounds:slice:));
}

void (*specialized MutableCollection<>.subscript.modify(void (**a1)(uint64_t **a1, char a2), uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x30uLL);
  }

  v8 = result;
  *a1 = result;
  *(result + 4) = a3;
  *(result + 5) = v3;
  *(result + 3) = a2;
  if (a2 < 0 || (result = *v3, *(*v3 + 2) < a3))
  {
    __break(1u);
  }

  else
  {
    *(v8 + 1) = a3;
    *(v8 + 2) = result;
    *v8 = a2;

    return MutableCollection<>.subscript.modifyspecialized ;
  }

  return result;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x30uLL);
  }

  v8 = result;
  *a1 = result;
  *(result + 4) = a3;
  *(result + 5) = v3;
  *(result + 3) = a2;
  if (a2 < 0 || (result = *v3, *(*v3 + 2) < a3))
  {
    __break(1u);
  }

  else
  {
    *(v8 + 1) = a3;
    *(v8 + 2) = result;
    *v8 = a2;

    return MutableCollection<>.subscript.modifyspecialized ;
  }

  return result;
}

void MutableCollection<>.subscript.modifyspecialized (uint64_t **a1, char a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = **a1;
  v6 = (*a1)[1];
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = (*a1)[2];
  v10 = (*a1)[3];
  if (a2)
  {
    v11 = (*a1)[2];

    a3(v8, v10, v7, v5, v6, v9);
  }

  else
  {
    a3((*a1)[5], v10, v7, v5, v6, v9);
  }

  v12 = v4[2];

  free(v4);
}

uint64_t specialized MutableCollection.swapAt(_:_:)(uint64_t result, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (result != a2)
  {
    v3 = *v2;
    DRMeshGetPartAt();
    DRMeshGetPartAt();
    DRMeshSetPartAt();
    result = DRMeshSetPartAt();
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t specialized MutableCollection.swapAt(_:_:)(unint64_t result, unint64_t a2)
{
  if (result != a2)
  {
    v5 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *(v3 + 8);
      v6 = v4[2];
      if (v6 > result)
      {
        v2 = a2;
        outlined init with copy of __REAssetService(&v4[5 * result + 4], v10);
        if (v6 > v2)
        {
          outlined init with copy of __REAssetService(&v4[5 * v2 + 4], v9);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }

LABEL_11:
        __break(1u);
LABEL_12:
        v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
LABEL_6:
        v7 = &v4[5 * v5 + 4];
        __swift_destroy_boxed_opaque_existential_1(v7);
        result = outlined init with take of ForceEffectBase(v9, v7);
        *(v3 + 8) = v4;
        if (v4[2] <= v2)
        {
          __break(1u);
        }

        else
        {
          v8 = &v4[5 * v2 + 4];
          __swift_destroy_boxed_opaque_existential_1(v8);
          result = outlined init with take of ForceEffectBase(v10, v8);
          *(v3 + 8) = v4;
        }

        return result;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

{
  if (result != a2)
  {
    v6 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *v3;
      if (*(*v3 + 16) > result)
      {
        v2 = a2;
        v5 = v4 + 32;
        v7 = (v4 + 32 + 48 * result);
        v17 = *v7;
        v8 = v7[2];
        v15 = v8;
        v16 = v7[1];
        if (one-time initialization token for identity == -1)
        {
          if ((a2 & 0x8000000000000000) == 0)
          {
            goto LABEL_6;
          }

          goto LABEL_14;
        }

LABEL_13:
        swift_once();
        if ((v2 & 0x8000000000000000) == 0)
        {
LABEL_6:
          if (*(v4 + 16) > v2)
          {
            v9 = (v5 + 48 * v2);
            v13 = v9[1];
            v14 = *v9;
            v12 = v9[2];
            result = swift_isUniquelyReferenced_nonNull_native();
            *v3 = v4;
            if (result)
            {
              goto LABEL_8;
            }

            goto LABEL_16;
          }

LABEL_15:
          __break(1u);
LABEL_16:
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
          v4 = result;
          *v3 = result;
LABEL_8:
          if (*(v4 + 16) <= v6)
          {
            __break(1u);
          }

          else
          {
            v10 = (v4 + 32 + 48 * v6);
            *v10 = v14;
            v10[1] = v13;
            v10[2] = v12;
            v11 = (v4 + 32 + 48 * v2);
            *v11 = v17;
            v11[1] = v16;
            v11[2] = v15;
            *v3 = v4;
          }

          return result;
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

{
  if (result != a2)
  {
    v7 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *v3;
      v8 = *(*v3 + 16);
      if (v8 > result)
      {
        v2 = a2;
        if (v8 > a2)
        {
          v5 = *(v4 + 32 + 4 * result);
          v6 = *(v4 + 32 + 4 * a2);
          v9 = *v3;
          result = swift_isUniquelyReferenced_nonNull_native();
          *v3 = v4;
          if (result)
          {
LABEL_6:
            *(v4 + 32 + 4 * v7) = v6;
            *(v4 + 32 + 4 * v2) = v5;
            *v3 = v4;
            return result;
          }

LABEL_11:
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
          v4 = result;
          goto LABEL_6;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy17RealityFoundation15JointTransformsVAJG_So5RESRTas5NeverOTB504_s17f12Foundation15hI75V24__rk_combineForAnimation4withA2C_tFSo5RESRTa0A3Kit9TransformV_AJt_tXEfU_Tf1cn_n(float32x4_t *a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v93 = *(a2 + 16);
  v94 = a1[1].u64[0];
  if (v93 >= v94)
  {
    v4 = a1[1].u64[0];
  }

  else
  {
    v4 = *(a2 + 16);
  }

  v96 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v5 = 0x1EBEA5000uLL;
  v6 = &unk_1C1899000;
  v92 = v3;
  v95 = v2;
  if (v4)
  {
    v7 = one-time initialization token for identity;

    if (v7 != -1)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v8 = (v2 + 64);
      v3 += 4;
      v9 = *(v6 + 3216);
      v11 = v93;
      v10 = v94;
      v12 = v93;
      v13 = v94;
      v2 = v4;
      v5 = 0x1EBEA5000;
      while (v2)
      {
        if (!v13)
        {
          goto LABEL_31;
        }

        if (!v12)
        {
          goto LABEL_32;
        }

        v15 = v3[-1];
        v14 = *v3;
        v16 = v3[-2];
        v17 = v8[-2];
        v18 = v8[-1];
        v19 = *v8;
        v21 = *(v96 + 16);
        v20 = *(v96 + 24);
        v6 = v21 + 1;
        if (v21 >= v20 >> 1)
        {
          v86 = *v3;
          v89 = v9;
          v80 = v3[-2];
          v83 = v3[-1];
          v76 = v8[-1];
          v78 = *v8;
          v74 = v8[-2];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
          v17 = v74;
          v18 = v76;
          v19 = v78;
          v16 = v80;
          v15 = v83;
          v14 = v86;
          v9 = v89;
          v5 = 0x1EBEA5000;
          v11 = v93;
          v10 = v94;
        }

        v22 = vmulq_f32(v16, v17);
        v22.i32[3] = 0;
        v23 = vnegq_f32(v18);
        v24 = vtrn2q_s32(v18, vtrn1q_s32(v18, v23));
        v25 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v18, v23, 8uLL), *v15.f32, 1), vextq_s8(v24, v24, 8uLL), v15.f32[0]);
        v26 = vrev64q_s32(v18);
        v26.i32[0] = v23.i32[1];
        v26.i32[3] = v23.i32[2];
        v27 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v18, v15, 3), v26, v15, 2), v25);
        v28 = vmulq_f32(v16, v19);
        v29 = vmulq_f32(v15, v9);
        v30 = vnegq_f32(v29);
        v31 = vtrn2q_s32(v29, vtrn1q_s32(v29, v30));
        v32 = vmulq_lane_f32(vextq_s8(v29, v30, 8uLL), *v28.f32, 1);
        v33 = vrev64q_s32(v29);
        v33.i32[0] = v30.i32[1];
        v33.i32[3] = v30.i32[2];
        v34 = vmlaq_laneq_f32(vmlaq_n_f32(v32, vextq_s8(v31, v31, 8uLL), v28.f32[0]), v33, v28, 2);
        v35 = vnegq_f32(v34);
        v36 = vtrn2q_s32(v34, vtrn1q_s32(v34, v35));
        v37 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v34, v35, 8uLL), *v15.f32, 1), vextq_s8(v36, v36, 8uLL), v15.f32[0]);
        v38 = vrev64q_s32(v34);
        v38.i32[0] = v35.i32[1];
        v38.i32[3] = v35.i32[2];
        v39 = vaddq_f32(v14, vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v34, v15, 3), v38, v15, 2), v37));
        v39.i32[3] = 0;
        *(v96 + 16) = v6;
        v40 = (v96 + 48 * v21);
        --v13;
        v40[2] = v22;
        v40[3] = v27;
        v40[4] = v39;
        --v12;
        v8 += 3;
        v3 += 3;
        if (!--v2)
        {
          goto LABEL_15;
        }
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
LABEL_35:
      __break(1u);
LABEL_36:
      swift_once();
    }
  }

  v11 = v93;
  v10 = v94;
LABEL_15:
  if (v10 > v11)
  {
    v6 = 48;
    v41 = 48 * v4 + 64;
    v42 = (v95 + v41);
    v3 = (v92 + v41);
    v43 = xmmword_1C1899C90;
    v44 = &one-time initialization token for identity;
    while (v4 < v10)
    {
      v45 = v3[-2];
      v46 = v3[-1];
      v47 = *v3;
      if (*(v5 + 1512) == -1)
      {
        v2 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_34;
        }
      }

      else
      {
        v72 = v44;
        v87 = *v3;
        v90 = v43;
        v81 = v3[-2];
        v84 = v3[-1];
        swift_once();
        v45 = v81;
        v46 = v84;
        v47 = v87;
        v43 = v90;
        v44 = v72;
        v11 = v93;
        v10 = v94;
        v2 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_34;
        }
      }

      if (v11 == v4)
      {
        goto LABEL_29;
      }

      if (v4 >= v11)
      {
        goto LABEL_35;
      }

      v48 = v42[-2];
      v49 = v42[-1];
      v50 = *v42;
      v52 = *(v96 + 16);
      v51 = *(v96 + 24);
      if (v52 >= v51 >> 1)
      {
        v88 = v47;
        v91 = v43;
        v82 = v45;
        v85 = v46;
        v77 = v42[-1];
        v79 = *v42;
        v75 = v42[-2];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
        v48 = v75;
        v49 = v77;
        v50 = v79;
        v45 = v82;
        v46 = v85;
        v47 = v88;
        v44 = &one-time initialization token for identity;
        v43 = v91;
        v5 = 0x1EBEA5000;
        v11 = v93;
        v10 = v94;
      }

      ++v4;
      v42 += 3;
      v3 += 3;
      v53 = vmulq_f32(v45, v48);
      v53.i32[3] = 0;
      v54 = vnegq_f32(v49);
      v55 = vtrn2q_s32(v49, vtrn1q_s32(v49, v54));
      v56 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v49, v54, 8uLL), *v46.f32, 1), vextq_s8(v55, v55, 8uLL), v46.f32[0]);
      v57 = vrev64q_s32(v49);
      v57.i32[0] = v54.i32[1];
      v57.i32[3] = v54.i32[2];
      v58 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v49, v46, 3), v57, v46, 2), v56);
      v59 = vmulq_f32(v45, v50);
      v60 = vmulq_f32(v46, v43);
      v61 = vnegq_f32(v60);
      v62 = vtrn2q_s32(v60, vtrn1q_s32(v60, v61));
      v63 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v60, v61, 8uLL), *v59.f32, 1), vextq_s8(v62, v62, 8uLL), v59.f32[0]);
      v64 = vrev64q_s32(v60);
      v64.i32[0] = v61.i32[1];
      v64.i32[3] = v61.i32[2];
      v65 = vmlaq_laneq_f32(v63, v64, v59, 2);
      v66 = vnegq_f32(v65);
      v67 = vtrn2q_s32(v65, vtrn1q_s32(v65, v66));
      v68 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v65, v66, 8uLL), *v46.f32, 1), vextq_s8(v67, v67, 8uLL), v46.f32[0]);
      v69 = vrev64q_s32(v65);
      v69.i32[0] = v66.i32[1];
      v69.i32[3] = v66.i32[2];
      v70 = vaddq_f32(v47, vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v65, v46, 3), v69, v46, 2), v68));
      v70.i32[3] = 0;
      *(v96 + 16) = v52 + 1;
      v71 = (v96 + 48 * v52);
      v71[2] = v53;
      v71[3] = v58;
      v71[4] = v70;
      if (v2 == v10)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_33;
  }

LABEL_29:

  return v96;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy17RealityFoundation15JointTransformsVAJG_So5RESRTas5NeverOTB504_s17f12Foundation15hI84V33__rk_invertAndCombineForAnimation4withA2C_tFSo5RESRTa0A3Kit9TransformV_AJt_tXEfU_Tf1cn_n(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a1[1].u64[0];
  v5 = a2[1].u64[0];
  if (v5 >= v4)
  {
    v6 = a1[1].i64[0];
  }

  else
  {
    v6 = a2[1].i64[0];
  }

  v62 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v39 = v5;
  v40 = v4;
  v37 = v2;
  v38 = v3;
  if (v6)
  {
    v7 = one-time initialization token for identity;

    if (v7 != -1)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v2 += 4;
      v3 += 4;
      v8 = v5;
      v5 = v6;
      while (v5)
      {
        if (!v4)
        {
          goto LABEL_31;
        }

        if (!v8)
        {
          goto LABEL_32;
        }

        v43 = *v3;
        v41 = v3[-2];
        v45 = v2[-1];
        v50 = v2[-2];
        v51 = *v2;
        *v9.i64 = simd_matrix4x4(v3[-1]);
        v54 = v9;
        v56 = v10;
        v58 = v11;
        v60 = v12;
        simd_float4x4.scale(_:)(v41);
        v63.columns[2] = v58;
        v63.columns[3] = vaddq_f32(v43, v60);
        v63.columns[3].i32[3] = v60.i32[3];
        v63.columns[0] = v54;
        v63.columns[1] = v56;
        __invert_f4(v63);
        simd_matrix4x4(v45);
        simd_float4x4.scale(_:)(v50);
        REMakeSRTFromMatrix();
        v16 = v13;
        v18 = *(v62 + 16);
        v17 = *(v62 + 24);
        if (v18 >= v17 >> 1)
        {
          v50 = v15;
          v51 = v13;
          v46 = v14;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
          v14 = v46;
          v15 = v50;
          v16 = v51;
        }

        v16.i32[3] = v53.i32[3];
        v15.i32[3] = v52.i32[3];
        *(v62 + 16) = v18 + 1;
        v19 = (v62 + 48 * v18);
        --v4;
        --v8;
        v2 += 3;
        v19[2] = v16;
        v19[3] = v14;
        v19[4] = v15;
        v3 += 3;
        if (!--v5)
        {
          goto LABEL_15;
        }
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
LABEL_35:
      __break(1u);
LABEL_36:
      swift_once();
    }
  }

LABEL_15:
  v21 = v39;
  v20 = v40;
  if (v40 > v39)
  {
    v4 = v6;
    v22 = 48 * v6 + 64;
    v2 = (v37 + v22);
    v3 = (v38 + v22);
    while (v4 < v20)
    {
      v23 = v3[-2];
      v24 = v3[-1];
      v52 = v23;
      v53 = *v3;
      if (one-time initialization token for identity == -1)
      {
        v25 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_34;
        }
      }

      else
      {
        v48 = v3[-1];
        swift_once();
        v24 = v48;
        v25 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_34;
        }
      }

      if (v21 == v4)
      {
        goto LABEL_29;
      }

      if (v4 >= v21)
      {
        goto LABEL_35;
      }

      v42 = v2[-1];
      v44 = v2[-2];
      v47 = *v2;
      *v26.i64 = simd_matrix4x4(v24);
      v55 = v26;
      v57 = v27;
      v59 = v28;
      v61 = v29;
      simd_float4x4.scale(_:)(v52);
      v64.columns[2] = v59;
      v64.columns[3] = vaddq_f32(v53, v61);
      v64.columns[3].i32[3] = v61.i32[3];
      v64.columns[0] = v55;
      v64.columns[1] = v57;
      v65 = __invert_f4(v64);
      v52.i32[3] = v65.columns[2].i32[3];
      v53.i32[3] = v65.columns[3].i32[3];
      simd_matrix4x4(v42);
      simd_float4x4.scale(_:)(v44);
      REMakeSRTFromMatrix();
      v33 = v30;
      v5 = *(v62 + 16);
      v34 = *(v62 + 24);
      if (v5 >= v34 >> 1)
      {
        v52 = v32;
        v53 = v30;
        v49 = v31;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v5 + 1, 1);
        v31 = v49;
        v32 = v52;
        v33 = v53;
      }

      ++v4;
      v2 += 3;
      v3 += 3;
      v33.i32[3] = v51.i32[3];
      v32.i32[3] = v50.i32[3];
      *(v62 + 16) = v5 + 1;
      v35 = (v62 + 48 * v5);
      v35[2] = v33;
      v35[3] = v31;
      v35[4] = v32;
      v21 = v39;
      v20 = v40;
      if (v25 == v40)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_33;
  }

LABEL_29:

  return v62;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy17RealityFoundation17BlendShapeWeightsVAJG_Sfs5NeverOTB504_s17f12Foundation17hiJ52V24__rk_combineForAnimation4withA2C_tFS2f_Sft_tXEfU_Tf1cn_n(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v32 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v31 = a1;
  if (v6)
  {
    v7 = (a1 + 32);
    v8 = (a2 + 32);

    v10 = v4;
    v11 = v5;
    v12 = v5;
    v13 = v6;
    v14 = v4;
    while (v10)
    {
      if (!v12)
      {
        goto LABEL_24;
      }

      v15 = *v7;
      v16 = *v8;
      v18 = *(v32 + 16);
      v17 = *(v32 + 24);
      if (v18 >= v17 >> 1)
      {
        v27 = v11;
        v29 = result;
        v26 = v14;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v14 = v26;
        v11 = v27;
        result = v29;
      }

      ++v8;
      *(v32 + 16) = v18 + 1;
      *(v32 + 4 * v18 + 32) = v15 + v16;
      ++v7;
      --v12;
      --v10;
      if (!--v13)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {

    v14 = v4;
    v11 = v5;
LABEL_13:
    if (v14 <= v11)
    {
LABEL_22:

      return v32;
    }

    v19 = result + 32;
    while (v6 < v14)
    {
      v20 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_26;
      }

      if (v11 != v6)
      {
        if (v6 >= v11)
        {
          goto LABEL_27;
        }

        v21 = *(v31 + 32 + 4 * v6);
        v22 = *(v19 + 4 * v6);
        v24 = *(v32 + 16);
        v23 = *(v32 + 24);
        if (v24 >= v23 >> 1)
        {
          v28 = v11;
          v30 = result;
          v25 = v14;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
          v11 = v28;
          result = v30;
          v14 = v25;
        }

        *(v32 + 16) = v24 + 1;
        *(v32 + 4 * v24 + 32) = v21 + v22;
        ++v6;
        if (v20 != v14)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy17RealityFoundation17BlendShapeWeightsVAJG_Sfs5NeverOTB504_s17f12Foundation17hiJ62V27__rk_animationInterpolation7towards1tA2C_SdtFS2f_Sft_tXEfU_SfTf1cn_n(uint64_t a1, uint64_t a2, float a3)
{
  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (v7 >= v6)
  {
    v8 = *(a1 + 16);
  }

  else
  {
    v8 = *(a2 + 16);
  }

  v34 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
  v33 = a1;
  if (v8)
  {
    v9 = (a1 + 32);
    v10 = (a2 + 32);

    v12 = v6;
    v13 = v7;
    v14 = v7;
    v15 = v8;
    v16 = v6;
    while (v12)
    {
      if (!v14)
      {
        goto LABEL_24;
      }

      v17 = *v9;
      v18 = *v10;
      v20 = *(v34 + 16);
      v19 = *(v34 + 24);
      if (v20 >= v19 >> 1)
      {
        v29 = v13;
        v31 = result;
        v28 = v16;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v16 = v28;
        v13 = v29;
        result = v31;
      }

      ++v10;
      *(v34 + 16) = v20 + 1;
      *(v34 + 4 * v20 + 32) = (v17 * a3) + ((1.0 - a3) * v18);
      ++v9;
      --v14;
      --v12;
      if (!--v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {

    v16 = v6;
    v13 = v7;
LABEL_13:
    if (v16 <= v13)
    {
LABEL_22:

      return v34;
    }

    v21 = result + 32;
    while (v8 < v16)
    {
      v22 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_26;
      }

      if (v13 != v8)
      {
        if (v8 >= v13)
        {
          goto LABEL_27;
        }

        v23 = *(v33 + 32 + 4 * v8);
        v24 = *(v21 + 4 * v8);
        v26 = *(v34 + 16);
        v25 = *(v34 + 24);
        if (v26 >= v25 >> 1)
        {
          v30 = v13;
          v32 = result;
          v27 = v16;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
          v13 = v30;
          result = v32;
          v16 = v27;
        }

        *(v34 + 16) = v26 + 1;
        *(v34 + 4 * v26 + 32) = (v23 * a3) + ((1.0 - a3) * v24);
        ++v8;
        if (v22 != v16)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy17RealityFoundation15JointTransformsVAJG_0F3Kit9TransformVs5NeverOTB504_s17f12Foundation15hi55V27__rk_animationInterpolation7towards1tA2C_SdtF0A3Kit9K14VAI_AIt_tXEfU_SfTf1cn_n(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = *(a1 + 16);
  v49 = *(a2 + 16);
  if (v49 >= v4)
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = *(a2 + 16);
  }

  v52 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v47 = v2;
  v48 = v4;
  v46 = v3;
  if (v5)
  {
    v6 = one-time initialization token for identity;

    if (v6 != -1)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v7 = (v2 + 64);
      v3 += 4;
      v8 = v49;
      v2 = v5;
      while (v2)
      {
        if (!v4)
        {
          goto LABEL_31;
        }

        if (!v8)
        {
          goto LABEL_32;
        }

        v9 = *(v3 - 2);
        v10 = *(v3 - 1);
        v11 = *v3;
        v12 = *(v7 - 1);
        v13 = *v7;
        v14 = *(v7 - 2);
        RESRTLerp();
        v18 = v15;
        v20 = *(v52 + 16);
        v19 = *(v52 + 24);
        if (v20 >= v19 >> 1)
        {
          v41 = v17;
          v44 = v15;
          v39 = v16;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
          v16 = v39;
          v17 = v41;
          v18 = v44;
        }

        HIDWORD(v18) = v51;
        HIDWORD(v17) = v50;
        *(v52 + 16) = v20 + 1;
        v21 = (v52 + 48 * v20);
        --v4;
        --v8;
        v7 += 3;
        v21[2] = v18;
        v21[3] = v16;
        v21[4] = v17;
        v3 += 3;
        if (!--v2)
        {
          goto LABEL_15;
        }
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
LABEL_35:
      __break(1u);
LABEL_36:
      swift_once();
    }
  }

LABEL_15:
  v22 = v48;
  v23 = v49;
  if (v48 > v49)
  {
    v24 = 48 * v5 + 64;
    v25 = (v47 + v24);
    v3 = (v46 + v24);
    while (v5 < v22)
    {
      v26 = *(v3 - 2);
      v27 = *(v3 - 1);
      v28 = *v3;
      if (one-time initialization token for identity == -1)
      {
        v2 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_34;
        }
      }

      else
      {
        v42 = *(v3 - 1);
        swift_once();
        v2 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_34;
        }
      }

      if (v23 == v5)
      {
        goto LABEL_29;
      }

      if (v5 >= v23)
      {
        goto LABEL_35;
      }

      v29 = *(v25 - 1);
      v30 = *v25;
      v31 = *(v25 - 2);
      RESRTLerp();
      v35 = v32;
      v4 = *(v52 + 16);
      v36 = *(v52 + 24);
      if (v4 >= v36 >> 1)
      {
        v43 = v34;
        v45 = v32;
        v40 = v33;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v4 + 1, 1);
        v33 = v40;
        v34 = v43;
        v35 = v45;
      }

      ++v5;
      v25 += 3;
      v3 += 3;
      HIDWORD(v35) = v51;
      HIDWORD(v34) = v50;
      *(v52 + 16) = v4 + 1;
      v37 = (v52 + 48 * v4);
      v37[2] = v35;
      v37[3] = v33;
      v37[4] = v34;
      v22 = v48;
      v23 = v49;
      if (v2 == v48)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_33;
  }

LABEL_29:

  return v52;
}

uint64_t one-time initialization function for both()
{
  if (one-time initialization token for forwards != -1)
  {
    result = swift_once();
  }

  v0 = static AnimationFillMode.forwards;
  if (one-time initialization token for backwards != -1)
  {
    result = swift_once();
  }

  v1 = static AnimationFillMode.backwards;
  if ((static AnimationFillMode.backwards & ~v0) == 0)
  {
    v1 = 0;
  }

  static AnimationFillMode.both = v1 | v0;
  return result;
}

void *static AnimationFillMode.forwards.getter@<X0>(void *result@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X8>)
{
  if (*result != -1)
  {
    v3 = a2;
    v4 = a3;
    result = swift_once();
    a3 = v4;
    a2 = v3;
  }

  *a3 = *a2;
  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance AnimationFillMode(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *protocol witness for SetAlgebra.remove(_:) in conformance AnimationFillMode@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *protocol witness for SetAlgebra.update(with:) in conformance AnimationFillMode@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t AnimatableData.__rk_animationIdentity.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  _StringGuts.grow(_:)(38);

  v14[0] = 0xD000000000000023;
  v14[1] = 0x80000001C18EB460;
  v6 = _typeName(_:qualified:)();
  MEMORY[0x1C68F3410](v6);

  MEMORY[0x1C68F3410](46, 0xE100000000000000);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static AnimationLogger.logger);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x80000001C18EB460, v14);
    _os_log_impl(&dword_1C1358000, v8, v9, "%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1C6902A30](v11, -1, -1);
    MEMORY[0x1C6902A30](v10, -1, -1);
  }

  v12 = *(*(a1 - 8) + 16);

  return v12(a2, v3, a1);
}

uint64_t AnimatableData.__rk_animationInverse.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  _StringGuts.grow(_:)(37);

  v14[0] = 0xD000000000000022;
  v14[1] = 0x80000001C18EB490;
  v6 = _typeName(_:qualified:)();
  MEMORY[0x1C68F3410](v6);

  MEMORY[0x1C68F3410](46, 0xE100000000000000);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static AnimationLogger.logger);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001C18EB490, v14);
    _os_log_impl(&dword_1C1358000, v8, v9, "%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1C6902A30](v11, -1, -1);
    MEMORY[0x1C6902A30](v10, -1, -1);
  }

  v12 = *(*(a1 - 8) + 16);

  return v12(a2, v3, a1);
}

uint64_t AnimatableData.__rk_combineForAnimation(with:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  _StringGuts.grow(_:)(40);

  v14[0] = 0xD000000000000025;
  v14[1] = 0x80000001C18EB4C0;
  v6 = _typeName(_:qualified:)();
  MEMORY[0x1C68F3410](v6);

  MEMORY[0x1C68F3410](46, 0xE100000000000000);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static AnimationLogger.logger);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001C18EB4C0, v14);
    _os_log_impl(&dword_1C1358000, v8, v9, "%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1C6902A30](v11, -1, -1);
    MEMORY[0x1C6902A30](v10, -1, -1);
  }

  v12 = *(*(a1 - 8) + 16);

  return v12(a2, v3, a1);
}

uint64_t specialized AnimatableData.__rk_invertAndCombineForAnimation(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = specialized BidirectionalCollection.distance(from:to:)(0, v6);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v9 = v7;
    v16 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
    if ((v9 & 0x8000000000000000) == 0)
    {
      v8 = v16;
      v11 = (a2 + 32);
      while (v6)
      {
        v12 = *v11;
        v14 = *(v16 + 16);
        v13 = *(v16 + 24);
        if (v14 >= v13 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        }

        *(v16 + 16) = v14 + 1;
        *(v16 + 4 * v14 + 32) = -v12;
        --v6;
        ++v11;
        if (!--v9)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    v15 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy17RealityFoundation17BlendShapeWeightsVAJG_Sfs5NeverOTB504_s17f12Foundation17hiJ52V24__rk_combineForAnimation4withA2C_tFS2f_Sft_tXEfU_Tf1cn_n(v8, a1);

    result = swift_bridgeObjectRelease_n();
    *a3 = v15;
  }

  return result;
}

uint64_t AnimatableData.__rk_invertAndCombineForAnimation(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00]();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v11, v10);
  (*(a3 + 24))(a1, a2, a3);
  return (*(v6 + 8))(v9, a2);
}

uint64_t AnimatableData.__rk_animationInterpolation(towards:t:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  _StringGuts.grow(_:)(43);

  v14[0] = 0xD000000000000028;
  v14[1] = 0x80000001C18EB4F0;
  v6 = _typeName(_:qualified:)();
  MEMORY[0x1C68F3410](v6);

  MEMORY[0x1C68F3410](46, 0xE100000000000000);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static AnimationLogger.logger);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x80000001C18EB4F0, v14);
    _os_log_impl(&dword_1C1358000, v8, v9, "%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1C6902A30](v11, -1, -1);
    MEMORY[0x1C6902A30](v10, -1, -1);
  }

  v12 = *(*(a1 - 8) + 16);

  return v12(a2, v3, a1);
}

float protocol witness for AnimatableData.__rk_animationInverse.getter in conformance Float@<S0>(float *a1@<X8>)
{
  result = -*v1;
  *a1 = result;
  return result;
}

float protocol witness for AnimatableData.__rk_invertAndCombineForAnimation(with:) in conformance Float@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  result = *a1 - *v2;
  *a2 = result;
  return result;
}

float protocol witness for AnimatableData.__rk_animationInterpolation(towards:t:) in conformance Float@<S0>(float *a1@<X0>, float *a2@<X8>, double a3@<D0>)
{
  v4 = a3;
  result = (*a1 * v4) + ((1.0 - v4) * *v3);
  *a2 = result;
  return result;
}

double protocol witness for AnimatableData.__rk_animationInverse.getter in conformance Double@<D0>(double *a1@<X8>)
{
  result = -*v1;
  *a1 = result;
  return result;
}

double protocol witness for AnimatableData.__rk_invertAndCombineForAnimation(with:) in conformance Double@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = *a1 - *v2;
  *a2 = result;
  return result;
}

double protocol witness for AnimatableData.__rk_animationInterpolation(towards:t:) in conformance Double@<D0>(double *a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  result = *a1 * a3 + (1.0 - a3) * *v3;
  *a2 = result;
  return result;
}

float32x2_t protocol witness for AnimatableData.__rk_animationInverse.getter in conformance <> SIMD2<A>@<D0>(float32x2_t *a1@<X8>)
{
  result = vsub_f32(0, *v1);
  *a1 = result;
  return result;
}

float protocol witness for AnimatableData.__rk_animationInverse.getter in conformance <> SIMD3<A>@<S0>(_OWORD *a1@<X8>)
{
  HIDWORD(v2) = 0;
  *&v2 = vsubq_f32(0, *v1).u64[0];
  result = 0.0 - COERCE_FLOAT(v1->i64[1]);
  *(&v2 + 2) = result;
  *a1 = v2;
  return result;
}

void protocol witness for AnimatableData.__rk_animationInterpolation(towards:t:) in conformance <> SIMD3<A>(float32x4_t *a1@<X0>, _OWORD *a2@<X8>, double a3@<D0>)
{
  *&a3 = a3;
  v5 = vdupq_lane_s32(*&a3, 0);
  v5.i32[3] = 0;
  *&v6 = simd_mix(*v3, *a1, v5);
  *a2 = v6;
}

double SIMD3<>.__rk_animationInterpolation(towards:t:)(float32x4_t a1, double a2, float32x4_t a3)
{
  v3 = a2;
  *&result = vmlaq_n_f32(a3, vsubq_f32(a1, a3), v3).u64[0];
  return result;
}

float32x4_t protocol witness for AnimatableData.__rk_combineForAnimation(with:) in conformance <> SIMD4<A>@<Q0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X8>)
{
  result = vaddq_f32(*a1, *v2);
  *a2 = result;
  return result;
}

float32x4_t protocol witness for AnimatableData.__rk_invertAndCombineForAnimation(with:) in conformance <> SIMD4<A>@<Q0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X8>)
{
  v6 = *a1;
  *v4.i64 = SIMD4<>.__rk_animationInverse.getter(*v2);
  result = vaddq_f32(v6, v4);
  *a2 = result;
  return result;
}

void protocol witness for AnimatableData.__rk_animationInterpolation(towards:t:) in conformance <> SIMD4<A>(float32x4_t *a1@<X0>, _OWORD *a2@<X8>, double a3@<D0>)
{
  *&a3 = a3;
  *&v5 = simd_mix(*v3, *a1, vdupq_lane_s32(*&a3, 0));
  *a2 = v5;
}

double SIMD4<>.__rk_animationInterpolation(towards:t:)(float32x4_t a1, double a2, float32x4_t a3)
{
  v3 = a2;
  *&result = vmlaq_n_f32(a3, vsubq_f32(a1, a3), v3).u64[0];
  return result;
}

double protocol witness for AnimatableData.__rk_animationIdentity.getter in conformance simd_quatf@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for identity != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static simd_quatf.identity;
  *a1 = static simd_quatf.identity;
  return result;
}

double simd_quatf.__rk_animationIdentity.getter()
{
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  return *&static simd_quatf.identity;
}

double simd_quatf.__rk_animationInverse.getter(float32x4_t a1)
{
  v1 = vmulq_f32(a1, xmmword_1C1899C90);
  v2 = vmulq_f32(a1, a1);
  *v2.i8 = vadd_f32(*v2.i8, *&vextq_s8(v2, v2, 8uLL));
  v2.i32[0] = vadd_f32(*v2.i8, vdup_lane_s32(*v2.i8, 1)).u32[0];
  v3 = vrecpe_f32(v2.u32[0]);
  v4 = vmul_f32(v3, vrecps_f32(v2.u32[0], v3));
  *&result = vmulq_n_f32(v1, vmul_f32(v4, vrecps_f32(v2.u32[0], v4)).f32[0]).u64[0];
  return result;
}

void protocol witness for AnimatableData.__rk_invertAndCombineForAnimation(with:) in conformance simd_quatf(simd_quatf *a1@<X0>, _OWORD *a2@<X8>)
{
  v6 = *a1;
  *v4.i64 = simd_inverse(*v2);
  *&v5 = simd_mul(v4, v6);
  *a2 = v5;
}

void protocol witness for AnimatableData.__rk_animationInterpolation(towards:t:) in conformance simd_quatf(float32x4_t *a1@<X0>, _OWORD *a2@<X8>, double a3@<D0>)
{
  v5 = a3;
  simd_slerp(*v3, *a1, v5);
  *a2 = v6;
}

double protocol witness for AnimatableData.__rk_animationIdentity.getter in conformance Transform@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for identity != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  result = *&static Transform.identity;
  v2 = xmmword_1EBEB2BB0;
  v3 = xmmword_1EBEB2BC0;
  *a1 = static Transform.identity;
  a1[1] = v2;
  a1[2] = v3;
  return result;
}

double Transform.__rk_animationIdentity.getter()
{
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  return *&static Transform.identity;
}

uint64_t protocol witness for AnimatableData.__rk_animationInverse.getter in conformance Transform@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = *v1;
  result = RESRTInverse();
  if (one-time initialization token for identity != -1)
  {
    v11 = v8;
    v12 = v7;
    v10 = v9;
    result = swift_once();
    v9 = v10;
    v8 = v11;
    v7 = v12;
  }

  *a1 = v7;
  a1[1] = v8;
  a1[2] = v9;
  return result;
}

__n128 Transform.__rk_animationInverse.getter()
{
  RESRTInverse();
  if (one-time initialization token for identity != -1)
  {
    v1 = result;
    swift_once();
    return v1;
  }

  return result;
}

void protocol witness for AnimatableData.__rk_combineForAnimation(with:) in conformance Transform(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  *&v6 = specialized static Transform.* infix(_:_:)(*v2, *(v2 + 16), *(v2 + 32), *a1);
  *a2 = v6;
  a2[1] = v7;
  a2[2] = v8;
}

uint64_t protocol witness for AnimatableData.__rk_invertAndCombineForAnimation(with:) in conformance Transform@<X0>(float32x4_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v18 = a1[1];
  v20 = *a1;
  v16 = a1[2];
  *v22.columns[0].i64 = specialized simd_float4x4.init(translation:rotation:scale:)(*(v2 + 32), *(v2 + 16), COERCE_FLOAT(*v2));
  v23 = simd_inverse(v22);
  v14 = v23.columns[1];
  v15 = v23.columns[0];
  v12 = v23.columns[3];
  v13 = v23.columns[2];
  *v4.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(*v16.i64, v18, v20.f32[0]);
  v25.columns[0] = v4;
  v25.columns[1] = v5;
  v25.columns[2] = v6;
  v25.columns[3] = v7;
  v24.columns[1] = v14;
  v24.columns[0] = v15;
  v24.columns[3] = v12;
  v24.columns[2] = v13;
  simd_mul(v24, v25);
  result = REMakeSRTFromMatrix();
  if (one-time initialization token for identity != -1)
  {
    v19 = v10;
    v21 = v9;
    v17 = v11;
    result = swift_once();
    v11 = v17;
    v10 = v19;
    v9 = v21;
  }

  *a2 = v9;
  a2[1] = v10;
  a2[2] = v11;
  return result;
}

__n128 Transform.__rk_invertAndCombineForAnimation(with:)(float a1, float32x4_t a2, double a3, float a4, float32x4_t a5, double a6)
{
  *v11.columns[0].i64 = specialized simd_float4x4.init(translation:rotation:scale:)(a6, a5, a4);
  __invert_f4(v11);
  specialized simd_float4x4.init(translation:rotation:scale:)(a3, a2, a1);
  REMakeSRTFromMatrix();
  if (one-time initialization token for identity != -1)
  {
    v10 = result;
    swift_once();
    return v10;
  }

  return result;
}

uint64_t protocol witness for AnimatableData.__rk_animationInterpolation(towards:t:) in conformance Transform@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2[1];
  v5 = v2[2];
  v6 = *v2;
  v7 = a1[1];
  v8 = a1[2];
  v9 = *a1;
  result = RESRTLerp();
  if (one-time initialization token for identity != -1)
  {
    v15 = v12;
    v16 = v11;
    v14 = v13;
    result = swift_once();
    v13 = v14;
    v12 = v15;
    v11 = v16;
  }

  *a2 = v11;
  a2[1] = v12;
  a2[2] = v13;
  return result;
}

__n128 Transform.__rk_animationInterpolation(towards:t:)()
{
  RESRTLerp();
  if (one-time initialization token for identity != -1)
  {
    v1 = result;
    swift_once();
    return v1;
  }

  return result;
}

uint64_t JointTransforms.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, MEMORY[0x1E69E7CC0]);
  v5 = a1;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(v4 + 2);
    v8 = 48 * v7;
    v9 = (a1 + 64);
    do
    {
      v10 = *(v9 - 2);
      v11 = *(v9 - 1);
      v12 = *v9;
      v13 = *(v4 + 3);
      v14 = v7 + 1;
      if (v7 >= v13 >> 1)
      {
        v16 = v5;
        v20 = *(v9 - 1);
        v21 = *(v9 - 2);
        v19 = *v9;
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14, 1, v4);
        v12 = v19;
        v11 = v20;
        v10 = v21;
        v4 = v17;
        v5 = v16;
      }

      *(v4 + 2) = v14;
      v15 = &v4[v8];
      *(v15 + 2) = v10;
      *(v15 + 3) = v11;
      *(v15 + 4) = v12;
      v8 += 48;
      v9 += 3;
      v7 = v14;
      --v6;
    }

    while (v6);
  }

  *a2 = v4;
  return result;
}

uint64_t _s17RealityFoundation15JointTransformsVyACxcSTRz0A3Kit9TransformV7ElementRtzlufCSayAFG_Tt1g5@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 64);
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v11 = *(v4 - 1);
      v12 = *(v4 - 2);
      v10 = *v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
      }

      v7 = *(v5 + 2);
      v6 = *(v5 + 3);
      if (v7 >= v6 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
      }

      *(v5 + 2) = v7 + 1;
      v8 = &v5[48 * v7];
      *(v8 + 2) = v12;
      *(v8 + 3) = v11;
      *(v8 + 4) = v10;
      v4 += 3;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v5;
  return result;
}

uint64_t JointTransforms.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v30 = a3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  v10 = *(v26 + 64);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v25 - v12;
  v27 = v5;
  v28 = a1;
  (*(v5 + 16))(v8, a1, a2, v11);
  dispatch thunk of Sequence.makeIterator()();
  v29 = a2;
  swift_getAssociatedConformanceWitness();
  v31 = v13;
  v32 = AssociatedTypeWitness;
  dispatch thunk of IteratorProtocol.next()();
  if (v39)
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v16 = v33;
    v17 = v34;
    v19 = v35;
    v18 = v36;
    v20 = v37;
    v21 = v38;
    v14 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
      }

      v23 = *(v14 + 2);
      v22 = *(v14 + 3);
      if (v23 >= v22 >> 1)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v14);
      }

      *(v14 + 2) = v23 + 1;
      v24 = &v14[48 * v23];
      *(v24 + 4) = v16;
      *(v24 + 5) = v17;
      *(v24 + 6) = v19;
      *(v24 + 7) = v18;
      *(v24 + 8) = v20;
      *(v24 + 9) = v21;
      dispatch thunk of IteratorProtocol.next()();
      v16 = v33;
      v17 = v34;
      v19 = v35;
      v18 = v36;
      v20 = v37;
      v21 = v38;
    }

    while ((v39 & 1) == 0);
  }

  (*(v27 + 8))(v28, v29);
  result = (*(v26 + 8))(v31, v32);
  *v30 = v14;
  return result;
}

__n128 JointTransforms.subscript.getter(unint64_t a1, __n128 result)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(*v2 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = *v2 + 48 * a1;
  result = *(v3 + 32);
  v4 = *(v3 + 48);
  v5 = *(v3 + 64);
  if (one-time initialization token for identity != -1)
  {
LABEL_7:
    v6 = result;
    swift_once();
    return v6;
  }

  return result;
}

uint64_t key path getter for JointTransforms.subscript(_:) : JointTransforms@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, __n128 *a3@<X8>, __n128 a4@<Q0>, __n128 a5@<Q1>, __n128 a6@<Q2>)
{
  v6 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v6 >= *(*result + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = (*result + 48 * v6);
  a4 = v7[2];
  a5 = v7[3];
  a6 = v7[4];
  if (one-time initialization token for identity != -1)
  {
LABEL_7:
    v8 = a3;
    v10 = a5;
    v11 = a4;
    v9 = a6;
    result = swift_once();
    a6 = v9;
    a5 = v10;
    a4 = v11;
    a3 = v8;
  }

  *a3 = a4;
  a3[1] = a5;
  a3[2] = a6;
  return result;
}

uint64_t key path setter for JointTransforms.subscript(_:) : JointTransforms(__int128 *a1, uint64_t *a2, unint64_t *a3)
{
  v4 = *a3;
  v9 = a1[1];
  v10 = *a1;
  v8 = a1[2];
  v5 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v5;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  v5 = result;
  *a2 = result;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v4 < *(v5 + 16))
  {
    v7 = (v5 + 48 * v4);
    v7[2] = v10;
    v7[3] = v9;
    v7[4] = v8;
    *a2 = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t JointTransforms.subscript.setter(unint64_t a1, __n128 a2, __n128 a3, __n128 a4)
{
  v6 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (result)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  v6 = result;
  *v4 = result;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v6 + 16) > a1)
  {
    v8 = (v6 + 48 * a1);
    v8[2] = a2;
    v8[3] = a3;
    v8[4] = a4;
    *v4 = v6;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void (*JointTransforms.subscript.modify(void *a1, unint64_t a2))(__int128 **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x48uLL);
  }

  v9 = v5;
  *a1 = v5;
  v5[6] = a2;
  v5[7] = v2;
  v10 = *v2;
  v5[8] = *v2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(v10 + 16) <= a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = (v10 + 48 * a2);
  v6 = v11[2];
  v7 = v11[3];
  v8 = v11[4];
  if (one-time initialization token for identity != -1)
  {
LABEL_10:
    v14 = v7;
    v15 = v6;
    v13 = v8;
    swift_once();
    v8 = v13;
    v7 = v14;
    v6 = v15;
  }

  *v9 = v6;
  v9[1] = v7;
  v9[2] = v8;
  return JointTransforms.subscript.modify;
}

void JointTransforms.subscript.modify(__int128 **a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 7);
  v4 = *(*a1 + 8);
  v13 = (*a1)[1];
  v14 = **a1;
  v12 = (*a1)[2];
  LOBYTE(v6) = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v4;
  v7 = *(v3 + 8);
  if (a2)
  {
    if ((v6 & 1) == 0)
    {
      v10 = *(v3 + 7);
      v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      *v10 = v7;
    }

    v6 = *(v3 + 6);
    if (*(v7 + 2) > v6)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if ((v6 & 1) == 0)
  {
    v11 = *(v3 + 7);
    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    *v11 = v7;
  }

  v6 = *(v3 + 6);
  if (*(v7 + 2) <= v6)
  {
    __break(1u);
    return;
  }

LABEL_9:
  v8 = *(v3 + 7);
  v9 = &v7[48 * v6];
  *(v9 + 2) = v14;
  *(v9 + 3) = v13;
  *(v9 + 4) = v12;
  *v8 = v7;

  free(v3);
}

Swift::Int __swiftcall JointTransforms.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall JointTransforms.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

BOOL specialized Sequence<>.elementsEqual<A>(_:)(_BOOL8 result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  v4 = *(result + 16);
  while (1)
  {
    if (v3 == v2)
    {
      return v4 == v2;
    }

    if (v2 >= v3)
    {
      break;
    }

    if (__OFADD__(v2, 1))
    {
      goto LABEL_10;
    }

    if (v4 != v2)
    {
      v5 = *(a2 + 32 + 4 * v2);
      v6 = *(result + 32 + 4 * v2++);
      if (v5 == v6)
      {
        continue;
      }
    }

    return 0;
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t specialized Sequence<>.elementsEqual<A>(_:)(float32x4_t *a1, uint64_t a2)
{
  v3 = a1[1].i64[0];
  v26 = a2 + 32;
  v27 = *(a2 + 16);

  v5 = 0;
  v6 = a1 + 4;
  while (1)
  {
    v7 = v27;
    if (v5 != v27)
    {
      break;
    }

    if (!v3)
    {
      v22 = 1;
      goto LABEL_21;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = v27;
LABEL_9:
    v16 = v6[-2];
    v17 = v6[-1];
    v18 = *v6;
    if (one-time initialization token for identity == -1)
    {
      if (v5 == v7)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v24 = v6[-1];
      v25 = v6[-2];
      v23 = *v6;
      swift_once();
      v18 = v23;
      v17 = v24;
      v16 = v25;
      if (v5 == v27)
      {
LABEL_19:
        v22 = 0;
LABEL_21:

        goto LABEL_22;
      }
    }

    v19.i64[0] = v13;
    v19.i64[1] = v12;
    v20.i64[0] = v11;
    v20.i64[1] = v10;
    v21.i64[0] = v9;
    v21.i64[1] = v8;
    result = specialized static Transform.== infix(_:_:)(v19, v20, v21, v16, v17, v18);
    --v3;
    v6 += 3;
    v5 = v14;
    if ((result & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if (v5 < v27)
  {
    v15 = (v26 + 48 * v5);
    v13 = *v15;
    v12 = v15[1];
    v11 = v15[2];
    v10 = v15[3];
    v9 = v15[4];
    v8 = v15[5];
    if (one-time initialization token for identity == -1)
    {
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      swift_once();
      v7 = v27;
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_17:
        __break(1u);
LABEL_18:

        v22 = 0;
LABEL_22:

        return v22;
      }
    }

    if (!v3)
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance JointTransforms(__int128 *a1, unint64_t *a2)
{
  v8 = a1[1];
  v9 = *a1;
  v7 = a1[2];
  v3 = *a2;
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  v4 = result;
  *v2 = result;
  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v3 < *(v4 + 16))
  {
    v6 = (v4 + 48 * v3);
    v6[2] = v9;
    v6[3] = v8;
    v6[4] = v7;
    *v2 = v4;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance JointTransforms(void *a1, unint64_t *a2))()
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
  v4[4] = JointTransforms.subscript.modify(v4, *a2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance JointTransforms(uint64_t *a1, uint64_t *a2))()
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
  *(v4 + 32) = specialized MutableCollection<>.subscript.modify(v4, *a2, a2[1]);
  return protocol witness for AnimationDefinition.bindTarget.modify in conformance FromToByAnimation<A>;
}

unint64_t protocol witness for MutableCollection.partition(by:) in conformance JointTransforms@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = specialized MutableCollection<>._partitionImpl(by:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t protocol witness for AnimatableData.__rk_animationIdentity.getter in conformance JointTransforms@<X0>(char **a1@<X8>)
{
  v3 = *v1;
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v8 = xmmword_1EBEB2BB0;
  v9 = static Transform.identity;
  v7 = xmmword_1EBEB2BC0;
  v4 = specialized BidirectionalCollection.distance(from:to:)(0, *(v3 + 16));
  v5 = _sSa9repeating5countSayxGx_SitcfC10RealityKit9TransformV_Tt1g5(v4, v9, v8, v7);

  return _s17RealityFoundation15JointTransformsVyACxcSTRz0A3Kit9TransformV7ElementRtzlufCSayAFG_Tt1g5(v5, a1);
}

uint64_t JointTransforms.__rk_animationIdentity.getter@<X0>(char **a1@<X8>)
{
  v3 = *v1;
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v10 = xmmword_1EBEB2BB0;
  v11 = static Transform.identity;
  v9 = xmmword_1EBEB2BC0;
  result = specialized BidirectionalCollection.distance(from:to:)(0, *(v3 + 16));
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (result)
    {
      v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v6 + 16) = v5;
      v7 = 32;
      do
      {
        v8 = (v6 + v7);
        *v8 = v11;
        v8[1] = v10;
        v8[2] = v9;
        v7 += 48;
        --v5;
      }

      while (v5);
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    return _s17RealityFoundation15JointTransformsVyACxcSTRz0A3Kit9TransformV7ElementRtzlufCSayAFG_Tt1g5(v6, a1);
  }

  return result;
}

uint64_t JointTransforms.__rk_animationInverse.getter@<X0>(char **a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v24 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v24;
    if (one-time initialization token for identity != -1)
    {
      goto LABEL_12;
    }

    while (1)
    {
      v6 = 0;
      v7 = (v3 + 64);
      while (v6 < *(v3 + 16))
      {
        v8 = *(v7 - 1);
        v9 = *v7;
        v10 = *(v7 - 2);
        RESRTInverse();
        v14 = v11;
        v16 = *(v24 + 16);
        v15 = *(v24 + 24);
        if (v16 >= v15 >> 1)
        {
          v20 = v13;
          v21 = v11;
          v19 = v12;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
          v12 = v19;
          v13 = v20;
          v14 = v21;
        }

        HIDWORD(v14) = v22;
        HIDWORD(v13) = v23;
        ++v6;
        *(v24 + 16) = v16 + 1;
        v17 = (v24 + 48 * v16);
        v17[2] = v14;
        v17[3] = v12;
        v17[4] = v13;
        v7 += 3;
        if (v4 == v6)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_12:
      swift_once();
    }
  }

LABEL_8:

  return _s17RealityFoundation15JointTransformsVyACxcSTRz0A3Kit9TransformV7ElementRtzlufCSayAFG_Tt1g5(v5, a1);
}

uint64_t protocol witness for AnimatableData.__rk_animationInterpolation(towards:t:) in conformance JointTransforms@<X0>(unint64_t *a1@<X0>, char **a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;

  v6 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy17RealityFoundation15JointTransformsVAJG_0F3Kit9TransformVs5NeverOTB504_s17f12Foundation15hi55V27__rk_animationInterpolation7towards1tA2C_SdtF0A3Kit9K14VAI_AIt_tXEfU_SfTf1cn_n(v5, v4);

  return _s17RealityFoundation15JointTransformsVyACxcSTRz0A3Kit9TransformV7ElementRtzlufCSayAFG_Tt1g5(v6, a2);
}

RealityFoundation::JointTransforms __swiftcall JointTransforms.__rk_animationInterpolation(towards:t:)(RealityFoundation::JointTransforms towards, Swift::Double t)
{
  v4 = v2;
  v5 = *towards.coreTransforms._rawValue;
  v6 = *v3;

  v7 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy17RealityFoundation15JointTransformsVAJG_0F3Kit9TransformVs5NeverOTB504_s17f12Foundation15hi55V27__rk_animationInterpolation7towards1tA2C_SdtF0A3Kit9K14VAI_AIt_tXEfU_SfTf1cn_n(v6, v5);

  return _s17RealityFoundation15JointTransformsVyACxcSTRz0A3Kit9TransformV7ElementRtzlufCSayAFG_Tt1g5(v7, v4);
}

void (*protocol witness for Collection.subscript.read in conformance JointTransforms(uint64_t *a1, unint64_t *a2))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v9 = v5;
  *a1 = v5;
  v10 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v10 >= *(*v2 + 16))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = (*v2 + 48 * v10);
  v6 = v11[2];
  v7 = v11[3];
  v8 = v11[4];
  if (one-time initialization token for identity != -1)
  {
LABEL_10:
    v14 = v7;
    v15 = v6;
    v13 = v8;
    swift_once();
    v8 = v13;
    v7 = v14;
    v6 = v15;
  }

  *v9 = v6;
  v9[1] = v7;
  v9[2] = v8;
  return protocol witness for Collection.subscript.read in conformance LowLevelMesh.PartsCollection;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance JointTransforms()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance JointTransforms.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance JointTransforms.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance JointTransforms.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance JointTransforms.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance JointTransforms.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance JointTransforms.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance JointTransforms.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JointTransforms.CodingKeys and conformance JointTransforms.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance JointTransforms.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JointTransforms.CodingKeys and conformance JointTransforms.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JointTransforms.init(from:)@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation15JointTransformsV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation15JointTransformsV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type JointTransforms.CodingKeys and conformance JointTransforms.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    KeyedDecodingContainer.nestedUnkeyedContainer(forKey:)();
    v28 = v6;
    v19 = a2;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v11 = dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter();
    v12 = MEMORY[0x1E69E7CC0];
    if ((v11 & 1) == 0)
    {
      do
      {
        __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
        lazy protocol witness table accessor for type Transform and conformance Transform();
        dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
        v21 = v24;
        v22 = v23;
        v20 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
        }

        v15 = *(v12 + 2);
        v14 = *(v12 + 3);
        if (v15 >= v14 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
        }

        *(v12 + 2) = v15 + 1;
        v16 = &v12[48 * v15];
        v17 = v21;
        *(v16 + 2) = v22;
        *(v16 + 3) = v17;
        *(v16 + 4) = v20;
        __swift_project_boxed_opaque_existential_1(v26, v27);
      }

      while ((dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter() & 1) == 0);
    }

    (*(v28 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(v26);
    *v19 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t JointTransforms.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation15JointTransformsV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation15JointTransformsV10CodingKeysOGMR);
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type JointTransforms.CodingKeys and conformance JointTransforms.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v26 = v4;
  v20 = v7;
  result = KeyedEncodingContainer.nestedUnkeyedContainer(forKey:)();
  v11 = *(v8 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = (v8 + 64);
    while (v12 < *(v8 + 16))
    {
      v14 = *(v13 - 2);
      v15 = *(v13 - 1);
      v16 = *v13;
      if (one-time initialization token for identity != -1)
      {
        v18 = *(v13 - 1);
        v19 = v14;
        v17 = v16;
        swift_once();
        v16 = v17;
        v15 = v18;
        v14 = v19;
      }

      v22 = v14;
      v23 = v15;
      v24 = v16;
      __swift_mutable_project_boxed_opaque_existential_1(v25, v25[3]);
      lazy protocol witness table accessor for type Transform and conformance Transform();
      result = dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      if (!v2)
      {
        ++v12;
        v13 += 3;
        if (v11 != v12)
        {
          continue;
        }
      }

      goto LABEL_8;
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    (*(v21 + 8))(v20, v26);
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  return result;
}

uint64_t BlendShapeWeights.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, MEMORY[0x1E69E7CC0]);
  v5 = a1;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = (a1 + 32);
    v8 = *(v4 + 2);
    do
    {
      v9 = *v7;
      v10 = *(v4 + 3);
      if (v8 >= v10 >> 1)
      {
        v11 = v5;
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v8 + 1, 1, v4);
        v5 = v11;
      }

      *(v4 + 2) = v8 + 1;
      *&v4[4 * v8 + 32] = v9;
      ++v7;
      ++v8;
      --v6;
    }

    while (v6);
  }

  *a2 = v4;
  return result;
}

uint64_t BlendShapeWeights.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v20 = a3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v20 - v13;
  (*(v5 + 16))(v8, a1, a2, v12);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  if (v22)
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v17 = v21;
    v15 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
      }

      v19 = *(v15 + 2);
      v18 = *(v15 + 3);
      if (v19 >= v18 >> 1)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v15);
      }

      *(v15 + 2) = v19 + 1;
      *&v15[4 * v19 + 32] = v17;
      dispatch thunk of IteratorProtocol.next()();
      v17 = v21;
    }

    while ((v22 & 1) == 0);
  }

  (*(v5 + 8))(a1, a2);
  result = (*(v10 + 8))(v14, AssociatedTypeWitness);
  *v20 = v15;
  return result;
}

unint64_t BlendShapeWeights.subscript.getter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v1 + 16) > result)
  {
    v2 = *(*v1 + 4 * result + 32);
    return result;
  }

  __break(1u);
  return result;
}

uint64_t key path setter for BlendShapeWeights.subscript(_:) : BlendShapeWeights(int *a1, uint64_t *a2, unint64_t *a3)
{
  v4 = *a3;
  v5 = *a1;
  v6 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v6;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  v6 = result;
  *a2 = result;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v4 < *(v6 + 16))
  {
    *(v6 + 4 * v4 + 32) = v5;
    *a2 = v6;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t BlendShapeWeights.subscript.setter(unint64_t a1, float a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (result)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  v5 = result;
  *v2 = result;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v5 + 16) > a1)
  {
    *(v5 + 4 * a1 + 32) = a2;
    *v2 = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t (*BlendShapeWeights.subscript.modify(uint64_t (*result)(uint64_t *a1, char a2), unint64_t a2))(uint64_t *a1, char a2)
{
  *result = a2;
  *(result + 1) = v2;
  v3 = *v2;
  *(result + 2) = *v2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v3 + 16) > a2)
  {
    *(result + 6) = *(v3 + 4 * a2 + 32);
    return BlendShapeWeights.subscript.modify;
  }

  __break(1u);
  return result;
}

uint64_t BlendShapeWeights.subscript.modify(uint64_t *a1, char a2)
{
  v4 = *(a1 + 6);
  v6 = a1[1];
  v5 = a1[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v5;
  if (a2)
  {
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
      v5 = result;
      *v6 = result;
    }

    v8 = *a1;
    if (*(v5 + 16) > *a1)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    *v6 = result;
  }

  v8 = *a1;
  if (*(v5 + 16) > *a1)
  {
LABEL_9:
    *(v5 + 4 * v8 + 32) = v4;
    *v6 = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance BlendShapeWeights.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6769655765726F63 && a2 == 0xEB00000000737468)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance BlendShapeWeights.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BlendShapeWeights.CodingKeys and conformance BlendShapeWeights.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance BlendShapeWeights.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BlendShapeWeights.CodingKeys and conformance BlendShapeWeights.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance BlendShapeWeights(int *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  v5 = result;
  *v2 = result;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v4 < *(v5 + 16))
  {
    *(v5 + 4 * v4 + 32) = v3;
    *v2 = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance BlendShapeWeights(uint64_t *a1, unint64_t *a2))()
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
  *(v4 + 32) = BlendShapeWeights.subscript.modify(v4, *a2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance JointTransforms(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void, void, void, void, void))
{
  a5(v5, *a2, a2[1], *a1, a1[1], a1[2]);
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance BlendShapeWeights(uint64_t *a1, uint64_t *a2))()
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
  *(v4 + 32) = specialized MutableCollection<>.subscript.modify(v4, *a2, a2[1]);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

unint64_t protocol witness for MutableCollection.partition(by:) in conformance BlendShapeWeights@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = specialized MutableCollection<>._partitionImpl(by:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t protocol witness for AnimatableData.__rk_animationIdentity.getter in conformance BlendShapeWeights@<X0>(uint64_t *a1@<X8>)
{
  v3 = specialized BidirectionalCollection.distance(from:to:)(0, *(*v1 + 16));
  result = _sSa9repeating5countSayxGx_SitcfCSf_Tt1g5(v3, 0);
  *a1 = result;
  return result;
}

void BlendShapeWeights.__rk_animationIdentity.getter(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = *(*v1 + 16);
    v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v5 + 16) = v3;
    bzero((v5 + 32), 4 * v3);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v5;
}

void BlendShapeWeights.__rk_animationInverse.getter(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v10 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v6 = 0;
    v5 = v10;
    while (v6 < *(v3 + 16))
    {
      v7 = *(v3 + 32 + 4 * v6);
      v11 = v5;
      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
      if (v9 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
        v5 = v11;
      }

      ++v6;
      *(v5 + 16) = v9 + 1;
      *(v5 + 4 * v9 + 32) = -v7;
      if (v4 == v6)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    *a1 = v5;
  }
}

uint64_t protocol witness for AnimatableData.__rk_combineForAnimation(with:) in conformance JointTransforms@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = *v3;

  v8 = a2(v7, v6);

  *a3 = v8;
  return result;
}

uint64_t JointTransforms.__rk_combineForAnimation(with:)@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = *v3;

  v8 = a2(v7, v6);

  *a3 = v8;
  return result;
}

uint64_t protocol witness for AnimatableData.__rk_animationInterpolation(towards:t:) in conformance BlendShapeWeights@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v5 = *a1;
  v6 = *v3;
  v7 = a3;

  v8 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy17RealityFoundation17BlendShapeWeightsVAJG_Sfs5NeverOTB504_s17f12Foundation17hiJ62V27__rk_animationInterpolation7towards1tA2C_SdtFS2f_Sft_tXEfU_SfTf1cn_n(v6, v5, v7);

  *a2 = v8;
  return result;
}

RealityFoundation::BlendShapeWeights __swiftcall BlendShapeWeights.__rk_animationInterpolation(towards:t:)(RealityFoundation::BlendShapeWeights towards, Swift::Double t)
{
  v4 = v2;
  v5 = *towards.coreWeights._rawValue;
  v6 = *v3;
  v7 = t;

  v8 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy17RealityFoundation17BlendShapeWeightsVAJG_Sfs5NeverOTB504_s17f12Foundation17hiJ62V27__rk_animationInterpolation7towards1tA2C_SdtFS2f_Sft_tXEfU_SfTf1cn_n(v6, v5, v7);

  *v4 = v8;
  return result;
}

_DWORD *protocol witness for Collection.subscript.read in conformance BlendShapeWeights(_DWORD *result, unint64_t *a2)
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    *result = *(*v2 + 4 * v3 + 32);
    return destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection.subscript.getter in conformance JointTransforms@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], result = *v2, (*v2)[2] < v4))
  {
    __break(1u);
  }

  else
  {
    a2[1] = v4;
    a2[2] = result;
    *a2 = v3;
  }

  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance BlendShapeWeights()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t BlendShapeWeights.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation17BlendShapeWeightsV10CodingKeys33_A47DEEE329ED0F76D87CB8865E731869LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation17BlendShapeWeightsV10CodingKeys33_A47DEEE329ED0F76D87CB8865E731869LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type BlendShapeWeights.CodingKeys and conformance BlendShapeWeights.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
  lazy protocol witness table accessor for type [Float] and conformance <A> [A](&lazy protocol witness table cache variable for type [Float] and conformance <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v4 + 8))(v7, v3);
}

uint64_t BlendShapeWeights.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation17BlendShapeWeightsV10CodingKeys33_A47DEEE329ED0F76D87CB8865E731869LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation17BlendShapeWeightsV10CodingKeys33_A47DEEE329ED0F76D87CB8865E731869LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type BlendShapeWeights.CodingKeys and conformance BlendShapeWeights.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    lazy protocol witness table accessor for type [Float] and conformance <A> [A](&lazy protocol witness table cache variable for type [Float] and conformance <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t TimelineDefinition.resource.getter()
{
  if (!*(v0 + 16))
  {
    return 0;
  }

  v1 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 120, v10);
  v2 = v11;
  v3 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  (*(v3 + 32))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v10);
  result = RETimelineDefinitionCreateTimelineAsset();
  if (result)
  {
    v5 = result;
    RETimelineDefinitionGetName();
    v6 = String.init(cString:)();
    v8 = v7;
    type metadata accessor for AnimationResource();
    v9 = swift_allocObject();
    v9[2] = v5;
    v9[3] = v6;
    v9[4] = v8;
    RERetain();
    REAssetSetSwiftObject();
    RERelease();
    return v9;
  }

  return result;
}

Swift::Void __swiftcall TimelineClipProperties.writeProperties(_:)(Swift::OpaquePointer a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = v1[7];
  v26 = v1[6];
  v27 = v3;
  v28 = v1[8];
  v29 = *(v1 + 18);
  v4 = v1[3];
  v22 = v1[2];
  v23 = v4;
  v5 = v1[5];
  v24 = v1[4];
  v25 = v5;
  v6 = v1[1];
  v20 = *v1;
  v21 = v6;
  outlined init with copy of TimelineBaseProperties(&v26, v18);
  TimelineBaseProperties.writeProperties(_:)(a1);
  v7 = v1[7];
  v30[0] = v1[6];
  v30[1] = v7;
  v30[2] = v1[8];
  v31 = *(v1 + 18);
  outlined destroy of TimelineBaseProperties(v30);
  if ((BYTE9(v20) & 1) == 0)
  {
    if (BYTE8(v20))
    {
      goto LABEL_8;
    }

    ClipStart = &v20;
    goto LABEL_7;
  }

  if (*(v29 + 16))
  {
    ClipStart = RETimelineDefinitionGetClipStart();
    if (ClipStart)
    {
LABEL_7:
      *&v18[0] = *ClipStart;
      RETimelineDefinitionSetClipStart();
    }
  }

LABEL_8:
  if ((BYTE9(v21) & 1) == 0)
  {
    if (BYTE8(v21))
    {
      goto LABEL_15;
    }

    v10 = v21;
    goto LABEL_14;
  }

  if (*(v29 + 16))
  {
    ClipEnd = RETimelineDefinitionGetClipEnd();
    if (ClipEnd)
    {
      v10 = *ClipEnd;
LABEL_14:
      *&v18[0] = v10;
      RETimelineDefinitionSetClipEnd();
    }
  }

LABEL_15:
  if (BYTE9(v22))
  {
    if (*(v29 + 16))
    {
      ClipDuration = RETimelineDefinitionGetClipDuration();
      if (ClipDuration)
      {
        v12 = *ClipDuration;
LABEL_21:
        *&v18[0] = v12;
        RETimelineDefinitionSetClipDuration();
      }
    }
  }

  else if ((BYTE8(v22) & 1) == 0)
  {
    v12 = v22;
    goto LABEL_21;
  }

  if (BYTE8(v23))
  {
    if (*(v29 + 16))
    {
      v13 = *(v29 + 16);
      if (RETimelineDefinitionGetTimelineType() == 2)
      {
        RETimelineDefinitionGetClipOffset();
      }
    }
  }

  RETimelineDefinitionSetClipOffset();
  if (BYTE8(v24))
  {
    if (*(v29 + 16))
    {
      v14 = *(v29 + 16);
      if (RETimelineDefinitionGetTimelineType() == 2)
      {
        RETimelineDefinitionGetClipDelay();
      }
    }
  }

  RETimelineDefinitionSetClipDelay();
  if (v25)
  {
    if (*(v29 + 16))
    {
      v15 = *(v29 + 16);
      if (RETimelineDefinitionGetTimelineType() == 2)
      {
        RETimelineDefinitionGetClipSpeed();
      }
    }
  }

  RETimelineDefinitionSetClipSpeed();
  v18[6] = v26;
  v18[7] = v27;
  v18[8] = v28;
  v19 = v29;
  v18[2] = v22;
  v18[3] = v23;
  v18[4] = v24;
  v18[5] = v25;
  v18[0] = v20;
  v18[1] = v21;
  AnyActionAnimation.repeatMode.getter(&v17);
  RETimelineDefinitionSetClipLoopBehavior();
  v16 = *MEMORY[0x1E69E9840];
}

uint64_t closure #1 in TimelineClipProperties.createClip()@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v4 + 120, v12);
  v5 = v13;
  v6 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  (*(v6 + 32))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v12);
  if (a1[13])
  {
    v7 = a1[12];
    v8 = a1[13];
  }

  else if (*(a1[18] + 16))
  {
    RETimelineDefinitionGetName();
    String.init(cString:)();
  }

  String.utf8CString.getter();

  TimelineClip = RETimelineDefinitionCreateTimelineClip();

  TimelineClipProperties.writeProperties(_:)(TimelineClip);
  type metadata accessor for TimelineDefinition();
  *(swift_initStackObject() + 16) = TimelineClip;
  RERetain();
  v10 = TimelineDefinition.resource.getter();
  swift_setDeallocating();
  RERelease();
  *a2 = v10;
  return RERelease();
}

uint64_t AnimationDefinition.trimmed(start:end:duration:)@<X0>(char a1@<W1>, uint64_t a2@<X2>, char a3@<W3>, char a4@<W5>, uint64_t a5@<X6>, void (**a6)(void, void, void, void)@<X7>, char *a7@<X8>)
{
  v14 = *(a5 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00]();
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = &v26 - v20;
  v22 = *(v14 + 16);
  if (v23 & 1) != 0 && (a3 & 1) != 0 && (a4)
  {

    return v22(a7, v18, a5);
  }

  else
  {
    v27 = v17;
    v25 = v16;
    v22(&v26 - v20, v18, a5);
    a6[14](v25, a1 & 1, a5, a6);
    a6[17](a2, a3 & 1, a5, a6);
    if (a1 & 1) != 0 || (a3)
    {
      a6[20](v27, a4 & 1, a5, a6);
    }

    return (*(v14 + 32))(a7, v21, a5);
  }
}

uint64_t AnimationDefinition.repeated(count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  (*(*(a1 - 8) + 16))(a3, v4, a1);
  v8 = (*(a2 + 272))(a1, a2);
  (*(a2 + 160))(v8 * a4, 0, a1, a2);
  v10 = 1;
  return (*(a2 + 256))(&v10, a1, a2);
}

uint64_t AnimationDefinition.repeated(count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a2 - 8) + 16))(a4, v4, a2);
  v8 = (*(a3 + 272))(a2, a3);
  (*(a3 + 160))(v8 * a1, 0, a2, a3);
  v10 = 1;
  return (*(a3 + 256))(&v10, a2, a3);
}

uint64_t AnimationDefinition.repeatingForever()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a1 - 8) + 16))(a3, v3, a1);
  (*(a2 + 160))(0x7FF0000000000000, 0, a1, a2);
  v7 = 1;
  return (*(a2 + 256))(&v7, a1, a2);
}

uint64_t protocol witness for AnimationDefinition.bindTarget.getter in conformance InvalidAnimationDefinition@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 40);
  *(a1 + 16) = v4;
  return outlined copy of BindTarget(v2, v3, v4);
}

uint64_t protocol witness for AnimationDefinition.bindTarget.setter in conformance InvalidAnimationDefinition(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of BindTarget(*(v1 + 24), *(v1 + 32), *(v1 + 40));
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return result;
}

uint64_t protocol witness for AnimationDefinition.trimEnd.getter in conformance InvalidAnimationDefinition()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t protocol witness for AnimationDefinition.trimEnd.setter in conformance InvalidAnimationDefinition(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t protocol witness for AnimationDefinition.trimDuration.getter in conformance InvalidAnimationDefinition()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t protocol witness for AnimationDefinition.trimDuration.setter in conformance InvalidAnimationDefinition(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t protocol witness for AnimationDefinitionInternal.generate() in conformance InvalidAnimationDefinition()
{
  lazy protocol witness table accessor for type AnimationError and conformance AnimationError();
  swift_allocError();
  *v0 = 0xD00000000000001CLL;
  *(v0 + 8) = 0x80000001C18DE2F0;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

uint64_t specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a1[1];
  v13 = v12[2];
  if (v13 < *a1)
  {
    goto LABEL_24;
  }

  v7 = a2;
  if (*a1 > a2)
  {
    goto LABEL_25;
  }

  v11 = a3;
  if (v13 < a3)
  {
    goto LABEL_26;
  }

  v9 = a5;
  v8 = a4;
  v10 = a1;
  v14 = a1[1];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v23 = v10;
    v10[1] = v12;
    v16 = v8 == v9;
    v17 = v7 == v11;
    if (v7 == v11 || v8 == v9)
    {
      break;
    }

    v18 = &v12[5 * v7 + 4];
    v19 = v11 - 1;
    v11 = a7 + 40 * v8 + 32;
    v20 = (v9 - 1);
    v21 = v7;
    v10 = v8;
    while (v10 < v9)
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_20;
      }

      if (v10 >= *(a7 + 16))
      {
        goto LABEL_21;
      }

      outlined init with copy of __REAssetService(v11, v25);
      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_22;
      }

      if (v21 >= v12[2])
      {
        goto LABEL_23;
      }

      __swift_destroy_boxed_opaque_existential_1(v18);
      result = outlined init with take of ForceEffectBase(v25, v18);
      v16 = v20 == v10;
      v17 = v19 == v21;
      if (v19 != v21)
      {
        ++v21;
        v18 += 5;
        v11 += 40;
        v22 = v20 == v10;
        v10 = (v10 + 1);
        if (!v22)
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
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
    v12 = result;
  }

LABEL_16:
  v23[1] = v12;
  if (!v17)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (!v16)
  {
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  result = DRMeshGetPartCount();
  if (result < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a2 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (result < a3)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11 = a4 == a5;
  v12 = a2 == a3;
  if (a2 != a3 && a4 != a5)
  {
    v13 = a5 - 1;
    while (a4 < a5)
    {
      DRMeshGetPartAt();
      result = DRMeshSetPartAt();
      v14 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_18;
      }

      v11 = v13 == a4;
      v15 = v14 == a3;
      v12 = v14 == a3;
      if (!v15)
      {
        ++a2;
        v15 = v13 == a4++;
        if (!v15)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    __break(1u);
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (!v12)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  if (!v11)
  {
    goto LABEL_23;
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}