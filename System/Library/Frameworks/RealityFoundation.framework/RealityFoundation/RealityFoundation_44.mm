uint64_t specialized Entity.MetricUtilitiesBase.materialCounts.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  REMeshComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_s5Int32VTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  if (!ComponentByClass)
  {
    return v4;
  }

  v5 = *(a1 + 16);
  REMeshComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
    return v4;
  }

  MaterialCount = REMeshComponentGetMaterialCount();
  if (MaterialCount < 0xFFFFFFFF80000000)
  {
    goto LABEL_30;
  }

  v7 = MaterialCount;
  if (MaterialCount > 0x7FFFFFFF)
  {
LABEL_31:
    __break(1u);
  }

  else if ((MaterialCount & 0x8000000000000000) == 0)
  {
    if (MaterialCount)
    {
      v8 = 0;
      while (1)
      {
        MaterialAtIndex = REMeshComponentGetMaterialAtIndex();
        if (!MaterialAtIndex)
        {
          goto LABEL_9;
        }

        v10 = MaterialAtIndex;
        v11 = v4[2];
        if (v11)
        {
          v12 = specialized __RawDictionaryStorage.find<A>(_:)(MaterialAtIndex);
          if (v13)
          {
            LODWORD(v11) = *(v4[7] + 4 * v12);
          }

          else
          {
            LODWORD(v11) = 0;
          }
        }

        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
        v18 = v4[2];
        v19 = (v17 & 1) == 0;
        v20 = __OFADD__(v18, v19);
        v21 = v18 + v19;
        if (v20)
        {
          goto LABEL_28;
        }

        v22 = v17;
        if (v4[3] < v21)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_21;
        }

        v26 = v16;
        specialized _NativeDictionary.copy()();
        v16 = v26;
        if (v22)
        {
LABEL_8:
          *(v4[7] + 4 * v16) = v14;
          goto LABEL_9;
        }

LABEL_22:
        v4[(v16 >> 6) + 8] |= 1 << v16;
        *(v4[6] + 8 * v16) = v10;
        *(v4[7] + 4 * v16) = v14;
        v24 = v4[2];
        v20 = __OFADD__(v24, 1);
        v25 = v24 + 1;
        if (v20)
        {
          goto LABEL_29;
        }

        v4[2] = v25;
LABEL_9:
        if (v7 == ++v8)
        {
          return v4;
        }
      }

      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, isUniquelyReferenced_nonNull_native);
      v16 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_33;
      }

LABEL_21:
      if (v22)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }

    return v4;
  }

  __break(1u);
LABEL_33:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t Entity.MetricUtilitiesBase.materialCounts.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v63 = type metadata accessor for Optional();
  v4 = *(v63 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v79 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v61 - v8;
  v9 = *(a1 + 24);
  v73 = *(v9 + 24);
  v78 = *(v73 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v76 = &v61 - v11;
  v12 = *(v3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v72 = &v61 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v75 = &v61 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v61 - v22;
  v24 = *v1;
  v25 = *(*v1 + 16);
  REMeshComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
    v29 = MEMORY[0x1E69E6B70];
    swift_getTupleTypeMetadata2();
    v30 = static Array._allocateUninitialized(_:)();
    v31 = specialized Dictionary.init(dictionaryLiteral:)(v30, v29, v3, MEMORY[0x1E69E6B78]);

    return v31;
  }

  v71 = v16;
  v26 = MEMORY[0x1E69E6B70];
  swift_getTupleTypeMetadata2();
  v27 = static Array._allocateUninitialized(_:)();
  v28 = specialized Dictionary.init(dictionaryLiteral:)(v27, v26, v3, MEMORY[0x1E69E6B78]);

  v82 = v24;
  v83 = v28;
  Entity.MetricUtilitiesBase.materialAssignmentCount.getter(a1);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_16;
  }

  v81 = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v33 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v34 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v33)
  {
    if (v34 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v38 = v75;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v39 = *(*(v9 + 32) + 8);
      v40 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v12 + 8))(v38, v3);
      if (v40)
      {
LABEL_39:
        __break(1u);
        return result;
      }

      goto LABEL_15;
    }

LABEL_10:
    lazy protocol witness table accessor for type Int and conformance Int();
    v35 = v75;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v36 = *(*(v9 + 32) + 8);
    v37 = dispatch thunk of static Comparable.< infix(_:_:)();
    result = (*(v12 + 8))(v35, v3);
    if (v37)
    {
      goto LABEL_39;
    }

    goto LABEL_16;
  }

  if (v34 < 64)
  {
LABEL_15:
    dispatch thunk of BinaryInteger._lowWord.getter();
  }

LABEL_16:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v81 = 0x7FFFFFFFFFFFFFFFLL;
    v41 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v42 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v41 & 1) == 0)
    {
      break;
    }

    if (v42 < 65)
    {
      goto LABEL_25;
    }

LABEL_19:
    lazy protocol witness table accessor for type Int and conformance Int();
    v43 = v75;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v44 = *(*(v9 + 32) + 8);
    v45 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v12 + 8))(v43, v3);
    if (v45)
    {
      __break(1u);
LABEL_21:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_26;
  }

  if (v42 >= 64)
  {
    goto LABEL_19;
  }

LABEL_25:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_26:
  v46 = dispatch thunk of BinaryInteger._lowWord.getter();
  v69 = *(v12 + 8);
  v70 = v12 + 8;
  result = v69(v23, v3);
  if (v46 < 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  v68 = v9;
  v47 = v79;
  if (v46)
  {
    v48 = 0;
    v64 = (v12 + 32);
    v65 = (v12 + 48);
    v62 = (v4 + 8);
    v66 = (v12 + 56);
    v49 = MEMORY[0x1E69E6B70];
    v50 = MEMORY[0x1E69E6B78];
    v67 = v46;
    do
    {
      MaterialAtIndex = REMeshComponentGetMaterialAtIndex();
      if (MaterialAtIndex)
      {
        v58 = MaterialAtIndex;
        v82 = MaterialAtIndex;
        MEMORY[0x1C68F31A0](&v82, v83, v49, v3, v50);
        v59 = *v65;
        if ((*v65)(v47, 1, v3) == 1)
        {
          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v60 = v79;
          if (v59(v79, 1, v3) != 1)
          {
            (*v62)(v60, v63);
          }
        }

        else
        {
          (*v64)(v71, v47, v3);
        }

        v51 = v72;
        dispatch thunk of BinaryInteger.init<A>(_:)();
        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v52 = v75;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v53 = v74;
        v54 = *(v73 + 8);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v55 = v52;
        v56 = v69;
        v69(v55, v3);
        v56(v51, v3);
        (*v66)(v53, 0, 1, v3);
        v82 = v58;
        v49 = MEMORY[0x1E69E6B70];
        type metadata accessor for Dictionary();
        Dictionary.subscript.setter();
        v47 = v79;
        v46 = v67;
      }

      ++v48;
    }

    while (v46 != v48);
  }

  return v83;
}

uint64_t Entity.MetricUtilitiesBase.isShadowCaster.getter()
{
  v1 = *(*v0 + 16);
  RERenderOptionsComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
    goto LABEL_5;
  }

  v2 = swift_slowAlloc();
  *v2 = 1;
  if (!RERenderOptionsComponentGetCastsShadowsOverride() || (*v2 & 1) != 0)
  {
    MEMORY[0x1C6902A30](v2, -1, -1);
LABEL_5:

    v4 = specialized Entity.MetricUtilitiesBase.hasTechniqueMappedToShadowPass.getter(v3);

    return v4 & 1;
  }

  MEMORY[0x1C6902A30](v2, -1, -1);
  return 0;
}

uint64_t specialized Entity.MetricUtilitiesBase.isShadowReceiver.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  REMaterialParameterBlockArrayComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (!ComponentByClass)
  {
    return ComponentByClass;
  }

  v4 = specialized Entity.MetricUtilitiesBase.materialCounts.getter(v3);

  v6 = 0;
  v7 = v4 + 64;
  v8 = 1 << *(v4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v4 + 64);
  v11 = (v8 + 63) >> 6;
  v23 = v4;
  if (v10)
  {
    while (1)
    {
LABEL_9:
      v13 = *(*(v4 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v10)))));
      v14 = swift_slowAlloc();
      *v14 = 0;
      result = REMaterialParameterBlockArrayComponentSize();
      if (result < 0)
      {
        goto LABEL_34;
      }

      v15 = result;
      if (result)
      {
        break;
      }

LABEL_16:
      if (REMaterialAssetGetValidPassTechniqueMapping())
      {
        v18 = *v14;
        if (REMaterialAssetTechniqueHasVariation())
        {
          goto LABEL_29;
        }
      }

      result = REMaterialParameterBlockArrayComponentSize();
      if (result < 0)
      {
        goto LABEL_35;
      }

      v19 = result;
      if (result)
      {
        v20 = 0;
        do
        {
          if (REMaterialParameterBlockArrayComponentGetHashedPassTechniqueMappingAtIndex())
          {
            v21 = *v14;
            if (REMaterialAssetTechniqueHasVariation())
            {
              goto LABEL_29;
            }
          }
        }

        while (v19 != ++v20);
      }

      if (REMaterialAssetGetValidPassTechniqueMapping())
      {
        v22 = *v14;
        if (REMaterialAssetTechniqueHasVariation())
        {
          goto LABEL_29;
        }
      }

      v10 &= v10 - 1;
      result = MEMORY[0x1C6902A30](v14, -1, -1);
      v4 = v23;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    v16 = 0;
    while (1)
    {
      if (REMaterialParameterBlockArrayComponentGetHashedPassTechniqueMappingAtIndex())
      {
        v17 = *v14;
        if (REMaterialAssetTechniqueHasVariation())
        {
          break;
        }
      }

      if (v15 == ++v16)
      {
        goto LABEL_16;
      }
    }

LABEL_29:
    MEMORY[0x1C6902A30](v14, -1, -1);
    ComponentByClass = 1;
LABEL_31:

    return ComponentByClass;
  }

LABEL_5:
  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      ComponentByClass = 0;
      goto LABEL_31;
    }

    v10 = *(v7 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t Entity.MetricUtilitiesBase.isShadowReceiver.getter()
{
  v1 = *(*v0 + 16);
  REMaterialParameterBlockArrayComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (!ComponentByClass)
  {
    return ComponentByClass;
  }

  v4 = specialized Entity.MetricUtilitiesBase.materialCounts.getter(v3);

  v6 = 0;
  v7 = v4 + 64;
  v8 = 1 << *(v4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v4 + 64);
  v11 = (v8 + 63) >> 6;
  v23 = v4;
  if (v10)
  {
    while (1)
    {
LABEL_9:
      v13 = *(*(v4 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v10)))));
      v14 = swift_slowAlloc();
      *v14 = 0;
      result = REMaterialParameterBlockArrayComponentSize();
      if (result < 0)
      {
        goto LABEL_34;
      }

      v15 = result;
      if (result)
      {
        break;
      }

LABEL_16:
      if (REMaterialAssetGetValidPassTechniqueMapping())
      {
        v18 = *v14;
        if (REMaterialAssetTechniqueHasVariation())
        {
          goto LABEL_29;
        }
      }

      result = REMaterialParameterBlockArrayComponentSize();
      if (result < 0)
      {
        goto LABEL_35;
      }

      v19 = result;
      if (result)
      {
        v20 = 0;
        do
        {
          if (REMaterialParameterBlockArrayComponentGetHashedPassTechniqueMappingAtIndex())
          {
            v21 = *v14;
            if (REMaterialAssetTechniqueHasVariation())
            {
              goto LABEL_29;
            }
          }
        }

        while (v19 != ++v20);
      }

      if (REMaterialAssetGetValidPassTechniqueMapping())
      {
        v22 = *v14;
        if (REMaterialAssetTechniqueHasVariation())
        {
          goto LABEL_29;
        }
      }

      v10 &= v10 - 1;
      result = MEMORY[0x1C6902A30](v14, -1, -1);
      v4 = v23;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    v16 = 0;
    while (1)
    {
      if (REMaterialParameterBlockArrayComponentGetHashedPassTechniqueMappingAtIndex())
      {
        v17 = *v14;
        if (REMaterialAssetTechniqueHasVariation())
        {
          break;
        }
      }

      if (v15 == ++v16)
      {
        goto LABEL_16;
      }
    }

LABEL_29:
    MEMORY[0x1C6902A30](v14, -1, -1);
    ComponentByClass = 1;
LABEL_31:

    return ComponentByClass;
  }

LABEL_5:
  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      ComponentByClass = 0;
      goto LABEL_31;
    }

    v10 = *(v7 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t Entity.MetricUtilitiesBase.shadowCasterCount.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(*(*(a1 + 24) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = *(*v1 + 16);

  RERenderOptionsComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    v7 = swift_slowAlloc();
    *v7 = 1;
    if (RERenderOptionsComponentGetCastsShadowsOverride() && (*v7 & 1) == 0)
    {
      MEMORY[0x1C6902A30](v7, -1, -1);

      goto LABEL_7;
    }

    MEMORY[0x1C6902A30](v7, -1, -1);
  }

  specialized Entity.MetricUtilitiesBase.hasTechniqueMappedToShadowPass.getter(v8);

LABEL_7:
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  return dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
}

uint64_t Entity.MetricUtilitiesBase.shadowClusterID.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(*(*(a1 + 24) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = *(*v1 + 16);
  v7 = swift_slowAlloc();
  *v7 = 0;
  if (REEntityGetProjectiveShadowClusterID())
  {
    v9 = *v7;
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    dispatch thunk of BinaryInteger.init<A>(_:)();
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  }

  return MEMORY[0x1C6902A30](v7, -1, -1);
}

uint64_t Entity.MetricUtilitiesBase.shadowClusterIDs.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(a1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10RealityKit6EntityCGMd, &_sSay10RealityKit6EntityCGMR);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  type metadata accessor for _ContiguousArrayStorage();
  v7 = *(*(TupleTypeMetadata2 - 8) + 72);
  v8 = *(*(TupleTypeMetadata2 - 8) + 80);
  swift_allocObject();
  v9 = static Array._adoptStorage(_:count:)();
  v11 = v10;
  v12 = *(TupleTypeMetadata2 + 48);
  Entity.MetricUtilitiesBase.shadowClusterID.getter(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C1898160;
  *(v13 + 32) = v3;
  *(v11 + v12) = v13;
  type metadata accessor for Array();
  v14 = *(*(a1 + 24) + 16);

  v15 = specialized Dictionary.init(dictionaryLiteral:)(v9, v4, v5, v14);

  return v15;
}

uint64_t Entity.MetricUtilitiesBase.shadowReceiverCount.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(*(*(a1 + 24) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = *v1;

  specialized Entity.MetricUtilitiesBase.isShadowReceiver.getter(v7);

  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  return dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
}

uint64_t Entity.MetricUtilitiesBase.materialAssignmentCount.getter(uint64_t a1)
{
  v3 = *(*v1 + 16);
  REMeshComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    REMeshComponentGetMaterialCount();
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  lazy protocol witness table accessor for type Int and conformance Int();
  return dispatch thunk of BinaryInteger.init<A>(_:)();
}

uint64_t Entity.MetricUtilitiesBase.uniqueMaterialCount.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v10 = *v1;
  v4 = Entity.MetricUtilitiesBase.materialCounts.getter(a1);
  v5 = MEMORY[0x1E69E6B70];
  v6 = MEMORY[0x1E69E6B78];
  v7 = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(v4, MEMORY[0x1E69E6B70]);

  MEMORY[0x1C68F3140](v7, v5, v3, v6);

  v8 = *(a1 + 24);
  lazy protocol witness table accessor for type Int and conformance Int();
  return dispatch thunk of BinaryInteger.init<A>(_:)();
}

unint64_t Entity.MetricUtilitiesBase.rawCollisionShapeType.getter()
{
  v1 = *(*v0 + 16);
  REColliderComponentGetComponentType();
  if (REEntityGetComponentByClass() && REColliderComponentGetCollisionObject())
  {
    RECollisionObjectGetShape();
    Type = RECollisionShapeGetType();
    v3 = 0;
    v4 = Type;
  }

  else
  {
    v4 = 0;
    v3 = 1;
  }

  return v4 | (v3 << 32);
}

uint64_t Entity.MetricUtilitiesBase.TextureMetrics.assetId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Entity.MetricUtilitiesBase.TextureMetrics.resolution.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(*(TupleTypeMetadata2 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v17 - v11;
  (*(v13 + 16))(&v17 - v11, v3 + *(a3 + 40), TupleTypeMetadata2, v10);
  v14 = *(TupleTypeMetadata2 + 48);
  v15 = *(*(v7 - 8) + 32);
  v15(a1, v12, v7);
  return (v15)(a2, &v12[v14], v7);
}

void Entity.MetricUtilitiesBase.TextureMetrics.init(coreMetrics:textureIdx:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = REEntityTextureMetricsCopyNthTextureAssetId();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
  NthTextureByteSize = REEntityTextureMetricsGetNthTextureByteSize();
  if (NthTextureByteSize < 0)
  {
    __break(1u);
  }

  else
  {
    a2[2] = NthTextureByteSize;
    REEntityTextureMetricsGetNthTextureDimensions();
    v9 = a2 + *(type metadata accessor for Entity.MetricUtilitiesBase.TextureMetrics() + 40);
    lazy protocol witness table accessor for type Int32 and conformance Int32();
    dispatch thunk of BinaryInteger.init<A>(_:)();
    v10 = &v9[*(swift_getTupleTypeMetadata2() + 48)];
    dispatch thunk of BinaryInteger.init<A>(_:)();
  }
}

uint64_t static Entity.MetricUtilitiesBase.TextureMetrics.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t Entity.MetricUtilitiesBase.TextureMetrics.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int Entity.MetricUtilitiesBase.TextureMetrics.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Entity.MetricUtilitiesBase<A>.TextureMetrics()
{
  Hasher.init(_seed:)();
  Entity.MetricUtilitiesBase.TextureMetrics.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Entity.MetricUtilitiesBase.textureMetrics.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = type metadata accessor for Entity.MetricUtilitiesBase.TextureMetrics();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - v10;
  v12 = *(*v1 + 16);
  v13 = REEntityCopyTextureMetrics();
  WitnessTable = swift_getWitnessTable();
  v15 = Set.init()();
  v23 = v15;
  result = REEntityTextureMetricsGetTexturesCount();
  if (result < 0)
  {
    __break(1u);
  }

  else if (result)
  {
    v21[1] = WitnessTable;
    v22 = v13;
    v17 = 0;
    v18 = (v5 + 8);
    do
    {
      v19 = result;
      v20 = v22;
      Entity.MetricUtilitiesBase.TextureMetrics.init(coreMetrics:textureIdx:)(v20, v8);
      type metadata accessor for Set();
      Set.insert(_:)();
      (*v18)(v11, v4);
      result = v19;
      ++v17;
    }

    while (v19 != v17);

    return v23;
  }

  else
  {

    return v15;
  }

  return result;
}

uint64_t Entity.MetricUtilitiesBase.textureCount.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v6 = *v1;
  Entity.MetricUtilitiesBase.textureMetrics.getter(a1);
  v4 = *(a1 + 24);
  type metadata accessor for Entity.MetricUtilitiesBase.TextureMetrics();
  swift_getWitnessTable();
  Set.count.getter();

  lazy protocol witness table accessor for type Int and conformance Int();
  return dispatch thunk of BinaryInteger.init<A>(_:)();
}

uint64_t Entity.MetricUtilitiesBase.textureMemorySizes.getter(uint64_t a1)
{
  v6 = *v1;
  Entity.MetricUtilitiesBase.textureMetrics.getter(a1);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for Entity.MetricUtilitiesBase.TextureMetrics();
  swift_getWitnessTable();
  type metadata accessor for Set();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSs6UInt64VGMd, &_sSDySSs6UInt64VGMR);
  swift_getWitnessTable();
  Sequence.reduce<A>(into:_:)();

  return v7;
}

unint64_t closure #1 in Entity.MetricUtilitiesBase.textureMemorySizes.getter(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *a1;
  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v5, v3, v4, isUniquelyReferenced_nonNull_native);
  *a1 = v9;
  return result;
}

uint64_t Entity.MetricUtilitiesBase.textureResolutions.getter(uint64_t a1)
{
  v6 = *v1;
  Entity.MetricUtilitiesBase.textureMetrics.getter(a1);
  v3 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  Dictionary.init()();
  v5 = *(a1 + 24);
  type metadata accessor for Entity.MetricUtilitiesBase.TextureMetrics();
  swift_getWitnessTable();
  type metadata accessor for Set();
  type metadata accessor for Dictionary();
  swift_getWitnessTable();
  Sequence.reduce<A>(into:_:)();

  return v7;
}

uint64_t closure #1 in Entity.MetricUtilitiesBase.textureResolutions.getter(uint64_t a1, char *a2)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v13 - v6;
  v9 = *a2;
  v8 = *(a2 + 1);
  v10 = *(type metadata accessor for Entity.MetricUtilitiesBase.TextureMetrics() + 40);
  v11 = *(TupleTypeMetadata2 - 8);
  (*(v11 + 16))(v7, &a2[v10], TupleTypeMetadata2);
  (*(v11 + 56))(v7, 0, 1, TupleTypeMetadata2);
  v13[0] = v9;
  v13[1] = v8;
  type metadata accessor for Dictionary();

  return Dictionary.subscript.setter();
}

uint64_t Entity.MetricUtilitiesBase.videoItemCount.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(*(*(a1 + 24) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = *(*v1 + 16);
  REVideoComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    REVideoComponentGetVideoAsset();
    REVideoAssetGetFileAssetCount();
    lazy protocol witness table accessor for type Int and conformance Int();
    return dispatch thunk of BinaryInteger.init<A>(_:)();
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    return dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  }
}

unint64_t lazy protocol witness table accessor for type Float and conformance Float()
{
  result = lazy protocol witness table cache variable for type Float and conformance Float;
  if (!lazy protocol witness table cache variable for type Float and conformance Float)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Float and conformance Float);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Float and conformance Float;
  if (!lazy protocol witness table cache variable for type Float and conformance Float)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Float and conformance Float);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int32 and conformance Int32()
{
  result = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt64 and conformance UInt64()
{
  result = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
  }

  return result;
}

unint64_t partial apply for closure #1 in Entity.MetricUtilitiesBase.textureMemorySizes.getter(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return closure #1 in Entity.MetricUtilitiesBase.textureMemorySizes.getter(a1, a2);
}

uint64_t partial apply for closure #1 in Entity.MetricUtilitiesBase.textureResolutions.getter(uint64_t a1, char *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return closure #1 in Entity.MetricUtilitiesBase.textureResolutions.getter(a1, a2);
}

uint64_t type metadata instantiation function for Entity.MetricUtilitiesBase()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata completion function for Entity.MetricUtilitiesBase.TextureMetrics(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_getTupleTypeMetadata2();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Entity.MetricUtilitiesBase.TextureMetrics(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v10 = ((v7 + v6) & ~v6) + v7 + ((v6 + 24) & ~v6);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void storeEnumTagSinglePayload for Entity.MetricUtilitiesBase.TextureMetrics(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + v9) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = v10 + ((v9 + 24) & ~v9);
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v11 <= 3)
    {
      v17 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    if (v11 < 4)
    {
      v16 = (v15 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v15 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_57:
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
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v14)
    {
      a1[v11] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v11] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v14)
  {
    goto LABEL_30;
  }

  a1[v11] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9);
    if (v7 >= a2)
    {
      v24 = *(v6 + 56);

      v24(v20);
    }

    else
    {
      if (v10 <= 3)
      {
        v21 = ~(-1 << (8 * v10));
      }

      else
      {
        v21 = -1;
      }

      if (v10)
      {
        v22 = v21 & (~v7 + a2);
        if (v10 <= 3)
        {
          v23 = v10;
        }

        else
        {
          v23 = 4;
        }

        bzero(v20, v10);
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            *v20 = v22;
            v20[2] = BYTE2(v22);
          }

          else
          {
            *v20 = v22;
          }
        }

        else if (v23 == 1)
        {
          *v20 = v22;
        }

        else
        {
          *v20 = v22;
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

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = _HashTable.startBucket.getter();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = specialized Dictionary.Keys.subscript.getter(v3, *(a1 + 36), 0, a1);

  return v5;
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  if (result == 1 << *(a1 + 32))
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    result = specialized Dictionary.Values.subscript.getter(result, *(a1 + 36), a1, v8);
    v6 = v8[0];
    v7 = v8[1];
  }

  *a2 = v6;
  a2[1] = v7;
  return result;
}

uint64_t Entity.ConfigurationCatalog.Configuration.init(id:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t Entity.ConfigurationCatalog.Configuration.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Entity.ConfigurationCatalog.ConfigurationSet.init(id:configurations:defaultConfigurationId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  while (v10)
  {
LABEL_9:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v17 = (v13 << 10) | (16 * v16);
    v18 = (*(a3 + 48) + v17);
    v20 = *v18;
    v19 = v18[1];
    v21 = (*(a3 + 56) + v17);
    if (*v18 != *v21 || v19 != v21[1])
    {
      v23 = *v18;
      v24 = v18[1];
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
          v14 = result;
        }

        v26 = *(v14 + 16);
        v25 = *(v14 + 24);
        v27 = v26 + 1;
        if (v26 >= v25 >> 1)
        {
          v53 = v26 + 1;
          v29 = v14;
          v30 = *(v14 + 16);
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v29);
          v27 = v53;
          v26 = v30;
          v14 = result;
        }

        *(v14 + 16) = v27;
        v28 = v14 + 16 * v26;
        *(v28 + 32) = v20;
        *(v28 + 40) = v19;
      }
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v15);
    ++v13;
    if (v10)
    {
      v13 = v15;
      goto LABEL_9;
    }
  }

  if (!*(v14 + 16))
  {

    v41 = a5;
    v42 = a4;
    if (a5)
    {
      if (!*(a3 + 16))
      {
        goto LABEL_31;
      }
    }

    else
    {
      v43 = specialized Collection.first.getter(a3);
      if (!v44)
      {

        lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
        swift_allocError();
        *v51 = 0u;
        *(v51 + 16) = 0u;
        *(v51 + 32) = 0;
        v52 = 12;
        goto LABEL_32;
      }

      v42 = v43;
      v41 = v44;
      if (!*(a3 + 16))
      {
LABEL_31:

        lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
        swift_allocError();
        *v51 = v42;
        *(v51 + 8) = v41;
        *(v51 + 24) = 0;
        *(v51 + 32) = 0;
        *(v51 + 16) = 0;
        v52 = 10;
LABEL_32:
        *(v51 + 40) = v52;
        swift_willThrow();
      }
    }

    v45 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v41);
    if (v46)
    {
      v47 = v45;

      v48 = (*(a3 + 56) + 16 * v47);
      v50 = *v48;
      v49 = v48[1];

      *a6 = v50;
      a6[1] = v49;
      a6[2] = a1;
      a6[3] = a2;
      a6[4] = a3;
      return result;
    }

    goto LABEL_31;
  }

  v31 = *(v14 + 16);
  if (!v31)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (*(a3 + 16))
  {
    v33 = *(v14 + 32);
    v32 = *(v14 + 40);

    v34 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v32);
    v36 = v35;

    if (v36)
    {
      v37 = (*(a3 + 56) + 16 * v34);
      v39 = *v37;
      v38 = v37[1];

      lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
      swift_allocError();
      *v40 = v31;
      *(v40 + 8) = v33;
      *(v40 + 16) = v32;
      *(v40 + 24) = v39;
      *(v40 + 32) = v38;
      *(v40 + 40) = 7;
      return swift_willThrow();
    }

    goto LABEL_37;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t Entity.ConfigurationCatalog.ConfigurationSet.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Entity.ConfigurationCatalog.ConfigurationSet.defaultConfiguration.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Entity.ConfigurationCatalog.ConfigurationSet.init(id:configurations:defaultConfigurationId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = MEMORY[0x1E69E7CC8];
  v7 = *(a3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV0E0VGMd, &_sSDySS10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV0E0VGMR);
  Dictionary.reserveCapacity(_:)(v7);
  v8 = v46;
  v42 = *(a3 + 16);
  if (!v42)
  {
LABEL_19:

    result = Entity.ConfigurationCatalog.ConfigurationSet.init(id:configurations:defaultConfigurationId:)(a1, a2, v8, a4, a5, &v43);
    if (!v39)
    {
      v33 = v44;
      v34 = v45;
      *a6 = v43;
      *(a6 + 16) = v33;
      *(a6 + 24) = v34;
    }

    return result;
  }

  v9 = 0;
  v10 = (a3 + 40);
  while (v9 < *(a3 + 16))
  {
    v13 = *(v10 - 1);
    v14 = *v10;
    v15 = v8[2];

    if (v15)
    {

      specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      v17 = v16;

      if (v17)
      {

        lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
        swift_allocError();
        *v35 = v13;
        *(v35 + 8) = v14;
        *(v35 + 24) = 0;
        *(v35 + 32) = 0;
        *(v35 + 16) = 0;
        *(v35 + 40) = 5;
        swift_willThrow();
      }
    }

    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v43 = v8;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
    v21 = v8[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_24;
    }

    v24 = v19;
    if (v8[3] >= v23)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v19)
        {
          goto LABEL_3;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if (v24)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
      v25 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_26;
      }

      v20 = v25;
      if (v24)
      {
LABEL_3:

        v8 = v43;
        v11 = (*(v43 + 56) + 16 * v20);
        v12 = v11[1];
        *v11 = v13;
        v11[1] = v14;

        goto LABEL_4;
      }
    }

    v8 = v43;
    *(v43 + 8 * (v20 >> 6) + 64) |= 1 << v20;
    v27 = (v8[6] + 16 * v20);
    *v27 = v13;
    v27[1] = v14;
    v28 = (v8[7] + 16 * v20);
    *v28 = v13;
    v28[1] = v14;

    v29 = v8[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_25;
    }

    v8[2] = v31;
LABEL_4:
    ++v9;
    v10 += 2;
    if (v42 == v9)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance Entity.ConfigurationCatalog.ConfigurationSet@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t Entity.ConfigurationCatalog.ConfigurationSetCache.__deallocating_deinit()
{
  v1 = v0[3];
  v3 = v0[5];
  v2 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  return swift_deallocClassInstance();
}

uint64_t Entity.ConfigurationCatalog.ConfigurationCollectionCache.init(sourcePath:configurationSetCaches:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v5 = *v3;
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  if (a3 >> 62)
  {
LABEL_33:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = v3;

  if (v6)
  {
    v7 = 0;
    v39 = v4 & 0xFFFFFFFFFFFFFF8;
    v40 = v4 & 0xC000000000000001;
    v3 = MEMORY[0x1E69E7CC8];
    v38 = v4;
    while (1)
    {
      if (v40)
      {
        v10 = MEMORY[0x1C68F41F0](v7, v4);
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v7 >= *(v39 + 16))
        {
          goto LABEL_30;
        }

        v10 = *(v4 + 8 * v7 + 32);

        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }
      }

      if (v3[2])
      {
        v13 = *(v10 + 32);
        v12 = *(v10 + 40);

        specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
        v15 = v14;

        if (v15)
        {

          v33 = *(v10 + 32);
          v32 = *(v10 + 40);
          lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
          swift_allocError();
          *v34 = v33;
          *(v34 + 8) = v32;
          *(v34 + 24) = 0;
          *(v34 + 32) = 0;
          *(v34 + 16) = 0;
          *(v34 + 40) = 6;
          swift_willThrow();

          v35 = v37[3];

          v36 = v37[4];

          swift_deallocPartialClassInstance();
          return v37;
        }
      }

      v41 = v11;
      v16 = v6;
      v4 = *(v10 + 32);
      v17 = *(v10 + 40);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v17);
      v21 = v3[2];
      v22 = (v19 & 1) == 0;
      v23 = v21 + v22;
      if (__OFADD__(v21, v22))
      {
        goto LABEL_31;
      }

      v24 = v19;
      if (v3[3] >= v23)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v19)
          {
            goto LABEL_5;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          if (v24)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
        v25 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v17);
        if ((v24 & 1) != (v26 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v20 = v25;
        if (v24)
        {
LABEL_5:

          v8 = v3[7];
          v9 = *(v8 + 8 * v20);
          *(v8 + 8 * v20) = v10;

          goto LABEL_6;
        }
      }

      v3[(v20 >> 6) + 8] |= 1 << v20;
      v27 = (v3[6] + 16 * v20);
      *v27 = v4;
      v27[1] = v17;
      *(v3[7] + 8 * v20) = v10;

      v28 = v3[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_32;
      }

      v3[2] = v30;
LABEL_6:
      ++v7;
      v6 = v16;
      v4 = v38;
      if (v41 == v16)
      {
        goto LABEL_27;
      }
    }
  }

  v3 = MEMORY[0x1E69E7CC8];
LABEL_27:

  v37[5] = v3;
  return v37;
}

uint64_t Entity.ConfigurationCatalog.ConfigurationCollectionCache.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t Entity.ConfigurationCatalog.ConfigurationMapCache.init(configurationCollectionCaches:)(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v1[2] = a1;
  if (a1 >> 62)
  {
LABEL_33:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = v1;

  if (v4)
  {
    v5 = 0;
    v32 = v2 & 0xFFFFFFFFFFFFFF8;
    v33 = v2 & 0xC000000000000001;
    v1 = MEMORY[0x1E69E7CC8];
    v31 = v2;
    while (1)
    {
      if (v33)
      {
        v8 = MEMORY[0x1C68F41F0](v5, v2);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v5 >= *(v32 + 16))
        {
          goto LABEL_30;
        }

        v8 = *(v2 + 8 * v5 + 32);

        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }
      }

      if (v1[2])
      {
        specialized __RawDictionaryStorage.find<A>(_:)(*(v8 + 16), *(v8 + 24));
        if (v10)
        {

          v27 = *(v8 + 16);
          v26 = *(v8 + 24);
          lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
          swift_allocError();
          *v28 = v27;
          *(v28 + 8) = v26;
          *(v28 + 24) = 0;
          *(v28 + 32) = 0;
          *(v28 + 16) = 0;
          *(v28 + 40) = 9;
          swift_willThrow();

          v29 = v30[2];

          swift_deallocPartialClassInstance();
          return v30;
        }
      }

      v34 = v9;
      v2 = *(v8 + 16);
      v11 = *(v8 + 24);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v11);
      v15 = v1[2];
      v16 = (v13 & 1) == 0;
      v17 = v15 + v16;
      if (__OFADD__(v15, v16))
      {
        goto LABEL_31;
      }

      v18 = v13;
      if (v1[3] >= v17)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v13)
          {
            goto LABEL_5;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          if (v18)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v11);
        if ((v18 & 1) != (v20 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v14 = v19;
        if (v18)
        {
LABEL_5:

          v6 = v1[7];
          v7 = *(v6 + 8 * v14);
          *(v6 + 8 * v14) = v8;

          goto LABEL_6;
        }
      }

      v1[(v14 >> 6) + 8] |= 1 << v14;
      v21 = (v1[6] + 16 * v14);
      *v21 = v2;
      v21[1] = v11;
      *(v1[7] + 8 * v14) = v8;

      v22 = v1[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_32;
      }

      v1[2] = v24;
LABEL_6:
      ++v5;
      v2 = v31;
      if (v34 == v4)
      {
        goto LABEL_27;
      }
    }
  }

  v1 = MEMORY[0x1E69E7CC8];
LABEL_27:

  v30[3] = v1;
  return v30;
}

uint64_t Entity.ConfigurationCatalog.ConfigurationCombination.init(entity:configurationSpecifications:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t Entity.ConfigurationCatalog.init(configurationSets:combinations:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for Entity.ConfigurationCatalog.CachedEntityReader();
  swift_allocObject();
  result = Entity.ConfigurationCatalog.CachedEntityReader.init(configurationSets:combinations:)(a1, a2);
  if (!v3)
  {
    *a3 = 0;
    a3[1] = result;
    a3[2] = &protocol witness table for Entity.ConfigurationCatalog.CachedEntityReader;
  }

  return result;
}

{
  v3 = a1;
  v44 = MEMORY[0x1E69E7CC8];
  v4 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV0E3SetVGMd, &_sSDySS10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV0E3SetVGMR);
  Dictionary.reserveCapacity(_:)(v4);
  v41 = *(v3 + 16);
  if (!v41)
  {
LABEL_19:

    type metadata accessor for Entity.ConfigurationCatalog.CachedEntityReader();
    swift_allocObject();
    result = Entity.ConfigurationCatalog.CachedEntityReader.init(configurationSets:combinations:)(v44, a2);
    if (!v37)
    {
      *a3 = 0;
      a3[1] = result;
      a3[2] = &protocol witness table for Entity.ConfigurationCatalog.CachedEntityReader;
    }

    return result;
  }

  v5 = 0;
  v6 = (v3 + 64);
  v40 = v3;
  while (v5 < *(v3 + 16))
  {
    v42 = *(v6 - 4);
    v43 = *(v6 - 3);
    v11 = *(v6 - 2);
    v10 = *(v6 - 1);
    v12 = *v6;
    v13 = v44[2];

    if (v13)
    {

      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v10);
      v16 = v15;

      if (v16)
      {
        v32 = v44[7] + 40 * v14;
        v33 = *(v32 + 8);
        v34 = *(v32 + 24);

        lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
        swift_allocError();
        *v35 = v11;
        *(v35 + 8) = v10;
        *(v35 + 24) = 0;
        *(v35 + 32) = 0;
        *(v35 + 16) = 0;
        *(v35 + 40) = 6;
        swift_willThrow();
      }
    }

    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v10);
    v20 = v44[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_24;
    }

    v23 = v18;
    if (v44[3] >= v22)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v18)
        {
          goto LABEL_3;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if (v23)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, isUniquelyReferenced_nonNull_native);
      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v10);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_26;
      }

      v19 = v24;
      if (v23)
      {
LABEL_3:

        v7 = (v44[7] + 40 * v19);
        v39 = v7[1];
        v8 = v7[3];
        v9 = v7[4];
        *v7 = v42;
        v7[1] = v43;
        v7[2] = v11;
        v7[3] = v10;
        v7[4] = v12;

        goto LABEL_4;
      }
    }

    v44[(v19 >> 6) + 8] |= 1 << v19;
    v26 = (v44[6] + 16 * v19);
    *v26 = v11;
    v26[1] = v10;
    v27 = (v44[7] + 40 * v19);
    *v27 = v42;
    v27[1] = v43;
    v27[2] = v11;
    v27[3] = v10;
    v27[4] = v12;

    v28 = v44[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_25;
    }

    v44[2] = v30;
LABEL_4:
    ++v5;
    v6 += 5;
    v3 = v40;
    if (v41 == v5)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t Entity.ConfigurationCatalog.write(to:)(uint64_t a1)
{
  v4 = *v1;
  *(v2 + 40) = type metadata accessor for MainActor();
  v7 = *(v1 + 1);
  *(v2 + 48) = static MainActor.shared.getter();
  *(v2 + 16) = v4;
  *(v2 + 24) = v7;
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = Entity.ConfigurationCatalog.write(to:);

  return specialized Entity.ConfigurationCatalog.write(to:options:)(a1);
}

uint64_t Entity.ConfigurationCatalog.write(to:)()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v14 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
    v9 = Entity.ConfigurationCatalog.write(to:);
  }

  else
  {
    v10 = *(v2 + 40);
    v11 = *(v2 + 48);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v12;
    v9 = Entity.ConfigurationCatalog.write(to:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v6, v8);
}

{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t Entity.ConfigurationCatalog.write(to:options:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return specialized Entity.ConfigurationCatalog.write(to:options:)(a1);
}

uint64_t Entity.ConfigurationCatalog.FormatReader.loadEntity(withConfigurations:loadOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[19] = a4;
  v5[20] = v4;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.FormatReader.loadEntity(withConfigurations:loadOptions:), 0, 0);
}

uint64_t Entity.ConfigurationCatalog.FormatReader.loadEntity(withConfigurations:loadOptions:)()
{
  outlined init with copy of [String : String](*(v0 + 136), v0 + 16, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  if (*(v0 + 16) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v0 + 16, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  }

  else
  {
    v1 = *(v0 + 32);
    outlined destroy of Entity.ConfigurationCatalog.LoadOptions(v0 + 16);
    if (v1 == 1)
    {
      type metadata accessor for MainActor();
      *(v0 + 168) = static MainActor.shared.getter();
      v2 = dispatch thunk of Actor.unownedExecutor.getter();
      v4 = v3;
      v5 = Entity.ConfigurationCatalog.FormatReader.loadEntity(withConfigurations:loadOptions:);
      goto LABEL_6;
    }
  }

  type metadata accessor for MainActor();
  *(v0 + 176) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v4 = v6;
  v5 = Entity.ConfigurationCatalog.FormatReader.loadEntity(withConfigurations:loadOptions:);
LABEL_6:

  return MEMORY[0x1EEE6DFA0](v5, v2, v4);
}

{
  v1 = v0[21];

  type metadata accessor for AnchorEntity();
  v13 = v0[19];
  swift_allocObject();
  v2 = Entity.init()();
  v0[23] = v2;
  v3 = *(v13 + 24);
  v12 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = Entity.ConfigurationCatalog.FormatReader.loadEntity(withConfigurations:loadOptions:);
  v6 = v0[19];
  v7 = v0[20];
  v8 = v0[17];
  v9 = v0[18];
  v10 = v0[16];

  return v12(v2, v10, v8, v9, v6);
}

{
  v1 = v0[22];

  type metadata accessor for Entity();
  v13 = v0[19];
  swift_allocObject();
  v2 = Entity.init()();
  v0[23] = v2;
  v3 = *(v13 + 24);
  v12 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = Entity.ConfigurationCatalog.FormatReader.loadEntity(withConfigurations:loadOptions:);
  v6 = v0[19];
  v7 = v0[20];
  v8 = v0[17];
  v9 = v0[18];
  v10 = v0[16];

  return v12(v2, v10, v8, v9, v6);
}

{
  v2 = *(*v1 + 192);
  v3 = *v1;
  v3[25] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.FormatReader.loadEntity(withConfigurations:loadOptions:), 0, 0);
  }

  else
  {
    v4 = v3[1];
    v5 = v3[23];

    return v4(v5);
  }
}

{
  v1 = v0[23];

  v2 = v0[1];
  v3 = v0[25];

  return v2();
}

uint64_t key path getter for Entity.ConfigurationCatalog.LoadOptions.preImportCallback : Entity.ConfigurationCatalog.LoadOptions@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@error @owned Error);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v3);
}

uint64_t key path setter for Entity.ConfigurationCatalog.LoadOptions.preImportCallback : Entity.ConfigurationCatalog.LoadOptions(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Swift.AnyObject) -> (@out (), @error @owned Error);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  v8 = a2[1];
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v3);
  result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v7);
  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t Entity.ConfigurationCatalog.LoadOptions.preImportCallback.getter()
{
  v1 = *v0;
  v2 = v0[1];
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v1);
  return v1;
}

uint64_t Entity.ConfigurationCatalog.LoadOptions.preImportCallback.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];
  result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*v2);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

double Entity.ConfigurationCatalog.LoadOptions.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  return result;
}

uint64_t static Entity.ConfigurationCatalog.resolveRealityFileURL(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  type metadata accessor for RealityFileLoadInformationResolver();
  static RealityFileLoadInformationResolver.resolve(url:)(a1, v10);
  outlined init with take of RealityFileLoadInformation?(v10, v7);
  Information = type metadata accessor for RealityFileLoadInformation(0);
  if ((*(*(Information - 8) + 48))(v7, 1, Information) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v7, &_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
    v12 = type metadata accessor for URL();
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }

  else
  {
    v14 = type metadata accessor for URL();
    v15 = *(v14 - 8);
    (*(v15 + 16))(a2, v7, v14);
    outlined destroy of RealityFileLoadInformation(v7);
    return (*(v15 + 56))(a2, 0, 1, v14);
  }
}

uint64_t Entity.ConfigurationCatalog.init(realityFileUrl:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v3[16] = a1;
  v4 = type metadata accessor for URL();
  v3[19] = v4;
  v5 = *(v4 - 8);
  v3[20] = v5;
  v6 = *(v5 + 64) + 15;
  v3[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.init(realityFileUrl:options:), 0, 0);
}

uint64_t Entity.ConfigurationCatalog.init(realityFileUrl:options:)()
{
  v1 = v0[18];
  (*(v0[20] + 16))(v0[21], v0[17], v0[19]);
  outlined init with copy of [String : String](v1, (v0 + 2), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  v2 = type metadata accessor for Entity.ConfigurationCatalog.RealityFileConfigurationReader();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = Entity.ConfigurationCatalog.init(realityFileUrl:options:);
  v6 = v0[21];

  return Entity.ConfigurationCatalog.RealityFileConfigurationReader.init(contentsOf:options:)(v6, (v0 + 2));
}

{
  v1 = v0[24];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  outlined destroy of BodyTrackingComponent?(v0[18], &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  (*(v3 + 8))(v5, v4);
  *v6 = 0;
  v6[1] = v1;
  v6[2] = &protocol witness table for Entity.ConfigurationCatalog.RealityFileConfigurationReader;

  v7 = v0[1];

  return v7();
}

{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[17];
  outlined destroy of BodyTrackingComponent?(v0[18], &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  (*(v2 + 8))(v4, v3);

  v5 = v0[1];
  v6 = v0[23];

  return v5();
}

uint64_t Entity.ConfigurationCatalog.init(realityFileUrl:options:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v7 = Entity.ConfigurationCatalog.init(realityFileUrl:options:);
  }

  else
  {
    *(v4 + 192) = a1;
    v7 = Entity.ConfigurationCatalog.init(realityFileUrl:options:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t Entity.ConfigurationCatalog.init(importSession:importSessionSwiftObject:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v4[16] = a1;
  v4[17] = a2;
  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.init(importSession:importSessionSwiftObject:options:), 0, 0);
}

uint64_t Entity.ConfigurationCatalog.init(importSession:importSessionSwiftObject:options:)()
{
  v1 = v0[18];
  v2 = v0[17];
  outlined init with copy of [String : String](v0[19], (v0 + 2), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReader();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  v3 = v2;
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = Entity.ConfigurationCatalog.init(importSession:importSessionSwiftObject:options:);
  v5 = v0[17];

  return Entity.ConfigurationCatalog.USDConfigurationReader.init(importSession:importSessionSwiftObject:options:)(v5, v1, (v0 + 2));
}

{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  swift_unknownObjectRelease();

  outlined destroy of BodyTrackingComponent?(v3, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  *v5 = v2;
  v5[1] = v1;
  v5[2] = &protocol witness table for Entity.ConfigurationCatalog.USDConfigurationReader;
  v6 = v0[1];

  return v6();
}

{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  swift_unknownObjectRelease();

  outlined destroy of BodyTrackingComponent?(v2, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  v4 = v0[1];
  v5 = v0[21];

  return v4();
}

uint64_t Entity.ConfigurationCatalog.init(importSession:importSessionSwiftObject:options:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v7 = *(v4 + 144);
    swift_unknownObjectRelease();
    v8 = Entity.ConfigurationCatalog.init(importSession:importSessionSwiftObject:options:);
  }

  else
  {
    *(v4 + 176) = a1;
    v8 = Entity.ConfigurationCatalog.init(importSession:importSessionSwiftObject:options:);
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t Entity.ConfigurationCatalog.configurationSets.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 16))(ObjectType, v2);
  v5 = (*(v2 + 8))(ObjectType, v2);
  v7 = *(v4 + 24);
  if (!*(v7 + 16))
  {

    return MEMORY[0x1E69E7CC8];
  }

  v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
  v10 = v9;

  if ((v10 & 1) == 0)
  {

    return MEMORY[0x1E69E7CC8];
  }

  v11 = *(*(v7 + 56) + 8 * v8);
  v47 = MEMORY[0x1E69E7CC8];
  v12 = *(*(v11 + 40) + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV0E3SetVGMd, &_sSDySS10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV0E3SetVGMR);
  Dictionary.reserveCapacity(_:)(v12);
  v13 = *(v11 + 32);
  if (v13 >> 62)
  {
LABEL_33:
    v14 = __CocoaSet.count.getter();
    if (v14)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
LABEL_34:

    return v47;
  }

LABEL_5:
  v44 = v13 & 0xC000000000000001;
  v15 = v47;
  v41 = v13 & 0xFFFFFFFFFFFFFF8;

  v16 = 0;
  v42 = v14;
  v43 = v13;
  while (1)
  {
    if (v44)
    {
      v21 = MEMORY[0x1C68F41F0](v16, v13);
      v22 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v16 >= *(v41 + 16))
      {
        goto LABEL_32;
      }

      v21 = *(v13 + 8 * v16 + 32);

      v22 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    v45 = v22;
    v24 = v21[4];
    v23 = v21[5];
    v25 = v21[3];
    v46 = v21[2];
    v26 = v21[6];
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v23);
    v29 = v47[2];
    v30 = (v28 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_30;
    }

    v32 = v28;
    if (v47[3] < v31)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v28)
      {
        goto LABEL_6;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if (v32)
      {
LABEL_6:

        v17 = (v47[7] + 40 * v13);
        v18 = v17[1];
        v19 = v17[3];
        v20 = v17[4];
        *v17 = v46;
        v17[1] = v25;
        v17[2] = v24;
        v17[3] = v23;
        v17[4] = v26;

        goto LABEL_7;
      }
    }

LABEL_21:
    v47[(v13 >> 6) + 8] |= 1 << v13;
    v35 = (v47[6] + 16 * v13);
    *v35 = v24;
    v35[1] = v23;
    v36 = (v47[7] + 40 * v13);
    *v36 = v46;
    v36[1] = v25;
    v36[2] = v24;
    v36[3] = v23;
    v36[4] = v26;

    v37 = v47[2];
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_31;
    }

    v47[2] = v39;
LABEL_7:
    ++v16;
    v13 = v43;
    if (v45 == v42)
    {

      return v15;
    }
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v31, isUniquelyReferenced_nonNull_native);
  v33 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v23);
  if ((v32 & 1) == (v34 & 1))
  {
    v13 = v33;
    if (v32)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t Entity.ConfigurationCatalog.loadEntity(withConfigurations:loadOptions:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 152) = a1;
  *(v3 + 160) = a2;
  *(v3 + 168) = *v2;
  *(v3 + 176) = *(v2 + 8);
  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.loadEntity(withConfigurations:loadOptions:), 0, 0);
}

uint64_t Entity.ConfigurationCatalog.loadEntity(withConfigurations:loadOptions:)()
{
  outlined init with copy of [String : String](*(v0 + 160), v0 + 16, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  if (*(v0 + 16) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v0 + 16, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  }

  else
  {
    v1 = *(v0 + 32);
    outlined destroy of Entity.ConfigurationCatalog.LoadOptions(v0 + 16);
    if (v1 == 1)
    {
      type metadata accessor for MainActor();
      *(v0 + 192) = static MainActor.shared.getter();
      v2 = dispatch thunk of Actor.unownedExecutor.getter();
      v4 = v3;
      v5 = Entity.ConfigurationCatalog.loadEntity(withConfigurations:loadOptions:);
      goto LABEL_6;
    }
  }

  type metadata accessor for MainActor();
  *(v0 + 200) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v4 = v6;
  v5 = Entity.ConfigurationCatalog.loadEntity(withConfigurations:loadOptions:);
LABEL_6:

  return MEMORY[0x1EEE6DFA0](v5, v2, v4);
}

{
  v1 = *(v0 + 192);

  type metadata accessor for AnchorEntity();
  v2 = *(v0 + 168);
  swift_allocObject();
  v8 = *(v0 + 176);
  v3 = Entity.init()();
  *(v0 + 208) = v3;
  *(v0 + 128) = v2;
  *(v0 + 136) = v8;
  v4 = swift_task_alloc();
  *(v0 + 216) = v4;
  *v4 = v0;
  v4[1] = Entity.ConfigurationCatalog.loadEntity(withConfigurations:loadOptions:);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);

  return Entity.ConfigurationCatalog.loadEntity(into:withConfigurations:loadOptions:)(v3, v5, v6);
}

{
  v1 = *(v0 + 200);

  type metadata accessor for Entity();
  v2 = *(v0 + 168);
  swift_allocObject();
  v8 = *(v0 + 176);
  v3 = Entity.init()();
  *(v0 + 208) = v3;
  *(v0 + 128) = v2;
  *(v0 + 136) = v8;
  v4 = swift_task_alloc();
  *(v0 + 216) = v4;
  *v4 = v0;
  v4[1] = Entity.ConfigurationCatalog.loadEntity(withConfigurations:loadOptions:);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);

  return Entity.ConfigurationCatalog.loadEntity(into:withConfigurations:loadOptions:)(v3, v5, v6);
}

{
  v2 = *(*v1 + 216);
  v3 = *v1;
  v3[28] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.loadEntity(withConfigurations:loadOptions:), 0, 0);
  }

  else
  {
    v4 = v3[1];
    v5 = v3[26];

    return v4(v5);
  }
}

{
  v1 = v0[26];

  v2 = v0[1];
  v3 = v0[28];

  return v2();
}

uint64_t Entity.ConfigurationCatalog.loadEntity(into:withConfigurations:loadOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 216) = a2;
  *(v4 + 224) = a3;
  *(v4 + 208) = a1;
  *(v4 + 232) = *(v3 + 8);
  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.loadEntity(into:withConfigurations:loadOptions:), 0, 0);
}

uint64_t Entity.ConfigurationCatalog.loadEntity(into:withConfigurations:loadOptions:)()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 16))(ObjectType, v2);
  *(v0 + 248) = v4;
  v5 = (*(v2 + 8))(ObjectType, v2);
  v7 = v5;
  v8 = v6;
  v9 = *(v4 + 24);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6), (v11 & 1) != 0))
  {
    v12 = *(v0 + 216);
    v13 = *(*(v9 + 56) + 8 * v10);
    *(v0 + 256) = v13;
    v14 = *(v13 + 32);

    v16 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVyS2S_GTt0g5(v15);
    v17 = MEMORY[0x1E69E7CC8];
    *(v0 + 184) = v16;
    *(v0 + 192) = v17;
    if (v14 >> 62)
    {
      v18 = __CocoaSet.count.getter();
    }

    else
    {
      v18 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = *(v0 + 216);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    Dictionary.reserveCapacity(_:)(v18);
    v20 = *(v0 + 192);

    v21 = specialized Sequence.reduce<A>(into:_:)(v20, v14, v19);

    v22 = *(v0 + 184);
    *(v0 + 264) = v22;
    if (*(v22 + 16))
    {

      *(v0 + 200) = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
      lazy protocol witness table accessor for type Set<String> and conformance Set<A>();
      lazy protocol witness table accessor for type String and conformance String();
      v23 = Sequence<>.joined(separator:)();
      v25 = v24;

      lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
      swift_allocError();
      *v26 = v23;
      *(v26 + 8) = v25;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0;
      *(v26 + 16) = 0;
      *(v26 + 40) = 2;
      swift_willThrow();

LABEL_9:
      v28 = *(v0 + 8);

      return v28();
    }

    v47 = *(v0 + 240);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SDyS2SGtGMd, &_ss23_ContiguousArrayStorageCySS_SDyS2SGtGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    *(inited + 32) = v7;
    v39 = inited + 32;
    *(inited + 40) = v8;
    *(inited + 48) = v21;
    v40 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDyS2SGTt0g5Tf4g_n(inited);
    *(v0 + 272) = v40;
    swift_setDeallocating();
    outlined destroy of BodyTrackingComponent?(v39, &_sSS_SDyS2SGtMd, &_sSS_SDyS2SGtMR);
    v41 = *(v47 + 24);
    v45 = (v41 + *v41);
    v42 = v41[1];
    v43 = swift_task_alloc();
    *(v0 + 280) = v43;
    *v43 = v0;
    v43[1] = Entity.ConfigurationCatalog.loadEntity(into:withConfigurations:loadOptions:);
    v44 = *(v0 + 232);
    v33 = *(v0 + 240);
    v37 = *(v0 + 224);
    v35 = *(v0 + 208);
    v36 = v40;
  }

  else
  {
    if (*(*(v0 + 216) + 16))
    {
      lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
      swift_allocError();
      *v27 = v7;
      *(v27 + 8) = v8;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0;
      *(v27 + 16) = 0;
      *(v27 + 40) = 0;
      swift_willThrow();

      goto LABEL_9;
    }

    v46 = *(v0 + 240);

    *(v0 + 16) = 1;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 104) = 0u;
    *(v0 + 120) = 0;
    v30 = *(v46 + 24);
    v45 = (v30 + *v30);
    v31 = v30[1];
    v32 = swift_task_alloc();
    *(v0 + 296) = v32;
    *v32 = v0;
    v32[1] = Entity.ConfigurationCatalog.loadEntity(into:withConfigurations:loadOptions:);
    v34 = *(v0 + 232);
    v33 = *(v0 + 240);
    v35 = *(v0 + 208);
    v36 = 0;
    v37 = v0 + 16;
  }

  return v45(v35, v36, v37, ObjectType, v33);
}

{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v7 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = *(v2 + 272);

    v5 = Entity.ConfigurationCatalog.loadEntity(into:withConfigurations:loadOptions:);
  }

  else
  {
    v5 = Entity.ConfigurationCatalog.loadEntity(into:withConfigurations:loadOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v2 = v0[33];
  v1 = v0[34];
  v4 = v0[31];
  v3 = v0[32];

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];

  v4 = v0[36];
  v5 = v0[1];

  return v5();
}

{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = Entity.ConfigurationCatalog.loadEntity(into:withConfigurations:loadOptions:);
  }

  else
  {
    v3 = Entity.ConfigurationCatalog.loadEntity(into:withConfigurations:loadOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 248);
  outlined destroy of BodyTrackingComponent?(v0 + 16, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[31];
  outlined destroy of BodyTrackingComponent?((v0 + 2), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);

  v2 = v0[38];
  v3 = v0[1];

  return v3();
}

unint64_t Entity.ConfigurationCatalog.ConfigurableEntityError.errorDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  switch(*(v0 + 40))
  {
    case 1:
      v22 = 0;
      _StringGuts.grow(_:)(67);
      v10 = "ration set names: '";
      v11 = 45;
      goto LABEL_11;
    case 2:
      v22 = 0;
      _StringGuts.grow(_:)(55);
      v10 = "any configurations.";
      v11 = 33;
      goto LABEL_11;
    case 3:
      v22 = 0;
      _StringGuts.grow(_:)(60);
      MEMORY[0x1C68F3410](0xD000000000000017, 0x80000001C18EAAE0);
      MEMORY[0x1C68F3410](v2, v1);
      v13 = "The configuration set '";
      v8 = 0xD000000000000023;
      goto LABEL_17;
    case 4:
      v22 = 0;
      _StringGuts.grow(_:)(58);
      v10 = "' was used more than once.";
      v11 = 36;
LABEL_11:
      MEMORY[0x1C68F3410](v11 | 0xD000000000000012, v10 | 0x8000000000000000);
      goto LABEL_12;
    case 5:
      v22 = 0;
      _StringGuts.grow(_:)(52);
      v19 = " with more than one Entity: ";
      v20 = 0xD000000000000018;
      goto LABEL_15;
    case 6:
      v22 = 0;
      _StringGuts.grow(_:)(56);
      v19 = "passed configuration set are '";
      v20 = 0xD00000000000001CLL;
LABEL_15:
      MEMORY[0x1C68F3410](v20, v19 | 0x8000000000000000);
      MEMORY[0x1C68F3410](v2, v1);
      v13 = "t match those keys, including '";
      v8 = 0xD00000000000001ALL;
      goto LABEL_17;
    case 7:
      v22 = 0;
      _StringGuts.grow(_:)(105);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1C68F3410](v14);

      v15 = "', which maps to '";
      v16 = 0xD00000000000004FLL;
      goto LABEL_19;
    case 8:
      v22 = 0;
      _StringGuts.grow(_:)(109);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1C68F3410](v21);

      v15 = "' is used multiple times.";
      v16 = 0xD000000000000053;
LABEL_19:
      MEMORY[0x1C68F3410](v16, v15 | 0x8000000000000000);
      MEMORY[0x1C68F3410](v1, v4);
      MEMORY[0x1C68F3410](0xD000000000000012, 0x80000001C18EAA10);
      v17 = v3;
      v18 = v5;
      goto LABEL_20;
    case 9:
      _StringGuts.grow(_:)(44);

      v22 = 0xD000000000000011;
      MEMORY[0x1C68F3410](v2, v1);
      v13 = "The source path '";
      v8 = 0xD000000000000019;
      goto LABEL_17;
    case 0xA:
      v22 = 0;
      _StringGuts.grow(_:)(79);
      MEMORY[0x1C68F3410](0xD000000000000022, 0x80000001C18EA910);
      MEMORY[0x1C68F3410](v2, v1);
      v13 = "gurationId value '";
      v8 = 0xD00000000000002BLL;
LABEL_17:
      v9 = v13 | 0x8000000000000000;
      goto LABEL_21;
    case 0xB:
      v22 = 0;
      _StringGuts.grow(_:)(129);
      MEMORY[0x1C68F3410](0xD00000000000002FLL, 0x80000001C18EA840);
      v6 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1C68F3410](v6);

      MEMORY[0x1C68F3410](0xD00000000000004DLL, 0x80000001C18EA870);
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1C68F3410](v7);

      v8 = 46;
      v9 = 0xE100000000000000;
      goto LABEL_21;
    case 0xC:
      return 0xD000000000000042;
    default:
      _StringGuts.grow(_:)(49);

      v22 = 0xD00000000000002DLL;
LABEL_12:
      v17 = v2;
      v18 = v1;
LABEL_20:
      MEMORY[0x1C68F3410](v17, v18);
      v8 = 11815;
      v9 = 0xE200000000000000;
LABEL_21:
      MEMORY[0x1C68F3410](v8, v9);
      return v22;
  }
}

uint64_t Entity.init(from:configurations:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 152) = a2;
  *(v3 + 160) = v2;
  *(v3 + 168) = *a1;
  *(v3 + 176) = *(a1 + 8);
  type metadata accessor for MainActor();
  *(v3 + 192) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 200) = v5;
  *(v3 + 208) = v4;

  return MEMORY[0x1EEE6DFA0](Entity.init(from:configurations:), v5, v4);
}

uint64_t Entity.init(from:configurations:)()
{
  *(v0 + 128) = *(v0 + 168);
  *(v0 + 136) = *(v0 + 176);
  *(v0 + 16) = 1;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0;
  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  *v1 = v0;
  v1[1] = Entity.init(from:configurations:);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);

  return Entity.init(from:configurations:loadOptions:)((v0 + 128), v2, v0 + 16);
}

{
  v1 = v0[24];

  v2 = v0[1];
  v3 = v0[29];

  return v2(v3);
}

{
  v1 = v0[24];

  v2 = v0[1];
  v3 = v0[28];

  return v2();
}

uint64_t Entity.init(from:configurations:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v7 = v4[25];
    v8 = v4[26];
    v9 = Entity.init(from:configurations:);
  }

  else
  {
    v4[29] = a1;
    v7 = v4[25];
    v8 = v4[26];
    v9 = Entity.init(from:configurations:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t Entity.init(from:configurations:loadOptions:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;
  v5 = *a1;
  *(v4 + 56) = v3;
  *(v4 + 64) = v5;
  *(v4 + 72) = *(a1 + 1);
  type metadata accessor for MainActor();
  *(v4 + 88) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 96) = v7;
  *(v4 + 104) = v6;

  return MEMORY[0x1EEE6DFA0](Entity.init(from:configurations:loadOptions:), v7, v6);
}

uint64_t Entity.init(from:configurations:loadOptions:)()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v8 = *(v0 + 72);
  v3 = (*(*(v0 + 56) + 232))();
  *(v0 + 16) = v1;
  *(v0 + 112) = v3;
  *(v0 + 24) = v8;
  if (v2)
  {
    v4 = *(v0 + 40);
  }

  else
  {
    v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  *(v0 + 120) = v4;
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = Entity.init(from:configurations:loadOptions:);
  v6 = *(v0 + 48);

  return Entity.ConfigurationCatalog.loadEntity(into:withConfigurations:loadOptions:)(v3, v4, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v11 = *v1;
  *(*v1 + 136) = v0;

  v4 = v2[15];
  if (v0)
  {

    v5 = v2[12];
    v6 = v2[13];
    v7 = Entity.init(from:configurations:loadOptions:);
  }

  else
  {
    v9 = v2[8];
    v8 = v2[9];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v5 = v2[12];
    v6 = v2[13];
    v7 = Entity.init(from:configurations:loadOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

{
  v1 = v0[11];
  v2 = v0[6];

  outlined destroy of BodyTrackingComponent?(v2, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  v3 = v0[1];
  v4 = v0[14];

  return v3(v4);
}

{
  v1 = v0[14];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];

  outlined destroy of BodyTrackingComponent?(v5, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v6 = v0[1];
  v7 = v0[17];

  return v6();
}

uint64_t static Entity.load(from:configurations:loadOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  *(v3 + 56) = *a1;
  *(v3 + 64) = *(a1 + 8);
  type metadata accessor for MainActor();
  *(v3 + 80) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 88) = v5;
  *(v3 + 96) = v4;

  return MEMORY[0x1EEE6DFA0](static Entity.load(from:configurations:loadOptions:), v5, v4);
}

uint64_t static Entity.load(from:configurations:loadOptions:)()
{
  *(v0 + 16) = *(v0 + 56);
  v1 = *(v0 + 40);
  *(v0 + 24) = *(v0 + 64);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  *(v0 + 104) = v2;

  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = static Entity.load(from:configurations:loadOptions:);
  v4 = *(v0 + 48);

  return Entity.ConfigurationCatalog.loadEntity(withConfigurations:loadOptions:)(v2, v4);
}

{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[16];

  return v2(v3);
}

{
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t static Entity.load(from:configurations:loadOptions:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = v4[11];
    v8 = v4[12];
    v9 = static Entity.load(from:configurations:loadOptions:);
  }

  else
  {
    v10 = v4[13];

    v4[16] = a1;
    v7 = v4[11];
    v8 = v4[12];
    v9 = static Entity.load(from:configurations:loadOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t static Entity.ConfigurationCatalog.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v9 = *a1;
  v10 = *(a1 + 1);
  v4 = Entity.ConfigurationCatalog.configurationSets.getter();
  v8 = *(a2 + 1);
  v5 = Entity.ConfigurationCatalog.configurationSets.getter();
  v6 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10RealityKit6EntityC0B10FoundationE20ConfigurationCatalogV0F3SetVTt1g5(v4, v5);

  return v6 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Entity.ConfigurationCatalog(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v9 = *a1;
  v10 = *(a1 + 1);
  v4 = Entity.ConfigurationCatalog.configurationSets.getter();
  v8 = *(a2 + 1);
  v5 = Entity.ConfigurationCatalog.configurationSets.getter();
  v6 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10RealityKit6EntityC0B10FoundationE20ConfigurationCatalogV0F3SetVTt1g5(v4, v5);

  return v6 & 1;
}

uint64_t static Entity.ConfigurationCatalog.ConfigurationSet.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Entity.ConfigurationCatalog.ConfigurationSet(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t specialized Dictionary.Values.subscript.getter@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v4 = (*(a3 + 56) + 16 * result);
    v5 = v4[1];
    *a4 = *v4;
    a4[1] = v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t specialized Dictionary.Keys.subscript.getter(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t specialized Sequence.reduce<A>(into:_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (a2 >> 62)
  {
    goto LABEL_16;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      v26 = v3 & 0xC000000000000001;
      v27 = a3;
      v24 = v3;
      v25 = v3 & 0xFFFFFFFFFFFFFF8;
      v23 = v5;
      while (v26)
      {
        v13 = MEMORY[0x1C68F41F0](v6, v3);
        v12 = v27;
        v14 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_14;
        }

LABEL_9:
        v16 = *(v13 + 32);
        v15 = *(v13 + 40);
        v17 = *(v12 + 16);

        if (v17 && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v15), (v19 & 1) != 0))
        {
          v7 = (*(v12 + 56) + 16 * v18);
          v8 = v7 + 1;
        }

        else
        {
          v7 = (v13 + 16);
          v8 = (v13 + 24);
        }

        v9 = *v7;
        v10 = *v8;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, v10, v16, v15, isUniquelyReferenced_nonNull_native);

        specialized Set._Variant.remove(_:)(v16, v15);

        ++v6;
        v3 = v24;
        if (v14 == v23)
        {
          return a1;
        }
      }

      v12 = v27;
      if (v6 >= *(v25 + 16))
      {
        goto LABEL_15;
      }

      v13 = *(v3 + 8 * v6 + 32);

      v14 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_9;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v20 = a3;
      v21 = __CocoaSet.count.getter();
      a3 = v20;
      v5 = v21;
    }

    while (v21);
  }

  return a1;
}

uint64_t specialized Entity.ConfigurationCatalog.write(to:options:)(uint64_t a1)
{
  *(v2 + 912) = a1;
  *(v2 + 920) = *(v1 + 8);
  *(v2 + 936) = type metadata accessor for MainActor();
  *(v2 + 944) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 952) = v4;
  *(v2 + 960) = v3;

  return MEMORY[0x1EEE6DFA0](specialized Entity.ConfigurationCatalog.write(to:options:), v4, v3);
}

{
  v3 = *v2;
  v4 = *(*v2 + 1064);
  v17 = *v2;
  v3[134] = a1;
  v3[135] = v1;

  if (v1)
  {
    v5 = v3[132];
    v6 = v3[131];
    v7 = v3[130];
    v8 = v3[125];
    v9 = v3[123];

    outlined destroy of BodyTrackingComponent?((v3 + 69), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);

    v10 = v3[110];

    v11 = v3[108];

    v12 = v3[120];
    v13 = v3[119];
    v14 = specialized Entity.ConfigurationCatalog.write(to:options:);
  }

  else
  {
    v15 = v3[132];
    outlined destroy of BodyTrackingComponent?((v3 + 69), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);

    v12 = v3[120];
    v13 = v3[119];
    v14 = specialized Entity.ConfigurationCatalog.write(to:options:);
  }

  return MEMORY[0x1EEE6DFA0](v14, v13, v12);
}

uint64_t specialized Entity.ConfigurationCatalog.write(to:options:)()
{
  v1 = *(v0 + 928);
  v2 = *(v0 + 920);
  ObjectType = swift_getObjectType();
  *(v0 + 968) = ObjectType;
  v4 = (*(v1 + 8))();
  v6 = v5;
  *(v0 + 976) = v4;
  *(v0 + 984) = v5;
  v7 = *((*(v1 + 16))(ObjectType, v1) + 24);

  if (!*(v7 + 16) || (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v6), (v9 & 1) == 0))
  {
    v20 = *(v0 + 944);

    lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
    swift_allocError();
    *v21 = v4;
    *(v21 + 8) = v6;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    *(v21 + 16) = 0;
    *(v21 + 40) = 0;
    swift_willThrow();
    v22 = *(v0 + 8);

    return v22();
  }

  v10 = *(*(v7 + 56) + 8 * v8);
  *(v0 + 992) = v10;

  v12 = *(v10 + 32);
  *(v0 + 1000) = v12;
  *(v0 + 864) = MEMORY[0x1E69E7CC0];
  if (v12 >> 62)
  {
    goto LABEL_17;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
    while (v13 >= 1)
    {

      v14 = 0;
      v15 = 1;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1C68F41F0](v14, v12);
        }

        else
        {
          v16 = *(v12 + 8 * v14 + 32);
        }

        v17 = *(v16 + 48);

        v18 = *(v17 + 16);

        v19 = v15 * v18;
        if ((v15 * v18) >> 64 != (v15 * v18) >> 63)
        {
          break;
        }

        ++v14;
        v15 *= v18;
        if (v13 == v14)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_17:
      result = __CocoaSet.count.getter();
      v13 = result;
      if (!result)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_91:
    __break(1u);
    return result;
  }

LABEL_18:

  v19 = 1;
LABEL_19:
  specialized Array.reserveCapacity(_:)(v19);
  *(v0 + 872) = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
  Set.reserveCapacity(_:)(v19);
  *(v0 + 880) = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySSGGMd, &_sSDySSSaySSGGMR);
  Dictionary.reserveCapacity(_:)(v19);
  if (v12 >> 62)
  {
    v23 = __CocoaSet.count.getter();
  }

  else
  {
    v23 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 1008) = v23;
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v85 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23 & ~(v23 >> 63), 0);
    if (v23 < 0)
    {
      goto LABEL_91;
    }

    v25 = 0;
    v26 = v85;
    v27 = v12 & 0xC000000000000001;
    do
    {
      if (v27)
      {
        MEMORY[0x1C68F41F0](v25, v12);
        swift_unknownObjectRelease();
      }

      v29 = *(v85 + 16);
      v28 = *(v85 + 24);
      if (v29 >= v28 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
      }

      ++v25;
      *(v85 + 16) = v29 + 1;
      *(v85 + 8 * v29 + 32) = 0;
    }

    while (v23 != v25);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
    v30 = 0;
    do
    {
      if (v27)
      {
        MEMORY[0x1C68F41F0](v30, v12);
        swift_unknownObjectRelease();
      }

      v32 = *(v24 + 2);
      v31 = *(v24 + 3);
      v33 = v24;
      if (v32 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
        v33 = v24;
      }

      ++v30;
      *(v33 + 2) = v32 + 1;
      v34 = &v33[16 * v32];
      *(v34 + 4) = 0;
      *(v34 + 5) = 0xE000000000000000;
      v24 = v33;
    }

    while (v23 != v30);
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_89:
    v26 = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
  }

  *(v0 + 1016) = v26;
  *(v0 + 1024) = 0;
  v35 = *(v0 + 1008);
  if (!v35)
  {
    v69 = 1;
    v37 = MEMORY[0x1E69E7CC8];
    goto LABEL_74;
  }

  v36 = 0;
  v84 = (v0 + 888);
  v37 = MEMORY[0x1E69E7CC8];
  v79 = 1;
  v78 = v0;
  while (2)
  {
    v38 = 16 * v36;
    v39 = v36 + 4;
    while (1)
    {
      v26 = (v39 - 4);
      if (v39 - 4 >= v35)
      {
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      if (__OFADD__(v26, 1))
      {
        goto LABEL_81;
      }

      v40 = *(v0 + 1000);
      if ((v40 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x1C68F41F0](v39 - 4);
      }

      else
      {
        if (v26 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_88;
        }

        v42 = *(v40 + 8 * v39);
      }

      v43 = *(v0 + 1016);
      if (v26 >= *(v43 + 16))
      {
        goto LABEL_82;
      }

      v44 = *(v43 + 8 * v39);
      if ((v44 & 0x8000000000000000) != 0)
      {
        goto LABEL_83;
      }

      v45 = v41[7];
      if (v44 >= *(v45 + 16))
      {
        goto LABEL_84;
      }

      v82 = v38;
      v83 = v24;
      v80 = v39 - 3;
      v81 = v41;
      v46 = v45 + 16 * v44;
      v48 = *(v46 + 32);
      v47 = *(v46 + 40);
      v24 = v41[4];
      v49 = v41[5];
      swift_bridgeObjectRetain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v84 = v37;
      v0 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v49);
      v52 = v37[2];
      v53 = (v51 & 1) == 0;
      v54 = v52 + v53;
      if (__OFADD__(v52, v53))
      {
        goto LABEL_85;
      }

      v55 = v51;
      if (v37[3] >= v54)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v54, isUniquelyReferenced_nonNull_native);
        v56 = *v84;
        v57 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v49);
        if ((v55 & 1) != (v58 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v0 = v57;
      }

      v37 = *v84;
      if (v55)
      {
        v59 = (v37[7] + 16 * v0);
        v60 = v59[1];
        *v59 = v48;
        v59[1] = v47;
      }

      else
      {
        v37[(v0 >> 6) + 8] |= 1 << v0;
        v61 = (v37[6] + 16 * v0);
        *v61 = v24;
        v61[1] = v49;
        v62 = (v37[7] + 16 * v0);
        *v62 = v48;
        v62[1] = v47;
        v63 = v37[2];
        v64 = __OFADD__(v63, 1);
        v65 = v63 + 1;
        if (v64)
        {
          goto LABEL_87;
        }

        v37[2] = v65;
      }

      v24 = v83;
      v0 = v78;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v83);
      }

      if (v26 >= *(v24 + 2))
      {
        goto LABEL_86;
      }

      v66 = &v24[v82];
      v67 = *&v24[v82 + 40];
      *(v66 + 4) = v48;
      *(v66 + 5) = v47;

      if ((v79 & 1) != 0 && (v81[2] != v48 || v81[3] != v47))
      {
        break;
      }

LABEL_43:
      v35 = *(v78 + 1008);
      v38 = v82 + 16;
      ++v39;
      if (v80 == v35)
      {
        v69 = v79;
        goto LABEL_74;
      }
    }

    v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v68)
    {
      goto LABEL_43;
    }

    v79 = 0;
    v69 = 0;
    v35 = *(v78 + 1008);
    v36 = v39 - 3;
    if (v80 != v35)
    {
      continue;
    }

    break;
  }

LABEL_74:
  *(v0 + 1048) = v37;
  *(v0 + 1040) = v24;
  *(v0 + 162) = v69 & 1;
  *(v0 + 1032) = v37;
  v70 = *(v0 + 984);
  v71 = *(v0 + 976);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SDyS2SGtGMd, &_ss23_ContiguousArrayStorageCySS_SDyS2SGtGMR);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1C1887600;
  *(v72 + 32) = v71;
  *(v72 + 40) = v70;
  *(v72 + 48) = v37;

  v73 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDyS2SGTt0g5Tf4g_n(v72);
  *(v0 + 1056) = v73;
  swift_setDeallocating();
  outlined destroy of BodyTrackingComponent?(v72 + 32, &_sSS_SDyS2SGtMd, &_sSS_SDyS2SGtMR);
  swift_deallocClassInstance();
  *(v0 + 552) = 1;
  *(v0 + 560) = 0u;
  *(v0 + 576) = 0u;
  *(v0 + 592) = 0u;
  *(v0 + 608) = 0u;
  *(v0 + 624) = 0u;
  *(v0 + 640) = 0u;
  *(v0 + 656) = 0;
  v74 = swift_task_alloc();
  *(v0 + 1064) = v74;
  *v74 = v0;
  v74[1] = specialized Entity.ConfigurationCatalog.write(to:options:);
  v75 = *(v0 + 968);
  v76 = *(v0 + 928);
  v77 = *(v0 + 920);

  return Entity.ConfigurationCatalog.FormatReader.loadEntity(withConfigurations:loadOptions:)(v73, v0 + 552, v75, v76);
}

{
  v1 = (v0 + 872);
  v136 = v0 + 728;
  v139 = (v0 + 888);
  v2 = *(*(v0 + 1072) + 16);
  REEntityGetName();
  v3 = String.init(cString:)();
  v5 = v4;
  v6 = *(v0 + 1024);
  while (1)
  {
    v7 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v7 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = *v1;
    if (!*(*v1 + 16))
    {
      break;
    }

    v9 = *(v8 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    v10 = Hasher._finalize()();
    v11 = -1 << *(v8 + 32);
    v12 = v10 & ~v11;
    if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      break;
    }

    v13 = ~v11;
    while (1)
    {
      v14 = (*(v8 + 48) + 16 * v12);
      v15 = *v14 == v3 && v14[1] == v5;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

LABEL_15:
    *(v0 + 832) = 0x5F656E656353;
    *(v0 + 840) = 0xE600000000000000;
    *(v0 + 896) = v6;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v16);

    v17 = __OFADD__(v6++, 1);
    if (v17)
    {
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    v3 = *(v0 + 832);
    v5 = *(v0 + 840);
  }

LABEL_17:
  v18 = *(v0 + 1072);
  v19 = *(v0 + 162);
  swift_bridgeObjectRetain_n();
  specialized Set._Variant.insert(_:)((v0 + 848), v3, v5);
  v20 = *(v0 + 856);

  Entity.name.setter();
  v23 = *(v0 + 864);
  v24 = v23 >> 62;
  if (v19)
  {
    v25 = 0;
    if (v24)
    {
      goto LABEL_118;
    }

LABEL_22:
    v26 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26 >= v25)
    {
      goto LABEL_23;
    }

LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v26, v21, v22);
  }

  if (!v24)
  {
    v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_22;
  }

  if (v23 < 0)
  {
    v130 = *(v0 + 864);
  }

  v25 = __CocoaSet.count.getter();
LABEL_118:
  v26 = __CocoaSet.count.getter();
  if (v26 < v25)
  {
    goto LABEL_119;
  }

LABEL_23:
  if (v25 < 0)
  {
    goto LABEL_113;
  }

  v27 = *(v0 + 1072);
  v28 = *(v0 + 1040);
  v29 = *(v0 + 1016);

  specialized Array.replaceSubrange<A>(_:with:)(v25, v25, v27);

  v30 = *(v0 + 880);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, v3, v5, isUniquelyReferenced_nonNull_native);

  v1 = v30;
  *(v0 + 1088) = v30;
  *(v0 + 880) = v30;
  v32 = *(v29 + 16);
  if (!v32)
  {
LABEL_36:
    v42 = *(v0 + 1080);
    v43 = *(v0 + 1072);
    v44 = *(v0 + 1048);
    v45 = *(v0 + 984);

    v46 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v46 + 120, v136);
    v47 = *(v0 + 864);
    *(v0 + 904) = MEMORY[0x1E69E7CC8];
    v48 = swift_task_alloc();
    *(v48 + 16) = v136;
    *(v48 + 24) = v0 + 904;
    v49 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in static __REAssetBundle.__init(elements:assetService:), v48, v47);

    v50 = *(v0 + 904);
    outlined init with copy of __REAssetService(v136, v0 + 768);
    __REAssetBundle.init(sceneAssets:assetService:assetMapSceneDescriptorsByAsset:header:)(v49, (v0 + 768), v50, 0, (v0 + 664));
    *(v0 + 1176) = 0;
    *(v0 + 161) = 1;
    if (one-time initialization token for defaultRealityFileVersionForWritePublicAPI == -1)
    {
LABEL_37:
      v51 = *(v0 + 1008);
      v52 = static __REAssetBundle.defaultRealityFileVersionForWritePublicAPI;
      *(v0 + 1096) = static __REAssetBundle.defaultRealityFileVersionForWritePublicAPI;
      *(v0 + 1184) = 0;
      if (v51)
      {
        v137 = v52;
        v53 = MEMORY[0x1E69E7CC0];
        v140 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51, 0);
        v54 = 0;
        v55 = v140;
        do
        {
          v56 = *(v0 + 1000);
          if ((v56 & 0xC000000000000001) != 0)
          {
            v57 = MEMORY[0x1C68F41F0](v54);
          }

          else
          {
            v57 = *(v56 + 8 * v54 + 32);
          }

          v59 = *(v57 + 32);
          v58 = *(v57 + 40);

          v61 = *(v140 + 16);
          v60 = *(v140 + 24);
          if (v61 >= v60 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1);
          }

          v62 = *(v0 + 1008);
          ++v54;
          *(v140 + 16) = v61 + 1;
          v63 = v140 + 16 * v61;
          *(v63 + 32) = v59;
          *(v63 + 40) = v58;
        }

        while (v54 != v62);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v0 + 1008), 0);
        v64 = 0;
        v65 = v53;
        do
        {
          v66 = *(v0 + 1000);
          if ((v66 & 0xC000000000000001) != 0)
          {
            v67 = MEMORY[0x1C68F41F0](v64);
          }

          else
          {
            v67 = *(v66 + 8 * v64 + 32);
          }

          v68 = *(v67 + 16);
          v69 = *(v67 + 24);

          v71 = *(v65 + 16);
          v70 = *(v65 + 24);
          if (v71 >= v70 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1);
          }

          v72 = *(v0 + 1008);
          ++v64;
          *(v65 + 16) = v71 + 1;
          v73 = v65 + 16 * v71;
          *(v73 + 32) = v68;
          *(v73 + 40) = v69;
        }

        while (v64 != v72);
        v74 = *(v0 + 1040);
        v75 = *(v0 + 1000);

        v52 = v137;
      }

      else
      {
        v116 = *(v0 + 1040);
        v117 = *(v0 + 1000);

        v55 = MEMORY[0x1E69E7CC0];
        v65 = MEMORY[0x1E69E7CC0];
      }

      *(v0 + 1112) = v65;
      *(v0 + 1104) = v55;
      *(v0 + 168) = 1;
      v118 = *(v0 + 936);
      *(v0 + 169) = *(v0 + 139);
      *(v0 + 172) = *(v0 + 142);
      *(v0 + 176) = 1;
      *(v0 + 184) = *(v0 + 1176);
      *(v0 + 185) = *(v0 + 146);
      *(v0 + 188) = *(v0 + 149);
      *(v0 + 192) = 0;
      *(v0 + 200) = 1;
      *(v0 + 202) = 0;
      *(v0 + 203) = *(v0 + 161);
      *(v0 + 208) = xmmword_1C18B7B50;
      *(v0 + 224) = 0;
      *(v0 + 236) = 0;
      *(v0 + 232) = 0;
      *(v0 + 237) = *(v0 + 158);
      *(v0 + 239) = *(v0 + 160);
      *(v0 + 240) = v52;
      *(v0 + 248) = *(v0 + 1184);
      *(v0 + 249) = 1;
      *(v0 + 251) = *(v0 + 153);
      *(v0 + 255) = *(v0 + 157);
      *(v0 + 256) = v55;
      *(v0 + 264) = v65;
      *(v0 + 272) = v1;
      *(v0 + 280) = 0;
      *(v0 + 288) = 1;
      *(v0 + 290) = 3;
      outlined init with copy of __REAssetBundle.ExportOptions(v0 + 168, v0 + 296);
      *(v0 + 1120) = static MainActor.shared.getter();
      v119 = dispatch thunk of Actor.unownedExecutor.getter();
      v22 = v120;
      *(v0 + 1128) = v119;
      *(v0 + 1136) = v120;
      v26 = specialized Entity.ConfigurationCatalog.write(to:options:);
      v21 = v119;

      return MEMORY[0x1EEE6DFA0](v26, v21, v22);
    }

LABEL_114:
    swift_once();
    goto LABEL_37;
  }

  v33 = v32 + 3;
  while (1)
  {
    v34 = v33 - 3;
    v35 = *(v0 + 1016);
    if ((v33 - 3) > *(v35 + 16))
    {
      __break(1u);
LABEL_100:
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
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    v36 = *(v35 + 8 * v33);
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      goto LABEL_100;
    }

    v38 = *(v0 + 1000);
    if ((v38 & 0xC000000000000001) != 0)
    {
      v39 = MEMORY[0x1C68F41F0](v33 - 4);
    }

    else
    {
      if (v34 > *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_101;
      }

      v39 = *(v38 + 8 * v33);
    }

    v40 = *(v39 + 48);

    v41 = *(v40 + 16);

    if (v37 < v41)
    {
      break;
    }

    if (v34 > *(*(v0 + 1016) + 16))
    {
      goto LABEL_102;
    }

    *(v35 + 8 * v33--) = 0;
    if (v33 == 3)
    {
      goto LABEL_36;
    }
  }

  v76 = *(v0 + 1072);
  v77 = *(v0 + 1016);

  if (v34 > *(v77 + 16))
  {
    goto LABEL_120;
  }

  *(v35 + 8 * v33) = v37;
  v78 = *(v0 + 1048);
  v79 = *(v0 + 1040);
  v80 = *(v0 + 1032);
  *(v0 + 1024) = v6;
  v81 = *(v0 + 1008);
  if (v81)
  {
    v82 = 0;
    v131 = 1;
LABEL_56:
    v83 = 16 * v82;
    v84 = v82 + 4;
    while (1)
    {
      v85 = v84 - 4;
      if (v84 - 4 >= v81)
      {
        goto LABEL_103;
      }

      if (__OFADD__(v85, 1))
      {
        goto LABEL_104;
      }

      v86 = *(v0 + 1000);
      if ((v86 & 0xC000000000000001) != 0)
      {
        v87 = MEMORY[0x1C68F41F0](v84 - 4);
      }

      else
      {
        if (v85 >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_112;
        }

        v88 = *(v86 + 8 * v84);
      }

      v89 = *(v0 + 1016);
      if (v85 >= *(v89 + 16))
      {
        goto LABEL_105;
      }

      v90 = *(v89 + 8 * v84);
      if ((v90 & 0x8000000000000000) != 0)
      {
        goto LABEL_106;
      }

      v91 = v87[7];
      if (v90 >= *(v91 + 16))
      {
        goto LABEL_107;
      }

      v132 = v84;
      v133 = v84 - 3;
      v135 = v83;
      v138 = v79;
      v92 = v91 + 16 * v90;
      v93 = *(v92 + 32);
      v1 = *(v92 + 40);
      v95 = v87[4];
      v94 = v87[5];
      v134 = v87;
      swift_bridgeObjectRetain_n();

      v96 = swift_isUniquelyReferenced_nonNull_native();
      *v139 = v80;
      v98 = specialized __RawDictionaryStorage.find<A>(_:)(v95, v94);
      v99 = v80[2];
      v100 = (v97 & 1) == 0;
      v101 = v99 + v100;
      if (__OFADD__(v99, v100))
      {
        goto LABEL_108;
      }

      v102 = v97;
      if (v80[3] >= v101)
      {
        if ((v96 & 1) == 0)
        {
          specialized _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v101, v96);
        v103 = *v139;
        v104 = specialized __RawDictionaryStorage.find<A>(_:)(v95, v94);
        if ((v102 & 1) != (v105 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v98 = v104;
      }

      v80 = *v139;
      if (v102)
      {
        v106 = (v80[7] + 16 * v98);
        v107 = v106[1];
        *v106 = v93;
        v106[1] = v1;
      }

      else
      {
        v80[(v98 >> 6) + 8] |= 1 << v98;
        v108 = (v80[6] + 16 * v98);
        *v108 = v95;
        v108[1] = v94;
        v109 = (v80[7] + 16 * v98);
        *v109 = v93;
        v109[1] = v1;
        v110 = v80[2];
        v17 = __OFADD__(v110, 1);
        v111 = v110 + 1;
        if (v17)
        {
          goto LABEL_111;
        }

        v80[2] = v111;
      }

      v79 = v138;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = specialized _ArrayBuffer._consumeAndCreateNew()(v138);
      }

      if (v85 >= *(v79 + 2))
      {
        goto LABEL_109;
      }

      v112 = &v79[v135];
      v113 = *&v79[v135 + 40];
      *(v112 + 4) = v93;
      *(v112 + 5) = v1;

      if ((v131 & 1) == 0 || v134[2] == v93 && v134[3] == v1)
      {
      }

      else
      {
        v114 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v114 & 1) == 0)
        {
          v131 = 0;
          v115 = 0;
          v81 = *(v0 + 1008);
          v78 = v80;
          v82 = v133;
          if (v133 != v81)
          {
            goto LABEL_56;
          }

          goto LABEL_93;
        }
      }

      v81 = *(v0 + 1008);
      v83 = v135 + 16;
      v84 = v132 + 1;
      if (v133 == v81)
      {
        v115 = v131;
        v78 = v80;
        goto LABEL_93;
      }
    }
  }

  v115 = 1;
LABEL_93:
  *(v0 + 1048) = v78;
  *(v0 + 1040) = v79;
  *(v0 + 162) = v115 & 1;
  *(v0 + 1032) = v80;
  v121 = *(v0 + 984);
  v122 = *(v0 + 976);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SDyS2SGtGMd, &_ss23_ContiguousArrayStorageCySS_SDyS2SGtGMR);
  v123 = swift_allocObject();
  *(v123 + 16) = xmmword_1C1887600;
  *(v123 + 32) = v122;
  *(v123 + 40) = v121;
  *(v123 + 48) = v78;

  v124 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDyS2SGTt0g5Tf4g_n(v123);
  *(v0 + 1056) = v124;
  swift_setDeallocating();
  outlined destroy of BodyTrackingComponent?(v123 + 32, &_sSS_SDyS2SGtMd, &_sSS_SDyS2SGtMR);
  swift_deallocClassInstance();
  *(v0 + 552) = 1;
  *(v0 + 560) = 0u;
  *(v0 + 576) = 0u;
  *(v0 + 592) = 0u;
  *(v0 + 608) = 0u;
  *(v0 + 624) = 0u;
  *(v0 + 640) = 0u;
  *(v0 + 656) = 0;
  v125 = swift_task_alloc();
  *(v0 + 1064) = v125;
  *v125 = v0;
  v125[1] = specialized Entity.ConfigurationCatalog.write(to:options:);
  v126 = *(v0 + 968);
  v127 = *(v0 + 928);
  v128 = *(v0 + 920);

  return Entity.ConfigurationCatalog.FormatReader.loadEntity(withConfigurations:loadOptions:)(v124, v0 + 552, v126, v127);
}

{
  v1 = v0[117];
  v2 = v0[114];
  v3 = static MainActor.shared.getter();
  v0[143] = v3;
  v4 = swift_task_alloc();
  v0[144] = v4;
  v4[2] = v0 + 83;
  v4[3] = v2;
  v4[4] = v0 + 21;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[145] = v6;
  *v6 = v0;
  v6[1] = specialized Entity.ConfigurationCatalog.write(to:options:);
  v7 = MEMORY[0x1E69E85E0];
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, v3, v7, 0xD000000000000016, 0x80000001C18EABE0, partial apply for closure #1 in static Entity.WriteHelper.write(bundle:to:with:), v4, v8);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1160);
  v9 = *v1;
  *(*v1 + 1168) = v0;

  if (v0)
  {
    v4 = v2[142];
    v5 = v2[141];
    v6 = specialized Entity.ConfigurationCatalog.write(to:options:);
  }

  else
  {
    v7 = v2[143];

    v4 = v2[142];
    v5 = v2[141];
    v6 = specialized Entity.ConfigurationCatalog.write(to:options:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

{
  v1 = v0[140];

  outlined destroy of __REAssetBundle.ExportOptions((v0 + 21));
  v2 = v0[120];
  v3 = v0[119];

  return MEMORY[0x1EEE6DFA0](specialized Entity.ConfigurationCatalog.write(to:options:), v3, v2);
}

{
  v1 = *(v0 + 1152);
  v10 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1088);
  v4 = *(v0 + 1016);
  v5 = *(v0 + 992);
  v6 = *(v0 + 944);

  outlined destroy of __REAssetBundle(v0 + 664);
  __swift_destroy_boxed_opaque_existential_1((v0 + 728));
  *(v0 + 16) = 1;
  *(v0 + 17) = *(v0 + 139);
  *(v0 + 20) = *(v0 + 142);
  *(v0 + 24) = 1;
  *(v0 + 32) = *(v0 + 1176);
  *(v0 + 33) = *(v0 + 146);
  *(v0 + 36) = *(v0 + 149);
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  *(v0 + 50) = 0;
  *(v0 + 51) = *(v0 + 161);
  *(v0 + 56) = xmmword_1C18B7B50;
  *(v0 + 72) = 0;
  *(v0 + 84) = 0;
  *(v0 + 80) = 0;
  *(v0 + 85) = *(v0 + 158);
  *(v0 + 87) = *(v0 + 160);
  *(v0 + 88) = v2;
  *(v0 + 96) = *(v0 + 1184);
  *(v0 + 97) = 1;
  *(v0 + 99) = *(v0 + 153);
  *(v0 + 103) = *(v0 + 157);
  *(v0 + 104) = v10;
  *(v0 + 120) = v3;
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;
  *(v0 + 138) = 3;
  outlined destroy of __REAssetBundle.ExportOptions(v0 + 16);

  v7 = *(v0 + 872);

  v8 = *(v0 + 8);

  return v8();
}

{
  v1 = v0[143];
  v2 = v0[140];

  outlined destroy of __REAssetBundle.ExportOptions((v0 + 21));
  v3 = v0[120];
  v4 = v0[119];

  return MEMORY[0x1EEE6DFA0](specialized Entity.ConfigurationCatalog.write(to:options:), v4, v3);
}

{
  v1 = *(v0 + 1152);
  v11 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1088);
  v4 = *(v0 + 1016);
  v5 = *(v0 + 992);
  v6 = *(v0 + 944);

  outlined destroy of __REAssetBundle(v0 + 664);
  __swift_destroy_boxed_opaque_existential_1((v0 + 728));
  *(v0 + 424) = 1;
  *(v0 + 425) = *(v0 + 139);
  *(v0 + 428) = *(v0 + 142);
  *(v0 + 432) = 1;
  *(v0 + 440) = *(v0 + 1176);
  *(v0 + 441) = *(v0 + 146);
  *(v0 + 444) = *(v0 + 149);
  *(v0 + 448) = 0;
  *(v0 + 456) = 1;
  *(v0 + 458) = 0;
  *(v0 + 459) = *(v0 + 161);
  *(v0 + 464) = xmmword_1C18B7B50;
  *(v0 + 480) = 0;
  *(v0 + 492) = 0;
  *(v0 + 488) = 0;
  *(v0 + 493) = *(v0 + 158);
  *(v0 + 495) = *(v0 + 160);
  *(v0 + 496) = v2;
  *(v0 + 504) = *(v0 + 1184);
  *(v0 + 505) = 1;
  *(v0 + 507) = *(v0 + 153);
  *(v0 + 511) = *(v0 + 157);
  *(v0 + 512) = v11;
  *(v0 + 528) = v3;
  *(v0 + 536) = 0;
  *(v0 + 544) = 1;
  *(v0 + 546) = 3;
  outlined destroy of __REAssetBundle.ExportOptions(v0 + 424);

  v7 = *(v0 + 872);

  v8 = *(v0 + 1168);
  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = v0[127];
  v2 = v0[124];
  v3 = v0[118];

  v4 = v0[109];

  v5 = v0[135];
  v6 = v0[1];

  return v6();
}

uint64_t outlined assign with take of Entity.__LoadOptions?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of RealityFileLoadInformation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RealityFileLoadInformation(uint64_t a1)
{
  Information = type metadata accessor for RealityFileLoadInformation(0);
  (*(*(Information - 8) + 8))(a1, Information);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_yXls5Error_pIeggzo_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_10RealityKit6EntityC13__LoadOptionsVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
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

uint64_t getEnumTagSinglePayload for Entity.ConfigurationCatalog.LoadOptions(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for Entity.ConfigurationCatalog.LoadOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV012ConfigurableC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 40) & 0xFu) <= 0xB)
  {
    return *(a1 + 40) & 0xF;
  }

  else
  {
    return (*a1 + 12);
  }
}

uint64_t getEnumTagSinglePayload for Entity.ConfigurationCatalog.ConfigurableEntityError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 41))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for Entity.ConfigurationCatalog.ConfigurableEntityError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for Entity.ConfigurationCatalog.ConfigurableEntityError(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xC)
  {
    *result = a2 - 12;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 12;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Swift.AnyObject) -> (@out (), @error @owned Error)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@error @owned Error)(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t lazy protocol witness table accessor for type Set<String> and conformance Set<A>()
{
  result = lazy protocol witness table cache variable for type Set<String> and conformance Set<A>;
  if (!lazy protocol witness table cache variable for type Set<String> and conformance Set<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShySSGMd, &_sShySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Set<String> and conformance Set<A>);
  }

  return result;
}

uint64_t static TextureResource.Contents.Slice.slice(data:bytesPerRow:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = result;
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      v9 = 0;
      goto LABEL_12;
    }

    v11 = *(result + 16);
    v10 = *(result + 24);
    v9 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v8)
  {
    v9 = BYTE6(a2);
LABEL_12:
    *a4 = v6;
    a4[1] = a2;
    a4[2] = 0;
    a4[3] = v9;
    a4[4] = a3;
    a4[5] = 0;
    return result;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v9 = HIDWORD(result) - result;
LABEL_10:
    result = outlined copy of Data._Representation(result, a2);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t static TextureResource.Contents.Slice.slice(unsafeBuffer:offset:size:bytesPerRow:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = 0x2000000000000000;
  a5[2] = a2;
  a5[3] = a3;
  a5[4] = a4;
  a5[5] = 0;
  return swift_unknownObjectRetain();
}

uint64_t TextureResource.init(dimensions:format:contents:)(_OWORD *a1, uint64_t a2, uint64_t *a3)
{
  *(v3 + 16) = *a1;
  *(v3 + 104) = *a2;
  *(v3 + 105) = *(a2 + 16);
  *(v3 + 106) = *(a2 + 17);
  v4 = *(a2 + 8);
  *(v3 + 107) = *(a2 + 18);
  v5 = *a3;
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  type metadata accessor for MainActor();
  *(v3 + 48) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 56) = v7;
  *(v3 + 64) = v6;

  return MEMORY[0x1EEE6DFA0](TextureResource.init(dimensions:format:contents:), v7, v6);
}

uint64_t TextureResource.init(dimensions:format:contents:)()
{
  v17 = v0;
  v1 = *(v0 + 107);
  v2 = *(v0 + 106);
  v3 = *(v0 + 105);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 104);
  v10 = *(v0 + 16);
  v11[0] = v6;
  v12 = v4;
  v13 = v3;
  v14 = v2;
  v15 = v1;
  v16 = v5;
  v7 = specialized static TextureResource.makeTextureBuilder(dimensions:depthOrSliceCount:textureType:format:contents:)(&v10, 0, 2, v11, &v16);
  *(v0 + 72) = v7;

  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *v8 = v0;
  v8[1] = TextureResource.init(dimensions:format:contents:);

  return specialized static TextureResource.createAssetAsync(_:)(v7);
}

{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[6];

  type metadata accessor for TextureResource();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = 0;
  RERetain();
  REAssetSetSwiftObject();
  RERelease();
  RERelease();
  v5 = v0[1];

  return v5(v4);
}

{
  v1 = v0[9];
  v2 = v0[6];

  RERelease();
  v3 = v0[11];
  v4 = v0[1];

  return v4();
}

{
  v18 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 115);
  v4 = *(v0 + 114);
  v5 = *(v0 + 113);
  v6 = *(v0 + 112);
  v7 = *(v0 + 32);
  v11 = *(v0 + 16);
  v12[0] = v6;
  v13 = v1;
  v14 = v5;
  v15 = v4;
  v16 = v3;
  v17 = v2;
  v8 = specialized static TextureResource.makeTextureBuilder(dimensions:depthOrSliceCount:textureType:format:contents:)(&v11, v7, 3, v12, &v17);
  *(v0 + 80) = v8;

  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = TextureResource.init(dimensions:format:contents:);

  return specialized static TextureResource.createAssetAsync(_:)(v8);
}

{
  v17 = v0;
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 99);
  v4 = *(v0 + 98);
  v5 = *(v0 + 97);
  v6 = *(v0 + 96);
  v10[0] = *(v0 + 16);
  v10[1] = v10[0];
  v11[0] = v6;
  v12 = v1;
  v13 = v5;
  v14 = v4;
  v15 = v3;
  v16 = v2;
  v7 = specialized static TextureResource.makeTextureBuilder(dimensions:depthOrSliceCount:textureType:format:contents:)(v10, 6, 5, v11, &v16);
  *(v0 + 64) = v7;

  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = TextureResource.init(dimensions:format:contents:);

  return specialized static TextureResource.createAssetAsync(_:)(v7);
}

{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[5];

  type metadata accessor for TextureResource();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = 0;
  RERetain();
  REAssetSetSwiftObject();
  RERelease();
  RERelease();
  v5 = v0[1];

  return v5(v4);
}

{
  v1 = v0[8];
  v2 = v0[5];

  RERelease();
  v3 = v0[10];
  v4 = v0[1];

  return v4();
}

{
  v18 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 115);
  v4 = *(v0 + 114);
  v5 = *(v0 + 113);
  v6 = *(v0 + 112);
  v7 = *(v0 + 32);
  v11 = *(v0 + 16);
  v12[0] = v6;
  v13 = v1;
  v14 = v5;
  v15 = v4;
  v16 = v3;
  v17 = v2;
  v8 = specialized static TextureResource.makeTextureBuilder(dimensions:depthOrSliceCount:textureType:format:contents:)(&v11, v7, 7, v12, &v17);
  *(v0 + 80) = v8;

  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = TextureResource.init(dimensions:format:contents:);

  return specialized static TextureResource.createAssetAsync(_:)(v8);
}

{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[7];

  type metadata accessor for TextureResource();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = 0;
  RERetain();
  REAssetSetSwiftObject();
  RERelease();
  RERelease();
  v5 = v0[1];

  return v5(v4);
}

{
  v1 = v0[10];
  v2 = v0[7];

  RERelease();
  v3 = v0[12];
  v4 = v0[1];

  return v4();
}

uint64_t TextureResource.init(dimensions:format:contents:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = v4[7];
    v8 = v4[8];
    v9 = TextureResource.init(dimensions:format:contents:);
  }

  else
  {
    v4[12] = a1;
    v7 = v4[7];
    v8 = v4[8];
    v9 = TextureResource.init(dimensions:format:contents:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = v4[8];
    v8 = v4[9];
    v9 = TextureResource.init(dimensions:format:contents:);
  }

  else
  {
    v4[13] = a1;
    v7 = v4[8];
    v8 = v4[9];
    v9 = TextureResource.init(dimensions:format:contents:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = v4[6];
    v8 = v4[7];
    v9 = TextureResource.init(dimensions:format:contents:);
  }

  else
  {
    v4[11] = a1;
    v7 = v4[6];
    v8 = v4[7];
    v9 = TextureResource.init(dimensions:format:contents:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = v4[8];
    v8 = v4[9];
    v9 = TextureResource.init(dimensions:format:contents:);
  }

  else
  {
    v4[13] = a1;
    v7 = v4[8];
    v8 = v4[9];
    v9 = TextureResource.init(dimensions:format:contents:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t TextureResource.init(dimensions:format:contents:)(__int128 *a1, char *a2, uint64_t *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = a2[16];
  v7 = a2[17];
  v8 = a2[18];
  v9 = *a3;
  v17 = *a1;
  LOBYTE(v18[0]) = v4;
  v18[1] = v5;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v16 = v9;
  specialized static TextureResource.makeTextureBuilder(dimensions:depthOrSliceCount:textureType:format:contents:)(&v17, 0, 2, v18, &v16);

  if (v3)
  {
    goto LABEL_2;
  }

  v18[0] = 0;
  result = RETextureBuilderCreateAssetSync();
  if (result)
  {
    v12 = result;
    type metadata accessor for TextureResource();
    v9 = swift_allocObject();
    *(v9 + 16) = v12;
    *(v9 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
    v18[0] = v9;
    RequestLoadable.enforceResourceSharingBeforeECSCommits()();
    RERelease();
    RERelease();
    if (v13)
    {
    }

    goto LABEL_2;
  }

  v14 = v18[0];
  if (v18[0])
  {
    type metadata accessor for CFErrorRef(0);
    lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
    swift_allocError();
    *v15 = v14;
    swift_willThrow();
    RERelease();
LABEL_2:
    v10 = *MEMORY[0x1E69E9840];
    return v9;
  }

  __break(1u);
  return result;
}

{
  v5 = *MEMORY[0x1E69E9840];
  result = TextureResource.init(dimensions:format:contents:)(a1, a2, a3, 3);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v5 = *MEMORY[0x1E69E9840];
  result = TextureResource.init(dimensions:format:contents:)(a1, a2, a3, 7);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void closure #1 in static TextureResource.createAssetAsync(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, _sScCys13OpaquePointerVs5Error_pGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = aBlock - v6;
  (*(v3 + 16))(aBlock - v6, a1, v2, v5);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v7, v2);
  aBlock[4] = partial apply for closure #1 in closure #1 in static TextureResource.createAssetAsync(_:);
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer?, @guaranteed CFErrorRef?) -> ();
  aBlock[3] = &block_descriptor_34;
  v10 = _Block_copy(aBlock);

  RETextureBuilderCreateAssetAsync();
  _Block_release(v10);
}

uint64_t closure #1 in closure #1 in static TextureResource.createAssetAsync(_:)(uint64_t a1, void *a2)
{
  if (a1)
  {
    RERetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, _sScCys13OpaquePointerVs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }

  else if (a2)
  {
    type metadata accessor for CFErrorRef(0);
    lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
    swift_allocError();
    *v4 = a2;
    v5 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, _sScCys13OpaquePointerVs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t TextureResource.init(dimensions:format:contents:)(uint64_t a1, uint64_t a2, void *a3)
{
  *(v3 + 16) = *a1;
  v4 = *(a1 + 16);
  *(v3 + 112) = *a2;
  v5 = *(a2 + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  *(v3 + 113) = *(a2 + 16);
  *(v3 + 114) = *(a2 + 17);
  *(v3 + 115) = *(a2 + 18);
  *(v3 + 48) = *a3;
  type metadata accessor for MainActor();
  *(v3 + 56) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 64) = v7;
  *(v3 + 72) = v6;

  return MEMORY[0x1EEE6DFA0](TextureResource.init(dimensions:format:contents:), v7, v6);
}

{
  *(v3 + 16) = *a1;
  v4 = *(a1 + 16);
  *(v3 + 112) = *a2;
  v5 = *(a2 + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  *(v3 + 113) = *(a2 + 16);
  *(v3 + 114) = *(a2 + 17);
  *(v3 + 115) = *(a2 + 18);
  *(v3 + 48) = *a3;
  type metadata accessor for MainActor();
  *(v3 + 56) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 64) = v7;
  *(v3 + 72) = v6;

  return MEMORY[0x1EEE6DFA0](TextureResource.init(dimensions:format:contents:), v7, v6);
}

uint64_t TextureResource.init(dimensions:format:contents:)(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  *(v3 + 96) = *a2;
  v5 = *(a2 + 8);
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  *(v3 + 97) = *(a2 + 16);
  *(v3 + 98) = *(a2 + 17);
  *(v3 + 99) = *(a2 + 18);
  *(v3 + 32) = *a3;
  type metadata accessor for MainActor();
  *(v3 + 40) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 48) = v7;
  *(v3 + 56) = v6;

  return MEMORY[0x1EEE6DFA0](TextureResource.init(dimensions:format:contents:), v7, v6);
}

uint64_t TextureResource.init(dimensions:format:contents:)(uint64_t *a1, char *a2, uint64_t *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = a2[16];
  v7 = a2[17];
  v8 = a2[18];
  v9 = *a3;
  v17[0] = *a1;
  v17[1] = v17[0];
  LOBYTE(v18[0]) = v4;
  v18[1] = v5;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v16 = v9;
  specialized static TextureResource.makeTextureBuilder(dimensions:depthOrSliceCount:textureType:format:contents:)(v17, 6, 5, v18, &v16);

  if (v3)
  {
    goto LABEL_2;
  }

  v18[0] = 0;
  result = RETextureBuilderCreateAssetSync();
  if (result)
  {
    v12 = result;
    type metadata accessor for TextureResource();
    v9 = swift_allocObject();
    *(v9 + 16) = v12;
    *(v9 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
    v18[0] = v9;
    RequestLoadable.enforceResourceSharingBeforeECSCommits()();
    RERelease();
    RERelease();
    if (v13)
    {
    }

    goto LABEL_2;
  }

  v14 = v18[0];
  if (v18[0])
  {
    type metadata accessor for CFErrorRef(0);
    lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
    swift_allocError();
    *v15 = v14;
    swift_willThrow();
    RERelease();
LABEL_2:
    v10 = *MEMORY[0x1E69E9840];
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t TextureResource.init(dimensions:format:contents:)(__int128 *a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = a2[16];
  v9 = a2[17];
  v10 = a2[18];
  v11 = *a3;
  v19 = *a1;
  LOBYTE(v20[0]) = v6;
  v20[1] = v7;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v18 = v11;
  specialized static TextureResource.makeTextureBuilder(dimensions:depthOrSliceCount:textureType:format:contents:)(&v19, v5, a4, v20, &v18);

  if (v4)
  {
    goto LABEL_2;
  }

  v20[0] = 0;
  result = RETextureBuilderCreateAssetSync();
  if (result)
  {
    v14 = result;
    type metadata accessor for TextureResource();
    v11 = swift_allocObject();
    *(v11 + 16) = v14;
    *(v11 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
    v20[0] = v11;
    RequestLoadable.enforceResourceSharingBeforeECSCommits()();
    RERelease();
    RERelease();
    if (v15)
    {
    }

    goto LABEL_2;
  }

  v16 = v20[0];
  if (v20[0])
  {
    type metadata accessor for CFErrorRef(0);
    lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
    swift_allocError();
    *v17 = v16;
    swift_willThrow();
    RERelease();
LABEL_2:
    v12 = *MEMORY[0x1E69E9840];
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t static TextureResource.Dimensions2D.dimensions(width:height:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static TextureResource.Dimensions3D.dimensions(width:height:depth:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void static TextureResource.Format.color(_:pixelFormat:)(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 2;
  *(a2 + 8) = a1;
  *(a2 + 16) = 1;
  *(a2 + 18) = 2;
}

char *static TextureResource.Format.normal(_:pixelFormat:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  *a3 = 4;
  *(a3 + 8) = a2;
  *(a3 + 16) = 256;
  *(a3 + 18) = v3;
  return result;
}

uint64_t static TextureResource.Format.raw(pixelFormat:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = result;
  *(a2 + 16) = 256;
  *(a2 + 18) = 2;
  return result;
}

uint64_t static TextureResource.Contents.MipmapLevel.mip(data:bytesPerRow:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit15TextureResourceC0D10FoundationE8ContentsV5SliceVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit15TextureResourceC0D10FoundationE8ContentsV5SliceVGMR);
  result = swift_allocObject();
  v9 = result;
  *(result + 16) = xmmword_1C1887600;
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
      v11 = 0;
      goto LABEL_12;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v11 = BYTE6(a2);
LABEL_12:
    v9[4] = a1;
    v9[5] = a2;
    v9[6] = 0;
    v9[7] = v11;
    v9[8] = a3;
    v9[9] = 0;
    *a4 = v9;
    return result;
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v11 = HIDWORD(a1) - a1;
LABEL_10:
    result = outlined copy of Data._Representation(a1, a2);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t static TextureResource.Contents.MipmapLevel.mip(buffer:offset:size:bytesPerRow:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit15TextureResourceC0D10FoundationE8ContentsV5SliceVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit15TextureResourceC0D10FoundationE8ContentsV5SliceVGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C1887600;
  *(v10 + 32) = a1;
  *(v10 + 40) = 0x2000000000000000;
  *(v10 + 48) = a2;
  *(v10 + 56) = a3;
  *(v10 + 64) = a4;
  *(v10 + 72) = 0;
  *a5 = v10;

  return swift_unknownObjectRetain();
}

uint64_t static TextureResource.Contents.MipmapLevel.mip(data:bytesPerRow:bytesPerImage:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit15TextureResourceC0D10FoundationE8ContentsV5SliceVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit15TextureResourceC0D10FoundationE8ContentsV5SliceVGMR);
  result = swift_allocObject();
  v11 = result;
  *(result + 16) = xmmword_1C1887600;
  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v12 != 2)
    {
      v13 = 0;
      goto LABEL_12;
    }

    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    v13 = v14 - v15;
    if (!__OFSUB__(v14, v15))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v12)
  {
    v13 = BYTE6(a2);
LABEL_12:
    v11[4] = a1;
    v11[5] = a2;
    v11[6] = 0;
    v11[7] = v13;
    v11[8] = a3;
    v11[9] = a4;
    *a5 = v11;
    return result;
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v13 = HIDWORD(a1) - a1;
LABEL_10:
    result = outlined copy of Data._Representation(a1, a2);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t static TextureResource.Contents.MipmapLevel.mip(unsafeBuffer:offset:size:bytesPerRow:bytesPerImage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit15TextureResourceC0D10FoundationE8ContentsV5SliceVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit15TextureResourceC0D10FoundationE8ContentsV5SliceVGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C1887600;
  *(v12 + 32) = a1;
  *(v12 + 40) = 0x2000000000000000;
  *(v12 + 48) = a2;
  *(v12 + 56) = a3;
  *(v12 + 64) = a4;
  *(v12 + 72) = a5;
  *a6 = v12;

  return swift_unknownObjectRetain();
}

id closure #2 in static TextureResource.createTextureBuilder(descriptor:format:contents:dimensions:depth:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a5 < -64)
  {
    v15 = 1;
    v16 = 1;
    v17 = 1;
    goto LABEL_17;
  }

  if (a5 > 64)
  {
    goto LABEL_4;
  }

  if (a5 < 0)
  {
    if (a5 != -64)
    {
      v17 = a3 << -a5;
      if (v17 > 1)
      {
LABEL_9:
        if (a5 < 0)
        {
          if (a5 == -64)
          {
            v15 = 1;
            v16 = 1;
            goto LABEL_17;
          }

          if (a4 << -a5 <= 1)
          {
            v16 = 1;
          }

          else
          {
            v16 = a4 << -a5;
          }

          v18 = a6 << -a5;
        }

        else
        {
          if (a4 >> a5 <= 1)
          {
            v16 = 1;
          }

          else
          {
            v16 = a4 >> a5;
          }

          v18 = a6 >> a5;
        }

        goto LABEL_14;
      }
    }

LABEL_8:
    v17 = 1;
    goto LABEL_9;
  }

  if (a5 != 64)
  {
    v17 = a3 >> a5;
    if (a3 >> a5 > 1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_4:
  v18 = a6 >> 63;
  v17 = 1;
  v16 = 1;
LABEL_14:
  if (v18 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v18;
  }

LABEL_17:
  MTLSizeMake_0(v17, v16, v15, &v28);
  v25 = v28;
  v19 = v29;
  v20 = *(a9 + 32);
  v21 = *(a9 + 40);
  MTLOriginMake(&v28);
  v22 = v29;
  v23 = v28;
  v28 = v25;
  v29 = v19;
  v26 = v23;
  v27 = v22;
  return [a1 copyFromBuffer:a7 sourceOffset:a8 sourceBytesPerRow:v20 sourceBytesPerImage:v21 sourceSize:&v28 toTexture:a2 destinationSlice:a10 destinationLevel:a5 destinationOrigin:&v26];
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed MTLBlitCommandEncoder, @guaranteed MTLTexture) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6(a2, a3);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t TextureResource.Dimensions2D.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1C68F4C10](*v0);
  return MEMORY[0x1C68F4C10](v1);
}

Swift::Int TextureResource.Dimensions2D.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  MEMORY[0x1C68F4C10](v2);
  return Hasher._finalize()();
}

Swift::Int TextureResource.DimensionsCube.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t TextureResource.Dimensions2DArray.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1C68F4C10](*v0);
  MEMORY[0x1C68F4C10](v1);
  return MEMORY[0x1C68F4C10](v2);
}

Swift::Int TextureResource.Dimensions2DArray.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  MEMORY[0x1C68F4C10](v2);
  MEMORY[0x1C68F4C10](v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TextureResource.Dimensions2DArray()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  MEMORY[0x1C68F4C10](v2);
  MEMORY[0x1C68F4C10](v3);
  return Hasher._finalize()();
}

void TextureResource.Format.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[18];
  MEMORY[0x1C68F4C10](*v0);
  MEMORY[0x1C68F4C10](v1);
  if (v3)
  {
    v2 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
  }

  Hasher._combine(_:)(v2);
  if (v4 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v4 & 1);
  }
}

Swift::Int TextureResource.Format.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[18];
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  MEMORY[0x1C68F4C10](v2);
  if (v4)
  {
    v3 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
  }

  Hasher._combine(_:)(v3);
  if (v5 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v5 & 1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TextureResource.Format()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[18];
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  MEMORY[0x1C68F4C10](v2);
  if (v4)
  {
    v3 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
  }

  Hasher._combine(_:)(v3);
  if (v5 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v5 & 1);
  }

  return Hasher._finalize()();
}

Swift::Int TextureResource.Format.ColorSpace.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](0);
  return Hasher._finalize()();
}

Swift::Int TextureResource.Format.NormalEncoding.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t specialized static TextureResource.Format.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  v2 = a1[18];
  v3 = a2[17];
  v4 = a2[18];
  if ((a1[17] & 1) == 0)
  {
    if (a1[16] != a2[16])
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }

LABEL_9:
    if (v2 == 2)
    {
      if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4 == 2 || ((v4 ^ v2) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (a2[17])
  {
    goto LABEL_9;
  }

  return 0;
}

uint64_t specialized static TextureResource.createTextureBuilder(descriptor:format:contents:dimensions:depth:)(uint64_t a1, unsigned __int8 *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v79 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v6 = a2[16];
  v7 = a2[17];
  v8 = *a3;
  v63 = a4[1];
  v64 = *a4;
  v77 = 0;
  v9 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v10 = *(v9 + 16);
  v11 = RETextureBuilderCreateWithDescriptor();
  if (!v11)
  {
    lazy protocol witness table accessor for type TextureResource.CreateError and conformance TextureResource.CreateError();
    swift_allocError();
    *v58 = 0xD000000000000029;
    *(v58 + 8) = 0x80000001C18EACA0;
    *(v58 + 16) = 1;
    swift_willThrow();
    goto LABEL_53;
  }

  RETextureBuilderSetSemantic();
  if ((v7 & 1) == 0)
  {
    RETextureBuilderSetColorGamut();
  }

  v68[3] = 0;
  v68[4] = 0;
  v68[2] = v8;

  specialized EnumeratedSequence.Iterator.next()(&aBlock);
  v12 = v72;
  if (!v72)
  {
    v13 = 0;
    goto LABEL_52;
  }

  v13 = 0;
  v62 = aBlock;
  v61 = v11;
  while (2)
  {
    v14 = 0;
    v66 = v12;
    v67 = *(v12 + 16);
    v15 = v12 + 40;
    while (v67 != v14)
    {
      if (v14 >= *(v12 + 16))
      {
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
      }

      v16 = *(v15 - 8);
      v17 = *(v15 + 32);
      v18 = *(v15 + 16);
      *&v78[8] = *v15;
      *&v78[24] = v18;
      *v78 = v16;
      *&v78[40] = v17;
      v19 = v78[14];
      if ((*&v78[8] & 0x2000000000000000) != 0)
      {
        outlined copy of TextureResource.CopySourceBuffer(v16, *&v78[8]);
        outlined init with copy of TextureResource.Contents.Slice(v78, &aBlock);
        goto LABEL_43;
      }

      v20 = *&v78[8] >> 62;
      if ((*&v78[8] >> 62) > 1)
      {
        if (v20 != 2)
        {
          memset(v68, 0, 14);
          outlined copy of TextureResource.CopySourceBuffer(v16, *&v78[8]);
          v47 = specialized static __ServiceLocator.shared.getter();
          swift_beginAccess();
          outlined init with copy of __RenderService?(v47 + 40, &v69);
          if (!v70)
          {
            goto LABEL_64;
          }

          outlined init with take of ForceEffectBase(&v69, &aBlock);
          v48 = v74;
          v49 = v75;
          __swift_project_boxed_opaque_existential_1(&aBlock, v74);
          v25 = [(*(v49 + 1))(v48 v49)];
          if (!v25)
          {
            goto LABEL_63;
          }

          goto LABEL_41;
        }

        v26 = *(v16 + 16);
        v27 = *(v16 + 24);
        outlined copy of TextureResource.CopySourceBuffer(v16, *&v78[8]);
        outlined init with copy of TextureResource.Contents.Slice(v78, &aBlock);
        v28 = __DataStorage._bytes.getter();
        if (v28)
        {
          v29 = __DataStorage._offset.getter();
          if (__OFSUB__(v26, v29))
          {
            goto LABEL_59;
          }

          v28 += v26 - v29;
        }

        v30 = __OFSUB__(v27, v26);
        v31 = v27 - v26;
        if (v30)
        {
          goto LABEL_58;
        }

        v32 = MEMORY[0x1C68F2040]();
        if (v32 >= v31)
        {
          v33 = v31;
        }

        else
        {
          v33 = v32;
        }

        v34 = specialized static __ServiceLocator.shared.getter();
        swift_beginAccess();
        outlined init with copy of __RenderService?(v34 + 40, &v69);
        if (!v70)
        {
          goto LABEL_70;
        }

        outlined init with take of ForceEffectBase(&v69, &aBlock);
        v35 = v74;
        v36 = v75;
        __swift_project_boxed_opaque_existential_1(&aBlock, v74);
        v37 = (*(v36 + 1))(v35, v36);
        if (!v28)
        {
          goto LABEL_69;
        }

        v38 = [v37 newBufferWithBytes:v28 length:v33 options:0];
        if (!v38)
        {
          goto LABEL_68;
        }
      }

      else
      {
        if (!v20)
        {
          v68[0] = v16;
          LODWORD(v68[1]) = *&v78[8];
          WORD2(v68[1]) = *&v78[12];
          outlined copy of TextureResource.CopySourceBuffer(v16, *&v78[8]);
          v21 = specialized static __ServiceLocator.shared.getter();
          swift_beginAccess();
          outlined init with copy of __RenderService?(v21 + 40, &v69);
          if (!v70)
          {
            goto LABEL_61;
          }

          v22 = v19;
          outlined init with take of ForceEffectBase(&v69, &aBlock);
          v24 = v74;
          v23 = v75;
          __swift_project_boxed_opaque_existential_1(&aBlock, v74);
          v25 = [(*(v23 + 1))(v24 v23)];
          if (!v25)
          {
            goto LABEL_62;
          }

LABEL_41:
          v16 = v25;
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(&aBlock);
          outlined destroy of TextureResource.Contents.Slice(v78);
          goto LABEL_42;
        }

        if (v16 >> 32 < v16)
        {
          goto LABEL_57;
        }

        outlined copy of TextureResource.CopySourceBuffer(v16, *&v78[8]);
        outlined init with copy of TextureResource.Contents.Slice(v78, &aBlock);
        v39 = __DataStorage._bytes.getter();
        if (v39)
        {
          v40 = __DataStorage._offset.getter();
          if (__OFSUB__(v16, v40))
          {
            goto LABEL_60;
          }

          v39 += v16 - v40;
        }

        v41 = MEMORY[0x1C68F2040]();
        if (v41 >= (v16 >> 32) - v16)
        {
          v42 = (v16 >> 32) - v16;
        }

        else
        {
          v42 = v41;
        }

        v43 = specialized static __ServiceLocator.shared.getter();
        swift_beginAccess();
        outlined init with copy of __RenderService?(v43 + 40, &v69);
        if (!v70)
        {
          goto LABEL_67;
        }

        outlined init with take of ForceEffectBase(&v69, &aBlock);
        v44 = v74;
        v45 = v75;
        __swift_project_boxed_opaque_existential_1(&aBlock, v74);
        v46 = (*(v45 + 1))(v44, v45);
        if (!v39)
        {
          goto LABEL_66;
        }

        v38 = [v46 newBufferWithBytes:v39 length:v42 options:0];
        if (!v38)
        {
          goto LABEL_65;
        }
      }

      v16 = v38;
      outlined destroy of TextureResource.Contents.Slice(v78);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
LABEL_42:
      v11 = v61;
LABEL_43:
      v50 = *&v78[16];
      if (__OFADD__(*&v78[16], *&v78[24]))
      {
        goto LABEL_55;
      }

      v51 = *&v78[16] + *&v78[24];
      if ([v16 length] < v51)
      {

        lazy protocol witness table accessor for type TextureResource.CreateError and conformance TextureResource.CreateError();
        swift_allocError();
        *v57 = xmmword_1C1898EF0;
        *(v57 + 16) = 2;
        swift_willThrow();
        swift_unknownObjectRelease();
        outlined destroy of TextureResource.Contents.Slice(v78);
        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v13);
        goto LABEL_53;
      }

      v52 = swift_allocObject();
      *(v52 + 16) = v64;
      *(v52 + 24) = v63;
      *(v52 + 32) = v62;
      *(v52 + 40) = a5;
      *(v52 + 48) = v16;
      *(v52 + 56) = v50;
      v53 = *&v78[16];
      *(v52 + 64) = *v78;
      *(v52 + 80) = v53;
      *(v52 + 96) = *&v78[32];
      *(v52 + 112) = v14;
      outlined init with copy of TextureResource.Contents.Slice(v78, &aBlock);
      swift_unknownObjectRetain();
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v13);
      v54 = swift_allocObject();
      v13 = partial apply for closure #2 in static TextureResource.createTextureBuilder(descriptor:format:contents:dimensions:depth:);
      *(v54 + 16) = partial apply for closure #2 in static TextureResource.createTextureBuilder(descriptor:format:contents:dimensions:depth:);
      *(v54 + 24) = v52;
      v75 = partial apply for thunk for @callee_guaranteed (@guaranteed MTLBlitCommandEncoder, @guaranteed MTLTexture) -> ();
      v76 = v54;
      aBlock = MEMORY[0x1E69E9820];
      v72 = 1107296256;
      v73 = thunk for @escaping @callee_guaranteed (@guaranteed MTLBlitCommandEncoder, @guaranteed MTLTexture) -> ();
      v74 = &block_descriptor_75;
      v55 = _Block_copy(&aBlock);

      RETextureBuilderEncodeBlitCommands();
      swift_unknownObjectRelease();
      outlined destroy of TextureResource.Contents.Slice(v78);
      _Block_release(v55);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      v15 += 48;
      ++v14;
      v12 = v66;
      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_56;
      }
    }

    specialized EnumeratedSequence.Iterator.next()(&aBlock);
    v12 = v72;
    v62 = aBlock;
    if (v72)
    {
      continue;
    }

    break;
  }

LABEL_52:

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v13);
LABEL_53:
  v59 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t specialized static TextureResource.makeTextureBuilder(dimensions:depthOrSliceCount:textureType:format:contents:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v38 = a1[1];
  v8 = *(a4 + 8);
  v36 = *(a4 + 16);
  v37 = *a4;
  v35 = *(a4 + 17);
  v9 = *(a4 + 18);
  v10 = *a5;
  v11 = [objc_allocWithZone(MEMORY[0x1E69741C0]) init];
  if (a3 > 4)
  {
    if (a3 != 5)
    {
      goto LABEL_12;
    }

    v12 = [objc_opt_self() textureCubeDescriptorWithPixelFormat:v8 size:v7 mipmapped:1];

    v13 = *(v10 + 16);
    v14 = (v10 + 32);
    while (v13)
    {
      v15 = *v14++;
      --v13;
      if (*(v15 + 16) != 6)
      {
        lazy protocol witness table accessor for type TextureResource.CreateError and conformance TextureResource.CreateError();
        swift_allocError();
        *v16 = xmmword_1C1887610;
        *(v16 + 16) = 2;
        v11 = v12;
        goto LABEL_37;
      }
    }

    goto LABEL_4;
  }

  if (a3 == 2)
  {
    v12 = [objc_opt_self() texture2DDescriptorWithPixelFormat:v8 width:v7 height:v38 mipmapped:1];

LABEL_4:
    v11 = v12;
    goto LABEL_22;
  }

  if (a3 != 3)
  {
    do
    {
      LODWORD(v34) = 0;
      v33 = 843;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_12:
      ;
    }

    while (a3 != 7);
  }

  [v11 setPixelFormat_];
  if (a3 == 7)
  {
    [v11 setDepth_];
    v17 = *(v10 + 16);
    if (v17)
    {
      v18 = 0;
      do
      {
        v19 = *(v10 + 32 + 8 * v18++);
        v20 = (v19 + 72);
        v21 = *(v19 + 16) + 1;
        while (--v21)
        {
          v22 = *v20;
          v20 += 6;
          if (!v22)
          {
            lazy protocol witness table accessor for type TextureResource.CreateError and conformance TextureResource.CreateError();
            swift_allocError();
            v31 = xmmword_1C1898F00;
            goto LABEL_36;
          }
        }
      }

      while (v18 != v17);
    }
  }

  else
  {
    [v11 setArrayLength_];
    v26 = *(v10 + 16);
    v27 = (v10 + 32);
    while (v26)
    {
      v28 = *v27++;
      --v26;
      if (*(v28 + 16) != a2)
      {
        lazy protocol witness table accessor for type TextureResource.CreateError and conformance TextureResource.CreateError();
        swift_allocError();
        v31 = xmmword_1C1887610;
LABEL_36:
        *v30 = v31;
        *(v30 + 16) = 2;
        goto LABEL_37;
      }
    }
  }

  [v11 setTextureType_];
  [v11 setWidth_];
  [v11 setHeight_];
LABEL_22:
  [v11 setUsage_];
  [v11 setStorageMode_];
  if (v9)
  {
    v23 = 17040133;
  }

  else
  {
    v23 = 84148994;
  }

  [v11 setSwizzle_];
  v24 = *(v10 + 16);
  [v11 setMipmapLevelCount_];
  if (v24 && [v11 mipmapLevelCount] >= v24)
  {
    v40[0] = v37;
    v41 = v8;
    v42 = v36;
    v43 = v35;
    v44 = v9;
    v45 = v10;
    if (a3 == 7)
    {
      v29 = a2;
    }

    else
    {
      v29 = 0;
    }

    v39[0] = v7;
    v39[1] = v38;
    a2 = specialized static TextureResource.createTextureBuilder(descriptor:format:contents:dimensions:depth:)(v11, v40, &v45, v39, v29);
  }

  else
  {
    lazy protocol witness table accessor for type TextureResource.CreateError and conformance TextureResource.CreateError();
    swift_allocError();
    *v25 = 0;
    *(v25 + 8) = 0;
    *(v25 + 16) = 2;
LABEL_37:
    swift_willThrow();
  }

  return a2;
}

uint64_t specialized static TextureResource.createAssetAsync(_:)(uint64_t a1)
{
  v1[3] = a1;
  v1[4] = type metadata accessor for MainActor();
  v1[5] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x1EEE6DFA0](specialized static TextureResource.createAssetAsync(_:), v3, v2);
}

uint64_t specialized static TextureResource.createAssetAsync(_:)()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = static MainActor.shared.getter();
  v0[8] = v3;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *(v4 + 16) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = specialized static TextureResource.createAssetAsync(_:);
  v7 = MEMORY[0x1E69E85E0];
  v8 = MEMORY[0x1E69E6B70];

  return MEMORY[0x1EEE6DE38](v0 + 2, v3, v7, 0xD000000000000014, 0x80000001C18EAC00, partial apply for closure #1 in static TextureResource.createAssetAsync(_:), v4, v8);
}

{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v10 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = v2[6];
    v5 = v2[7];
    v6 = TextureResource.copy(to:);
  }

  else
  {
    v7 = v2[8];
    v8 = v2[9];

    v4 = v2[6];
    v5 = v2[7];
    v6 = specialized static TextureResource.createAssetAsync(_:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

{
  v1 = v0[5];

  v2 = v0[2];
  v3 = v0[1];

  return v3(v2);
}

unint64_t lazy protocol witness table accessor for type TextureResource.Dimensions2D and conformance TextureResource.Dimensions2D()
{
  result = lazy protocol witness table cache variable for type TextureResource.Dimensions2D and conformance TextureResource.Dimensions2D;
  if (!lazy protocol witness table cache variable for type TextureResource.Dimensions2D and conformance TextureResource.Dimensions2D)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.Dimensions2D and conformance TextureResource.Dimensions2D);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.Dimensions2DArray and conformance TextureResource.Dimensions2DArray()
{
  result = lazy protocol witness table cache variable for type TextureResource.Dimensions2DArray and conformance TextureResource.Dimensions2DArray;
  if (!lazy protocol witness table cache variable for type TextureResource.Dimensions2DArray and conformance TextureResource.Dimensions2DArray)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.Dimensions2DArray and conformance TextureResource.Dimensions2DArray);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.DimensionsCube and conformance TextureResource.DimensionsCube()
{
  result = lazy protocol witness table cache variable for type TextureResource.DimensionsCube and conformance TextureResource.DimensionsCube;
  if (!lazy protocol witness table cache variable for type TextureResource.DimensionsCube and conformance TextureResource.DimensionsCube)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.DimensionsCube and conformance TextureResource.DimensionsCube);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.Dimensions3D and conformance TextureResource.Dimensions3D()
{
  result = lazy protocol witness table cache variable for type TextureResource.Dimensions3D and conformance TextureResource.Dimensions3D;
  if (!lazy protocol witness table cache variable for type TextureResource.Dimensions3D and conformance TextureResource.Dimensions3D)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.Dimensions3D and conformance TextureResource.Dimensions3D);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.Format and conformance TextureResource.Format()
{
  result = lazy protocol witness table cache variable for type TextureResource.Format and conformance TextureResource.Format;
  if (!lazy protocol witness table cache variable for type TextureResource.Format and conformance TextureResource.Format)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.Format and conformance TextureResource.Format);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.Format.ColorSpace and conformance TextureResource.Format.ColorSpace()
{
  result = lazy protocol witness table cache variable for type TextureResource.Format.ColorSpace and conformance TextureResource.Format.ColorSpace;
  if (!lazy protocol witness table cache variable for type TextureResource.Format.ColorSpace and conformance TextureResource.Format.ColorSpace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.Format.ColorSpace and conformance TextureResource.Format.ColorSpace);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.Format.NormalEncoding and conformance TextureResource.Format.NormalEncoding()
{
  result = lazy protocol witness table cache variable for type TextureResource.Format.NormalEncoding and conformance TextureResource.Format.NormalEncoding;
  if (!lazy protocol witness table cache variable for type TextureResource.Format.NormalEncoding and conformance TextureResource.Format.NormalEncoding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.Format.NormalEncoding and conformance TextureResource.Format.NormalEncoding);
  }

  return result;
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TextureResource.Format(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 19))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 18);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 18);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for TextureResource.Format(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 18) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextureResource.Contents.Slice(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 48))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TextureResource.Contents.Slice(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 3;
    if (a3 >= 3)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextureResource.CopySourceBuffer(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 16))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TextureResource.CopySourceBuffer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in static TextureResource.createAssetAsync(_:)(uint64_t a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, _sScCys13OpaquePointerVs5Error_pGMR) - 8) + 80);

  return closure #1 in closure #1 in static TextureResource.createAssetAsync(_:)(a1, a2);
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type TextureResource.CreateError and conformance TextureResource.CreateError()
{
  result = lazy protocol witness table cache variable for type TextureResource.CreateError and conformance TextureResource.CreateError;
  if (!lazy protocol witness table cache variable for type TextureResource.CreateError and conformance TextureResource.CreateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.CreateError and conformance TextureResource.CreateError);
  }

  return result;
}

uint64_t outlined copy of TextureResource.CopySourceBuffer(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return outlined copy of Data._Representation(a1, a2);
  }
}

uint64_t outlined consume of TextureResource.CopySourceBuffer(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
    return outlined consume of Data._Representation(a1, a2);
  }
}

uint64_t partial apply for thunk for @callee_guaranteed (@guaranteed MTLBlitCommandEncoder, @guaranteed MTLTexture) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t MTLSizeMake_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void MTLOriginMake(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t get_enum_tag_for_layout_string_10RealityKit15TextureResourceC0A10FoundationE11CreateError33_6C4A7680AB16ECE0EF01D181EFD6A911LLO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

RealityFoundation::ChannelAudioComponent __swiftcall ChannelAudioComponent.init(gain:)(Swift::Double gain)
{
  *v1 = gain;
  *(v1 + 8) = gain;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  result.gain = gain;
  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ChannelAudioComponent.CodingKeys()
{
  v1 = 1852399975;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x6E6964614673695FLL;
  }

  if (*v0)
  {
    v1 = 0x477465677261745FLL;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ChannelAudioComponent.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ChannelAudioComponent.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ChannelAudioComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ChannelAudioComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void (*Entity.channelAudio.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation012ChannelAudioD0V_Tt0B5(v1, v3);
  return Entity.channelAudio.modify;
}

void Entity.channelAudio.modify(uint64_t **a1)
{
  v1 = *a1;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation012ChannelAudioD0V_TtB5Tf4ndn_n(**a1, v1[1], v1[2], *(v1 + 24), (*a1)[4]);

  free(v1);
}

double static ChannelAudioComponent.__fromCore(_:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  REChannelAudioComponentGetDecibelGain();
  result = v4;
  *a2 = result;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t ChannelAudioComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 24);
  REChannelAudioComponentSetDecibelGain();
  if (v6 == 1)
  {
    REChannelAudioComponentFadeComponentDecibelGain();
  }

  return RENetworkMarkComponentDirty();
}

double protocol witness for static Component.__fromCore(_:) in conformance ChannelAudioComponent@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  REChannelAudioComponentGetDecibelGain();
  result = v4;
  *a2 = result;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t protocol witness for Component.__toCore(_:) in conformance ChannelAudioComponent(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 24);
  REChannelAudioComponentSetDecibelGain();
  if (v6 == 1)
  {
    REChannelAudioComponentFadeComponentDecibelGain();
  }

  return RENetworkMarkComponentDirty();
}

uint64_t ChannelAudioComponent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation21ChannelAudioComponentV10CodingKeys33_12D7BA63F997EEE28B76C705144A2E90LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation21ChannelAudioComponentV10CodingKeys33_12D7BA63F997EEE28B76C705144A2E90LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-v7];
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v12 = *(v1 + 24);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

void ChannelAudioComponent.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1C68F4C50](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1C68F4C50](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1C68F4C50](*&v6);
  Hasher._combine(_:)(v4);
}

Swift::Int ChannelAudioComponent.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v1;
  }

  MEMORY[0x1C68F4C50](*&v5);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x1C68F4C50](*&v6);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x1C68F4C50](*&v7);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t ChannelAudioComponent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation21ChannelAudioComponentV10CodingKeys33_12D7BA63F997EEE28B76C705144A2E90LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation21ChannelAudioComponentV10CodingKeys33_12D7BA63F997EEE28B76C705144A2E90LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v19[15] = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v11;
    v19[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v14 = v13;
    v19[13] = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v16;
    v19[12] = 3;
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    *(a2 + 8) = v14;
    *(a2 + 16) = v17;
    *(a2 + 24) = v18 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ChannelAudioComponent()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v1;
  }

  MEMORY[0x1C68F4C50](*&v5);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x1C68F4C50](*&v6);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x1C68F4C50](*&v7);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

Swift::Void __swiftcall ChannelAudioComponent._proto_fadeComponentGain(to:duration:)(Swift::Double to, Swift::Double duration)
{
  *v2 = to;
  *(v2 + 8) = to;
  *(v2 + 16) = duration;
  *(v2 + 24) = 1;
}

uint64_t specialized static ChannelAudioComponent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return (*(a2 + 24) ^ *(a1 + 24) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ChannelAudioComponent and conformance ChannelAudioComponent()
{
  result = lazy protocol witness table cache variable for type ChannelAudioComponent and conformance ChannelAudioComponent;
  if (!lazy protocol witness table cache variable for type ChannelAudioComponent and conformance ChannelAudioComponent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ChannelAudioComponent and conformance ChannelAudioComponent);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChannelAudioComponent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ChannelAudioComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t specialized ChannelAudioComponent.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852399975 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x477465677261745FLL && a2 == 0xEB000000006E6961 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C18E6C00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6964614673695FLL && a2 == 0xED00006E69614767)
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

void static ActionEntityResolution.sourceEntity.getter(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t ActionEntityResolution.resolve(from:)(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 16))
  {
    v3 = *(v1 + 8);
    v4 = *(a1 + 16);
    SceneNullable = REEntityGetSceneNullable();
    if (SceneNullable)
    {
      v6 = SceneNullable;
      v7 = RESceneGetSwiftObject();
      type metadata accessor for Scene();
      if (v7)
      {
        swift_dynamicCastClassUnconditional();
      }

      else
      {
        swift_allocObject();
        Scene.init(coreScene:)(v6);
      }

      v8 = Scene.findEntity(named:)();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = *v1;

    v8 = Entity.subscript.getter(&v10);
  }

  return v8;
}

uint64_t ActionEntityResolution.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
    v6 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    if (v6 == 1)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
      v10 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      v8 = v11;
      v9 = 1;
      goto LABEL_11;
    }

    if (!v6)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
      dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      static InternalBindPath.entityPathFromPath(_:)(&v12);

      v8 = 0;
      v9 = 0;
      v10 = v12;
LABEL_11:
      __swift_destroy_boxed_opaque_existential_1(v13);
      *a2 = v10;
      *(a2 + 8) = v8;
      *(a2 + 16) = v9;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    lazy protocol witness table accessor for type ActionEntityResolution.CodingError and conformance ActionEntityResolution.CodingError();
    swift_allocError();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ActionEntityResolution.encode(to:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  if (v5)
  {
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (!v2)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    }
  }

  else
  {
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (!v2)
    {
      v8[0] = v3;
      v8[1] = 0;
      v9 = 2;
      specialized static InternalBindPath.pathFromTarget(_:_:)(v8, 1);
      __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t specialized static ActionEntityResolution.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 16);
  if (a1[2])
  {
    if (a2[2])
    {
      if (*a1 == v2 && a1[1] == a2[1])
      {
        v6 = 1;
        v13 = *a1;
      }

      else
      {
        v5 = *a1;
        v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      outlined copy of ActionEntityResolution();
      outlined copy of ActionEntityResolution();
      outlined consume of ActionEntityResolution();
      outlined consume of ActionEntityResolution();
      return v6 & 1;
    }

LABEL_9:
    v7 = *a2;
    v8 = a2[1];
    outlined copy of ActionEntityResolution();
    outlined copy of ActionEntityResolution();
    outlined consume of ActionEntityResolution();
    outlined consume of ActionEntityResolution();
    v6 = 0;
    return v6 & 1;
  }

  if (a2[2])
  {
    goto LABEL_9;
  }

  v15 = *a1;
  v16 = 0;
  v17 = 2;
  outlined copy of ActionEntityResolution();
  outlined copy of ActionEntityResolution();
  v6 = 1;
  v9 = specialized static InternalBindPath.pathFromTarget(_:_:)(&v15, 1);
  v11 = v10;
  v15 = v2;
  v16 = 0;
  v17 = 2;
  if (v9 != specialized static InternalBindPath.pathFromTarget(_:_:)(&v15, 1) || v11 != v12)
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  outlined consume of ActionEntityResolution();
  outlined consume of ActionEntityResolution();

  return v6 & 1;
}

unint64_t lazy protocol witness table accessor for type ActionEntityResolution.CodingError and conformance ActionEntityResolution.CodingError()
{
  result = lazy protocol witness table cache variable for type ActionEntityResolution.CodingError and conformance ActionEntityResolution.CodingError;
  if (!lazy protocol witness table cache variable for type ActionEntityResolution.CodingError and conformance ActionEntityResolution.CodingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionEntityResolution.CodingError and conformance ActionEntityResolution.CodingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionEntityResolution.CodingError and conformance ActionEntityResolution.CodingError;
  if (!lazy protocol witness table cache variable for type ActionEntityResolution.CodingError and conformance ActionEntityResolution.CodingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionEntityResolution.CodingError and conformance ActionEntityResolution.CodingError);
  }

  return result;
}

Swift::Int CameraFieldOfViewOrientation.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

void __swiftcall OrthographicCameraComponent.init()(RealityFoundation::OrthographicCameraComponent *__return_ptr retstr)
{
  *&retstr->near = 0x447A00003C23D70ALL;
  retstr->scale = 1.0;
  retstr->scaleDirection = RealityFoundation_CameraFieldOfViewOrientation_vertical;
}

uint64_t static OrthographicCameraComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  REOrthographicCameraComponentGetNear();
  v5 = v4;
  REOrthographicCameraComponentGetFar();
  v7 = v6;
  REOrthographicCameraComponentGetScale();
  v9 = v8;
  result = REOrthographicCameraComponentGetScaleDirection();
  *a2 = v5;
  *(a2 + 4) = v7;
  *(a2 + 8) = v9;
  *(a2 + 12) = result == 0;
  return result;
}

uint64_t OrthographicCameraComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 12);
  REOrthographicCameraComponentSetNear();
  REOrthographicCameraComponentSetFar();
  REOrthographicCameraComponentSetScale();
  REOrthographicCameraComponentSetScaleDirection();

  return RENetworkMarkComponentDirty();
}

uint64_t protocol witness for Component.__toCore(_:) in conformance OrthographicCameraComponent(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 12);
  REOrthographicCameraComponentSetNear();
  REOrthographicCameraComponentSetFar();
  REOrthographicCameraComponentSetScale();
  REOrthographicCameraComponentSetScaleDirection();

  return RENetworkMarkComponentDirty();
}

uint64_t specialized static OrthographicCameraComponent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 4) == *(a2 + 4) && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 12) ^ *(a1 + 12) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type CameraFieldOfViewOrientation and conformance CameraFieldOfViewOrientation()
{
  result = lazy protocol witness table cache variable for type CameraFieldOfViewOrientation and conformance CameraFieldOfViewOrientation;
  if (!lazy protocol witness table cache variable for type CameraFieldOfViewOrientation and conformance CameraFieldOfViewOrientation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CameraFieldOfViewOrientation and conformance CameraFieldOfViewOrientation);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OrthographicCameraComponent(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OrthographicCameraComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 12) = a2 + 1;
    }
  }

  return result;
}

uint64_t HasPhysicsBody.addForce(_:relativeTo:)(uint64_t a1, float32x4_t a2)
{
  if (a1)
  {
    v3 = *(a1 + 16);

    SceneNullable = REEntityGetSceneNullable();
    if (!SceneNullable)
    {
      goto LABEL_8;
    }

    v5 = SceneNullable;
    v6 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    if (v6)
    {
      swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      Scene.init(coreScene:)(v5);
    }

    v7 = Scene.physicsOrigin.getter();

    if (!v7)
    {
LABEL_8:
      v7 = specialized static PhysicsSimulationComponent.nearestSimulationEntity(for:)(a1);
    }
  }

  else
  {
    v7 = 0;
  }

  *v8.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v7);
  v15 = v9;
  v16 = v8;
  v14 = v10;
  HasPhysicsBody.physicsBody.getter(&v31);
  v41[8] = v39;
  v42[0] = v40[0];
  *(v42 + 12) = *(v40 + 12);
  v41[4] = v35;
  v41[5] = v36;
  v41[6] = v37;
  v41[7] = v38;
  v41[0] = v31;
  v41[1] = v32;
  v41[2] = v33;
  v41[3] = v34;
  if (_s10RealityKit20PhysicsBodyComponentVSgWOg(v41) == 1)
  {
    v19[8] = v39;
    v20[0] = v40[0];
    *(v20 + 12) = *(v40 + 12);
    v19[4] = v35;
    v19[5] = v36;
    v19[6] = v37;
    v19[7] = v38;
    v19[0] = v31;
    v19[1] = v32;
    v19[2] = v33;
    v19[3] = v34;
    v29 = v39;
    v30[0] = v40[0];
    *(v30 + 12) = *(v40 + 12);
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v28 = v38;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    v24 = v34;
    outlined init with copy of PhysicsBodyComponent?(v19, v18);
    HasPhysicsBody.physicsBody.setter(&v21);

    v29 = v39;
    v30[0] = v40[0];
    *(v30 + 12) = *(v40 + 12);
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v28 = v38;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    v24 = v34;
    return outlined destroy of PhysicsBodyComponent?(&v21);
  }

  else
  {
    *v12.f32 = simd_float4x4.transform(force:)(a2, v16, v15, v14);
    v13 = vaddq_f32(v12, v37);
    v13.i32[3] = 0;
    v37 = v13;
    v29 = v39;
    v30[0] = v40[0];
    *(v30 + 12) = *(v40 + 12);
    v25 = v35;
    v26 = v36;
    v27 = v13;
    v28 = v38;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    v24 = v34;
    HasPhysicsBody.physicsBody.setter(&v21);
  }
}

uint64_t outlined init with copy of PhysicsBodyComponent?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit20PhysicsBodyComponentVSgMd, &_s10RealityKit20PhysicsBodyComponentVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t HasPhysicsBody.addForce(_:at:relativeTo:)(uint64_t a1, uint64_t a2, float32x4_t a3, float32x4_t a4)
{
  HasPhysicsBody.physicsBody.getter(v62);
  result = _s10RealityKit20PhysicsBodyComponentVSgWOg(v62);
  if (result != 1)
  {
    v58 = v62[2];
    v59 = v63;
    v60 = v64;
    v61 = v65;
    v56 = v62[0];
    v57 = v62[1];
    v54 = v68;
    v55[0] = v69[0];
    *(v55 + 12) = *(v69 + 12);
    if (a1)
    {
      v7 = *(a1 + 16);

      SceneNullable = REEntityGetSceneNullable();
      if (!SceneNullable)
      {
        goto LABEL_9;
      }

      v9 = SceneNullable;
      v10 = RESceneGetSwiftObject();
      type metadata accessor for Scene();
      if (v10)
      {
        swift_dynamicCastClassUnconditional();
      }

      else
      {
        swift_allocObject();
        Scene.init(coreScene:)(v9);
      }

      v11 = Scene.physicsOrigin.getter();

      if (!v11)
      {
LABEL_9:
        v11 = specialized static PhysicsSimulationComponent.nearestSimulationEntity(for:)(a1);
      }
    }

    else
    {
      v11 = 0;
    }

    v31 = v66;
    v32 = v67;
    v29 = v63;
    *v12.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v11);
    v27 = v13;
    v28 = v12;
    v25 = v15;
    v26 = v14;
    *v16.f32 = simd_float4x4.transform(force:)(a3, v12, v13, v14);
    v34 = v16;
    HasTransform.convert(position:to:)(v11, a2, &protocol witness table for Entity, v29);
    v30 = v17;
    *v18.i64 = simd_float4x4.transform(position:)(a4, v28, v27, v26, v25);
    v19 = vsubq_f32(v18, v30);
    v20 = vaddq_f32(v31, v34);
    v20.i32[3] = 0;
    v21 = v20;
    v37 = v20;
    v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), vnegq_f32(v19)), v34, vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL));
    v20.i32[0] = vextq_s8(v22, v22, 8uLL).u32[0];
    v20.i32[1] = v22.i32[0];
    *&v23 = vadd_f32(*&v32, *v20.f32);
    *(&v23 + 2) = *(&v32 + 2) + *&v22.i32[1];
    HIDWORD(v23) = 0;
    v35 = v23;
    v40[2] = v58;
    v40[3] = v59;
    v40[4] = v60;
    v40[5] = v61;
    v40[0] = v56;
    v40[1] = v57;
    v40[6] = v21;
    v40[7] = v23;
    *(v41 + 12) = *(v55 + 12);
    v40[8] = v54;
    v41[0] = v55[0];
    v48 = v21;
    v49 = v23;
    v46 = v60;
    v47 = v61;
    v42 = v56;
    v43 = v57;
    v44 = v58;
    v45 = v59;
    v50 = v54;
    v51[0] = v55[0];
    *(v51 + 12) = *(v41 + 12);
    destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(&v42, v24);
    v38[8] = v50;
    v39[0] = v51[0];
    *(v39 + 12) = *(v51 + 12);
    v38[4] = v46;
    v38[5] = v47;
    v38[6] = v48;
    v38[7] = v49;
    v38[0] = v42;
    v38[1] = v43;
    v38[2] = v44;
    v38[3] = v45;
    outlined init with copy of PhysicsBodyComponent(v40, v52);
    HasPhysicsBody.physicsBody.setter(v38);

    v52[2] = v58;
    v52[3] = v59;
    v52[4] = v60;
    v52[5] = v61;
    v52[0] = v56;
    v52[1] = v57;
    v52[6] = v37;
    v52[7] = v35;
    *(v53 + 12) = *(v55 + 12);
    v52[8] = v54;
    v53[0] = v55[0];
    return outlined destroy of PhysicsBodyComponent(v52);
  }

  return result;
}

uint64_t HasPhysicsBody.addTorque(_:relativeTo:)(uint64_t a1, float32x4_t a2)
{
  if (a1)
  {
    v3 = *(a1 + 16);

    SceneNullable = REEntityGetSceneNullable();
    if (!SceneNullable)
    {
      goto LABEL_8;
    }

    v5 = SceneNullable;
    v6 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    if (v6)
    {
      swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      Scene.init(coreScene:)(v5);
    }

    v7 = Scene.physicsOrigin.getter();

    if (!v7)
    {
LABEL_8:
      v7 = specialized static PhysicsSimulationComponent.nearestSimulationEntity(for:)(a1);
    }
  }

  else
  {
    v7 = 0;
  }

  *v8.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v7);
  v15 = v9;
  v16 = v8;
  v14 = v10;
  HasPhysicsBody.physicsBody.getter(&v31);
  v41[8] = v39;
  v42[0] = v40[0];
  *(v42 + 12) = *(v40 + 12);
  v41[4] = v35;
  v41[5] = v36;
  v41[6] = v37;
  v41[7] = v38;
  v41[0] = v31;
  v41[1] = v32;
  v41[2] = v33;
  v41[3] = v34;
  if (_s10RealityKit20PhysicsBodyComponentVSgWOg(v41) == 1)
  {
    v19[8] = v39;
    v20[0] = v40[0];
    *(v20 + 12) = *(v40 + 12);
    v19[4] = v35;
    v19[5] = v36;
    v19[6] = v37;
    v19[7] = v38;
    v19[0] = v31;
    v19[1] = v32;
    v19[2] = v33;
    v19[3] = v34;
    v29 = v39;
    v30[0] = v40[0];
    *(v30 + 12) = *(v40 + 12);
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v28 = v38;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    v24 = v34;
    outlined init with copy of PhysicsBodyComponent?(v19, v18);
    HasPhysicsBody.physicsBody.setter(&v21);

    v29 = v39;
    v30[0] = v40[0];
    *(v30 + 12) = *(v40 + 12);
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v28 = v38;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    v24 = v34;
    return outlined destroy of PhysicsBodyComponent?(&v21);
  }

  else
  {
    *v12.f32 = simd_float4x4.transform(torque:)(a2, v16, v15, v14);
    v13 = vaddq_f32(v12, v38);
    v13.i32[3] = 0;
    v38 = v13;
    v29 = v39;
    v30[0] = v40[0];
    *(v30 + 12) = *(v40 + 12);
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v28 = v13;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    v24 = v34;
    HasPhysicsBody.physicsBody.setter(&v21);
  }
}

Swift::Void __swiftcall HasPhysicsBody.clearForcesAndTorques()()
{
  HasPhysicsBody.physicsBody.getter(&v34);
  if (_s10RealityKit20PhysicsBodyComponentVSgWOg(&v34) != 1)
  {
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v33 = v39;
    v28 = v34;
    v29 = v35;
    *(v27 + 12) = *(v41 + 12);
    v26 = v40;
    v27[0] = v41[0];
    v14[4] = v38;
    v14[5] = v39;
    v14[2] = v36;
    v14[3] = v37;
    v14[0] = v34;
    v14[1] = v35;
    memset(&v14[6], 0, 32);
    v14[8] = v40;
    v15[0] = v41[0];
    *(v15 + 12) = *(v41 + 12);
    v16 = v34;
    v17 = v35;
    v20 = v38;
    v21 = v39;
    v18 = v36;
    v19 = v37;
    *(v25 + 12) = *(v41 + 12);
    v24 = v40;
    v25[0] = v15[0];
    v22 = 0u;
    v23 = 0u;
    destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(&v16, v1);
    v12 = v24;
    v13[0] = v25[0];
    *(v13 + 12) = *(v25 + 12);
    v8 = v20;
    v9 = v21;
    v10 = v22;
    v11 = v23;
    v4 = v16;
    v5 = v17;
    v6 = v18;
    v7 = v19;
    outlined init with copy of PhysicsBodyComponent(v14, &v3);
    HasPhysicsBody.physicsBody.setter(&v4);
    v2 = *(v0 + 16);
    RERigidBodyComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      if (RERigidBodyComponentGetRigidBody())
      {
        RERigidBodyClearForces();
      }
    }

    v6 = v30;
    v7 = v31;
    v8 = v32;
    v9 = v33;
    v4 = v28;
    v5 = v29;
    v10 = 0u;
    v11 = 0u;
    *(v13 + 12) = *(v27 + 12);
    v12 = v26;
    v13[0] = v27[0];
    outlined destroy of PhysicsBodyComponent(&v4);
  }
}

uint64_t HasPhysicsBody.applyLinearImpulse(_:relativeTo:)(uint64_t a1, float32x4_t a2)
{
  if (a1)
  {
    v3 = *(a1 + 16);

    SceneNullable = REEntityGetSceneNullable();
    if (!SceneNullable)
    {
      goto LABEL_8;
    }

    v5 = SceneNullable;
    v6 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    if (v6)
    {
      swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      Scene.init(coreScene:)(v5);
    }

    v7 = Scene.physicsOrigin.getter();

    if (!v7)
    {
LABEL_8:
      v7 = specialized static PhysicsSimulationComponent.nearestSimulationEntity(for:)(a1);
    }
  }

  else
  {
    v7 = 0;
  }

  *v8.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v7);
  v15 = v9;
  v16 = v8;
  v14 = v10;
  HasPhysicsBody.physicsBody.getter(&v31);
  v41[8] = v39;
  v42[0] = v40[0];
  *(v42 + 12) = *(v40 + 12);
  v41[4] = v35;
  v41[5] = v36;
  v41[6] = v37;
  v41[7] = v38;
  v41[0] = v31;
  v41[1] = v32;
  v41[2] = v33;
  v41[3] = v34;
  if (_s10RealityKit20PhysicsBodyComponentVSgWOg(v41) == 1)
  {
    v19[8] = v39;
    v20[0] = v40[0];
    *(v20 + 12) = *(v40 + 12);
    v19[4] = v35;
    v19[5] = v36;
    v19[6] = v37;
    v19[7] = v38;
    v19[0] = v31;
    v19[1] = v32;
    v19[2] = v33;
    v19[3] = v34;
    v29 = v39;
    v30[0] = v40[0];
    *(v30 + 12) = *(v40 + 12);
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v28 = v38;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    v24 = v34;
    outlined init with copy of PhysicsBodyComponent?(v19, v18);
    HasPhysicsBody.physicsBody.setter(&v21);

    v29 = v39;
    v30[0] = v40[0];
    *(v30 + 12) = *(v40 + 12);
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v28 = v38;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    v24 = v34;
    return outlined destroy of PhysicsBodyComponent?(&v21);
  }

  else
  {
    *v12.f32 = simd_float4x4.transform(force:)(a2, v16, v15, v14);
    v13 = vaddq_f32(v12, v39);
    v13.i32[3] = 0;
    v39 = v13;
    v29 = v13;
    v30[0] = v40[0];
    *(v30 + 12) = *(v40 + 12);
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v28 = v38;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    v24 = v34;
    HasPhysicsBody.physicsBody.setter(&v21);
  }
}

uint64_t HasPhysicsBody.applyAngularImpulse(_:relativeTo:)(uint64_t a1, float32x4_t a2)
{
  if (a1)
  {
    v3 = *(a1 + 16);

    SceneNullable = REEntityGetSceneNullable();
    if (!SceneNullable)
    {
      goto LABEL_8;
    }

    v5 = SceneNullable;
    v6 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    if (v6)
    {
      swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      Scene.init(coreScene:)(v5);
    }

    v7 = Scene.physicsOrigin.getter();

    if (!v7)
    {
LABEL_8:
      v7 = specialized static PhysicsSimulationComponent.nearestSimulationEntity(for:)(a1);
    }
  }

  else
  {
    v7 = 0;
  }

  *v8.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v7);
  v15 = v9;
  v16 = v8;
  v14 = v10;
  HasPhysicsBody.physicsBody.getter(&v31);
  v41[8] = v39;
  v42[0] = v40[0];
  *(v42 + 12) = *(v40 + 12);
  v41[4] = v35;
  v41[5] = v36;
  v41[6] = v37;
  v41[7] = v38;
  v41[0] = v31;
  v41[1] = v32;
  v41[2] = v33;
  v41[3] = v34;
  if (_s10RealityKit20PhysicsBodyComponentVSgWOg(v41) == 1)
  {
    v19[8] = v39;
    v20[0] = v40[0];
    *(v20 + 12) = *(v40 + 12);
    v19[4] = v35;
    v19[5] = v36;
    v19[6] = v37;
    v19[7] = v38;
    v19[0] = v31;
    v19[1] = v32;
    v19[2] = v33;
    v19[3] = v34;
    v29 = v39;
    v30[0] = v40[0];
    *(v30 + 12) = *(v40 + 12);
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v28 = v38;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    v24 = v34;
    outlined init with copy of PhysicsBodyComponent?(v19, v18);
    HasPhysicsBody.physicsBody.setter(&v21);

    v29 = v39;
    v30[0] = v40[0];
    *(v30 + 12) = *(v40 + 12);
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v28 = v38;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    v24 = v34;
    return outlined destroy of PhysicsBodyComponent?(&v21);
  }

  else
  {
    *v12.f32 = simd_float4x4.transform(torque:)(a2, v16, v15, v14);
    v13 = vaddq_f32(v12, v40[0]);
    v13.i32[3] = 0;
    v40[0] = v13;
    v29 = v39;
    v30[0] = v13;
    *(v30 + 12) = *(v40 + 12);
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v28 = v38;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    v24 = v34;
    HasPhysicsBody.physicsBody.setter(&v21);
  }
}

uint64_t HasPhysicsBody.applyImpulse(_:at:relativeTo:)(uint64_t a1, uint64_t a2, float32x4_t a3, float32x4_t a4)
{
  HasPhysicsBody.physicsBody.getter(v65);
  result = _s10RealityKit20PhysicsBodyComponentVSgWOg(v65);
  if (result != 1)
  {
    v61 = v67;
    v62 = v68;
    v63 = v69;
    v64 = v70;
    v57 = v65[0];
    v58 = v65[1];
    v59 = v65[2];
    v60 = v66;
    v56 = v74;
    v55 = v73;
    if (a1)
    {
      v7 = *(a1 + 16);

      SceneNullable = REEntityGetSceneNullable();
      if (!SceneNullable)
      {
        goto LABEL_9;
      }

      v9 = SceneNullable;
      v10 = RESceneGetSwiftObject();
      type metadata accessor for Scene();
      if (v10)
      {
        swift_dynamicCastClassUnconditional();
      }

      else
      {
        swift_allocObject();
        Scene.init(coreScene:)(v9);
      }

      v11 = Scene.physicsOrigin.getter();

      if (!v11)
      {
LABEL_9:
        v11 = specialized static PhysicsSimulationComponent.nearestSimulationEntity(for:)(a1);
      }
    }

    else
    {
      v11 = 0;
    }

    v31 = v71;
    v32 = v72;
    v29 = v66;
    *v12.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v11);
    v27 = v13;
    v28 = v12;
    v25 = v15;
    v26 = v14;
    *v16.f32 = simd_float4x4.transform(force:)(a3, v12, v13, v14);
    v34 = v16;
    HasTransform.convert(position:to:)(v11, a2, &protocol witness table for Entity, v29);
    v30 = v17;
    *v18.i64 = simd_float4x4.transform(position:)(a4, v28, v27, v26, v25);
    v19 = vsubq_f32(v18, v30);
    v20 = vaddq_f32(v31, v34);
    v20.i32[3] = 0;
    v21 = v20;
    v37 = v20;
    v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), vnegq_f32(v19)), v34, vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL));
    v20.i32[0] = vextq_s8(v22, v22, 8uLL).u32[0];
    v20.i32[1] = v22.i32[0];
    *&v23 = vadd_f32(*&v32, *v20.f32);
    *(&v23 + 2) = *(&v32 + 2) + *&v22.i32[1];
    HIDWORD(v23) = 0;
    v35 = v23;
    v40[4] = v61;
    v40[5] = v62;
    v40[6] = v63;
    v40[7] = v64;
    v40[0] = v57;
    v40[1] = v58;
    v40[2] = v59;
    v40[3] = v60;
    v40[8] = v21;
    *v41 = v23;
    *&v41[16] = v55;
    *&v41[24] = v56;
    v46 = v61;
    v47 = v62;
    v48 = v63;
    v49 = v64;
    v42 = v57;
    v43 = v58;
    v44 = v59;
    v45 = v60;
    v50 = v21;
    v51[0] = v23;
    *(v51 + 12) = *&v41[12];
    destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(&v42, v24);
    v38[8] = v50;
    v39[0] = v51[0];
    *(v39 + 12) = *(v51 + 12);
    v38[4] = v46;
    v38[5] = v47;
    v38[6] = v48;
    v38[7] = v49;
    v38[0] = v42;
    v38[1] = v43;
    v38[2] = v44;
    v38[3] = v45;
    outlined init with copy of PhysicsBodyComponent(v40, v52);
    HasPhysicsBody.physicsBody.setter(v38);

    v52[4] = v61;
    v52[5] = v62;
    v52[6] = v63;
    v52[7] = v64;
    v52[0] = v57;
    v52[1] = v58;
    v52[2] = v59;
    v52[3] = v60;
    v52[8] = v37;
    v52[9] = v35;
    v53 = v55;
    v54 = v56;
    return outlined destroy of PhysicsBodyComponent(v52);
  }

  return result;
}

Swift::Bool __swiftcall RKChangeSceneActionRuntimeTechnique.switchScenes()()
{
  if ((RKChangeSceneActionRuntimeTechnique.removeAllScenes()() & 1) == 0)
  {
    return 0;
  }

  return RKChangeSceneActionRuntimeTechnique.loadNextScene()();
}

uint64_t RKChangeSceneActionRuntimeTechnique.removeAllScenes()()
{
  v20 = StaticString.description.getter();
  v21 = v1;
  MEMORY[0x1C68F3410](8250, 0xE200000000000000);
  v3 = v20;
  v2 = v21;
  if (!*(v0 + 16))
  {
    v16 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v16, &v20);

LABEL_18:
    v5 = 0;
    return v5 & 1;
  }

  v4 = *(v0 + 16);

  if ((RKChangeSceneActionRuntimeTechnique.findSceneRootWithRootEntitySubTechnique()() & 1) == 0)
  {
    v17 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v17, &v20);

    goto LABEL_18;
  }

  v5 = RKChangeSceneActionRuntimeTechnique.unloadScene()();
  v6 = static os_log_type_t.debug.getter();
  if (one-time initialization token for interactionsLoggingEnabled != -1)
  {
    swift_once();
  }

  if (interactionsLoggingEnabled)
  {
    _StringGuts.grow(_:)(26);

    v20 = 0xD000000000000018;
    v21 = 0x80000001C18EAF50;
    if (v5)
    {
      v7 = 1702195828;
    }

    else
    {
      v7 = 0x65736C6166;
    }

    if (v5)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    MEMORY[0x1C68F3410](v7, v8);

    v10 = v20;
    v9 = v21;
    if (one-time initialization token for interactionsLogger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, interactionsLogger);

    v12 = Logger.logObject.getter();

    if (os_log_type_enabled(v12, v6))
    {
      v19[1] = v19;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136315394;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v2, &v20);
      *(v13 + 12) = 2080;
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v20);

      *(v13 + 14) = v15;
      _os_log_impl(&dword_1C1358000, v12, v6, "%s%s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6902A30](v14, -1, -1);
      MEMORY[0x1C6902A30](v13, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }

  return v5 & 1;
}

uint64_t RKChangeSceneActionRuntimeTechnique.findSceneRootWithRootEntitySubTechnique()()
{
  *&v57[0] = StaticString.description.getter();
  *(&v57[0] + 1) = v1;
  MEMORY[0x1C68F3410](8250, 0xE200000000000000);
  v2 = *(&v57[0] + 1);
  v60[0] = *(v0 + 16);
  v54 = v60;
  v52 = *&v57[0];
  v48 = v60[0];
  v49 = v0;

  v3 = static os_log_type_t.debug.getter();
  v4 = specialized InteractionsLogger.log(_:_:)(v3, v57, partial apply for implicit closure #1 in RKChangeSceneActionRuntimeTechnique.findSceneRootWithRootEntitySubTechnique(), v53);
  v6 = v60[0];
  if (!v60[0])
  {
LABEL_44:
    MEMORY[0x1EEE9AC00](v4);
    v47 = v60;
    v36 = v52;
    *&v57[0] = v52;
    *(&v57[0] + 1) = v2;
    v37 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v37, v57, partial apply for implicit closure #4 in RKChangeSceneActionRuntimeTechnique.findSceneRootWithRootEntitySubTechnique(), v46);
    v38 = v60[0];
    if (v60[0])
    {
      goto LABEL_49;
    }

    v39 = v48 ? specialized HasHierarchy.parent.getter() : 0;
    v60[0] = v39;
    MEMORY[0x1EEE9AC00](v39);
    v47 = v60;
    *&v57[0] = v36;
    *(&v57[0] + 1) = v2;
    v40 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v40, v57, partial apply for implicit closure #5 in RKChangeSceneActionRuntimeTechnique.findSceneRootWithRootEntitySubTechnique(), v46);
    v38 = v60[0];
    if (v60[0])
    {
LABEL_49:
      v41 = *(v49 + OBJC_IVAR____TtC17RealityFoundation35RKChangeSceneActionRuntimeTechnique_sceneSwitchEntity);
      *(v49 + OBJC_IVAR____TtC17RealityFoundation35RKChangeSceneActionRuntimeTechnique_sceneSwitchEntity) = v38;
      swift_retain_n();

      MEMORY[0x1EEE9AC00](v42);
      v47 = v60;
      *&v57[0] = v36;
      *(&v57[0] + 1) = v2;
      v43 = static os_log_type_t.debug.getter();
      specialized InteractionsLogger.log(_:_:)(v43, v57, partial apply for implicit closure #7 in RKChangeSceneActionRuntimeTechnique.findSceneRootWithRootEntitySubTechnique(), v46);

      v44 = 1;
    }

    else
    {
      *&v57[0] = v36;
      *(&v57[0] + 1) = v2;
      v45 = static os_log_type_t.debug.getter();
      specialized InteractionsLogger.log(_:_:)(v45, v57);

      v44 = 0;
    }

    return v44;
  }

  v7 = 0x80000001C18EAE60;
  v8 = &one-time initialization token for displayP3Space;
  *&v5 = 136315394;
  v50 = v5;
  v51 = 0x80000001C18EAE60;
  while (1)
  {
    swift_beginAccess();

    v10 = objc_getAssociatedObject(v9, &static __SceneResourceLoadResultLoadContext.loadContextForEntityKey);
    swift_endAccess();
    if (v10)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v55 = 0u;
      v56 = 0u;
    }

    v57[0] = v55;
    v57[1] = v56;
    if (*(&v56 + 1))
    {
      if ((swift_dynamicCast() & 1) != 0 && v59)
      {

        goto LABEL_44;
      }
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(v57, &_sypSgMd, &_sypSgMR);
    }

    v11 = *(v6 + 16);
    Parent = REEntityGetParent();
    if (!Parent)
    {

      goto LABEL_44;
    }

    v13 = Parent;
    if (REEntityGetSwiftObject())
    {
      swift_unknownObjectRelease();
      goto LABEL_21;
    }

    result = REEntityIsBeingDestroyed();
    if (result)
    {
      break;
    }

    v15 = specialized static Entity.entityInfoType(_:)();
    if (v15)
    {
      v16 = (*(v15 + 232))();
      MEMORY[0x1C68F9740](*(v16 + 16), 0);
      *(v16 + 16) = v13;
      MEMORY[0x1C68F9740](v13, v16);
    }

    else
    {
      makeEntity(for:)(v13);
    }

LABEL_21:
    v17 = *(v6 + 16);
    v18 = REEntityGetParent();
    if (v18)
    {
      v19 = v18;
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v20 = swift_dynamicCastClassUnconditional();
        goto LABEL_24;
      }

      result = REEntityIsBeingDestroyed();
      if (result)
      {
        goto LABEL_53;
      }

      v22 = specialized static Entity.entityInfoType(_:)();
      if (v22)
      {
        v21 = (*(v22 + 232))();
        v23 = *(v21 + 16);

        MEMORY[0x1C68F9740](v23, 0);
        *(v21 + 16) = v19;
        MEMORY[0x1C68F9740](v19, v21);
      }

      else
      {
        v20 = makeEntity(for:)(v19);
LABEL_24:
        v21 = v20;
      }

      goto LABEL_30;
    }

    v21 = 0;
LABEL_30:
    v60[0] = v21;
    v24 = static os_log_type_t.debug.getter();
    if (v8[74] != -1)
    {
      swift_once();
    }

    if (interactionsLoggingEnabled)
    {
      *&v57[0] = 0;
      *(&v57[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      *&v57[0] = 0xD000000000000019;
      *(&v57[0] + 1) = v7;
      if (v21)
      {
        *&v55 = 0;
        *(&v55 + 1) = 0xE000000000000000;
        v58 = v21;
        _print_unlocked<A, B>(_:_:)();
        v26 = *(&v55 + 1);
        v25 = v55;
      }

      else
      {
        v26 = 0xE300000000000000;
        v25 = 7104878;
      }

      MEMORY[0x1C68F3410](v25, v26);

      v27 = v57[0];
      if (one-time initialization token for interactionsLogger != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, interactionsLogger);

      v29 = Logger.logObject.getter();

      if (os_log_type_enabled(v29, v24))
      {
        v30 = swift_slowAlloc();
        v31 = v8;
        v32 = swift_slowAlloc();
        *&v57[0] = v32;
        *v30 = v50;
        *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v2, v57);
        *(v30 + 12) = 2080;
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, *(&v27 + 1), v57);

        *(v30 + 14) = v33;
        _os_log_impl(&dword_1C1358000, v29, v24, "%s%s", v30, 0x16u);
        swift_arrayDestroy();
        v34 = v32;
        v8 = v31;
        MEMORY[0x1C6902A30](v34, -1, -1);
        v35 = v30;
        v7 = v51;
        MEMORY[0x1C6902A30](v35, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }

    v6 = v60[0];
    if (!v60[0])
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}