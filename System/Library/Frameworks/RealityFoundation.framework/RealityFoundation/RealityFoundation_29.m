uint64_t HoverEffectComponent.GroupID.init()@<X0>(uint64_t *a1@<X8>)
{
  result = RERemoteEffectsComponentCreateGroupID();
  *a1 = result;
  return result;
}

Swift::Int HoverEffectComponent.GroupID.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HoverEffectComponent.GroupID()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HoverEffectComponent.GroupID()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C50](v1);
  return Hasher._finalize()();
}

void SettingsModifierV2.modifier.getter(char *a1@<X8>)
{
  if (*v1 == 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = *v1 == 1;
  }

  *a1 = v2;
}

uint64_t (*SettingsModifierV2.modifier.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  if (*v1 == 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = *v1 == 1;
  }

  *(a1 + 8) = v2;
  return SettingsModifierV2.modifier.modify;
}

uint64_t static HoverEffectComponent.SwiftStyleFromREComponent(_:styleId:)@<X0>(uint64_t a1@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  RERemoteEffectsComponentStyleGetGlowAppearDurationOverride();
  v20 = v2;
  RERemoteEffectsComponentStyleGetGlowDisappearDurationOverride();
  v19 = v3;
  RERemoteEffectsComponentStyleGetIntensityMultiplier();
  v5 = v4;
  OpacityFunction = RERemoteEffectsComponentStyleGetOpacityFunction();
  RERemoteEffectsComponentStyleGetFadeUsesActiveTime();
  RERemoteEffectsComponentStyleGetFadeUsesActiveTimeMultiplier();
  RERemoteEffectsComponentStyleGetActivationDelay();
  RERemoteEffectsComponentStyleGetColorTint();
  result = RERemoteEffectsComponentStyleGetType();
  if (result == 2)
  {
    result = RECreateCGColorFromColorGamut();
    v16 = (OpacityFunction == 2) << 33;
    if (OpacityFunction == 1)
    {
      v16 = 0x100000000;
    }

    *a1 = result;
    *(a1 + 8) = v16 | v5;
    v15 = 1;
  }

  else if (result == 1)
  {
    v8.f64[0] = v20;
    v8.f64[1] = v19;
    __asm { FMOV            V0.2D, #10.0 }

    v14 = vbslq_s8(vcgtq_f64(v8, _Q0), _Q0, v8);
    *a1 = vbicq_s8(v14, vclezq_f64(v14));
    v15 = 2;
  }

  else
  {
    result = RECreateCGColorFromColorGamut();
    v15 = 0;
    v17 = (OpacityFunction == 2) << 33;
    if (OpacityFunction == 1)
    {
      v17 = 0x100000000;
    }

    *a1 = result;
    *(a1 + 8) = v17 | v5;
  }

  *(a1 + 16) = v15;
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL specialized static HoverEffectComponent.HighlightHoverEffectStyle.== infix(_:_:)(float *a1, float *a2)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = *(a1 + 12);
  v5 = *a2;
  v6 = a2[2];
  v7 = *(a2 + 12);
  type metadata accessor for CGColorRef(0);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef();
  v8 = static _CFObject.== infix(_:_:)();
  result = 0;
  if ((v8 & 1) != 0 && v3 == v6)
  {
    return v4 == v7;
  }

  return result;
}

BOOL specialized static HoverEffectComponent.HoverEffect.HoverEffectType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      type metadata accessor for CGColorRef(0);
      outlined copy of HoverEffectComponent.HoverEffect.HoverEffectType(*&v6, *&v5, 0);
      outlined copy of HoverEffectComponent.HoverEffect.HoverEffectType(*&v3, *&v2, 0);
      outlined copy of HoverEffectComponent.HoverEffect.HoverEffectType(*&v3, *&v2, 0);
      outlined copy of HoverEffectComponent.HoverEffect.HoverEffectType(*&v6, *&v5, 0);
      lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef();
      v22 = static _CFObject.== infix(_:_:)();
      outlined consume of HoverEffectComponent.HoverEffect.HoverEffectType(*&v3, *&v2, 0);
      outlined consume of HoverEffectComponent.HoverEffect.HoverEffectType(*&v6, *&v5, 0);
      if (v22)
      {
        v9 = *&v2;
        v10 = *&v5;
        outlined consume of HoverEffectComponent.HoverEffect.HoverEffectType(*&v6, *&v5, 0);
        v11 = v3;
        v12 = *&v2;
        v13 = 0;
        goto LABEL_17;
      }

      outlined consume of HoverEffectComponent.HoverEffect.HoverEffectType(*&v6, *&v5, 0);
      v19 = v3;
      v20 = *&v2;
      v21 = 0;
LABEL_13:
      outlined consume of HoverEffectComponent.HoverEffect.HoverEffectType(*&v19, v20, v21);
      return 0;
    }

    goto LABEL_7;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      type metadata accessor for CGColorRef(0);
      outlined copy of HoverEffectComponent.HoverEffect.HoverEffectType(*&v6, *&v5, 1u);
      outlined copy of HoverEffectComponent.HoverEffect.HoverEffectType(*&v3, *&v2, 1u);
      outlined copy of HoverEffectComponent.HoverEffect.HoverEffectType(*&v3, *&v2, 1u);
      outlined copy of HoverEffectComponent.HoverEffect.HoverEffectType(*&v6, *&v5, 1u);
      lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef();
      v8 = static _CFObject.== infix(_:_:)();
      outlined consume of HoverEffectComponent.HoverEffect.HoverEffectType(*&v3, *&v2, 1u);
      outlined consume of HoverEffectComponent.HoverEffect.HoverEffectType(*&v6, *&v5, 1u);
      if (v8)
      {
        v9 = *&v2;
        v10 = *&v5;
        outlined consume of HoverEffectComponent.HoverEffect.HoverEffectType(*&v6, *&v5, 1u);
        v11 = v3;
        v12 = *&v2;
        v13 = 1;
LABEL_17:
        outlined consume of HoverEffectComponent.HoverEffect.HoverEffectType(*&v11, v12, v13);
        return v9 == v10 && ((*&v5 ^ *&v2) & 0xFF00000000) == 0;
      }

      outlined consume of HoverEffectComponent.HoverEffect.HoverEffectType(*&v6, *&v5, 1u);
      v19 = v3;
      v20 = *&v2;
      v21 = 1;
      goto LABEL_13;
    }

LABEL_7:
    v14 = *&v3;
LABEL_12:
    outlined copy of HoverEffectComponent.HoverEffect.HoverEffectType(*&v6, *&v5, v7);
    outlined consume of HoverEffectComponent.HoverEffect.HoverEffectType(*&v3, *&v2, v4);
    v19 = v6;
    v20 = *&v5;
    v21 = v7;
    goto LABEL_13;
  }

  if (v7 != 2)
  {
    goto LABEL_12;
  }

  v15 = *(a1 + 8);
  v16 = *a2;
  v17 = *(a2 + 8);
  outlined consume of HoverEffectComponent.HoverEffect.HoverEffectType(*a1, *&v2, 2u);
  outlined consume of HoverEffectComponent.HoverEffect.HoverEffectType(*&v6, *&v5, 2u);
  return v2 == v5 && v3 == v6;
}

void specialized static HoverEffectComponent.addOrUpdateCoreHoverEffect(_:hoverEffect:at:)(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 33);
  v10 = *(a2 + 34);
  v11 = *(a2 + 36);
  v12 = v7;
  v22 = *(a2 + 32);
  if (!*(a2 + 16))
  {
    goto LABEL_4;
  }

  if (v7 == 1)
  {
    v12 = 2;
LABEL_4:
    v13 = v5;
    goto LABEL_6;
  }

  v12 = 1;
LABEL_6:
  if (RERemoteEffectsComponentGetStyleCount() <= a3)
  {
    RERemoteEffectsComponentCreateStyleID();
    RERemoteEffectsComponentAddStyle();
  }

  else
  {
    RERemoteEffectsComponentGetStyleIDAtIndex();
    Type = RERemoteEffectsComponentStyleGetType();
    RERemoteEffectsComponentStyleReset();
    if (v12 != Type)
    {
      RERemoteEffectsComponentCreateStyleID();
    }

    RERemoteEffectsComponentSetStyleIDAtIndex();
  }

  StyleIDAtIndex = RERemoteEffectsComponentGetStyleIDAtIndex();
  RERemoteEffectsComponentStyleSetType();
  RERemoteEffectsComponentStyleSetIsPlanar();
  if (v22)
  {
    RERemoteEffectsComponentGetInvalidGroupID();
  }

  RERemoteEffectsComponentStyleSetGroupID();
  RERemoteEffectsComponentStyleSetAllowsDirectInput();
  RERemoteEffectsComponentStyleSetAllowsIndirectInput();
  RERemoteEffectsComponentStyleSetIsHierarchical();
  RERemoteEffectsComponentStyleSetEnableDirectPinchAnimation();
  RERemoteEffectsComponentStyleResetGlowAppearDurationOverride();
  RERemoteEffectsComponentStyleResetGlowDisappearDurationOverride();
  if (!v7)
  {
    RECGColorToColorGamut();
    RERemoteEffectsComponentStyleSetColorTint();
    RERemoteEffectsComponentStyleSetIntensityMultiplier();
    RERemoteEffectsComponentStyleSetOpacityFunction();
    v16 = v5;
    v17 = v6;
    v18 = 0;
    goto LABEL_18;
  }

  if (v7 == 1)
  {
    RECGColorToColorGamut();
    RERemoteEffectsComponentStyleSetColorTint();
    RERemoteEffectsComponentStyleSetIntensityMultiplier();
    RERemoteEffectsComponentStyleSetOpacityFunction();
    v16 = v5;
    v17 = v6;
    v18 = 1;
LABEL_18:
    outlined consume of HoverEffectComponent.HoverEffect.HoverEffectType(v16, v17, v18);
    v19 = *MEMORY[0x1E69E9840];
    return;
  }

  RERemoteEffectsComponentStyleSetGlowAppearDurationOverride();
  v20 = *MEMORY[0x1E69E9840];
  v21.n128_u64[0] = v6;

  MEMORY[0x1EEDFDE50](a1, StyleIDAtIndex, v21);
}

unint64_t lazy protocol witness table accessor for type HoverEffectComponent.OpacityFunction and conformance HoverEffectComponent.OpacityFunction()
{
  result = lazy protocol witness table cache variable for type HoverEffectComponent.OpacityFunction and conformance HoverEffectComponent.OpacityFunction;
  if (!lazy protocol witness table cache variable for type HoverEffectComponent.OpacityFunction and conformance HoverEffectComponent.OpacityFunction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HoverEffectComponent.OpacityFunction and conformance HoverEffectComponent.OpacityFunction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HoverEffectComponent.GroupID and conformance HoverEffectComponent.GroupID()
{
  result = lazy protocol witness table cache variable for type HoverEffectComponent.GroupID and conformance HoverEffectComponent.GroupID;
  if (!lazy protocol witness table cache variable for type HoverEffectComponent.GroupID and conformance HoverEffectComponent.GroupID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HoverEffectComponent.GroupID and conformance HoverEffectComponent.GroupID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SettingsModifierV2.ModifierType and conformance SettingsModifierV2.ModifierType()
{
  result = lazy protocol witness table cache variable for type SettingsModifierV2.ModifierType and conformance SettingsModifierV2.ModifierType;
  if (!lazy protocol witness table cache variable for type SettingsModifierV2.ModifierType and conformance SettingsModifierV2.ModifierType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SettingsModifierV2.ModifierType and conformance SettingsModifierV2.ModifierType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HoverEffectComponent.HoverEffect(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HoverEffectComponent.HoverEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 1;
    }
  }

  return result;
}

id outlined copy of HoverEffectComponent.HoverEffect.HoverEffectType(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    return result;
  }

  return result;
}

void outlined consume of HoverEffectComponent.HoverEffect.HoverEffectType(id a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }
}

uint64_t SkeletalPosesComponent.poses.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t SkeletalPosesComponent.init(poses:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = swift_bridgeObjectRelease_n();
  *a2 = a1;
  a2[1] = 0;
  return result;
}

int64_t static SkeletalPosesComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v21 = *a1;
  v4 = specialized static SkeletalPosesComponent.getCoreAsset(_:)(&v21);
  if (!v4)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_16:
    result = swift_bridgeObjectRelease_n();
    *a2 = v7;
    a2[1] = v4;
    return result;
  }

  result = RESkeletalPoseComponentGetSkeletonCount();
  if (result < 0)
  {
    goto LABEL_18;
  }

  v6 = result;
  v7 = MEMORY[0x1E69E7CC0];
  if (!result)
  {
    goto LABEL_16;
  }

  v19 = v4;
  v20 = a2;
  v21 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, result, 0);
  v8 = 0;
  v7 = v21;
  while (1)
  {
    RESkeletalPoseComponentGetPoseName();
    v9 = String.init(cString:)();
    v11 = v10;
    RESkeletalPoseComponentEnsureSkeletalPosesInitialized();
    if (v8 >= RESkeletalPoseComponentGetSkeletonCount())
    {
      result = 0;
LABEL_10:
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, 0, 0, MEMORY[0x1E69E7CC0]);
      goto LABEL_11;
    }

    result = RESkeletalPoseComponentGetJointCount();
    if (!result)
    {
      goto LABEL_10;
    }

    v12 = result;
    if (result < 0)
    {
      break;
    }

    type metadata accessor for RESRT(0);
    v13 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v13 + 16) = v12;
    RESkeletalPoseComponentGetJointTransforms();
    v14 = v13;
    *(v13 + 16) = v12;
LABEL_11:
    v21 = v7;
    v16 = *(v7 + 16);
    v15 = *(v7 + 24);
    if (v16 >= v15 >> 1)
    {
      v18 = v14;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      v14 = v18;
      v7 = v21;
    }

    v17 = v7 + 56 * v16;
    *(v17 + 32) = v3;
    *(v17 + 40) = v8;
    *(v7 + 16) = v16 + 1;
    *(v17 + 48) = 0;
    *(v17 + 56) = v9;
    *(v17 + 64) = v11;
    *(v17 + 72) = 0;
    *(v17 + 80) = v14;
    if (v6 == ++v8)
    {
      v4 = v19;
      a2 = v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t SkeletalPosesComponent.__toCore(_:)(Swift::OpaquePointer *a1)
{
  v2 = *v1;
  v3 = *v1 + 32;
  v4 = *(*v1 + 16) + 1;
  v5 = 72;
  while (--v4)
  {
    v6 = *(v2 + v5);
    v5 += 56;
    if (v6)
    {
      v23 = *v1;
      v24 = v1[1];
      SkeletalPosesComponent.updateInternalPoseJointNames(_:)(a1->_rawValue);
      break;
    }
  }

  RESkeletalPoseComponentEnsureSkeletalPosesInitialized();
  v7 = *(v2 + 16);

  if (v7)
  {
    v9 = 0;
    v22 = v3;
    do
    {
      if (v9 >= *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      v10 = (v3 + 56 * v9);
      v11 = v10[5];
      v12 = v10[6];
      v13 = v10[4];

      RESkeletalPoseComponentEnsureSkeletalPosesInitialized();
      if (v9 >= RESkeletalPoseComponentGetSkeletonCount())
      {
        goto LABEL_8;
      }

      JointCount = RESkeletalPoseComponentGetJointCount();
      v15 = *(v12 + 16);
      if (v15)
      {
        if (v15 < JointCount)
        {
          v16 = 0;
          v17 = (v12 + 64);
          do
          {
            v18 = v16 + 1;
            v19 = *(v17 - 1);
            v20 = *v17;
            v21 = *(v17 - 2);
            RESkeletalPoseComponentSetJointTransform();
            v17 += 3;
            v16 = v18;
          }

          while (v15 != v18);
          goto LABEL_19;
        }
      }

      else if (JointCount >= 1)
      {
        goto LABEL_8;
      }

      if (JointCount)
      {
        RESkeletalPoseComponentSetJointTransforms();
LABEL_19:
        RENetworkMarkComponentDirty();

        v3 = v22;
        goto LABEL_9;
      }

LABEL_8:

LABEL_9:
      ++v9;
    }

    while (v9 != v7);
  }
}

Swift::Void __swiftcall SkeletalPosesComponent.updateInternalPoseJointNames(_:)(Swift::OpaquePointer a1)
{
  v3 = *v1;
  SkeletalPoseDefinition = RESkeletalPoseComponentGetSkeletalPoseDefinition();
  if (SkeletalPoseDefinition)
  {
    v5 = SkeletalPoseDefinition;
    PoseCount = RESkeletalPoseDefinitionAssetGetPoseCount();
    v7 = MEMORY[0x1E69E7CC0];
    v30 = MEMORY[0x1E69E7CC0];
    v31 = MEMORY[0x1E69E7CC0];
    v29 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySPys4Int8VGGGMd, &_ss23_ContiguousArrayStorageCySaySPys4Int8VGGGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    *(inited + 32) = v7;
    v28 = inited;
    ModelSpacePoseCount = RESkeletalPoseDefinitionAssetGetModelSpacePoseCount();
    v26 = v7;
    v27 = v7;
    *(&v25 + 1) = v7;
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_1C1887600;
    *(v10 + 32) = v7;
    *&v25 = v10;
    v24 = v7;
    v11 = *(v3 + 16);

    if (v11)
    {
      v12 = (v3 + 80);
      do
      {
        v13 = *(v12 - 1);
        v14 = *v12;
        v15 = *(v12 - 3);
        v16 = *(v12 - 2);
        v17 = *(v12 - 32);
        v18 = *(v12 - 3);
        v19 = v17;
        v20 = v15;
        v21 = v16;
        v22 = v13;
        v23 = v14;

        closure #1 in SkeletalPosesComponent.updateInternalPoseJointNames(_:)(&v18, PoseCount, v5, &v31, &v28, &v30, &v29, &v24, a1._rawValue, ModelSpacePoseCount, &v27, &v25, &v26, &v25 + 1);

        v12 += 7;
        --v11;
      }

      while (v11);
    }

    RENetworkMarkComponentDirty();

    $defer #1 () in SkeletalPosesComponent.updateInternalPoseJointNames(_:)(&v25);

    $defer #1 () in SkeletalPosesComponent.updateInternalPoseJointNames(_:)(&v28);
  }
}

uint64_t $defer #1 () in SkeletalPosesComponent.updateInternalPoseJointNames(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);

  if (v2)
  {
    v4 = 0;
    while (v4 < *(v1 + 16))
    {
      v5 = *(v1 + 32 + 8 * v4);
      v6 = *(v5 + 16);
      if (v6)
      {
        v7 = *(v1 + 32 + 8 * v4);

        v8 = 32;
        do
        {
          free(*(v5 + v8));
          v8 += 8;
          --v6;
        }

        while (v6);
      }

      if (++v4 == v2)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
  }

  return result;
}

uint64_t closure #1 in SkeletalPosesComponent.updateInternalPoseJointNames(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, char **a4, void **a5, int64_t *a6, uint64_t a7, char **a8, uint64_t a9, uint64_t a10, char **a11, __int128 *a12, uint64_t a13, char **a14)
{
  v258 = *MEMORY[0x1E69E9840];
  v15 = a1[1];
  v236 = *a1;
  v235 = a1[3];
  v234 = a1[4];
  v233 = a1[5];
  v16 = a1[6];
  v240 = v15;
  v243 = v16;
  if ((a1[2] & 1) == 0)
  {
    if (a2 < 0)
    {
      goto LABEL_214;
    }

    if (!a2)
    {
      goto LABEL_180;
    }

    v17 = 0;
    a12 = (v16 + 64);
    while (1)
    {
      if (v17 == v15)
      {
        *&v254 = v236;
        *(&v254 + 1) = v15;
        LOBYTE(v255) = 0;
        *(&v255 + 1) = v235;
        *&v256 = v234;
        *(&v256 + 1) = v233;
        *&v257 = v16;
        v18 = SkeletalPose.jointNames.getter();
        v19 = *a6;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a6 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
          v19 = isUniquelyReferenced_nonNull_native;
          *a6 = isUniquelyReferenced_nonNull_native;
        }

        v22 = v19[2];
        v21 = v19[3];
        v14 = v22 + 1;
        if (v22 >= v21 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v19);
          v19 = isUniquelyReferenced_nonNull_native;
          *a6 = isUniquelyReferenced_nonNull_native;
        }

        v23 = 0;
        v19[2] = v14;
        v19[v22 + 4] = v18;
        v24 = *(v18 + 16);
        v25 = MEMORY[0x1E69E7CC0];
LABEL_14:
        v26 = (v18 + 40 + 16 * v23);
        while (v24 != v23)
        {
          if (v23 >= *(v18 + 16))
          {
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
            goto LABEL_91;
          }

          ++v23;
          v27 = v26 + 2;
          v28 = *(v26 - 1);
          v29 = *v26;
          v14 = String.utf8CString.getter();
          v22 = strdup((v14 + 32));

          v26 = v27;
          if (v22)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
              v25 = isUniquelyReferenced_nonNull_native;
            }

            v31 = *(v25 + 2);
            v30 = *(v25 + 3);
            v14 = v31 + 1;
            if (v31 >= v30 >> 1)
            {
              isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v25);
              v25 = isUniquelyReferenced_nonNull_native;
            }

            *(v25 + 2) = v14;
            *&v25[8 * v31 + 32] = v22;
            goto LABEL_14;
          }
        }

        v39 = *(v25 + 2);
        v40 = *a4;
        v41 = swift_isUniquelyReferenced_nonNull_native();
        *a4 = v40;
        if ((v41 & 1) == 0)
        {
          v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 2) + 1, 1, v40);
          *a4 = v40;
        }

        v43 = *(v40 + 2);
        v42 = *(v40 + 3);
        if (v43 >= v42 >> 1)
        {
          v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v40);
          *a4 = v40;
        }

        *(v40 + 2) = v43 + 1;
        v44 = &v40[24 * v43];
        *(v44 + 4) = v39;
        *(v44 + 5) = v25 + 32;
        *(v44 + 6) = 0;
        v45 = *a5;
        v46 = swift_isUniquelyReferenced_nonNull_native();
        *a5 = v45;
        if ((v46 & 1) == 0)
        {
          v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45[2] + 1, 1, v45);
          *a5 = v45;
        }

        v48 = v45[2];
        v47 = v45[3];
        v14 = v48 + 1;
        if (v48 >= v47 >> 1)
        {
          v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v45);
          *a5 = v45;
        }

        v45[2] = v14;
        v45[v48 + 4] = v25;
        v49 = specialized BidirectionalCollection.distance(from:to:)(0, *(v243 + 16));
        if (v49)
        {
          v22 = v49;
          *&v254 = MEMORY[0x1E69E7CC0];
          v25 = &v254;
          isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49 & ~(v49 >> 63), 0);
          if ((v22 & 0x8000000000000000) != 0)
          {
            goto LABEL_208;
          }

          v23 = v254;
          if (one-time initialization token for identity != -1)
          {
            isUniquelyReferenced_nonNull_native = swift_once();
          }

          v50 = 0;
          v51 = a12;
          v52 = v243;
          while (1)
          {
            v26 = *(v52 + 16);
            if (v50 >= v26)
            {
              goto LABEL_90;
            }

            v53 = *(v51 - 2);
            v54 = *(v51 - 1);
            v55 = *v51;
            *&v254 = v23;
            v57 = *(v23 + 16);
            v56 = *(v23 + 24);
            v14 = v57 + 1;
            if (v57 >= v56 >> 1)
            {
              v25 = &v254;
              v239 = v53;
              v231 = v54;
              v227 = v55;
              isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1);
              v55 = v227;
              v54 = v231;
              v53 = v239;
              v52 = v243;
              v23 = v254;
            }

            ++v50;
            *(v23 + 16) = v14;
            v58 = (v23 + 48 * v57);
            v58[2] = v53;
            v58[3] = v54;
            v58[4] = v55;
            v51 += 3;
            if (v22 == v50)
            {
              goto LABEL_78;
            }
          }
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_native = RESkeletalPoseDefinitionAssetGetJointCount();
        if (isUniquelyReferenced_nonNull_native < 0)
        {
          goto LABEL_206;
        }

        v32 = isUniquelyReferenced_nonNull_native;
        if (isUniquelyReferenced_nonNull_native)
        {
          *&v254 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, isUniquelyReferenced_nonNull_native, 0);
          v33 = 0;
          v23 = v254;
          do
          {
            RESkeletalPoseDefinitionAssetGetJointName();
            isUniquelyReferenced_nonNull_native = String.init(cString:)();
            v34 = isUniquelyReferenced_nonNull_native;
            v14 = v35;
            *&v254 = v23;
            v37 = *(v23 + 16);
            v36 = *(v23 + 24);
            v22 = v37 + 1;
            if (v37 >= v36 >> 1)
            {
              isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
              v23 = v254;
            }

            ++v33;
            *(v23 + 16) = v22;
            v38 = v23 + 16 * v37;
            *(v38 + 32) = v34;
            *(v38 + 40) = v14;
          }

          while (v32 != v33);
          v25 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v25 = MEMORY[0x1E69E7CC0];
          v22 = *(MEMORY[0x1E69E7CC0] + 16);
          v23 = MEMORY[0x1E69E7CC0];
        }

        v59 = 0;
        v60 = v23 + 40;
        *&v239 = v23 + 40;
LABEL_50:
        v26 = (v60 + 16 * v59);
        while (v22 != v59)
        {
          if (v59 >= *(v23 + 16))
          {
            goto LABEL_89;
          }

          ++v59;
          v61 = v26 + 2;
          v62 = *(v26 - 1);
          v63 = *v26;
          v14 = String.utf8CString.getter();
          v64 = strdup((v14 + 32));

          v26 = v61;
          if (v64)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
              v25 = isUniquelyReferenced_nonNull_native;
            }

            v66 = *(v25 + 2);
            v65 = *(v25 + 3);
            v14 = v66 + 1;
            if (v66 >= v65 >> 1)
            {
              isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v25);
              v25 = isUniquelyReferenced_nonNull_native;
            }

            *(v25 + 2) = v14;
            *&v25[8 * v66 + 32] = v64;
            v60 = v23 + 40;
            goto LABEL_50;
          }
        }

        v67 = *(v25 + 2);
        v68 = *a4;
        v69 = swift_isUniquelyReferenced_nonNull_native();
        *a4 = v68;
        if ((v69 & 1) == 0)
        {
          v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v68 + 2) + 1, 1, v68);
          *a4 = v68;
        }

        v71 = *(v68 + 2);
        v70 = *(v68 + 3);
        if (v71 >= v70 >> 1)
        {
          v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1, v68);
          *a4 = v68;
        }

        *(v68 + 2) = v71 + 1;
        v72 = &v68[24 * v71];
        *(v72 + 4) = v67;
        *(v72 + 5) = v25 + 32;
        *(v72 + 6) = 0;
        v73 = *a5;
        v74 = swift_isUniquelyReferenced_nonNull_native();
        *a5 = v73;
        if ((v74 & 1) == 0)
        {
          v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v73[2] + 1, 1, v73);
          *a5 = v73;
        }

        v76 = v73[2];
        v75 = v73[3];
        if (v76 >= v75 >> 1)
        {
          v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1, v73);
          *a5 = v73;
        }

        v73[2] = v76 + 1;
        v73[v76 + 4] = v25;
        v77 = *a6;
        v78 = swift_isUniquelyReferenced_nonNull_native();
        *a6 = v77;
        if ((v78 & 1) == 0)
        {
          v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v77[2] + 1, 1, v77);
          *a6 = v77;
        }

        v80 = v77[2];
        v79 = v77[3];
        if (v80 >= v79 >> 1)
        {
          v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1, v77);
          *a6 = v77;
        }

        v77[2] = v80 + 1;
        v77[v80 + 4] = v23;
        if (v32)
        {
          v252 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
          v81 = 0;
          v23 = v252;
          do
          {
            v255 = 0u;
            v256 = 0u;
            v254 = 0u;
            RESkeletalPoseDefinitionAssetGetJointDefaultTransform();
            v82 = v254;
            v83 = v255;
            v84 = v256;
            v86 = *(v252 + 16);
            v85 = *(v252 + 24);
            if (v86 >= v85 >> 1)
            {
              v239 = v254;
              v231 = v255;
              v228 = v256;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1);
              v84 = v228;
              v83 = v231;
              v82 = v239;
            }

            ++v81;
            *(v252 + 16) = v86 + 1;
            v87 = (v252 + 48 * v86);
            v87[2] = v82;
            v87[3] = v83;
            v87[4] = v84;
          }

          while (v32 != v81);
          goto LABEL_78;
        }
      }

      v23 = MEMORY[0x1E69E7CC0];
LABEL_78:
      v88 = *a7;
      v89 = swift_isUniquelyReferenced_nonNull_native();
      *a7 = v88;
      if ((v89 & 1) == 0)
      {
        v88 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v88[2] + 1, 1, v88);
        *a7 = v88;
      }

      v91 = v88[2];
      v90 = v88[3];
      if (v91 >= v90 >> 1)
      {
        v88 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), v91 + 1, 1, v88);
        *a7 = v88;
      }

      v88[2] = v91 + 1;
      v88[v91 + 4] = v23;
      RESkeletalPoseComponentGetPoseName();
      v92 = String.init(cString:)();
      v94 = v93;
      v95 = *a8;
      v96 = swift_isUniquelyReferenced_nonNull_native();
      *a8 = v95;
      if ((v96 & 1) == 0)
      {
        v95 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v95 + 2) + 1, 1, v95);
        *a8 = v95;
      }

      v98 = *(v95 + 2);
      v97 = *(v95 + 3);
      v14 = v98 + 1;
      if (v98 >= v97 >> 1)
      {
        v95 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v97 > 1), v98 + 1, 1, v95);
        *a8 = v95;
      }

      ++v17;
      *(v95 + 2) = v14;
      v99 = &v95[16 * v98];
      *(v99 + 4) = v92;
      *(v99 + 5) = v94;
      v15 = v240;
      v16 = v243;
      if (v17 == a2)
      {
        goto LABEL_180;
      }
    }
  }

  if (a10 < 0)
  {
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
  }

  if (a10)
  {
    v14 = 0;
    *&v239 = a13;
    *&v231 = v16 + 64;
    do
    {
      if (v14 == v15)
      {
        *&v254 = v236;
        *(&v254 + 1) = v15;
        LOBYTE(v255) = 1;
        *(&v255 + 1) = v235;
        *&v256 = v234;
        *(&v256 + 1) = v233;
        *&v257 = v16;
        v100 = SkeletalPose.jointNames.getter();
        v101 = *v239;

        v102 = swift_isUniquelyReferenced_nonNull_native();
        *v239 = v101;
        if ((v102 & 1) == 0)
        {
          v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v101[2] + 1, 1, v101);
          *v239 = v101;
        }

        v104 = v101[2];
        v103 = v101[3];
        if (v104 >= v103 >> 1)
        {
          v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v103 > 1), v104 + 1, 1, v101);
          *v239 = v101;
        }

        v105 = 0;
        v101[2] = v104 + 1;
        v101[v104 + 4] = v100;
        v106 = *(v100 + 16);
        v107 = MEMORY[0x1E69E7CC0];
LABEL_99:
        v108 = (v100 + 40 + 16 * v105);
        while (v106 != v105)
        {
          if (v105 >= *(v100 + 16))
          {
            __break(1u);
LABEL_201:
            __break(1u);
LABEL_202:
            __break(1u);
LABEL_203:
            __break(1u);
LABEL_204:
            __break(1u);
LABEL_205:
            __break(1u);
LABEL_206:
            __break(1u);
LABEL_207:
            __break(1u);
LABEL_208:
            __break(1u);
LABEL_209:
            __break(1u);
LABEL_210:
            __break(1u);
            goto LABEL_211;
          }

          ++v105;
          v109 = v108 + 2;
          v110 = *(v108 - 1);
          v111 = *v108;
          v112 = String.utf8CString.getter();
          v113 = strdup((v112 + 32));

          v108 = v109;
          if (v113)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v107 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v107 + 2) + 1, 1, v107);
            }

            v115 = *(v107 + 2);
            v114 = *(v107 + 3);
            if (v115 >= v114 >> 1)
            {
              v107 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v114 > 1), v115 + 1, 1, v107);
            }

            *(v107 + 2) = v115 + 1;
            *&v107[8 * v115 + 32] = v113;
            goto LABEL_99;
          }
        }

        v127 = *(v107 + 2);
        v128 = *a11;
        v129 = swift_isUniquelyReferenced_nonNull_native();
        *a11 = v128;
        if ((v129 & 1) == 0)
        {
          v128 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v128 + 2) + 1, 1, v128);
          *a11 = v128;
        }

        v131 = *(v128 + 2);
        v130 = *(v128 + 3);
        if (v131 >= v130 >> 1)
        {
          v128 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v130 > 1), v131 + 1, 1, v128);
          *a11 = v128;
        }

        *(v128 + 2) = v131 + 1;
        v132 = &v128[24 * v131];
        *(v132 + 4) = v127;
        *(v132 + 5) = v107 + 32;
        *(v132 + 6) = 0;
        v133 = *a12;
        v134 = swift_isUniquelyReferenced_nonNull_native();
        *a12 = v133;
        if ((v134 & 1) == 0)
        {
          v133 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v133[2] + 1, 1, v133);
          *a12 = v133;
        }

        v136 = v133[2];
        v135 = v133[3];
        if (v136 >= v135 >> 1)
        {
          v133 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v135 > 1), v136 + 1, 1, v133);
          *a12 = v133;
        }

        v133[2] = v136 + 1;
        v133[v136 + 4] = v107;
        v137 = *v239;
        v138 = swift_isUniquelyReferenced_nonNull_native();
        *v239 = v137;
        if ((v138 & 1) == 0)
        {
          v137 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v137[2] + 1, 1, v137);
          *v239 = v137;
        }

        v140 = v137[2];
        v139 = v137[3];
        if (v140 >= v139 >> 1)
        {
          v137 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v139 > 1), v140 + 1, 1, v137);
          *v239 = v137;
        }

        v137[2] = v140 + 1;
        v137[v140 + 4] = v100;
        v141 = specialized BidirectionalCollection.distance(from:to:)(0, *(v243 + 16));
        if (v141)
        {
          v142 = v141;
          *&v254 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v141 & ~(v141 >> 63), 0);
          if ((v142 & 0x8000000000000000) == 0)
          {
            v17 = v254;
            if (one-time initialization token for identity != -1)
            {
              swift_once();
            }

            v143 = 0;
            v144 = v231;
            v145 = v243;
            while (v143 < *(v145 + 16))
            {
              v249 = v144[-2];
              v245 = *v144;
              *v146.i64 = simd_matrix4x4(v144[-1]);
              v150 = v149;
              *&v254 = v17;
              v152 = *(v17 + 16);
              v151 = *(v17 + 24);
              if (v152 >= v151 >> 1)
              {
                v225 = v146;
                v229 = v149;
                v223 = v148;
                v224 = v147;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v151 > 1), v152 + 1, 1);
                v148 = v223;
                v147 = v224;
                v146 = v225;
                v150 = v229;
                v145 = v243;
                v17 = v254;
              }

              v153 = vaddq_f32(v245, v150);
              v153.i32[3] = v150.i32[3];
              ++v143;
              *(v17 + 16) = v152 + 1;
              v154 = (v17 + (v152 << 6));
              v154[2] = vmulq_n_f32(v146, v249.f32[0]);
              v154[3] = vmulq_lane_f32(v147, *v249.f32, 1);
              v154[4] = vmulq_laneq_f32(v148, v249, 2);
              v154[5] = v153;
              v144 += 3;
              if (v142 == v143)
              {
                goto LABEL_167;
              }
            }

            goto LABEL_202;
          }

          goto LABEL_209;
        }

        v17 = MEMORY[0x1E69E7CC0];
LABEL_167:
        v25 = *a14;
        v189 = swift_isUniquelyReferenced_nonNull_native();
        *a14 = v25;
        if ((v189 & 1) == 0)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
          *a14 = v25;
        }

        v23 = *(v25 + 2);
        v190 = *(v25 + 3);
        v22 = v23 + 1;
        if (v23 < v190 >> 1)
        {
          goto LABEL_92;
        }

        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v190 > 1), v23 + 1, 1, v25);
        v25 = isUniquelyReferenced_nonNull_native;
        v26 = a14;
      }

      else
      {
        ModelSpaceJointCount = RESkeletalPoseDefinitionAssetGetModelSpaceJointCount();
        if (ModelSpaceJointCount < 0)
        {
          goto LABEL_207;
        }

        v117 = ModelSpaceJointCount;
        if (ModelSpaceJointCount)
        {
          *&v254 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, ModelSpaceJointCount, 0);
          v118 = 0;
          v17 = v254;
          do
          {
            RESkeletalPoseDefinitionAssetGetModelSpaceJointName();
            v119 = String.init(cString:)();
            *&v254 = v17;
            v122 = *(v17 + 16);
            v121 = *(v17 + 24);
            v123 = v122 + 1;
            if (v122 >= v121 >> 1)
            {
              v125 = v119;
              v126 = v120;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v121 > 1), v122 + 1, 1);
              v120 = v126;
              v119 = v125;
              v17 = v254;
            }

            ++v118;
            *(v17 + 16) = v123;
            v124 = v17 + 16 * v122;
            *(v124 + 32) = v119;
            *(v124 + 40) = v120;
          }

          while (v117 != v118);
          v155 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v155 = MEMORY[0x1E69E7CC0];
          v123 = *(MEMORY[0x1E69E7CC0] + 16);
          v17 = MEMORY[0x1E69E7CC0];
        }

        v156 = 0;
        v157 = v17 + 40;
LABEL_139:
        v158 = (v157 + 16 * v156);
        while (v123 != v156)
        {
          if (v156 >= *(v17 + 16))
          {
            goto LABEL_201;
          }

          ++v156;
          v159 = v158 + 2;
          v160 = *(v158 - 1);
          v161 = *v158;
          v162 = String.utf8CString.getter();
          v163 = strdup((v162 + 32));

          v158 = v159;
          if (v163)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v155 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v155 + 2) + 1, 1, v155);
            }

            v165 = *(v155 + 2);
            v164 = *(v155 + 3);
            if (v165 >= v164 >> 1)
            {
              v155 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v164 > 1), v165 + 1, 1, v155);
            }

            *(v155 + 2) = v165 + 1;
            *&v155[8 * v165 + 32] = v163;
            v157 = v17 + 40;
            goto LABEL_139;
          }
        }

        v166 = *(v155 + 2);
        v167 = *a11;
        v168 = swift_isUniquelyReferenced_nonNull_native();
        *a11 = v167;
        if ((v168 & 1) == 0)
        {
          v167 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v167 + 2) + 1, 1, v167);
          *a11 = v167;
        }

        v170 = *(v167 + 2);
        v169 = *(v167 + 3);
        if (v170 >= v169 >> 1)
        {
          v167 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v169 > 1), v170 + 1, 1, v167);
          *a11 = v167;
        }

        *(v167 + 2) = v170 + 1;
        v171 = &v167[24 * v170];
        *(v171 + 4) = v166;
        *(v171 + 5) = v155 + 32;
        *(v171 + 6) = 0;
        v172 = *a12;
        v173 = swift_isUniquelyReferenced_nonNull_native();
        *a12 = v172;
        if ((v173 & 1) == 0)
        {
          v172 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v172[2] + 1, 1, v172);
          *a12 = v172;
        }

        v175 = v172[2];
        v174 = v172[3];
        if (v175 >= v174 >> 1)
        {
          v172 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v174 > 1), v175 + 1, 1, v172);
          *a12 = v172;
        }

        v172[2] = v175 + 1;
        v172[v175 + 4] = v155;
        v176 = *v239;

        v177 = swift_isUniquelyReferenced_nonNull_native();
        *v239 = v176;
        if ((v177 & 1) == 0)
        {
          v176 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v176[2] + 1, 1, v176);
          *v239 = v176;
        }

        v179 = v176[2];
        v178 = v176[3];
        if (v179 >= v178 >> 1)
        {
          v176 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v178 > 1), v179 + 1, 1, v176);
          *v239 = v176;
        }

        v176[2] = v179 + 1;
        v176[v179 + 4] = v17;
        if (v117)
        {
          v253 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v117, 0);
          v180 = 0;
          v181 = v253;
          do
          {
            v256 = 0u;
            v257 = 0u;
            v254 = 0u;
            v255 = 0u;
            RESkeletalPoseDefinitionAssetGetModelSpaceJointDefaultTransform();
            v182 = v254;
            v183 = v255;
            v184 = v256;
            v185 = v257;
            v187 = *(v253 + 16);
            v186 = *(v253 + 24);
            if (v187 >= v186 >> 1)
            {
              v246 = v255;
              v250 = v254;
              v226 = v257;
              v230 = v256;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v186 > 1), v187 + 1, 1);
              v185 = v226;
              v184 = v230;
              v183 = v246;
              v182 = v250;
            }

            ++v180;
            *(v253 + 16) = v187 + 1;
            v188 = (v253 + (v187 << 6));
            v188[2] = v182;
            v188[3] = v183;
            v188[4] = v184;
            v188[5] = v185;
          }

          while (v117 != v180);
        }

        else
        {
          v181 = MEMORY[0x1E69E7CC0];
        }

        v191 = *a14;
        v192 = swift_isUniquelyReferenced_nonNull_native();
        *a14 = v191;
        if ((v192 & 1) == 0)
        {
          v191 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v191 + 2) + 1, 1, v191);
          *a14 = v191;
        }

        v194 = *(v191 + 2);
        v193 = *(v191 + 3);
        if (v194 >= v193 >> 1)
        {
          v191 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v193 > 1), v194 + 1, 1, v191);
          *a14 = v191;
        }

        *(v191 + 2) = v194 + 1;
        *&v191[8 * v194 + 32] = v181;
        v25 = *v239;
        v195 = swift_isUniquelyReferenced_nonNull_native();
        *v239 = v25;
        if ((v195 & 1) == 0)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
          *v239 = v25;
        }

        v23 = *(v25 + 2);
        v196 = *(v25 + 3);
        v22 = v23 + 1;
        if (v23 < v196 >> 1)
        {
          goto LABEL_92;
        }

        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v196 > 1), v23 + 1, 1, v25);
        v25 = isUniquelyReferenced_nonNull_native;
        v26 = v239;
      }

LABEL_91:
      *v26 = isUniquelyReferenced_nonNull_native;
LABEL_92:
      ++v14;
      *(v25 + 2) = v22;
      *&v25[8 * v23 + 32] = v17;
      v15 = v240;
      v16 = v243;
    }

    while (v14 != a10);
  }

LABEL_180:
  PoseMeshMapCount = RESkeletalPoseDefinitionAssetGetPoseMeshMapCountEx();
  if (PoseMeshMapCount < 0)
  {
    goto LABEL_210;
  }

  if (PoseMeshMapCount)
  {
    v198 = 0;
    v199 = MEMORY[0x1E69E7CC0];
    v247 = PoseMeshMapCount;
    do
    {
      LOBYTE(v254) = 0;
      DWORD1(v256) = 0;
      v255 = 0uLL;
      *(&v254 + 1) = 0;
      LOBYTE(v256) = 0;
      RESkeletalPoseDefinitionAssetGetPoseMeshMapEx();
      v200 = v254;
      v201 = *(&v254 + 1);
      v202 = v255;
      v251 = v256;
      v203 = DWORD1(v256);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v199 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v199 + 2) + 1, 1, v199);
      }

      v205 = *(v199 + 2);
      v204 = *(v199 + 3);
      if (v205 >= v204 >> 1)
      {
        v199 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v204 > 1), v205 + 1, 1, v199);
      }

      *(v199 + 2) = v205 + 1;
      v206 = &v199[40 * v205];
      v206[32] = v200;
      ++v198;
      *(v206 + 5) = v201;
      *(v206 + 3) = v202;
      v206[64] = v251;
      *(v206 + 17) = v203;
    }

    while (v247 != v198);
  }

  v207 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v207 + 120, &v254);
  v208 = *(&v255 + 1);
  v209 = v256;
  __swift_project_boxed_opaque_existential_1(&v254, *(&v255 + 1));
  (*(v209 + 32))(v208, v209);
  __swift_destroy_boxed_opaque_existential_1(&v254);
  v210 = *a4;
  v211 = *a11;

  RESkeletalPoseDefinitionAssetCreateAssetWithDefinitionsEx();

  RESkeletalPoseComponentSetSkeletalPoseDefinition();
  result = RESkeletalPoseComponentEnsureSkeletalPosesInitialized();
  if (a2 < 0)
  {
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
    goto LABEL_213;
  }

  if (a2)
  {
    v213 = 0;
    v214 = 0;
    while (v214 < *(*a7 + 16))
    {
      v215 = *(*a7 + 8 * v214 + 32);
      RESkeletalPoseComponentSetJointTransforms();
      if (v214 >= *(*a8 + 2))
      {
        goto LABEL_204;
      }

      v216 = &(*a8)[v213];
      v217 = *(v216 + 4);
      v218 = *(v216 + 5);
      String.utf8CString.getter();
      RESkeletalPoseComponentSetPoseName();

      v213 += 16;
      if (a2 == ++v214)
      {
        goto LABEL_194;
      }
    }

    goto LABEL_203;
  }

LABEL_194:
  if (a10 < 0)
  {
    goto LABEL_212;
  }

  if (a10)
  {
    v219 = 0;
    while (v219 < *(*a14 + 2))
    {
      v220 = v219 + 1;
      v221 = *&(*a14)[8 * v219 + 32];
      result = RESkeletalPoseComponentSetModelSpaceJointTransforms();
      v219 = v220;
      if (a10 == v220)
      {
        goto LABEL_199;
      }
    }

    goto LABEL_205;
  }

LABEL_199:
  v222 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized static SkeletalPosesComponent.getCoreAsset(_:)(uint64_t *a1)
{
  v1 = *a1;
  RESkeletalPoseComponentEnsureSkeletalPosesInitialized();
  result = RESkeletalPoseComponentGetSkeletalPoseDefinition();
  if (result)
  {
    return result;
  }

  Entity = REComponentGetEntity();
  type metadata accessor for Entity();
  if (REEntityGetSwiftObject())
  {
    v4 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    result = REEntityIsBeingDestroyed();
    if (result)
    {
      __break(1u);
      return result;
    }

    v6 = static Entity.entityInfoType(_:)(Entity);
    if (v6)
    {
      v5 = (*(v6 + 232))();
      v7 = *(v5 + 16);

      MEMORY[0x1C68F9740](v7, 0);
      *(v5 + 16) = Entity;
      MEMORY[0x1C68F9740](Entity, v5);

      goto LABEL_8;
    }

    v4 = makeEntity(for:)(Entity);
  }

  v5 = v4;
LABEL_8:
  v8 = *(v5 + 16);

  Component = REEntityGetComponent();
  if (Component)
  {
    v14[0] = Component;
    static ModelComponent.__fromCore(_:borrowStrongReference:)(v14, 0, &v15);

    if (*(v15 + 16))
    {
      type metadata accessor for __ServiceLocator();
      v10 = static __ServiceLocator.shared.getter();
      swift_beginAccess();
      outlined init with copy of __REAssetService(v10 + 120, &v15);

      v11 = v16;
      v12 = v17;
      __swift_project_boxed_opaque_existential_1(&v15, v16);
      (*(v12 + 32))(v11, v12);
      __swift_destroy_boxed_opaque_existential_1(&v15);
      AssetForMesh = RESkeletalPoseDefinitionAssetCreateAssetForMesh();
      RESkeletalPoseComponentSetSkeletalPoseDefinition();

      return AssetForMesh;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t Scene.performQuery(_:rootEntity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v7 = *(a1 + 8);
  v8 = *(a1 + 48);
  v68 = *(a1 + 40);
  v69 = *(a1 + 24);
  v9 = *(a1 + 64);
  v66 = *a1;
  v67 = *(a1 + 56);
  if (!a2)
  {
    if (v8)
    {
      outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v8);

      outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v8);
      v10 = v8(v3);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v8);

      result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v8);
      if (v10)
      {
        goto LABEL_66;
      }
    }
  }

  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x1E69E7CC0];
  v64 = a3;
  v65 = (v12 + 16);
  v63 = v12;
  if (v9 && *(v9 + 16))
  {
    if (a2)
    {
      v13 = *(a2 + 16);
    }

    v14 = *(v4 + 16);
    v72 = partial apply for closure #1 in Scene.performQuery(_:rootEntity:);
    v73 = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
    v71 = &block_descriptor_15;
    v15 = _Block_copy(aBlock);
    swift_retain_n();

    REQueryEvaluateEntityQueryWithRootEntity();
    _Block_release(v15);

    goto LABEL_65;
  }

  v16 = *(v4 + 16);
  AllEntitiesArray = RESceneGetAllEntitiesArray();
  if (a2)
  {
    v19 = *(a2 + 16);
    if (!v17)
    {
      goto LABEL_65;
    }
  }

  else if (!v17)
  {
LABEL_65:
    swift_beginAccess();
    v10 = *(v63 + 16);

    a3 = v64;
LABEL_66:
    *a3 = v10;
    return result;
  }

  v20 = 8 * v17;
  while (1)
  {
    v21 = *AllEntitiesArray;
    if (REEntityIsNonHiddenAndInHierarchy())
    {
      break;
    }

LABEL_16:
    ++AllEntitiesArray;
    v20 -= 8;
    if (!v20)
    {
      goto LABEL_65;
    }
  }

  v71 = MEMORY[0x1E69E6B70];
  aBlock[0] = v21;
  outlined init with copy of Any(aBlock, v75);
  swift_dynamicCast();
  v22 = v74;
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    v23 = swift_dynamicCastClassUnconditional();
    goto LABEL_61;
  }

  if ((REEntityIsBeingDestroyed() & 1) == 0)
  {
    if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v24 = static SceneManager.customComponentTypeObjectIdToHandles;
    if (*(static SceneManager.customComponentTypeObjectIdToHandles + 16))
    {
      v25 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
      if (v26)
      {
        v27 = *(*(v24 + 56) + 8 * v25);
LABEL_38:
        swift_endAccess();
        if (REEntityGetCustomComponent())
        {
          Object = RECustomComponentGetObject();
          if (Object)
          {
            v44 = *Object;
            if (*(Object + 8))
            {
              v45 = 1;
            }

            else
            {
              v45 = v44 == 0;
            }

            if (v45)
            {
              v46 = *(Object + 8);
            }

            else
            {
              v47 = *v44;
              v48 = String.init(utf8String:)();
              if (v49)
              {
                v50 = v48;
              }

              else
              {
                v50 = 0;
              }

              if (v49)
              {
                v51 = v49;
              }

              else
              {
                v51 = 0xE000000000000000;
              }

              v44 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v47 == 42, v50, v51);

              type metadata accessor for IntrospectionDataCleanupHelper();
              *(swift_allocObject() + 16) = v44;
            }

            if (!v44)
            {
              goto LABEL_70;
            }

            v52 = String.init(utf8String:)();
            if (v53)
            {
              v54 = v53;
            }

            else
            {
              v52 = 0;
              v54 = 0xE000000000000000;
            }

            v55 = MEMORY[0x1C68F3280](v52, v54);

            v56 = NSClassFromString(v55);

            if (v56)
            {
              swift_getObjCClassMetadata();
              type metadata accessor for Entity();
              v57 = swift_dynamicCastMetatype();
              if (v57)
              {
                v58 = (*(v57 + 232))();
                v59 = *(v58 + 16);

                MEMORY[0x1C68F9740](v59, 0);
                *(v58 + 16) = v22;
                MEMORY[0x1C68F9740](v22, v58);

LABEL_62:
                aBlock[0] = v58;

                outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v8);
                v60 = v66(aBlock);

                outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v8);
                if (v60)
                {

                  MEMORY[0x1C68F3650](v61);
                  if (*((*v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v62 = *((*v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                }

                goto LABEL_16;
              }
            }
          }
        }

        v23 = makeEntity(for:)(v22);
LABEL_61:
        v58 = v23;
        goto LABEL_62;
      }
    }

    swift_endAccess();
    v28 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = static SceneManager.customComponentTypeObjectIdToHandles;
    v75[0] = static SceneManager.customComponentTypeObjectIdToHandles;
    static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
    v32 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
    v33 = *(v30 + 16);
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      goto LABEL_68;
    }

    v36 = v31;
    if (*(v30 + 24) < v35)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, isUniquelyReferenced_nonNull_native);
      v37 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_71;
      }

      v32 = v37;
      v39 = v75[0];
      if ((v36 & 1) == 0)
      {
        goto LABEL_35;
      }

LABEL_33:
      *(v39[7] + 8 * v32) = v28;
LABEL_37:
      static SceneManager.customComponentTypeObjectIdToHandles = v39;
      goto LABEL_38;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v39 = v75[0];
      if (v31)
      {
        goto LABEL_33;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v39 = v75[0];
      if (v36)
      {
        goto LABEL_33;
      }
    }

LABEL_35:
    v39[(v32 >> 6) + 8] |= 1 << v32;
    *(v39[6] + 8 * v32) = &type metadata for __EntityInfoComponent;
    *(v39[7] + 8 * v32) = v28;
    v40 = v39[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_69;
    }

    v39[2] = v42;
    goto LABEL_37;
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in Scene.performQuery(_:rootEntity:)(uint64_t a1, uint64_t a2)
{
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
      __break(1u);
      return result;
    }

    v5 = specialized static Entity.entityInfoType(_:)();
    if (v5)
    {
      v6 = (*(v5 + 232))();
      v7 = *(v6 + 16);

      MEMORY[0x1C68F9740](v7, 0);
      *(v6 + 16) = a1;
      MEMORY[0x1C68F9740](a1, v6);
    }

    else
    {
      makeEntity(for:)(a1);
    }
  }

  swift_beginAccess();

  MEMORY[0x1C68F3650](v8);
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v9 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

{
  v2 = *(a1 + 40);
  return (*(a1 + 32))(a2);
}

uint64_t Scene.performQuery<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v7 = swift_allocObject();
  swift_getAssociatedTypeWitness();
  *(v7 + 16) = static Array._allocateUninitialized(_:)();
  v8 = type metadata accessor for Query();
  if (Query.internalQuery.getter(v8))
  {
    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = a2;
    v9[4] = v7;
    v10 = *(v3 + 16);
    v13[4] = partial apply for closure #1 in Scene.performQuery<A>(_:);
    v13[5] = v9;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
    v13[3] = &block_descriptor_9;
    v11 = _Block_copy(v13);

    REQueryEvaluateEntityQuery();
    _Block_release(v11);
  }

  swift_beginAccess();
  QueryResult.init(_:)(*(v7 + 16), a3);
}

uint64_t closure #1 in Scene.performQuery<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v28 = *(v9 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v27 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v27 - v19;
  result = REIsEntityHidden();
  if ((result & 1) == 0)
  {
    v27[0] = v9;
    v22 = REEntityGetSwiftObject();
    v27[1] = a2;
    if (v22)
    {
      type metadata accessor for Entity();
      v23 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
        __break(1u);
        return result;
      }

      v25 = specialized static Entity.entityInfoType(_:)();
      if (v25)
      {
        v24 = (*(v25 + 232))();
        v26 = *(v24 + 16);

        MEMORY[0x1C68F9740](v26, 0);
        *(v24 + 16) = a1;
        MEMORY[0x1C68F9740](a1, v24);

LABEL_8:
        v29[0] = v24;
        (*(a4 + 24))(v29, a3, a4);
        if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
        {

          return (*(v28 + 8))(v12, v27[0]);
        }

        else
        {
          (*(v13 + 32))(v20, v12, AssociatedTypeWitness);
          (*(v13 + 16))(v17, v20, AssociatedTypeWitness);
          swift_beginAccess();
          type metadata accessor for Array();
          Array.append(_:)();
          swift_endAccess();

          return (*(v13 + 8))(v20, AssociatedTypeWitness);
        }
      }

      v23 = makeEntity(for:)(a1);
    }

    v24 = v23;
    goto LABEL_8;
  }

  return result;
}

uint64_t Scene.performQuery<A>(_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = a1[3];
  v20 = a1[2];
  v21 = v8;
  v22 = *(a1 + 8);
  v9 = a1[1];
  aBlock = *a1;
  v19 = v9;
  v10 = swift_allocObject();
  type metadata accessor for QuerySelectors.ComponentQueryResult();
  *(v10 + 16) = static Array._allocateUninitialized(_:)();
  type metadata accessor for QuerySelectors.ComponentTypeSelector();
  swift_getWitnessTable();
  v11 = type metadata accessor for Query();
  if (!Query.internalQuery.getter(v11))
  {
    goto LABEL_5;
  }

  v17 = a4;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v10;

  v13 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v13 + 80, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit14__SceneService_pMd, &_s10RealityKit14__SceneService_pMR);
  type metadata accessor for SceneManager();
  swift_dynamicCast();
  if (SceneManager.componentTypeToComponentClass(_:)(a2, a3) || (static Component.registerComponent()(a2, a3), (result = SceneManager.componentTypeToComponentClass(_:)(a2, a3)) != 0))
  {
    v15 = *(v4 + 16);
    *&v20 = partial apply for closure #1 in Scene.performQuery<A>(_:);
    *(&v20 + 1) = v12;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v19 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
    *(&v19 + 1) = &block_descriptor_18_0;
    v16 = _Block_copy(&aBlock);

    REQueryEvaluateComponentQuery();

    _Block_release(v16);
    a4 = v17;
LABEL_5:
    swift_beginAccess();
    QueryResult.init(_:)(*(v10 + 16), a4);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in Scene.performQuery<A>(_:)(uint64_t a1)
{
  result = REIsEntityHidden();
  if ((result & 1) == 0)
  {
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v3 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
        __break(1u);
        return result;
      }

      v5 = specialized static Entity.entityInfoType(_:)();
      if (v5)
      {
        v4 = (*(v5 + 232))();
        v6 = *(v4 + 16);

        MEMORY[0x1C68F9740](v6, 0);
        *(v4 + 16) = a1;
        MEMORY[0x1C68F9740](a1, v4);

        goto LABEL_8;
      }

      v3 = makeEntity(for:)(a1);
    }

    v4 = v3;
LABEL_8:
    type metadata accessor for QuerySelectors.ComponentQueryResult();
    QuerySelectors.ComponentQueryResult.__allocating_init(entity:)(v4);
    swift_beginAccess();
    type metadata accessor for Array();

    Array.append(_:)();
    swift_endAccess();
  }

  return result;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in Scene.performQuery<A>(_:)(uint64_t a1)
{
  return closure #1 in Scene.performQuery<A>(_:)(a1, v1[4], v1[2], v1[3]);
}

{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return closure #1 in Scene.performQuery<A>(_:)(a1);
}

uint64_t specialized static CameraMath.intrinsicIsSimplePinhole(matrix:allowShear:floatingPointTol:)(double *a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  if ((a2 & 1) == 0)
  {
    v5 = fabs(*&v4) < a3;
    if (*&v3 <= 0.0)
    {
      v6 = 1;
      goto LABEL_7;
    }

LABEL_5:
    v6 = *(&v4 + 1) <= 0.0;
    goto LABEL_7;
  }

  v5 = 1;
  v6 = 1;
  if (*&v3 > 0.0)
  {
    goto LABEL_5;
  }

LABEL_7:
  v7 = fabs(a1[2]);
  v8 = fabs(a1[6]) >= a3;
  v10 = fabs(*(&v3 + 1)) >= a3 || v7 >= a3 || v8;
  return ((fabs(a1[10] + -1.0) < a3) & ~(v6 | v10)) & v5;
}

BOOL specialized static CameraMath.intrinsicsAreEqual(left:right:toleranceInPixel:)(double *a1, double *a2, double a3)
{
  v3 = *a1;
  v4 = *(a1 + 4);
  v5 = a1[5];
  v6 = a1[9];
  v7 = *a2;
  v8 = a2[5];
  v9 = *&v4 + *&v4;
  v10 = v6 + v6;
  *&v4 = vabdd_f64(*&v4, a2[8]);
  v11 = vabdd_f64(v6, a2[9]);
  v12 = (*&v3 + *&v3) / v9;
  v13 = v12 * vabdd_f64(*a1, *a2);
  v14 = v12 * (v10 * vabdd_f64(v5, v8)) / v9;
  v15 = sqrt((*&v4 - v13) * (*&v4 - v13) + (v11 - v14) * (v11 - v14));
  v16 = sqrt((v13 + *&v4) * (v13 + *&v4) + (v11 + v14) * (v11 + v14));
  if (v15 > v16)
  {
    v16 = v15;
  }

  v17 = *&v3 <= 0.0;
  if (v5 <= 0.0)
  {
    v17 = 1;
  }

  v18 = 1;
  if (fabs(*(&v3 + 1)) < 0.00001 && fabs(a1[2]) < 0.00001)
  {
    v18 = fabs(a1[6]) >= 0.00001;
  }

  v19 = vabdd_f64(a1[4], a2[4]);
  result = 0;
  if (!v17 && !v18 && fabs(a1[10] + -1.0) < 0.00001 && fabs(*(&v7 + 1)) < 0.00001 && fabs(a2[2]) < 0.00001 && *&v7 > 0.0 && v8 > 0.0 && fabs(a2[6]) < 0.00001 && fabs(a2[10] + -1.0) < 0.00001 && v16 < a3 && v19 < 1.0 / v10 * a3)
  {
    return 1;
  }

  return result;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t key path setter for __RKEntityTriggerGroup.triggers : __RKEntityTriggerGroup(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

uint64_t __RKEntityTriggerGroup.triggers.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t __RKEntityTriggerGroup.__allocating_init(triggers:)(unint64_t a1)
{
  v2 = swift_allocObject();
  __RKEntityTriggerGroup.init(triggers:)(a1);
  return v2;
}

uint64_t __RKEntityTriggerGroup.init(triggers:)(unint64_t a1)
{
  v2 = a1;
  *(v1 + 24) = a1;
  v3 = (v1 + 24);
  if (!(a1 >> 62))
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_47:
    *(v1 + 16) = 0;
    *(v1 + 18) = 0;
    return v1;
  }

LABEL_90:
  v4 = __CocoaSet.count.getter();
  if (!v4)
  {
    goto LABEL_47;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) == 0)
  {
    v9 = 0;
    v10 = 0;
    v11 = v2 + 32;
    v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    do
    {
      while (1)
      {
        if (v10 >= v12)
        {
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
LABEL_89:
          __break(1u);
          goto LABEL_90;
        }

        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_84;
        }

        v2 = *(v11 + 8 * v10);
        type metadata accessor for __RKEntityTriggerGroup();
        if (!swift_dynamicCastClass())
        {
          break;
        }

        v9 = 1;
        ++v10;
        if (v13 == v4)
        {
          goto LABEL_22;
        }
      }

      ++v10;
    }

    while (v13 != v4);
    if (v9)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    while (1)
    {
      MEMORY[0x1C68F41F0](v6, v2);
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      type metadata accessor for __RKEntityTriggerGroup();
      v8 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v8)
      {
        break;
      }

      ++v6;
      if (v7 == v4)
      {

        if (v5)
        {
          goto LABEL_22;
        }

        goto LABEL_47;
      }
    }

    v5 = 1;
    ++v6;
  }

  while (v7 != v4);

LABEL_22:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C1887600;
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 32) = 0xD000000000000042;
  *(v14 + 40) = 0x80000001C18E5D00;
  print(_:separator:terminator:)();

  result = swift_beginAccess();
  v16 = *v3;
  v37 = *v3 >> 62;
  v17 = *v3 & 0xFFFFFFFFFFFFFF8;
  if (v37)
  {
    goto LABEL_96;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = result)
  {
    v2 = 0;
    while (1)
    {
      if (i == v2)
      {
        if (v37)
        {
          result = __CocoaSet.count.getter();
          v2 = result;
        }

        else
        {
          v2 = *(v17 + 16);
        }

        goto LABEL_44;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C68F41F0](v2, v16);
      }

      else
      {
        if (v2 >= *(v17 + 16))
        {
          goto LABEL_85;
        }

        v19 = *(v16 + 8 * v2 + 32);
      }

      type metadata accessor for __RKEntityTriggerGroup();
      v20 = swift_dynamicCastClass();

      v21 = v2 + 1;
      v22 = __OFADD__(v2, 1);
      if (v20)
      {
        break;
      }

      ++v2;
      if (v22)
      {
        goto LABEL_86;
      }
    }

    if (v22)
    {
      goto LABEL_102;
    }

    if (!v37)
    {
      break;
    }

    result = __CocoaSet.count.getter();
    if (v21 == result)
    {
      goto LABEL_44;
    }

LABEL_48:
    v17 = v2 + 5;
    while (1)
    {
      v24 = v17 - 4;
      if ((v16 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C68F41F0](v17 - 4, v16);
      }

      else
      {
        if ((v24 & 0x8000000000000000) != 0)
        {
          goto LABEL_87;
        }

        if (v24 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_88;
        }

        v25 = *(v16 + 8 * v17);
      }

      v26 = swift_dynamicCastClass();

      if (!v26)
      {
        if (v24 != v2)
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v27 = MEMORY[0x1C68F41F0](v2, v16);
            v28 = MEMORY[0x1C68F41F0](v17 - 4, v16);
          }

          else
          {
            if ((v2 & 0x8000000000000000) != 0)
            {
              goto LABEL_99;
            }

            v29 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v2 >= v29)
            {
              goto LABEL_100;
            }

            if (v24 >= v29)
            {
              goto LABEL_101;
            }

            v27 = *(v16 + 8 * v2 + 32);
            v28 = *(v16 + 8 * v17);
          }

          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          *v3 = v16;
          if (!isUniquelyReferenced_nonNull_bridgeObject || (v16 & 0x8000000000000000) != 0 || (v16 & 0x4000000000000000) != 0)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
            *v3 = v16;
          }

          if ((v2 & 0x8000000000000000) != 0)
          {
            goto LABEL_93;
          }

          v31 = v16 & 0xFFFFFFFFFFFFFF8;
          if (v2 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_94;
          }

          v32 = v31 + 8 * v2;
          v33 = *(v32 + 32);
          *(v32 + 32) = v28;

          *v3 = v16;
          if ((v16 & 0x8000000000000000) != 0 || (v16 & 0x4000000000000000) != 0)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
            *v3 = v16;
            v31 = v16 & 0xFFFFFFFFFFFFFF8;
            if ((v24 & 0x8000000000000000) != 0)
            {
LABEL_81:
              __break(1u);
              goto LABEL_82;
            }
          }

          else if ((v24 & 0x8000000000000000) != 0)
          {
            goto LABEL_81;
          }

          if (v24 >= *(v31 + 16))
          {
            goto LABEL_95;
          }

          v34 = *(v31 + 8 * v17);
          *(v31 + 8 * v17) = v27;

          *v3 = v16;
        }

        v35 = __OFADD__(v2++, 1);
        if (v35)
        {
          break;
        }
      }

      v35 = __OFADD__(v24, 1);
      v36 = v17 - 3;
      if (v35)
      {
        goto LABEL_89;
      }

      if (v16 >> 62)
      {
        result = __CocoaSet.count.getter();
      }

      else
      {
        result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v17;
      if (v36 == result)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    result = __CocoaSet.count.getter();
  }

  result = *(v17 + 16);
  if (v21 != result)
  {
    goto LABEL_48;
  }

LABEL_44:
  if (v16 >> 62)
  {
    result = __CocoaSet.count.getter();
    v23 = result;
    if (result >= v2)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v23 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23 >= v2)
    {
LABEL_46:
      specialized Array.replaceSubrange<A>(_:with:)(v2, v23, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
      swift_endAccess();
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
  return result;
}

uint64_t __RKEntityTriggerGroup.matches(with:)(uint64_t a1)
{
  v12 = 0;
  v13 = 0xE000000000000000;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v3 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v3);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  swift_beginAccess();
  v4 = *(v1 + 24);
  if (v4 >> 62)
  {
LABEL_18:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1C68F41F0](v6, v4);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_18;
        }

        v7 = *(v4 + 8 * v6 + 32);

        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_13;
        }
      }

      if ((*(*v7 + 184))(a1))
      {

        v12 = 91;
        v13 = 0xE100000000000000;
        v11 = static os_log_type_t.info.getter();
        specialized InteractionsLogger.log(_:_:)(v11, &v12);

        return 1;
      }

      ++v6;
    }

    while (v8 != v5);
  }

  v12 = 91;
  v13 = 0xE100000000000000;
  v9 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v9, &v12);

  return 0;
}

unint64_t __RKEntityTriggerGroup.description.getter()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 24);
  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3 >= 1)
  {
    while (1)
    {
      MEMORY[0x1C68F3410](5966090, 0xE300000000000000);
      v4 = *(v1 + 24);
      if ((v4 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v5 = *(v4 + 32);

        goto LABEL_6;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      v3 = __CocoaSet.count.getter();
      if (v3 < 1)
      {
        goto LABEL_8;
      }
    }

    v20 = *(v1 + 24);

    v5 = MEMORY[0x1C68F41F0](0, v4);

LABEL_6:
    v7 = (*(*v5 + 192))(v6);
    v9 = v8;

    MEMORY[0x1C68F3410](v7, v9);

    v10 = v3 - 1;
    if (v3 != 1)
    {
      v12 = 5;
      do
      {
        MEMORY[0x1C68F3410](8236, 0xE200000000000000);
        v13 = *(v1 + 24);
        if ((v13 & 0xC000000000000001) != 0)
        {
          v19 = *(v1 + 24);

          v14 = MEMORY[0x1C68F41F0](v12 - 4, v13);
        }

        else
        {
          if ((v12 - 4) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v14 = *(v13 + 8 * v12);
        }

        v16 = (*(*v14 + 192))(v15);
        v18 = v17;

        MEMORY[0x1C68F3410](v16, v18);

        ++v12;
        --v10;
      }

      while (v10);
    }

    MEMORY[0x1C68F3410](93, 0xE100000000000000);
  }

LABEL_8:
  MEMORY[0x1C68F3410](665949, 0xE300000000000000);
  return 0xD00000000000001ALL;
}

uint64_t __RKEntityTriggerGroup.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v16 = MEMORY[0x1E69E7CC0];
  result = swift_beginAccess();
  v5 = v1[3];
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_20:
    v8 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  if (v5 < 0)
  {
    v13 = v1[3];
  }

  result = __CocoaSet.count.getter();
  v6 = result;
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v6 >= 1)
  {

    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1C68F41F0](v7, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v7 + 32);
      }

      [v9 copyWithZone_];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for __RKEntityTrigger();
      if (swift_dynamicCast())
      {

        MEMORY[0x1C68F3650](v10);
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v14 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v8 = v16;
      }

      else
      {
      }

      ++v7;
    }

    while (v6 != v7);

    if (!(v8 >> 62))
    {
LABEL_15:
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
      {
LABEL_16:
        v11 = type metadata accessor for __RKEntityTriggerGroup();
        v12 = swift_allocObject();
        result = __RKEntityTriggerGroup.init(triggers:)(v8);
        a1[3] = v11;
        *a1 = v12;
        return result;
      }

      goto LABEL_22;
    }

LABEL_21:
    if (__CocoaSet.count.getter() >= 1)
    {
      goto LABEL_16;
    }

LABEL_22:

    v15.receiver = v2;
    v15.super_class = type metadata accessor for __RKEntityTriggerGroup();
    objc_msgSendSuper2(&v15, sel_copyWithZone_, 0);
    _bridgeAnyObjectToAny(_:)();
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t __RKEntityTriggerGroup.clone(matching:newEntity:)(uint64_t a1, uint64_t a2)
{
  v15 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v6 = *(v3 + 24);
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_23:
    v2 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

  if (v6 < 0)
  {
    v14 = *(v3 + 24);
  }

  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (v7 < 1)
  {
    __break(1u);
    goto LABEL_31;
  }

  v8 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1C68F41F0](v8, v6);
    }

    else
    {
      v9 = *(v6 + 8 * v8 + 32);
    }

    if ((*(*v9 + 200))(a1, a2))
    {

      MEMORY[0x1C68F3650](v10);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v2 = v15;
    }

    else
    {
    }

    ++v8;
  }

  while (v7 != v8);

  if (!(v2 >> 62))
  {
LABEL_15:
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result == 1)
    {
      goto LABEL_16;
    }

LABEL_26:
    if (result < 2)
    {

      return 0;
    }

    else
    {
      type metadata accessor for __RKEntityTriggerGroup();
      v13 = swift_allocObject();
      __RKEntityTriggerGroup.init(triggers:)(v2);
    }

    return v13;
  }

LABEL_24:
  result = __CocoaSet.count.getter();
  if (result != 1)
  {
    result = __CocoaSet.count.getter();
    goto LABEL_26;
  }

LABEL_16:
  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_31:
    v13 = MEMORY[0x1C68F41F0](0, v2);
    goto LABEL_19;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v2 + 32);

LABEL_19:

    return v13;
  }

  __break(1u);
  return result;
}

uint64_t __RKEntityTriggerGroup.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t __RKEntityTriggerGroup.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a4;
    v5 = a3;
    v7 = a2;
    v9 = a1;
    v10 = *v6;
    v11 = *v6 >> 62;
    v17 = a5;
    if (!v11)
    {
      result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v7)
  {
    goto LABEL_15;
  }

LABEL_4:
  v13 = v7 - v9;
  if (__OFSUB__(v7, v9))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = 1 - v13;
  if (__OFSUB__(1, v13))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v11)
  {
    v15 = __CocoaSet.count.getter();
  }

  else
  {
    v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = __OFADD__(v15, v14);
  result = v15 + v14;
  if (v16)
  {
    goto LABEL_18;
  }

  v8(result, 1);

  return v17(v9, v7, 1, v5);
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = a3;
    v4 = a2;
    v6 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    v14 = a4;
    if (!v9)
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v4)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v4, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 - v4;
  if (__OFSUB__(0, v4 - v6))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v12 = __CocoaSet.count.getter();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  v7(result, 1);

  return v14(v6, v4, 0);
}

uint64_t __RKEntitySwapEntityAction.__allocating_init(targetEntity:newEntity:buildOutAction:buildInAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 136) = 0u;
  *(v8 + 152) = 0u;
  *(v8 + 168) = 0u;
  *(v8 + 112) = a2;
  *(v8 + 120) = a3;
  *(v8 + 128) = a4;
  return __RKEntityAction.init(targetEntity:)(a1);
}

uint64_t __RKEntitySwapEntityAction.init(targetEntity:newEntity:buildOutAction:buildInAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 168) = 0u;
  *(v4 + 152) = 0u;
  *(v4 + 136) = 0u;
  *(v4 + 112) = a2;
  *(v4 + 120) = a3;
  *(v4 + 128) = a4;
  return __RKEntityAction.init(targetEntity:)(a1);
}

uint64_t __RKEntitySwapEntityAction.perform(with:)(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v24 = StaticString.description.getter();
  v25 = v5;
  MEMORY[0x1C68F3410](8250, 0xE200000000000000);
  v7 = v24;
  v6 = v25;
  swift_beginAccess();
  if (*(v1 + 104) == 1 && *(v1 + 96) == 1 && (swift_beginAccess(), *(v1 + 105) == 1) || (v8 = *(v3 + 16), !RESceneGetECSManagerNullable()))
  {

    return 0;
  }

  else
  {
    v9 = *(v1 + 96);
    v10 = *(v1 + 104);
    *(v1 + 96) = 1;
    *(v1 + 104) = 1;
    v24 = v9;
    LOBYTE(v25) = v10;
    __RKEntityAction.state.didset(&v24);
    v11 = *(v1 + 120);
    v12 = swift_allocObject();
    v12[2] = v2;
    v12[3] = v4;
    v12[4] = v3;
    swift_beginAccess();
    v13 = *(v11 + 72);
    v14 = *(v11 + 80);
    *(v11 + 72) = partial apply for closure #1 in __RKEntitySwapEntityAction.perform(with:);
    *(v11 + 80) = v12;

    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v13);
    v24 = v4;
    v25 = v3;
    __RKEntityHideAction.perform(with:)(&v24);
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = *(v2 + 32);
    v17 = *(v2 + 40);
    *(v2 + 32) = partial apply for closure #2 in __RKEntitySwapEntityAction.perform(with:);
    *(v2 + 40) = v15;

    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v16);

    if (*(v2 + 24))
    {
      REEngineGetCurrentTime();
    }

    else
    {
      v18 = CACurrentMediaTime();
    }

    *(v2 + 176) = v18 + *(v11 + 144) + *(*(v2 + 128) + 144);
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    v20 = swift_allocObject();
    swift_weakInit();
    _s10RealityKit5SceneC9subscribe2to2on_7Combine11Cancellable_pxm_AA11EventSource_pSgyxctAA0I0RzlFAA0C6EventsO6UpdateV_Tt0g5(v22, partial apply for closure #3 in __RKEntitySwapEntityAction.perform(with:), v20, &v24);

    outlined destroy of BodyTrackingComponent?(v22, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v24, v2 + 136);
    swift_endAccess();
    v24 = v7;
    v25 = v6;
    v21 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v21, &v24);

    return 1;
  }
}

uint64_t partial apply for closure #1 in __RKEntitySwapEntityAction.perform(with:)()
{
  v1 = *(*(v0 + 16) + 128);
  v3 = *(v0 + 24);
  return __RKEntityShowAction.perform(with:)(&v3);
}

uint64_t closure #2 in __RKEntitySwapEntityAction.perform(with:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    outlined init with copy of Cancellable?(v1 + 136, &v3);
    if (*(&v4 + 1))
    {
      outlined init with copy of __REAssetService(&v3, v2);
      outlined destroy of BodyTrackingComponent?(&v3, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      __swift_project_boxed_opaque_existential_1(v2, v2[3]);
      dispatch thunk of Cancellable.cancel()();
      __swift_destroy_boxed_opaque_existential_1(v2);
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v3, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    }

    v5 = 0;
    v3 = 0u;
    v4 = 0u;
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v3, v1 + 136);
    swift_endAccess();
  }

  return result;
}

uint64_t closure #3 in __RKEntitySwapEntityAction.perform(with:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (*(result + 24))
    {

      REEngineGetCurrentTime();
    }

    else
    {

      v2 = CACurrentMediaTime();
    }

    if (*(v1 + 176) <= v2)
    {
      swift_beginAccess();
      v3 = *(v1 + 96);
      v4 = *(v1 + 104);
      *(v1 + 96) = 2;
      *(v1 + 104) = 1;
      v5 = v3;
      v6 = v4;
      __RKEntityAction.state.didset(&v5);
    }
  }

  return result;
}

uint64_t __RKEntitySwapEntityAction.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[2];
  v4 = v1[14];
  v5 = v1[15];
  v6 = v1[16];
  v7 = type metadata accessor for __RKEntitySwapEntityAction();
  v8 = swift_allocObject();
  *(v8 + 136) = 0u;
  *(v8 + 152) = 0u;
  *(v8 + 168) = 0u;
  *(v8 + 112) = v4;
  *(v8 + 120) = v5;
  *(v8 + 128) = v6;

  result = __RKEntityAction.init(targetEntity:)(v9);
  a1[3] = v7;
  *a1 = result;
  return result;
}

uint64_t __RKEntitySwapEntityAction.clone(matching:newEntity:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[2];
  if (v5)
  {
    if (*(a1 + 16) == *(v5 + 16))
    {
      v5 = a2;
    }

    else
    {
      v6 = v2[2];
    }
  }

  v7 = v2[14];
  v8 = v2[15];
  v9 = v2[16];
  type metadata accessor for __RKEntitySwapEntityAction();
  v10 = swift_allocObject();
  *(v10 + 136) = 0u;
  *(v10 + 152) = 0u;
  *(v10 + 168) = 0u;
  *(v10 + 112) = v7;
  *(v10 + 120) = v8;
  *(v10 + 128) = v9;

  return __RKEntityAction.init(targetEntity:)(v5);
}

uint64_t __RKEntitySwapEntityAction.__ivar_destroyer()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  return outlined destroy of BodyTrackingComponent?((v0 + 17), &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
}

uint64_t __RKEntitySwapEntityAction.deinit()
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

  v7 = *(v0 + 120);

  v8 = *(v0 + 128);

  outlined destroy of BodyTrackingComponent?(v0 + 136, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return v0;
}

uint64_t __RKEntitySwapEntityAction.__deallocating_deinit()
{
  __RKEntitySwapEntityAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized Array.reserveCapacity(_:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
      v6 = *(v5 + 16);
LABEL_11:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = result;
      goto LABEL_12;
    }

LABEL_10:
    __CocoaSet.count.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_12:
  *v1 = v3;
  return result;
}

uint64_t Entity.availableAnimations.getter()
{
  v2 = *(v0 + 16);
  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v4 = *(v3 + 24);
  TransformQueryResultAnimationAsset = *(swift_unownedRetainStrong() + 24);

  ServiceLocator = REEngineGetServiceLocator();
  v7 = MEMORY[0x1C68FE1F0](ServiceLocator);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v75 = MEMORY[0x1E69E7CC0];
  REAnimationLibraryComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
    goto LABEL_50;
  }

  if (!REAnimationLibraryComponentGetAnimationLibraryAsset())
  {
    goto LABEL_49;
  }

  v9 = REAnimationLibraryDefinitionCreateFromAnimationLibraryAsset();
  TransformQueryResultAnimationAsset = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v8 = v9;
    EntryCount = REAnimationLibraryDefinitionGetEntryCount();
    v11 = EntryCount;
    if (TransformQueryResultAnimationAsset >> 62 && (v59 = __CocoaSet.count.getter(), v22 = __OFADD__(v59, v11), EntryCount = v59 + v11, v22))
    {
      __break(1u);
    }

    else
    {
      v2 = &v75;
      specialized Array.reserveCapacity(_:)(EntryCount);
      if ((v11 & 0x8000000000000000) == 0)
      {
        if (v11)
        {
          for (i = 0; i != v11; ++i)
          {
            EntryAsset = REAnimationLibraryDefinitionGetEntryAsset();
            if (EntryAsset)
            {
              v16 = EntryAsset;
              type metadata accessor for AnimationResource();
              v1 = swift_allocObject();
              v1[2] = v16;
              if (REAssetHandleAssetType() == 11)
              {
                REAnimationSceneAssetGetRootTimeline();
              }

              Name = REAnimationAssetGetName();
              if (Name)
              {
                Name = String.init(cString:)();
              }

              else
              {
                v13 = 0xE000000000000000;
              }

              v1[3] = Name;
              v1[4] = v13;
              RERetain();
              v14 = REAssetSetSwiftObject();
              MEMORY[0x1C68F3650](v14);
              if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v18 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            }
          }
        }

        RERelease();
        TransformQueryResultAnimationAsset = v75;
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_79;
  }

LABEL_20:
  v2 = (TransformQueryResultAnimationAsset >> 62);
  if (TransformQueryResultAnimationAsset >> 62)
  {
    goto LABEL_73;
  }

  if (*((TransformQueryResultAnimationAsset & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_49;
  }

  while (2)
  {
    QueryAllTransformAnimations = REAnimationLibraryComponentCreateQueryAllTransformAnimations();
    if (QueryAllTransformAnimations)
    {
      v8 = QueryAllTransformAnimations;
      TransformQueryResultCount = REAnimationLibraryComponentGetTransformQueryResultCount();
      if (v2)
      {
        v21 = __CocoaSet.count.getter();
      }

      else
      {
        v21 = *((TransformQueryResultAnimationAsset & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v22 = __OFADD__(v21, TransformQueryResultCount);
      v23 = v21 + TransformQueryResultCount;
      if (!v22)
      {
        v2 = &v75;
        specialized Array.reserveCapacity(_:)(v23);
        if ((TransformQueryResultCount & 0x8000000000000000) == 0)
        {
          if (TransformQueryResultCount)
          {
            for (j = 0; j != TransformQueryResultCount; ++j)
            {
              TransformQueryResultAnimationAsset = REAnimationLibraryComponentGetTransformQueryResultAnimationAsset();
              ResultAnimationName = REAnimationLibraryComponentCopyTransformQueryResultAnimationName();
              v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v28 = v27;

              type metadata accessor for AnimationResource();
              v1 = swift_allocObject();
              v1[2] = TransformQueryResultAnimationAsset;
              v1[3] = v26;
              v1[4] = v28;
              RERetain();
              v29 = REAssetSetSwiftObject();
              MEMORY[0x1C68F3650](v29);
              if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                TransformQueryResultAnimationAsset = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              v2 = &v75;
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            }
          }

          RERelease();
          goto LABEL_34;
        }

LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

LABEL_34:
    QueryAllSkeletalAnimations = REAnimationLibraryComponentCreateQueryAllSkeletalAnimations();
    if (!QueryAllSkeletalAnimations)
    {
      break;
    }

    v8 = QueryAllSkeletalAnimations;
    TransformQueryResultAnimationAsset = REAnimationLibraryComponentGetSkeletalQueryResultCount();
    if (!(v75 >> 62))
    {
      v31 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v22 = __OFADD__(v31, TransformQueryResultAnimationAsset);
      v32 = v31 + TransformQueryResultAnimationAsset;
      if (!v22)
      {
        goto LABEL_37;
      }

LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

LABEL_81:
    v60 = __CocoaSet.count.getter();
    v22 = __OFADD__(v60, TransformQueryResultAnimationAsset);
    v32 = v60 + TransformQueryResultAnimationAsset;
    if (v22)
    {
      goto LABEL_83;
    }

LABEL_37:
    v2 = &v75;
    v32 = specialized Array.reserveCapacity(_:)(v32);
    if ((TransformQueryResultAnimationAsset & 0x8000000000000000) == 0)
    {
      if (TransformQueryResultAnimationAsset)
      {
        v33 = 0;
        for (k = TransformQueryResultAnimationAsset; k != v33; TransformQueryResultAnimationAsset = k)
        {
          SkeletalQueryResultAnimationCount = REAnimationLibraryComponentGetSkeletalQueryResultAnimationCount();
          if (SkeletalQueryResultAnimationCount < 0)
          {
            goto LABEL_70;
          }

          v1 = SkeletalQueryResultAnimationCount;
          if (SkeletalQueryResultAnimationCount)
          {
            v35 = 0;
            do
            {
              SkeletalQueryResultAnimationClipAsset = REAnimationLibraryComponentGetSkeletalQueryResultAnimationClipAsset();
              v37 = REAnimationLibraryComponentCopySkeletalQueryResultAnimationName();
              v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v40 = v39;

              type metadata accessor for AnimationResource();
              v41 = swift_allocObject();
              v41[2] = SkeletalQueryResultAnimationClipAsset;
              v41[3] = v38;
              v41[4] = v40;
              RERetain();
              v42 = REAssetSetSwiftObject();
              MEMORY[0x1C68F3650](v42);
              if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              v35 = (v35 + 1);
              v2 = &v75;
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            }

            while (v1 != v35);
          }

          ++v33;
        }
      }

      RERelease();
      break;
    }

LABEL_84:
    __break(1u);
    while (2)
    {
      v43 = v32;
      if (!v32)
      {
        goto LABEL_86;
      }

LABEL_52:
      v44 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C68F41F0](v44, v8);
          goto LABEL_56;
        }

        if (v44 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        v45 = *(v8 + 8 * v44 + 32);

LABEL_56:
        AnimationResource.definition.getter(v72);

        v46 = v73;
        v47 = v74;
        __swift_project_boxed_opaque_existential_1(v72, v73);
        v48 = (*(v47 + 8))(v46, v47);
        v50 = v49;
        REAnimationLibraryComponentDefaultGlobalSceneName();
        if (v48 == String.init(cString:)() && v50 == v51)
        {
          goto LABEL_67;
        }

        v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v53)
        {
          goto LABEL_68;
        }

        v54 = v73;
        v55 = v74;
        __swift_project_boxed_opaque_existential_1(v72, v73);
        v56 = (*(v55 + 8))(v54, v55);
        v2 = v57;
        REAnimationLibraryComponentDefaultLocalSubtreeSceneName();
        if (v56 == String.init(cString:)() && v2 == v58)
        {
LABEL_67:

LABEL_68:
          __swift_destroy_boxed_opaque_existential_1(v72);
          return v75;
        }

        TransformQueryResultAnimationAsset = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (TransformQueryResultAnimationAsset)
        {
          goto LABEL_68;
        }

        ++v44;
        __swift_destroy_boxed_opaque_existential_1(v72);
        if (v43 == v44)
        {
          goto LABEL_86;
        }
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      v32 = __CocoaSet.count.getter();
      if ((v32 & 0x8000000000000000) == 0)
      {
        continue;
      }

      break;
    }

    __break(1u);
LABEL_73:
    if (!__CocoaSet.count.getter())
    {
      continue;
    }

    break;
  }

LABEL_49:
  v8 = v75;
LABEL_50:
  v1 = (v8 >> 62);
  if (v8 >> 62)
  {
    goto LABEL_71;
  }

  v43 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v43)
  {
    goto LABEL_52;
  }

LABEL_86:
  DefaultAnimation = REAnimationLibraryComponentCreateDefaultAnimation();
  if (!DefaultAnimation)
  {
    return v75;
  }

  v62 = DefaultAnimation;
  type metadata accessor for AnimationResource();
  v63 = swift_allocObject();
  v63[2] = v62;
  if (REAssetHandleAssetType() == 11)
  {
    REAnimationSceneAssetGetRootTimeline();
  }

  v64 = REAnimationAssetGetName();
  if (v64)
  {
    v64 = String.init(cString:)();
  }

  else
  {
    v65 = 0xE000000000000000;
  }

  v63[3] = v64;
  v63[4] = v65;
  RERetain();
  REAssetSetSwiftObject();
  v66 = v63[2];
  result = REAssetHandleAssetType();
  if (result == 5 || result == 11 && (result = REAnimationSceneAssetGetRootTimeline(), (v66 = result) != 0))
  {
    v68 = swift_allocObject();
    v68[2] = v66;
    if (REAssetHandleAssetType() == 11)
    {
      REAnimationSceneAssetGetRootTimeline();
    }

    v69 = REAnimationAssetGetName();
    if (v69)
    {
      v69 = String.init(cString:)();
    }

    else
    {
      v70 = 0xE000000000000000;
    }

    v68[3] = v69;
    v68[4] = v70;
    RERetain();
    REAssetSetSwiftObject();
    if (!v1 || (result = __CocoaSet.count.getter(), (result & 0x8000000000000000) == 0))
    {
      specialized Array.replaceSubrange<A>(_:with:)(0, 0, v68);

      return v75;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Entity.LoadStatistics.Observer.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t Entity.LoadStatistics.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_start;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_loadRequestStats);

  v4 = *(v0 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Entity.LoadStatistics()
{
  result = type metadata singleton initialization cache for Entity.LoadStatistics;
  if (!type metadata singleton initialization cache for Entity.LoadStatistics)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for Entity.LoadStatistics()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Entity.LoadStatistics.AssetType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for Entity.LoadStatistics.AssetType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t getEnumTag for Entity.LoadStatistics.AssetType(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for Entity.LoadStatistics.AssetType(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t one-time initialization function for entityLoadLog()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Entity.LoadStatistics.entityLoadLog);
  __swift_project_value_buffer(v0, static Entity.LoadStatistics.entityLoadLog);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for assetLoadLog()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Entity.LoadStatistics.assetLoadLog);
  __swift_project_value_buffer(v0, static Entity.LoadStatistics.assetLoadLog);
  return Logger.init(subsystem:category:)();
}

Swift::Void __swiftcall Entity.LoadStatistics.log()()
{
  v1 = v0;
  v66 = *v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v8 = v7;
  (*(v3 + 8))(v6, v2);
  v9 = *(v1 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type);
  v10 = 0x6E776F6E6B6E55;
  v11 = *(v1 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type + 8);
  v12 = 0xEB00000000656C69;
  if (v11 == 1)
  {
    v10 = 0x467974696C616552;
  }

  else
  {
    v9 = 0;
  }

  if (v11 != 1)
  {
    v12 = 0xE700000000000000;
  }

  if (*(v1 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type + 8))
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v1 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type) & 1;
  }

  if (*(v1 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type + 8))
  {
    v14 = v10;
  }

  else
  {
    v14 = 4477781;
  }

  if (*(v1 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type + 8))
  {
    v15 = v12;
  }

  else
  {
    v15 = 0xE300000000000000;
  }

  v16 = *(v1 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_async);
  v18 = *(v1 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName);
  v17 = *(v1 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName + 8);
  v65 = (v1 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName);
  *&v76 = v8;
  *(&v76 + 1) = v14;
  v77 = v15;
  v78 = v13;
  v79 = v16;
  v80 = v18;
  v81 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1897F90;
  *(inited + 32) = 0x6E6F697461727564;
  *(inited + 40) = 0xE800000000000000;
  v20 = MEMORY[0x1E69E63B0];
  *(inited + 48) = v8;
  *(inited + 72) = v20;
  *(inited + 80) = 1701869940;
  v21 = MEMORY[0x1E69E6158];
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = v14;
  *(inited + 104) = v15;
  *(inited + 120) = v21;
  *(inited + 128) = 0x6E6F6973726576;
  v22 = MEMORY[0x1E69E6530];
  *(inited + 136) = 0xE700000000000000;
  *(inited + 144) = v13;
  *(inited + 168) = v22;
  *(inited + 176) = 0x636E797361;
  *(inited + 184) = 0xE500000000000000;
  v23 = MEMORY[0x1E69E6370];
  *(inited + 192) = v16;
  *(inited + 216) = v23;
  strcpy((inited + 224), "functionName");
  *(inited + 264) = v21;
  *(inited + 237) = 0;
  *(inited + 238) = -5120;
  *(inited + 240) = v18;
  *(inited + 248) = v17;
  v64 = v17;
  swift_bridgeObjectRetain_n();
  v67 = v15;

  v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  if (one-time initialization token for observers != -1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v25 = static Entity.LoadStatistics.observers;
    v26 = *(static Entity.LoadStatistics.observers + 16);
    if (v26)
    {
      v63 = v1;

      v27 = 0;
      v1 = v25 + 32;
      v28 = MEMORY[0x1E69E7CC0];
      do
      {
        if (v27 >= *(v25 + 16))
        {
          __break(1u);
          goto LABEL_56;
        }

        outlined init with copy of WeakRef<Entity.LoadStatistics.Observer>(v1, v68);
        if (swift_weakLoadStrong())
        {

          outlined init with take of WeakRef<Entity.LoadStatistics.Observer>(v68, v75);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v69 = v28;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 16) + 1, 1);
            v28 = v69;
          }

          v31 = *(v28 + 16);
          v30 = *(v28 + 24);
          if (v31 >= v30 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
            v28 = v69;
          }

          *(v28 + 16) = v31 + 1;
          outlined init with take of WeakRef<Entity.LoadStatistics.Observer>(v75, v28 + 8 * v31 + 32);
        }

        else
        {
          outlined destroy of BodyTrackingComponent?(v68, &_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMd, &_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMR);
        }

        ++v27;
        v1 += 8;
      }

      while (v26 != v27);

      static Entity.LoadStatistics.observers = v28;

      v32 = *(static Entity.LoadStatistics.observers + 16);
      if (v32)
      {
        v33 = static Entity.LoadStatistics.observers + 32;
        v62 = static Entity.LoadStatistics.observers;

        do
        {
          outlined init with copy of WeakRef<Entity.LoadStatistics.Observer>(v33, v68);
          Strong = swift_weakLoadStrong();
          if (Strong)
          {
            v35 = Strong;
            swift_beginAccess();
            v36 = *(v35 + 16);

            v37 = swift_isUniquelyReferenced_nonNull_native();
            *(v35 + 16) = v36;
            if ((v37 & 1) == 0)
            {
              v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
              *(v35 + 16) = v36;
            }

            v39 = *(v36 + 2);
            v38 = *(v36 + 3);
            if (v39 >= v38 >> 1)
            {
              v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v36);
            }

            *(v36 + 2) = v39 + 1;
            *&v36[8 * v39 + 32] = v24;
            *(v35 + 16) = v36;
            swift_endAccess();
            outlined destroy of BodyTrackingComponent?(v68, &_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMd, &_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMR);
          }

          else
          {
            outlined destroy of BodyTrackingComponent?(v68, &_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMd, &_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMR);
          }

          v33 += 8;
          --v32;
        }

        while (v32);
      }

      v1 = v63;
    }

    v40 = MEMORY[0x1C68F3280](0xD000000000000026, 0x80000001C18E5FB0);
    v41 = swift_allocObject();
    *(v41 + 16) = v24;
    v73 = partial apply for closure #4 in Entity.LoadStatistics.log();
    v74 = v41;
    v69 = MEMORY[0x1E69E9820];
    v70 = 1107296256;
    v71 = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
    v72 = &block_descriptor_16;
    v42 = _Block_copy(&v69);

    AnalyticsSendEventLazy();
    _Block_release(v42);

    if (one-time initialization token for entityLoadLog != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Entity.LoadStatistics.entityLoadLog);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v69 = v47;
      *v46 = 136446210;
      v48 = specialized flatJSON #1 <A>(_:) in Entity.LoadStatistics.log()(&v76);
      v50 = v49;

      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v69);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_1C1358000, v44, v45, "%{public}s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x1C6902A30](v47, -1, -1);
      MEMORY[0x1C6902A30](v46, -1, -1);
    }

    else
    {
    }

    v52 = OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_loadRequestStats;
    swift_beginAccess();
    v67 = *(v1 + v52);
    if (v67 >> 62)
    {
      v53 = __CocoaSet.count.getter();
      if (!v53)
      {
        return;
      }
    }

    else
    {
      v53 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v53)
      {
        return;
      }
    }

    if (v53 < 1)
    {
      break;
    }

    v63 = &v71;
    v64 = v67 & 0xC000000000000001;

    v54 = 0;
    v62 = v53;
    while (1)
    {
      if (v64)
      {
        v55 = MEMORY[0x1C68F41F0](v54, v67);
        v1 = v55;
      }

      else
      {
        v1 = *(v67 + 8 * v54 + 32);
      }

      v56 = *v65;
      v57 = v65[1];
      MEMORY[0x1EEE9AC00](v55);
      *(&v62 - 4) = v58;
      *(&v62 - 3) = v57;
      *(&v62 - 2) = v66;
      v24 = *(v1 + 16);
      v59 = swift_allocObject();
      *(v59 + 16) = partial apply for closure #5 in Entity.LoadStatistics.log();
      *(v59 + 24) = &v62 - 6;
      v60 = swift_allocObject();
      *(v60 + 16) = partial apply for closure #1 in __AssetLoadRequest.Statistics.forEach(_:);
      *(v60 + 24) = v59;
      v73 = partial apply for thunk for @callee_guaranteed (@unowned OpaquePointer) -> ();
      v74 = v60;
      v69 = MEMORY[0x1E69E9820];
      v70 = 1107296256;
      v71 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
      v72 = &block_descriptor_40;
      v61 = _Block_copy(&v69);

      REAssetLoadRequestStatsForEachStat();

      _Block_release(v61);
      LOBYTE(v57) = swift_isEscapingClosureAtFileLocation();

      if (v57)
      {
        break;
      }

      if (v62 == ++v54)
      {

        return;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    swift_once();
  }

  __break(1u);
}

uint64_t specialized flatJSON #1 <A>(_:) in Entity.LoadStatistics.log()(__int128 *a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = type metadata accessor for JSONEncoder.OutputFormatting();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v16 = *a1;
  v17 = a1[1];
  v18 = a1[2];
  v19 = *(a1 + 6);
  v6 = type metadata accessor for JSONEncoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  lazy protocol witness table accessor for type EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance EntityLoadLog #1 in Entity.LoadStatistics.log()();
  v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v11 = v10;
  static String.Encoding.utf8.getter();
  v12 = String.init(data:encoding:)();
  if (v13)
  {
    v14 = v12;
    outlined consume of Data._Representation(v9, v11);

    return v14;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = type metadata accessor for JSONEncoder.OutputFormatting();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v16 = *a1;
  v17 = a1[1];
  v18 = a1[2];
  v6 = type metadata accessor for JSONEncoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  lazy protocol witness table accessor for type AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log()();
  v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v11 = v10;
  static String.Encoding.utf8.getter();
  v12 = String.init(data:encoding:)();
  if (v13)
  {
    v14 = v12;
    outlined consume of Data._Representation(v9, v11);

    return v14;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t specialized Dictionary.compactMapValues<A>(_:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v38 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v12, v37);
    *&v36 = v15;
    *(&v36 + 1) = v14;
    v33 = v36;
    v34 = v37[0];
    v35 = v37[1];
    outlined init with copy of Any(&v34, v30);
    type metadata accessor for NSObject();

    if (swift_dynamicCast())
    {
      v16 = v31;
      if (!v31)
      {
        goto LABEL_17;
      }

      v32[0] = v34;
      v32[1] = v35;
      v31 = v33;
      v17 = *(v2 + 16);
      if (*(v2 + 24) <= v17)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17 + 1, 1);
      }

      v2 = v38;
      v18 = v31;
      v19 = *(v38 + 40);
      Hasher.init(_seed:)();
      v39 = v18;
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = v2 + 64;
      v21 = -1 << *(v2 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v2 + 64 + 8 * (v22 >> 6))) == 0)
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
          v28 = *(v20 + 8 * v23);
          if (v28 != -1)
          {
            v24 = __clz(__rbit64(~v28)) + (v23 << 6);
            goto LABEL_26;
          }
        }

        goto LABEL_29;
      }

      v24 = __clz(__rbit64((-1 << v22) & ~*(v2 + 64 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
      *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v29 = (*(v2 + 48) + 16 * v24);
      *v29 = v39;
      v29[1] = *(&v18 + 1);
      *(*(v2 + 56) + 8 * v24) = v16;
      ++*(v2 + 16);
      result = __swift_destroy_boxed_opaque_existential_1(v32);
    }

    else
    {
      *&v31 = 0;
LABEL_17:
      result = outlined destroy of BodyTrackingComponent?(&v33, &_sSS3key_yp5valuetMd, &_sSS3key_yp5valuetMR);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t closure #5 in Entity.LoadStatistics.log()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(), double a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 32) = 0x7079547465737361;
  *(inited + 16) = xmmword_1C189FFC0;
  v13 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 72) = v13;
  *(inited + 80) = 0x656D695464616F6CLL;
  *(inited + 88) = 0xE800000000000000;
  v14 = MEMORY[0x1E69E63B0];
  *(inited + 96) = a6;
  *(inited + 120) = v14;
  strcpy((inited + 128), "functionName");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = a4;
  *(inited + 152) = a5;
  *(inited + 168) = v13;
  *(inited + 176) = 0x657A6953656C6966;
  *(inited + 216) = MEMORY[0x1E69E76D8];
  *(inited + 184) = 0xE800000000000000;
  *(inited + 192) = a3;

  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v16 = MEMORY[0x1C68F3280](0xD00000000000002FLL, 0x80000001C18E6030);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  v41 = partial apply for closure #1 in closure #5 in Entity.LoadStatistics.log();
  v42 = v17;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v39 = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v40 = &block_descriptor_46;
  v18 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v18);

  *&aBlock = a1;
  *(&aBlock + 1) = a2;
  v39 = *&a6;
  v40 = a4;
  v41 = a5;
  v42 = a3;
  if (one-time initialization token for assetLoadLog != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Entity.LoadStatistics.assetLoadLog);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v36 = v23;
    *v22 = 136446210;
    v24 = specialized flatJSON #1 <A>(_:) in Entity.LoadStatistics.log()(&aBlock);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v36);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_1C1358000, v20, v21, "%{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1C6902A30](v23, -1, -1);
    MEMORY[0x1C6902A30](v22, -1, -1);
  }

  if (one-time initialization token for observers != -1)
  {
    swift_once();
  }

  v27 = *(static Entity.LoadStatistics.observers + 16);
  if (v27)
  {
    v28 = static Entity.LoadStatistics.observers + 32;

    do
    {
      outlined init with copy of WeakRef<Entity.LoadStatistics.Observer>(v28, v37);
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v30 = Strong;
        swift_beginAccess();
        v31 = *(v30 + 24);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v30 + 24) = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
          *(v30 + 24) = v31;
        }

        v34 = *(v31 + 2);
        v33 = *(v31 + 3);
        if (v34 >= v33 >> 1)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v31);
        }

        *(v31 + 2) = v34 + 1;
        *&v31[8 * v34 + 32] = v15;
        *(v30 + 24) = v31;
        swift_endAccess();
        outlined destroy of BodyTrackingComponent?(v37, &_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMd, &_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMR);
      }

      else
      {
        outlined destroy of BodyTrackingComponent?(v37, &_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMd, &_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMR);
      }

      v28 += 8;
      --v27;
    }

    while (v27);
  }
}

uint64_t encode(to:) in EntityLoadLog #1 in Entity.LoadStatistics.log()(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit6EntityC0D10FoundationE14LoadStatisticsC3logyyF0fH3LogL_V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy10RealityKit6EntityC0D10FoundationE14LoadStatisticsC3logyyF0fH3LogL_V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log()();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v19[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[1];
  v13 = v3[2];
  v19[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = v3[3];
  v19[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = *(v3 + 32);
  v19[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v17 = v3[5];
  v18 = v3[6];
  v19[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t encode(to:) in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log()(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit6EntityC0D10FoundationE14LoadStatisticsC3logyyFyAC07__AssetH7RequestC0I0C5ValueVXEfU3_0kH3LogL_V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy10RealityKit6EntityC0D10FoundationE14LoadStatisticsC3logyyFyAC07__AssetH7RequestC0I0C5ValueVXEfU3_0kH3LogL_V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log()();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v18[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = v3[3];
  v15 = v3[4];
  v18[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v17 = v3[5];
  v18[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log()()
{
  v1 = *v0;
  v2 = 0x6E6F697461727564;
  v3 = 0x6E6F6973726576;
  v4 = 0x636E797361;
  if (v1 != 3)
  {
    v4 = 0x6E6F6974636E7566;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701869940;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized CodingKeys.init(stringValue:) in EntityLoadLog #1 in Entity.LoadStatistics.log()(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log()(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log()();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log()(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log()();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance EntityLoadLog #1 in Entity.LoadStatistics.log()(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return encode(to:) in EntityLoadLog #1 in Entity.LoadStatistics.log()(a1);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log()()
{
  v1 = 0x7079547465737361;
  v2 = 0x6E6F6974636E7566;
  if (*v0 != 2)
  {
    v2 = 0x657A6953656C6966;
  }

  if (*v0)
  {
    v1 = 0x656D695464616F6CLL;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized CodingKeys.init(stringValue:) in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log()(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log()(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log()();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log()(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log()();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log()(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return encode(to:) in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log()(a1);
}

uint64_t outlined init with copy of WeakRef<Entity.LoadStatistics.Observer>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMd, &_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of WeakRef<Entity.LoadStatistics.Observer>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMd, &_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned OpaquePointer) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t lazy protocol witness table accessor for type EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance EntityLoadLog #1 in Entity.LoadStatistics.log()()
{
  result = lazy protocol witness table cache variable for type EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance EntityLoadLog #1 in Entity.LoadStatistics.log();
  if (!lazy protocol witness table cache variable for type EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance EntityLoadLog #1 in Entity.LoadStatistics.log())
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance EntityLoadLog #1 in Entity.LoadStatistics.log());
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log()()
{
  result = lazy protocol witness table cache variable for type AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log();
  if (!lazy protocol witness table cache variable for type AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log())
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log());
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log()(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log()(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for EntityLoadLog #1 in Entity.LoadStatistics.log()(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for EntityLoadLog #1 in Entity.LoadStatistics.log()(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t type metadata instantiation function for WeakRef()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t lazy protocol witness table accessor for type Entity.LoadStatistics.USDLoader and conformance Entity.LoadStatistics.USDLoader()
{
  result = lazy protocol witness table cache variable for type Entity.LoadStatistics.USDLoader and conformance Entity.LoadStatistics.USDLoader;
  if (!lazy protocol witness table cache variable for type Entity.LoadStatistics.USDLoader and conformance Entity.LoadStatistics.USDLoader)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.LoadStatistics.USDLoader and conformance Entity.LoadStatistics.USDLoader);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log()()
{
  result = lazy protocol witness table cache variable for type CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log();
  if (!lazy protocol witness table cache variable for type CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log())
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log());
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log();
  if (!lazy protocol witness table cache variable for type CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log())
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log());
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log();
  if (!lazy protocol witness table cache variable for type CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log())
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log());
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log();
  if (!lazy protocol witness table cache variable for type CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log())
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log());
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log()()
{
  result = lazy protocol witness table cache variable for type CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log();
  if (!lazy protocol witness table cache variable for type CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log())
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log());
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log();
  if (!lazy protocol witness table cache variable for type CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log())
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log());
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log();
  if (!lazy protocol witness table cache variable for type CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log())
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log());
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log();
  if (!lazy protocol witness table cache variable for type CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log())
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log());
  }

  return result;
}

uint64_t specialized CodingKeys.init(stringValue:) in EntityLoadLog #1 in Entity.LoadStatistics.log()(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x636E797361 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6974636E7566 && a2 == 0xEC000000656D614ELL)
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

uint64_t specialized CodingKeys.init(stringValue:) in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log()(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079547465737361 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D695464616F6CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6974636E7566 && a2 == 0xEC000000656D614ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657A6953656C6966 && a2 == 0xE800000000000000)
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

unint64_t _Proto_MeshDeformation_v1.BlendShape.addToBuilder(_:)(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 8);
  result = REMeshDeformationDefinitionAssetBuilderDeformationStackAddBlendShape();
  if (result <= 0x7FFFFFFE)
  {
    *(a1 + 16) = result;
  }

  else
  {
    v5 = *(a1 + 48);

    *(a1 + 32) = xmmword_1C18AF9C0;
    *(a1 + 48) = 0x80000001C18E6080;
  }

  return result;
}

unint64_t _Proto_MeshDeformation_v1.Skinning.addToBuilder(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(a1 + 24);
  v5 = *(a1 + 8);
  result = REMeshDeformationDefinitionAssetBuilderDeformationStackAddSkinning();
  if (result <= 0x7FFFFFFE)
  {
    *(a1 + 16) = result;
    if (!v3)
    {
      return result;
    }
  }

  else
  {
    v7 = *(a1 + 48);

    *(a1 + 32) = xmmword_1C18AF9C0;
    *(a1 + 48) = 0x80000001C18E6080;
    if (!v3)
    {
      return result;
    }
  }

  v8 = *(a1 + 16);

  return REMeshDeformationDefinitionAssetBuilderSkinningGetEnableSkinningVertexFrame();
}

unint64_t instantiation function for generic protocol witness table for _Proto_MeshDeformation_v1.BlendShape(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.BlendShape and conformance _Proto_MeshDeformation_v1.BlendShape();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.BlendShape and conformance _Proto_MeshDeformation_v1.BlendShape()
{
  result = lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.BlendShape and conformance _Proto_MeshDeformation_v1.BlendShape;
  if (!lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.BlendShape and conformance _Proto_MeshDeformation_v1.BlendShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.BlendShape and conformance _Proto_MeshDeformation_v1.BlendShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.BlendShape and conformance _Proto_MeshDeformation_v1.BlendShape;
  if (!lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.BlendShape and conformance _Proto_MeshDeformation_v1.BlendShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.BlendShape and conformance _Proto_MeshDeformation_v1.BlendShape);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _Proto_MeshDeformation_v1.Skinning(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.Skinning and conformance _Proto_MeshDeformation_v1.Skinning();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.Skinning and conformance _Proto_MeshDeformation_v1.Skinning()
{
  result = lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.Skinning and conformance _Proto_MeshDeformation_v1.Skinning;
  if (!lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.Skinning and conformance _Proto_MeshDeformation_v1.Skinning)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.Skinning and conformance _Proto_MeshDeformation_v1.Skinning);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.Skinning and conformance _Proto_MeshDeformation_v1.Skinning;
  if (!lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.Skinning and conformance _Proto_MeshDeformation_v1.Skinning)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.Skinning and conformance _Proto_MeshDeformation_v1.Skinning);
  }

  return result;
}

void PhysicallyBasedMaterial.Opacity.init(material:alternateTintKey:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{

  outlined consume of MaterialParameters.Texture?(0, 0);
  if (RELinkedOnOrAfterFall2024OSVersions())
  {
    v4 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v5._countAndFlagsBits = 0x537974696361706FLL;
    v5._object = 0xEC000000656C6163;
    Material.getFloatParameter(key:)(v6, v5);
    if ((v7 & 0x100000000) != 0)
    {
      v8 = 1065353216;
    }

    else
    {
      v8 = v7;
    }
  }

  else
  {
    v8 = 1065353216;
  }

  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  Material.getTextureParameter(key:)(0x4F65727574786574, 0xEE00797469636170, v9, v10, &v15);
  v11 = v16;
  if (v16)
  {
    v12 = v18;
    v13 = v17;
    v14 = v15;
    outlined consume of MaterialParameters.Texture?(0, 0);
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
  }

  *a2 = v8;
  *(a2 + 8) = v14;
  *(a2 + 16) = v11;
  *(a2 + 24) = v13;
  *(a2 + 32) = v12;
  outlined copy of MaterialParameters.Texture?(v14, v11);
  __swift_destroy_boxed_opaque_existential_1(a1);

  outlined consume of MaterialParameters.Texture?(v14, v11);
}

uint64_t (*static PhysicallyBasedMaterial.BaseColor.__defaultTexture.getter())(void *a1)
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return partial apply for closure #1 in static TextureResource.builtinTexture(named:);
}

id PhysicallyBasedMaterial.BaseColor.getCurrentValues(alternateTintKey:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = *v4;
  v7 = *(v4 + 8);
  v18 = *v4;
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = *(v4 + 32);
  *a1 = 0xD000000000000010;
  *(a1 + 8) = 0x80000001C18E2A60;
  if (v8)
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  if (v8)
  {
    v13 = 1;
  }

  else
  {
    v13 = -1;
  }

  if (v8)
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 16) = v11;
  *(a1 + 24) = v8;
  *(a1 + 32) = v12;
  *(a1 + 40) = v14;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v13;
  v15 = 0x6F6C6F4365736162;
  if (a4)
  {
    v15 = a3;
  }

  v16 = 0xED0000746E695472;
  if (a4)
  {
    v16 = a4;
  }

  *a2 = v15;
  *(a2 + 8) = v16;
  *(a2 + 16) = v6;
  *(a2 + 80) = 6;
  outlined copy of MaterialParameters.Texture?(v7, v8);

  return v18;
}

uint64_t (*static PhysicallyBasedMaterial.Metallic.__defaultTexture.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

uint64_t (*static PhysicallyBasedMaterial.Roughness.__defaultTexture.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

void PhysicallyBasedMaterial.Roughness.init(material:alternateTintKey:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{

  outlined consume of MaterialParameters.Texture?(0, 0);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5._countAndFlagsBits = 0x73656E6867756F72;
  v5._object = 0xEE00656C61635373;
  Material.getFloatParameter(key:)(v6, v5);
  v8 = v7;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  Material.getTextureParameter(key:)(0xD000000000000010, 0x80000001C18E2A80, v9, v10, &v16);
  v11 = v17;
  if (v17)
  {
    v12 = v19;
    v13 = v18;
    v14 = v16;
    outlined consume of MaterialParameters.Texture?(0, 0);
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
  }

  v15 = *&v8;
  if ((v8 & 0x100000000) != 0)
  {
    v15 = 1.0;
  }

  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v11;
  *(a2 + 24) = v13;
  *(a2 + 32) = v12;
  outlined copy of MaterialParameters.Texture?(v14, v11);
  __swift_destroy_boxed_opaque_existential_1(a1);

  outlined consume of MaterialParameters.Texture?(v14, v11);
}

uint64_t (*static PhysicallyBasedMaterial.EmissiveColor.__defaultTexture.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.black");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

void PhysicallyBasedMaterial.BaseColor.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v5 = v4;

    v6 = REMaterialCreateDefaultSamplerDescriptor();

    v7 = 84148994;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  outlined consume of MaterialParameters.Texture?(0, 0);
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v3;
  *(a2 + 24) = 0;
  *(a2 + 32) = v7;
}

void PhysicallyBasedMaterial.EmissiveColor.init(material:alternateTintKey:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{

  if (one-time initialization token for linearSRGBWhite != -1)
  {
    swift_once();
  }

  v4 = static CGColorRef.linearSRGBWhite;
  outlined consume of MaterialParameters.Texture?(0, 0);
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6._countAndFlagsBits = 0x6576697373696D65;
  v6._object = 0xED0000726F6C6F43;
  v7.value = Material.getColorParameter(key:)(v6).value;
  if (v7.value)
  {
    value = v7.value;

    v4 = value;
  }

  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  Material.getTextureParameter(key:)(0x4565727574786574, 0xEF6576697373696DLL, v9, v10, &v16);
  v11 = v17;
  if (v17)
  {
    v12 = v19;
    v13 = v18;
    v14 = v16;
    outlined consume of MaterialParameters.Texture?(0, 0);
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v14;
  *(a2 + 16) = v11;
  *(a2 + 24) = v13;
  *(a2 + 32) = v12;
  v15 = v4;
  outlined copy of MaterialParameters.Texture?(v14, v11);
  __swift_destroy_boxed_opaque_existential_1(a1);

  outlined consume of MaterialParameters.Texture?(v14, v11);
}

uint64_t (*static PhysicallyBasedMaterial.Specular.__defaultTexture.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

void PhysicallyBasedMaterial.Metallic.init(material:alternateTintKey:)(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{

  outlined consume of MaterialParameters.Texture?(0, 0);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11._object = 0xED0000656C616353;
  v11._countAndFlagsBits = a2;
  Material.getFloatParameter(key:)(v12, v11);
  v14 = v13;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  Material.getTextureParameter(key:)(a3, a4, v15, v16, &v22);
  v17 = v23;
  if (v23)
  {
    v18 = v25;
    v19 = v24;
    v20 = v22;
    outlined consume of MaterialParameters.Texture?(0, 0);
  }

  else
  {
    v20 = 0;
    v19 = 0;
    v18 = 0;
  }

  v21 = *&v14;
  if ((v14 & 0x100000000) != 0)
  {
    v21 = 1.0;
  }

  *a5 = v21;
  *(a5 + 8) = v20;
  *(a5 + 16) = v17;
  *(a5 + 24) = v19;
  *(a5 + 32) = v18;
  outlined copy of MaterialParameters.Texture?(v20, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);

  outlined consume of MaterialParameters.Texture?(v20, v17);
}

void PhysicallyBasedMaterial.Blending.init(blending:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if (v3 == 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = xmmword_1C18A4F10;
  }

  else
  {
    v8 = *(a1 + 20);
    v9 = *(a1 + 16);
    v10 = *a1;
    v11 = v3;
    v12 = v9;
    v13 = v8 & 1;
    PhysicallyBasedMaterial.Opacity.init(_:)(&v10, &v14);
    v4 = v14;
    v7 = v15;
    v5 = v16;
    v6 = v17;
  }

  *a2 = v4;
  *(a2 + 8) = v7;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
}

void PhysicallyBasedMaterial.Opacity.init(_:)(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  if (v4)
  {
    v5 = REMaterialCreateDefaultSamplerDescriptor();
    v6 = 84148994;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  outlined consume of MaterialParameters.Texture?(0, 0);
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = v6;
}

uint64_t (*static PhysicallyBasedMaterial.Opacity.__defaultTexture.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

uint64_t (*static PhysicallyBasedMaterial.Clearcoat.__defaultTexture.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

void PhysicallyBasedMaterial.Clearcoat.init(material:alternateTintKey:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{

  outlined consume of MaterialParameters.Texture?(0, 0);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5._countAndFlagsBits = 0x616F637261656C63;
  v5._object = 0xEE00656C61635374;
  Material.getFloatParameter(key:)(v6, v5);
  v8 = v7;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  Material.getTextureParameter(key:)(0xD000000000000010, 0x80000001C18E2AA0, v9, v10, &v16);
  v11 = v17;
  if (v17)
  {
    v12 = v19;
    v13 = v18;
    v14 = v16;
    outlined consume of MaterialParameters.Texture?(0, 0);
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
  }

  v15 = *&v8;
  if ((v8 & 0x100000000) != 0)
  {
    v15 = 1.0;
  }

  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v11;
  *(a2 + 24) = v13;
  *(a2 + 32) = v12;
  outlined copy of MaterialParameters.Texture?(v14, v11);
  __swift_destroy_boxed_opaque_existential_1(a1);

  outlined consume of MaterialParameters.Texture?(v14, v11);
}

uint64_t (*static PhysicallyBasedMaterial.ClearcoatRoughness.__defaultTexture.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

void PhysicallyBasedMaterial.Metallic.init(_:)(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  if (v4)
  {
    v5 = REMaterialCreateDefaultSamplerDescriptor();
    v6 = 84148994;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  outlined consume of MaterialParameters.Texture?(0, 0);
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = v6;
}

void PhysicallyBasedMaterial.ClearcoatRoughness.init(material:alternateTintKey:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{

  outlined consume of MaterialParameters.Texture?(0, 0);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5._object = 0x80000001C18DD830;
  v5._countAndFlagsBits = 0xD000000000000017;
  Material.getFloatParameter(key:)("form1", v5);
  v7 = v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  Material.getTextureParameter(key:)(0xD000000000000019, 0x80000001C18E2AC0, v8, v9, &v15);
  v10 = v16;
  if (v16)
  {
    v11 = v18;
    v12 = v17;
    v13 = v15;
    outlined consume of MaterialParameters.Texture?(0, 0);
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v11 = 0;
  }

  v14 = *&v7;
  if ((v7 & 0x100000000) != 0)
  {
    v14 = 1.0;
  }

  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12;
  *(a2 + 32) = v11;
  outlined copy of MaterialParameters.Texture?(v13, v10);
  __swift_destroy_boxed_opaque_existential_1(a1);

  outlined consume of MaterialParameters.Texture?(v13, v10);
}

uint64_t (*static PhysicallyBasedMaterial.Normal.__defaultTexture.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000012;
  *(v0 + 24) = 0x80000001C18E2AE0;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

uint64_t (*static PhysicallyBasedMaterial.AmbientOcclusion.__defaultTexture.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

uint64_t (*static PhysicallyBasedMaterial.AnisotropyLevel.__defaultTexture.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

void PhysicallyBasedMaterial.AnisotropyLevel.init(material:alternateTintKey:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{

  outlined consume of MaterialParameters.Texture?(0, 0);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5._object = 0x80000001C18DD8B0;
  v5._countAndFlagsBits = 0xD000000000000014;
  Material.getFloatParameter(key:)("s", v5);
  v7 = v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  Material.getTextureParameter(key:)(0xD000000000000016, 0x80000001C18E3600, v8, v9, &v15);
  v10 = v16;
  if (v16)
  {
    v11 = v18;
    v12 = v17;
    v13 = v15;
    outlined consume of MaterialParameters.Texture?(0, 0);
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v11 = 0;
  }

  v14 = *&v7;
  if ((v7 & 0x100000000) != 0)
  {
    v14 = 1.0;
  }

  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12;
  *(a2 + 32) = v11;
  outlined copy of MaterialParameters.Texture?(v13, v10);
  __swift_destroy_boxed_opaque_existential_1(a1);

  outlined consume of MaterialParameters.Texture?(v13, v10);
}

uint64_t (*static PhysicallyBasedMaterial.AnisotropyAngle.__defaultTexture.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

__n128 PhysicallyBasedMaterial.Metallic.init(scale:texture:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v7 = *a1;
  v4 = a1[1].n128_u64[0];
  v5 = a1[1].n128_u32[2];
  *a2 = a3;
  outlined consume of MaterialParameters.Texture?(0, 0);
  result = v7;
  *(a2 + 8) = v7;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  return result;
}

void PhysicallyBasedMaterial.AnisotropyAngle.init(floatLiteral:)(uint64_t a1@<X8>, float a2@<S0>)
{
  outlined consume of MaterialParameters.Texture?(0, 0);
  *a1 = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
}

void PhysicallyBasedMaterial.AnisotropyAngle.init(material:alternateTintKey:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{

  outlined consume of MaterialParameters.Texture?(0, 0);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5._object = 0x80000001C18DD8D0;
  v5._countAndFlagsBits = 0xD000000000000014;
  Material.getFloatParameter(key:)("anisotropyLevelScale", v5);
  v7 = v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  Material.getTextureParameter(key:)(0xD000000000000016, 0x80000001C18E35E0, v8, v9, &v15);
  v10 = v16;
  if (v16)
  {
    v11 = v18;
    v12 = v17;
    v13 = v15;
    outlined consume of MaterialParameters.Texture?(0, 0);
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v11 = 0;
  }

  v14 = *&v7;
  if ((v7 & 0x100000000) != 0)
  {
    v14 = 1.0;
  }

  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12;
  *(a2 + 32) = v11;
  outlined copy of MaterialParameters.Texture?(v13, v10);
  __swift_destroy_boxed_opaque_existential_1(a1);

  outlined consume of MaterialParameters.Texture?(v13, v10);
}

void *PhysicallyBasedMaterial.BaseColor.texture.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return outlined copy of MaterialParameters.Texture?(v2, v3);
}

__n128 PhysicallyBasedMaterial.BaseColor.texture.setter(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u32[2];
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  outlined consume of MaterialParameters.Texture?(*(v1 + 8), *(v1 + 16));
  result = v7;
  *(v1 + 8) = v7;
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t (*static PhysicallyBasedMaterial.SheenColor.__defaultTexture.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

__n128 PhysicallyBasedMaterial.BaseColor.init(tint:texture:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a2;
  v4 = a2[1].n128_u64[0];
  v5 = a2[1].n128_u32[2];
  *a3 = a1;
  outlined consume of MaterialParameters.Texture?(0, 0);
  result = v7;
  *(a3 + 8) = v7;
  *(a3 + 24) = v4;
  *(a3 + 32) = v5;
  return result;
}

id PhysicallyBasedMaterial.SheenColor.getCurrentValues(alternateTintKey:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = *v4;
  v7 = *(v4 + 8);
  v18 = *v4;
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = *(v4 + 32);
  *a1 = 0xD000000000000011;
  *(a1 + 8) = 0x80000001C18E3940;
  if (v8)
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  if (v8)
  {
    v13 = 1;
  }

  else
  {
    v13 = -1;
  }

  if (v8)
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 16) = v11;
  *(a1 + 24) = v8;
  *(a1 + 32) = v12;
  *(a1 + 40) = v14;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v13;
  v15 = 0x6C6F436E65656873;
  if (a4)
  {
    v15 = a3;
  }

  v16 = 0xEA0000000000726FLL;
  if (a4)
  {
    v16 = a4;
  }

  *a2 = v15;
  *(a2 + 8) = v16;
  *(a2 + 16) = v6;
  *(a2 + 80) = 6;
  outlined copy of MaterialParameters.Texture?(v7, v8);

  return v18;
}

void PhysicallyBasedMaterial.SheenColor.init(material:alternateTintKey:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{

  if (one-time initialization token for linearSRGBWhite != -1)
  {
    swift_once();
  }

  v4 = static CGColorRef.linearSRGBWhite;
  outlined consume of MaterialParameters.Texture?(0, 0);
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6._countAndFlagsBits = 0x6C6F436E65656873;
  v6._object = 0xEA0000000000726FLL;
  v7.value = Material.getColorParameter(key:)(v6).value;
  if (v7.value)
  {
    value = v7.value;

    v4 = value;
  }

  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  Material.getTextureParameter(key:)(0xD000000000000011, 0x80000001C18E3940, v9, v10, &v16);
  v11 = v17;
  if (v17)
  {
    v12 = v19;
    v13 = v18;
    v14 = v16;
    outlined consume of MaterialParameters.Texture?(0, 0);
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v14;
  *(a2 + 16) = v11;
  *(a2 + 24) = v13;
  *(a2 + 32) = v12;
  v15 = v4;
  outlined copy of MaterialParameters.Texture?(v14, v11);
  __swift_destroy_boxed_opaque_existential_1(a1);

  outlined consume of MaterialParameters.Texture?(v14, v11);
}

void PhysicallyBasedMaterial.Program.descriptor.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 17);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

void PhysicallyBasedMaterial.Program.Descriptor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1 & 1);
  }

  Hasher._combine(_:)(v2);
}

Swift::Int PhysicallyBasedMaterial.Program.Descriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1 & 1);
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PhysicallyBasedMaterial.Program.Descriptor()
{
  v1 = *v0;
  v2 = v0[1];
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1 & 1);
  }

  Hasher._combine(_:)(v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PhysicallyBasedMaterial.Program.Descriptor()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1 & 1);
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t PhysicallyBasedMaterial.Program.__allocating_init(descriptor:)(_BYTE *a1)
{
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = PhysicallyBasedMaterial.Program.__allocating_init(descriptor:);

  return PhysicallyBasedMaterial.Program.init(descriptor:)(a1);
}

uint64_t PhysicallyBasedMaterial.Program.__allocating_init(descriptor:)(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t PhysicallyBasedMaterial.Program.init(descriptor:)(_BYTE *a1)
{
  *(v2 + 104) = v1;
  *(v2 + 136) = *a1;
  *(v2 + 137) = a1[1];
  return MEMORY[0x1EEE6DFA0](PhysicallyBasedMaterial.Program.init(descriptor:), 0, 0);
}

uint64_t PhysicallyBasedMaterial.Program.init(descriptor:)()
{
  v1 = *(v0 + 137);
  v2 = *(v0 + 136);
  v3 = v2 != 2;
  v4 = *(v0 + 104);
  *(v4 + 16) = v2;
  *(v4 + 17) = v1;
  if (one-time initialization token for shaderCacheRegistry != -1)
  {
    swift_once();
  }

  v5 = v3 << 16;

  v6 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v6 + 120, v0 + 16);
  v7 = specialized AssetServiceScopedRegistry.instance(for:)((v0 + 16));
  *(v0 + 112) = v7;

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v8 = *(v7 + 56);
  v9 = *(v8 + 24);

  os_unfair_lock_lock(v9 + 4);
  swift_beginAccess();
  v10 = *(v8 + 16);
  if (*(v10 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(v5 | *(v0 + 137), 0, (*(v0 + 136) << 8) | 0x20001u), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
  }

  else
  {
    v13 = 0;
  }

  os_unfair_lock_unlock(v9 + 4);

  if (v13)
  {

    *(v0 + 128) = v13;

    return MEMORY[0x1EEE6DFA0](PhysicallyBasedMaterial.Program.init(descriptor:), 0, 0);
  }

  else
  {
    v14 = *(v0 + 137);
    v15 = *(v0 + 136);
    v16 = *(v7 + 64);
    v17 = swift_task_alloc();
    *(v0 + 120) = v17;
    *v17 = v0;
    v17[1] = PhysicallyBasedMaterial.Program.init(descriptor:);

    return specialized ShaderCacheLoader.loadResource(forKey:)(v5 | v14, 0, (v15 << 8) | 0x20001u);
  }
}

{
  *(*(v0 + 104) + 24) = *(v0 + 128);
  return (*(v0 + 8))(*(v0 + 104));
}

{
  v1 = *(v0 + 112);

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t PhysicallyBasedMaterial.Program.init(descriptor:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;

  if (v1)
  {

    v7 = PhysicallyBasedMaterial.Program.init(descriptor:);
  }

  else
  {
    v8 = *(v4 + 112);

    *(v4 + 128) = a1;
    v7 = PhysicallyBasedMaterial.Program.init(descriptor:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t static PhysicallyBasedMaterial.Program.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 == 2)
  {
    if (v3 == 2)
    {
      return *(a1 + 17) ^ *(a2 + 17) ^ 1u;
    }
  }

  else if (v3 != 2 && ((v3 ^ v2) & 1) == 0)
  {
    return *(a1 + 17) ^ *(a2 + 17) ^ 1u;
  }

  return 0;
}

void PhysicallyBasedMaterial.Program.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1 & 1);
  }

  Hasher._combine(_:)(v2);
}

uint64_t PhysicallyBasedMaterial.Program.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t PhysicallyBasedMaterial.Program.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

Swift::Int PhysicallyBasedMaterial.Program.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1 & 1);
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PhysicallyBasedMaterial.Program(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a1 + 17);
  v7[0] = *(*a1 + 16);
  v7[1] = v3;
  v4 = *(v2 + 16);
  LOBYTE(v2) = *(v2 + 17);
  v6[0] = v4;
  v6[1] = v2;
  return specialized static PhysicallyBasedMaterial.Program.Descriptor.== infix(_:_:)(v7, v6) & 1;
}

void protocol witness for Hashable.hash(into:) in conformance PhysicallyBasedMaterial.Program()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 17);
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1 & 1);
  }

  Hasher._combine(_:)(v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PhysicallyBasedMaterial.Program()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + 16);
  v3 = *(v1 + 17);
  if (v2 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v2 & 1);
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void *PhysicallyBasedMaterial.Normal.texture.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return outlined copy of MaterialParameters.Texture?(v2, v3);
}

__n128 PhysicallyBasedMaterial.Normal.texture.setter(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u32[2];
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  outlined consume of MaterialParameters.Texture?(*v1, *(v1 + 8));
  result = v7;
  *v1 = v7;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

__n128 PhysicallyBasedMaterial.Normal.init(texture:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v6 = *a1;
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u32[2];
  outlined consume of MaterialParameters.Texture?(0, 0);
  result = v6;
  *a2 = v6;
  a2[1].n128_u64[0] = v3;
  a2[1].n128_u32[2] = v4;
  return result;
}

id PhysicallyBasedMaterial.Normal.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    result = REMaterialCreateDefaultSamplerDescriptor();
    v5 = 84148994;
  }

  else
  {
    result = 0;
    v5 = 0;
  }

  *a2 = result;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = v5;
  return result;
}

uint64_t specialized static PhysicallyBasedMaterial.Program.Descriptor.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    if (v3 == 2)
    {
      return a1[1] ^ a2[1] ^ 1u;
    }
  }

  else if (v3 != 2 && ((v3 ^ v2) & 1) == 0)
  {
    return a1[1] ^ a2[1] ^ 1u;
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type PhysicallyBasedMaterial.Program.Descriptor and conformance PhysicallyBasedMaterial.Program.Descriptor()
{
  result = lazy protocol witness table cache variable for type PhysicallyBasedMaterial.Program.Descriptor and conformance PhysicallyBasedMaterial.Program.Descriptor;
  if (!lazy protocol witness table cache variable for type PhysicallyBasedMaterial.Program.Descriptor and conformance PhysicallyBasedMaterial.Program.Descriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicallyBasedMaterial.Program.Descriptor and conformance PhysicallyBasedMaterial.Program.Descriptor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhysicallyBasedMaterial.Program and conformance PhysicallyBasedMaterial.Program()
{
  result = lazy protocol witness table cache variable for type PhysicallyBasedMaterial.Program and conformance PhysicallyBasedMaterial.Program;
  if (!lazy protocol witness table cache variable for type PhysicallyBasedMaterial.Program and conformance PhysicallyBasedMaterial.Program)
  {
    type metadata accessor for PhysicallyBasedMaterial.Program();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicallyBasedMaterial.Program and conformance PhysicallyBasedMaterial.Program);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation18MaterialParametersV7TextureVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation23PhysicallyBasedMaterialV8BlendingO(uint64_t a1)
{
  v1 = *(a1 + 16);
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

uint64_t getEnumTagSinglePayload for PhysicallyBasedMaterial.Blending(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 36))
  {
    return (*a1 + 2147483646);
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

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PhysicallyBasedMaterial.Blending(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 36) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 36) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for PhysicallyBasedMaterial.Blending(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 16) = a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhysicallyBasedMaterial.Metallic(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 36))
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

uint64_t storeEnumTagSinglePayload for PhysicallyBasedMaterial.Metallic(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 36) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 36) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhysicallyBasedMaterial.BaseColor(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t storeEnumTagSinglePayload for PhysicallyBasedMaterial.BaseColor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of PhysicallyBasedMaterial.Program.__allocating_init(descriptor:)(uint64_t a1)
{
  v4 = *(v1 + 96);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = PhysicallyBasedMaterial.Program.__allocating_init(descriptor:);

  return v8(a1);
}

uint64_t getEnumTagSinglePayload for PhysicallyBasedMaterial.Program.Descriptor(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PhysicallyBasedMaterial.Program.Descriptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhysicallyBasedMaterial.Normal(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 28))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for PhysicallyBasedMaterial.Normal(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

char *specialized static EmphasizeAnimations.createEmphasizeBounceAnimation(style:)(_BYTE *a1)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 140, 0, MEMORY[0x1E69E7CC0]);
      v1 = &static EmphasizeAnimations.playfulBounceAnimationData;
    }

    else
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 271, 0, MEMORY[0x1E69E7CC0]);
      v1 = &static EmphasizeAnimations.wildBounceAnimationData;
    }
  }

  else
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 94, 0, MEMORY[0x1E69E7CC0]);
    v1 = &static EmphasizeAnimations.basicBounceAnimationData;
  }

  v2 = *v1;

  specialized static EmphasizeAnimations.makeTransforms(_:_:)(v3, &v5);

  return v5;
}

uint64_t AnchorEntity.__allocating_init(plane:classification:minimumBounds:)(char *a1, uint64_t *a2, double a3)
{
  v6 = type metadata accessor for AnchoringComponent.Target(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  *v9 = *a1;
  *(v9 + 1) = v10;
  *(v9 + 2) = a3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AnchorEntity();
  swift_allocObject();
  return AnchorEntity.init(_:)(v9);
}

uint64_t AnchorEntity.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for AnchoringComponent(0);
  v3 = (v2 - 8);
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Entity.init()();
  outlined init with copy of AnchoringComponent.Target(a1, v6);
  *&v6[v3[7]] = 1;
  *&v6[v3[8]] = 1;
  v8 = &v6[v3[9]];
  v14 = 1;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  *(v8 + 3) = 0u;
  v8[64] = 1;
  v9 = *(v7 + 16);

  REAnchoringComponentGetComponentType();
  v13 = REEntityGetOrAddComponentByClass();
  AnchoringComponent.__toCore(_:)(&v13);
  v10 = *(v7 + 16);
  REAnchorComponentGetComponentType();
  REEntityRemoveComponentByClass();

  outlined destroy of AnchoringComponent.Target(a1, type metadata accessor for AnchoringComponent.Target);
  outlined destroy of AnchoringComponent.Target(v6, type metadata accessor for AnchoringComponent);
  return v7;
}

uint64_t AnchorEntity.__allocating_init(world:)(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v13 = a3;
  v14 = a4;
  v11 = a1;
  v12 = a2;
  v4 = type metadata accessor for AnchoringComponent.Target(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v12;
  *v7 = v11;
  v7[1] = v8;
  v9 = v14;
  v7[2] = v13;
  v7[3] = v9;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AnchorEntity();
  swift_allocObject();
  return AnchorEntity.init(_:)(v7);
}

uint64_t AnchorEntity.__allocating_init(coreRaycastResult:)(void *a1)
{
  v2 = type metadata accessor for AnchoringComponent.Target(0);
  v3 = *(*(v2 - 8) + 64);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  [a1 worldTransform];
  v23 = v8;
  v24 = v7;
  v21 = v10;
  v22 = v9;
  v11 = [a1 anchor];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_storeEnumTagMultiPayload();
    type metadata accessor for AnchorEntity();
    swift_allocObject();
    v14 = AnchorEntity.init(_:)(v6);

    [a1 localTransform];
    REMakeSRTFromMatrix();
    if (one-time initialization token for identity != -1)
    {
      v23 = v15;
      v24 = v16;
      v22 = v17;
      swift_once();
      v17 = v22;
      v15 = v23;
      v16 = v24;
    }

    HasTransform.transform.setter(v15, v16, v17);
  }

  else
  {
    v18 = v23;
    *v6 = v24;
    v6[1] = v18;
    v19 = v21;
    v6[2] = v22;
    v6[3] = v19;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for AnchorEntity();
    swift_allocObject();
    v14 = AnchorEntity.init(_:)(v6);
  }

  return v14;
}

uint64_t static AnchorEntity.classLoad(named:in:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x1EEE6DFA0](static AnchorEntity.classLoad(named:in:options:asyncOptions:), v7, v6);
}

uint64_t static AnchorEntity.classLoad(named:in:options:asyncOptions:)()
{
  v1 = *(*(v0 + 40) + 80);
  if (v1)
  {
    v2 = (v1 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName);
    v3 = v2[1];
    *v2 = 0xD000000000000022;
    v2[1] = 0x80000001C18E6490;
  }

  v4 = *(v0 + 48);
  v5 = static Entity.loadAnchorAsync(named:in:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  *(v0 + 80) = v5;
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = static AnchorEntity.classLoad(named:in:options:asyncOptions:);

  return _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA06AnchorC0C_Tt0g5(v5);
}

{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[13];

  return v2(v3);
}

uint64_t static AnchorEntity.classLoad(named:in:options:asyncOptions:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = v4[8];
    v8 = v4[9];
    v9 = TextureResource.replace(using:options:);
  }

  else
  {
    v10 = v4[10];

    v4[13] = a1;
    v7 = v4[8];
    v8 = v4[9];
    v9 = static AnchorEntity.classLoad(named:in:options:asyncOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t static AnchorEntity.classLoad(contentsOf:withName:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  type metadata accessor for MainActor();
  v5[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[13] = v7;
  v5[14] = v6;

  return MEMORY[0x1EEE6DFA0](static AnchorEntity.classLoad(contentsOf:withName:options:asyncOptions:), v7, v6);
}

uint64_t static AnchorEntity.classLoad(contentsOf:withName:options:asyncOptions:)()
{
  v1 = *(*(v0 + 80) + 80);
  if (v1)
  {
    v2 = (v1 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName);
    v3 = v2[1];
    *v2 = 0xD00000000000002DLL;
    v2[1] = 0x80000001C18E6460;
  }

  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 56);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v8 = static Entity.__loadAnchorAsync(contentsOf:withName:downsamplingStrategy:)(v7, v5, v6, v0 + 16);
  *(v0 + 120) = v8;
  outlined destroy of __DownsamplingStrategy?(v0 + 16);
  v9 = swift_task_alloc();
  *(v0 + 128) = v9;
  *v9 = v0;
  v9[1] = static AnchorEntity.classLoad(contentsOf:withName:options:asyncOptions:);

  return _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA06AnchorC0C_Tt0g5(v8);
}

{
  v1 = v0[12];

  v2 = v0[1];
  v3 = v0[18];

  return v2(v3);
}

{
  v1 = v0[15];
  v2 = v0[12];

  v3 = v0[1];
  v4 = v0[17];

  return v3();
}

uint64_t static AnchorEntity.classLoad(contentsOf:withName:options:asyncOptions:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = v4[13];
    v8 = v4[14];
    v9 = static AnchorEntity.classLoad(contentsOf:withName:options:asyncOptions:);
  }

  else
  {
    v10 = v4[15];

    v4[18] = a1;
    v7 = v4[13];
    v8 = v4[14];
    v9 = static AnchorEntity.classLoad(contentsOf:withName:options:asyncOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t static AnchorEntity.classLoad(from:named:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
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

  return MEMORY[0x1EEE6DFA0](static AnchorEntity.classLoad(from:named:options:asyncOptions:), v9, v8);
}

uint64_t static AnchorEntity.classLoad(from:named:options:asyncOptions:)()
{
  v14 = v0;
  v1 = *(v0 + 48);
  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = (v2 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName);
    v4 = v3[1];
    *v3 = 0xD000000000000024;
    v3[1] = 0x80000001C18E6430;

    v1 = *(v0 + 48);
  }

  v5 = *(v0 + 56);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v13 = *(v0 + 120);
  v10 = static Entity.loadAnchorAsync(from:named:options:asyncOptions:)(v8, v9, v6, v7, v1, &v13);
  *(v0 + 88) = v10;
  v11 = swift_task_alloc();
  *(v0 + 96) = v11;
  *v11 = v0;
  v11[1] = static AnchorEntity.classLoad(from:named:options:asyncOptions:);

  return _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA06AnchorC0C_Tt0g5(v10);
}

uint64_t static AnchorEntity.classLoad(from:named:options:asyncOptions:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = v4[9];
    v8 = v4[10];
    v9 = static BodyTrackedEntity.classLoad(from:named:options:asyncOptions:);
  }

  else
  {
    v10 = v4[11];

    v4[14] = a1;
    v7 = v4[9];
    v8 = v4[10];
    v9 = static BodyTrackedEntity.classLoad(from:named:options:asyncOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t AnchorEntity.init(_:trackingMode:)(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for AnchoringComponent(0);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a2;
  type metadata accessor for AnchorEntity();
  swift_allocObject();
  v10 = Entity.init()();
  outlined init with copy of AnchoringComponent.Target(a1, v8);
  v11 = v5[7];
  *&v8[v11] = 1;
  v12 = v5[8];
  *&v8[v12] = 1;
  v13 = &v8[v5[9]];
  v15[0] = 1;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 2) = 0u;
  *(v13 + 3) = 0u;
  v13[64] = 1;
  *&v8[v11] = v9;
  *&v8[v12] = 1;

  HasAnchoring.anchoring.setter(v8);

  outlined destroy of AnchoringComponent.Target(a1, type metadata accessor for AnchoringComponent.Target);
  return v10;
}

uint64_t AnchorEntity.init(_:trackingMode:physicsSimulation:)(uint64_t a1, uint64_t *a2, unsigned __int8 *a3)
{
  v6 = type metadata accessor for AnchoringComponent.Target(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for AnchoringComponent(0);
  v11 = (v10 - 8);
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *a2;
  v16 = *a3;
  type metadata accessor for AnchorEntity();
  swift_allocObject();
  v17 = Entity.init()();
  outlined init with copy of AnchoringComponent.Target(a1, v9);
  v18 = v11[7];
  *&v14[v18] = 1;
  v19 = v11[8];
  *&v14[v19] = 1;
  v20 = &v14[v11[9]];
  v22[0] = 1;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *(v20 + 2) = 0u;
  *(v20 + 3) = 0u;
  v20[64] = 1;
  outlined init with take of AnchoringComponent.Target(v9, v14);
  *&v14[v18] = v15;
  *&v14[v19] = v16;

  HasAnchoring.anchoring.setter(v14);

  outlined destroy of AnchoringComponent.Target(a1, type metadata accessor for AnchoringComponent.Target);
  return v17;
}

uint64_t static BodyTrackedEntity.classLoad(named:in:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x1EEE6DFA0](static BodyTrackedEntity.classLoad(named:in:options:asyncOptions:), v7, v6);
}

uint64_t static BodyTrackedEntity.classLoad(named:in:options:asyncOptions:)()
{
  v1 = *(*(v0 + 40) + 80);
  if (v1)
  {
    v2 = (v1 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName);
    v3 = v2[1];
    *v2 = 0xD000000000000027;
    v2[1] = 0x80000001C18E6400;
  }

  v4 = *(v0 + 48);
  v5 = static Entity.loadBodyTrackedAsync(named:in:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  *(v0 + 80) = v5;
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = static BodyTrackedEntity.classLoad(named:in:options:asyncOptions:);

  return _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA011BodyTrackedC0C_Tt0g5(v5);
}

uint64_t static BodyTrackedEntity.classLoad(named:in:options:asyncOptions:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = v4[8];
    v8 = v4[9];
    v9 = static BodyTrackedEntity.classLoad(named:in:options:asyncOptions:);
  }

  else
  {
    v10 = v4[10];

    v4[13] = a1;
    v7 = v4[8];
    v8 = v4[9];
    v9 = static BodyTrackedEntity.classLoad(named:in:options:asyncOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t static BodyTrackedEntity.classLoad(contentsOf:withName:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x1EEE6DFA0](static BodyTrackedEntity.classLoad(contentsOf:withName:options:asyncOptions:), v7, v6);
}

uint64_t static BodyTrackedEntity.classLoad(contentsOf:withName:options:asyncOptions:)()
{
  v1 = *(v0[5] + 80);
  if (v1)
  {
    v2 = (v1 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName);
    v3 = v2[1];
    *v2 = 0xD000000000000032;
    v2[1] = 0x80000001C18E63C0;
  }

  v4 = v0[6];
  v5 = static Entity.loadBodyTrackedAsync(contentsOf:withName:)(v0[2], v0[3], v0[4]);
  v0[10] = v5;
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = static BodyTrackedEntity.classLoad(named:in:options:asyncOptions:);

  return _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA011BodyTrackedC0C_Tt0g5(v5);
}

uint64_t static BodyTrackedEntity.classLoad(from:named:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
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

  return MEMORY[0x1EEE6DFA0](static BodyTrackedEntity.classLoad(from:named:options:asyncOptions:), v9, v8);
}

uint64_t static BodyTrackedEntity.classLoad(from:named:options:asyncOptions:)()
{
  v14 = v0;
  v1 = *(v0 + 48);
  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = (v2 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName);
    v4 = v3[1];
    *v3 = 0xD000000000000029;
    v3[1] = 0x80000001C18E6390;

    v1 = *(v0 + 48);
  }

  v5 = *(v0 + 56);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v13 = *(v0 + 120);
  v10 = static Entity.loadBodyTrackedAsync(from:named:options:asyncOptions:)(v8, v9, v6, v7, v1, &v13);
  *(v0 + 88) = v10;
  v11 = swift_task_alloc();
  *(v0 + 96) = v11;
  *v11 = v0;
  v11[1] = static AnchorEntity.classLoad(from:named:options:asyncOptions:);

  return _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA011BodyTrackedC0C_Tt0g5(v10);
}

uint64_t PointLight.__allocating_init(_coreEntity:)(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = *a1;
  MEMORY[0x1C68F9740]();
  return v2;
}

uint64_t PointLight.init(_coreEntity:)(void *a1)
{
  *(v1 + 16) = *a1;
  MEMORY[0x1C68F9740]();
  return v1;
}

uint64_t PointLight.__deallocating_deinit()
{
  MEMORY[0x1C68F9740](*(v0 + 16), 0);

  return swift_deallocClassInstance();
}

uint64_t ModelEntity.__allocating_init()()
{
  swift_allocObject();
  v0 = Entity.init()();

  if (REShadowsGetEnableDefaultShadows())
  {
    MEMORY[0x1C68FCEC0](*(v0 + 16), 1);
  }

  return v0;
}

uint64_t ModelEntity.init()()
{
  v0 = Entity.init()();

  if (REShadowsGetEnableDefaultShadows())
  {
    MEMORY[0x1C68FCEC0](*(v0 + 16), 1);
  }

  return v0;
}

uint64_t ModelEntity.__allocating_init(mesh:materials:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = specialized ModelEntity.init(mesh:materials:)(a1, a2);

  return v4;
}

uint64_t ModelEntity.init(mesh:materials:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized ModelEntity.init(mesh:materials:)(a1, a2);

  return v2;
}

uint64_t ModelEntity.__allocating_init(mesh:materials:collisionShape:mass:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = specialized ModelEntity.init(mesh:materials:collisionShape:mass:)(a1, a2, a3);

  return v6;
}

uint64_t ModelEntity.init(mesh:materials:collisionShape:mass:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized ModelEntity.init(mesh:materials:collisionShape:mass:)(a1, a2, a3);

  return v3;
}

uint64_t ModelEntity.__allocating_init(mesh:materials:collisionShapes:mass:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_allocObject();
  v6 = specialized ModelEntity.init(mesh:materials:collisionShapes:mass:)(a1, a2, a3);

  return v6;
}

uint64_t ModelEntity.init(mesh:materials:collisionShapes:mass:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = specialized ModelEntity.init(mesh:materials:collisionShapes:mass:)(a1, a2, a3);

  return v3;
}

uint64_t static ModelEntity.classLoad(named:in:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 104) = *a5;
  type metadata accessor for MainActor();
  *(v5 + 48) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 56) = v7;
  *(v5 + 64) = v6;

  return MEMORY[0x1EEE6DFA0](static ModelEntity.classLoad(named:in:options:asyncOptions:), v7, v6);
}

uint64_t static ModelEntity.classLoad(named:in:options:asyncOptions:)()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = (v2 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName);
    v4 = v3[1];
    *v3 = 0xD000000000000021;
    v3[1] = 0x80000001C18E6360;

    v1 = *(v0 + 40);
  }

  v8 = *(v0 + 104);
  v5 = specialized static Entity.loadModelAsync(named:in:options:asyncOptions:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), v1);
  *(v0 + 72) = v5;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = static ModelEntity.classLoad(named:in:options:asyncOptions:);

  return _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA05ModelC0C_Tt0g5(v5);
}

uint64_t static ModelEntity.classLoad(named:in:options:asyncOptions:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = v4[7];
    v8 = v4[8];
    v9 = static ModelEntity.classLoad(named:in:options:asyncOptions:);
  }

  else
  {
    v10 = v4[9];

    v4[12] = a1;
    v7 = v4[7];
    v8 = v4[8];
    v9 = static ModelEntity.classLoad(named:in:options:asyncOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t static ModelEntity.classLoad(contentsOf:withName:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 104) = *a5;
  type metadata accessor for MainActor();
  *(v5 + 48) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 56) = v7;
  *(v5 + 64) = v6;

  return MEMORY[0x1EEE6DFA0](static ModelEntity.classLoad(contentsOf:withName:options:asyncOptions:), v7, v6);
}

uint64_t static ModelEntity.classLoad(contentsOf:withName:options:asyncOptions:)()
{
  v12 = v0;
  v1 = *(v0 + 40);
  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = (v2 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName);
    v4 = v3[1];
    *v3 = 0xD00000000000002CLL;
    v3[1] = 0x80000001C18E6330;

    v1 = *(v0 + 40);
  }

  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);
  v11 = *(v0 + 104);
  v8 = specialized static Entity.loadModelAsync(contentsOf:withName:options:asyncOptions:)(v7, v5, v6, v1, &v11);
  *(v0 + 72) = v8;
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *v9 = v0;
  v9[1] = static ModelEntity.classLoad(contentsOf:withName:options:asyncOptions:);

  return _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA05ModelC0C_Tt0g5(v8);
}

{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[12];

  return v2(v3);
}

{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t static ModelEntity.classLoad(contentsOf:withName:options:asyncOptions:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = v4[7];
    v8 = v4[8];
    v9 = static ModelEntity.classLoad(contentsOf:withName:options:asyncOptions:);
  }

  else
  {
    v10 = v4[9];

    v4[12] = a1;
    v7 = v4[7];
    v8 = v4[8];
    v9 = static ModelEntity.classLoad(contentsOf:withName:options:asyncOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t static ModelEntity.classLoad(from:named:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
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

  return MEMORY[0x1EEE6DFA0](static ModelEntity.classLoad(from:named:options:asyncOptions:), v9, v8);
}

uint64_t static ModelEntity.classLoad(from:named:options:asyncOptions:)()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = (v2 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName);
    v4 = v3[1];
    *v3 = 0xD000000000000023;
    v3[1] = 0x80000001C18E6300;

    v1 = *(v0 + 48);
  }

  v5 = *(v0 + 56);
  v9 = *(v0 + 120);
  v6 = static Entity.loadModelAsync(from:named:options:asyncOptions:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v1);
  *(v0 + 88) = v6;
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = static ModelEntity.classLoad(from:named:options:asyncOptions:);

  return _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA05ModelC0C_Tt0g5(v6);
}

{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[14];

  return v2(v3);
}

{
  v1 = v0[11];
  v2 = v0[8];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t static ModelEntity.classLoad(from:named:options:asyncOptions:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = v4[9];
    v8 = v4[10];
    v9 = static ModelEntity.classLoad(from:named:options:asyncOptions:);
  }

  else
  {
    v10 = v4[11];

    v4[14] = a1;
    v7 = v4[9];
    v8 = v4[10];
    v9 = static ModelEntity.classLoad(from:named:options:asyncOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t TriggerVolume.__allocating_init(shape:filter:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C1898160;
  *(v4 + 32) = a1;
  type metadata accessor for TriggerVolume();
  swift_allocObject();
  v5 = Entity.init()();
  v6 = one-time initialization token for default;

  if (v6 != -1)
  {
    swift_once();
  }

  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA09CollisionD0V_TtB5(v4, 1, v3, 0, v5);

  return v5;
}

uint64_t TriggerVolume.__allocating_init(shapes:filter:)(uint64_t a1, uint64_t *a2)
{
  swift_allocObject();
  v4 = *a2;
  v5 = Entity.init()();
  v6 = one-time initialization token for default;

  if (v6 != -1)
  {
    swift_once();
  }

  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA09CollisionD0V_TtB5(a1, 1, v4, 0, v5);

  return v5;
}

uint64_t TriggerVolume.init(shapes:filter:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = Entity.init()();
  v5 = one-time initialization token for default;

  if (v5 != -1)
  {
    swift_once();
  }

  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA09CollisionD0V_TtB5(a1, 1, v3, 0, v4);

  return v4;
}

uint64_t VFXEntity.__allocating_init(effect:)(uint64_t a1)
{
  type metadata accessor for VFXEntity();
  swift_allocObject();
  v2 = Entity.init()();
  v13 = 1;

  v4[0] = a1;
  v4[1] = 1065353216;
  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
  v8 = 0;
  v9 = 0;
  v10 = 1;
  v11 = 0;
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit15TextureResourceCSgTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  HasVFX.vfxComponent.setter(v4);

  return v2;
}

uint64_t specialized AnchorEntity.__allocating_init(world:)(__n128 a1)
{
  v7 = a1;
  v1 = type metadata accessor for AnchoringComponent.Target(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (v7.n128_u64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = v7;
  v5.n128_u32[3] = 1.0;
  *v4 = *zmmword_1C1887630;
  v4[1] = *&zmmword_1C1887630[16];
  v4[2] = *&zmmword_1C1887630[32];
  v4[3] = v5;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AnchorEntity();
  swift_allocObject();
  return AnchorEntity.init(_:)(v4);
}

uint64_t outlined init with copy of AnchoringComponent.Target(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnchoringComponent.Target(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AnchoringComponent.Target(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of AnchoringComponent.Target(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnchoringComponent.Target(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized ModelEntity.init(mesh:materials:)(uint64_t a1, uint64_t a2)
{
  v3 = Entity.init()();
  type metadata accessor for _Proto_MeshDeformation_v1.Resource();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  swift_retain_n();

  _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA05ModelD0V_Tt0B5(v5, a2, 0, v4);
  v6 = *(v3 + 16);

  if (v6 == *(v3 + 16))
  {
    if (REShadowsGetEnableDefaultShadows())
    {
      MEMORY[0x1C68FCEC0](*(v3 + 16), 1);
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized ModelEntity.init(mesh:materials:collisionShape:mass:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = Entity.init()();
  type metadata accessor for _Proto_MeshDeformation_v1.Resource();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *&v40 = v5;
  swift_retain_n();

  _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA05ModelD0V_Tt0B5(v7, a2, 0, v6);
  v8 = *(v5 + 16);

  if (v8 == *(v5 + 16))
  {
    v9 = one-time initialization token for default;

    if (v9 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = static CollisionFilter.default;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C1898160;
  *(v11 + 32) = a3;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA09CollisionD0V_TtB5(v11, 0, v10, 0, v5);

  v12 = one-time initialization token for default;

  if (v12 != -1)
  {
    swift_once();
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v13 = static PhysicsMaterialResource.default;
  v14 = *(a3 + 16);

  REMakeMassFrameFromShapeAssetAndMass();
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v15 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  if (MEMORY[0x1C68FE290](*(v15 + 16)))
  {
    REPhysicsSimulationServiceGetDefaultInitialLinearDamping();
    v22 = v16;
    REPhysicsSimulationServiceGetDefaultInitialAngularDamping();
    v21 = v17;

    v19 = vand_s8(__PAIR64__(v21, v22), vcgez_f32(__PAIR64__(v21, v22)));
  }

  else
  {

    v19 = 0x3E8000003CA3D70ALL;
  }

  LOBYTE(v23) = 2;
  LODWORD(v24) = v43;
  v25 = v42;
  v26 = v40;
  v27 = v41;
  *v28 = v13;
  memset(&v28[8], 0, 64);
  *v29 = 0;
  v29[8] = 1;
  *&v29[12] = v19;
  v30 = v23;
  v31 = v24;
  v34 = v41;
  v35 = *v28;
  v32 = v42;
  v33 = v40;
  *(v39 + 12) = *&v29[4];
  v38 = *&v28[48];
  v39[0] = 0uLL;
  v36 = *&v28[16];
  v37 = *&v28[32];
  destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(&v30, v18);
  v48 = v38;
  v49[0] = v39[0];
  *(v49 + 12) = *(v39 + 12);
  v44 = v34;
  v45 = v35;
  v46 = v36;
  v47 = v37;
  v40 = v30;
  v41 = v31;
  v42 = v32;
  v43 = v33;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA011PhysicsBodyD0V_TtB5(&v40, 0, v5);
  outlined destroy of PhysicsBodyComponent(&v23);
  if (REShadowsGetEnableDefaultShadows())
  {
    MEMORY[0x1C68FCEC0](*(v5 + 16), 1);
  }

  return v5;
}

uint64_t specialized ModelEntity.init(mesh:materials:collisionShapes:mass:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = Entity.init()();
  type metadata accessor for _Proto_MeshDeformation_v1.Resource();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *&v38 = v5;
  swift_retain_n();

  _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA05ModelD0V_Tt0B5(v7, a2, 0, v6);
  v8 = *(v5 + 16);

  if (v8 == *(v5 + 16))
  {
    v9 = one-time initialization token for default;

    if (v9 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA09CollisionD0V_TtB5(a3, 0, static CollisionFilter.default, 0, v5);

  v10 = specialized static ShapeResource.__makeShapeResource(_:)(a3);

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v11 = static PhysicsMaterialResource.default;
  v12 = *(v10 + 16);

  REMakeMassFrameFromShapeAssetAndMass();
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v13 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  if (MEMORY[0x1C68FE290](*(v13 + 16)))
  {
    REPhysicsSimulationServiceGetDefaultInitialLinearDamping();
    v20 = v14;
    REPhysicsSimulationServiceGetDefaultInitialAngularDamping();
    v19 = v15;

    v17 = vand_s8(__PAIR64__(v19, v20), vcgez_f32(__PAIR64__(v19, v20)));
  }

  else
  {

    v17 = 0x3E8000003CA3D70ALL;
  }

  LOBYTE(v21) = 2;
  LODWORD(v22) = v41;
  v23 = v40;
  v24 = v38;
  v25 = v39;
  *v26 = v11;
  memset(&v26[8], 0, 64);
  *v27 = 0;
  v27[8] = 1;
  *&v27[12] = v17;
  v28 = v21;
  v29 = v22;
  v32 = v39;
  v33 = *v26;
  v30 = v40;
  v31 = v38;
  *(v37 + 12) = *&v27[4];
  v36 = *&v26[48];
  v37[0] = 0uLL;
  v34 = *&v26[16];
  v35 = *&v26[32];
  destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(&v28, v16);
  v46 = v36;
  v47[0] = v37[0];
  *(v47 + 12) = *(v37 + 12);
  v42 = v32;
  v43 = v33;
  v44 = v34;
  v45 = v35;
  v38 = v28;
  v39 = v29;
  v40 = v30;
  v41 = v31;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA011PhysicsBodyD0V_TtB5(&v38, 0, v5);
  outlined destroy of PhysicsBodyComponent(&v21);
  if (REShadowsGetEnableDefaultShadows())
  {
    MEMORY[0x1C68FCEC0](*(v5 + 16), 1);
  }

  return v5;
}

uint64_t outlined destroy of __DownsamplingStrategy?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit22__DownsamplingStrategy_pSgMd, &_s10RealityKit22__DownsamplingStrategy_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void PointLightComponent.init(cgColor:intensity:attenuationRadius:)(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  *(a2 + 16) = 0x40000000;
  *a2 = a1;
  *(a2 + 8) = a3;
  *(a2 + 12) = a4;
}

void static PointLightComponent.__fromCore(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  REPointLightComponentGetColorGamut3F();
  REPointLightComponentGetIntensity();
  v5 = v4;
  REPointLightComponentGetAttenuationRadius();
  v7 = v6;
  REPointLightComponentGetAttenuationFalloffExponent();
  v9 = v8;
  v10 = RECreateCGColorFromColorGamut();

  *a2 = v10;
  *(a2 + 8) = v5;
  *(a2 + 12) = v7;
  *(a2 + 16) = v9;
  v11 = *MEMORY[0x1E69E9840];
}

void PointLightComponent.init(cgColor:intensity:attenuationRadius:attenuationFalloffExponent:)(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>)
{
  *a2 = a1;
  *(a2 + 8) = a3;
  *(a2 + 12) = a4;
  *(a2 + 16) = a5;
}

uint64_t PointLightComponent.__toCore(_:)(uint64_t *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *v1;
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  RECGColorToColorGamut();
  REPointLightComponentSetColorGamut3F();
  REPointLightComponentSetIntensity();
  REPointLightComponentSetAttenuationRadius();
  REPointLightComponentSetAttenuationFalloffExponent();
  result = RENetworkMarkComponentDirty();
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

double PointLightComponent.Shadow.init()@<D0>(uint64_t a1@<X8>)
{
  result = 2048.00048;
  *a1 = 0x40A000003F800000;
  *(a1 + 8) = 3;
  *(a1 + 12) = 0;
  *(a1 + 16) = 1;
  *(a1 + 20) = 0;
  *(a1 + 24) = 1;
  return result;
}

void PointLightComponent.Shadow.init(depthBias:)(uint64_t a1@<X8>, float a2@<S0>)
{
  *a1 = a2;
  *(a1 + 4) = 1084227584;
  *(a1 + 8) = 3;
  *(a1 + 12) = 0;
  *(a1 + 16) = 1;
  *(a1 + 20) = 0;
  *(a1 + 24) = 1;
}

uint64_t static PointLightComponent.Shadow.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  REPointLightShadowMapComponentGetDepthBias();
  v5 = v4;
  if (REPointLightShadowMapComponentGetCullModeEx())
  {
    v6 = 1;
  }

  else
  {
    v6 = 3;
  }

  ZNear = REPointLightShadowMapComponentGetZNear();
  result = REPointLightShadowMapComponentGetZFar();
  *a2 = v5;
  *(a2 + 4) = 1084227584;
  *(a2 + 8) = v6;
  *(a2 + 12) = 0;
  *(a2 + 16) = ZNear ^ 1;
  *(a2 + 20) = 0;
  *(a2 + 24) = result ^ 1;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

int *PointLightComponent.Shadow.zNear.setter(int *result)
{
  v2 = *result;
  v3 = *(result + 4);
  if (v3)
  {
    v2 = 0;
  }

  *(v1 + 12) = v2;
  *(v1 + 16) = v3;
  return result;
}

int *PointLightComponent.Shadow.zFar.setter(int *result)
{
  v2 = *result;
  v3 = *(result + 4);
  if (v3)
  {
    v2 = 0;
  }

  *(v1 + 20) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t PointLightComponent.Shadow.__toCore(_:)(uint64_t *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = v1[3];
  v6 = *(v1 + 16);
  v7 = v1[5];
  v8 = *(v1 + 24);
  REPointLightShadowMapComponentSetDepthBias();
  REPointLightShadowMapComponentSetZNear();
  REPointLightShadowMapComponentSetZFar();
  RENetworkMarkComponentDirty();
  result = REPointLightShadowMapComponentSetCullMode();
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

float key path getter for PointLightComponent.attenuationFalloffExponent : PointLightComponent@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 16);
  *a2 = result;
  return result;
}

float key path setter for PointLightComponent.attenuationFalloffExponent : PointLightComponent(float *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 16) = *a1;
  return result;
}

float (*PointLightComponent.attenuationFalloffExponent.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return PointLightComponent.attenuationFalloffExponent.modify;
}

float PointLightComponent.attenuationFalloffExponent.modify(float *a1)
{
  result = a1[2];
  *(*a1 + 16) = result;
  return result;
}

_BYTE *(*PointLightComponent.Shadow.cullModeOverride.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return DirectionalLightComponent.Shadow.cullModeOverride.modify;
}

BOOL static PointLightComponent.Shadow.ShadowClippingPlane.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4))
  {
    return (*(a2 + 4) & 1) != 0;
  }

  if (*(a2 + 4))
  {
    return 0;
  }

  return *a1 == *a2;
}

void PointLightComponent.Shadow.zNear.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + 12);
  }

  *a1 = v3;
  *(a1 + 4) = v2;
}

uint64_t *(*PointLightComponent.Shadow.zNear.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + 12);
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v2;
  return PointLightComponent.Shadow.zNear.modify;
}

uint64_t *PointLightComponent.Shadow.zNear.modify(uint64_t *result)
{
  v1 = *result;
  v2 = *(result + 2);
  v3 = *(result + 12);
  if (v3)
  {
    v2 = 0;
  }

  *(v1 + 12) = v2;
  *(v1 + 16) = v3;
  return result;
}

void PointLightComponent.Shadow.zFar.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + 20);
  }

  *a1 = v3;
  *(a1 + 4) = v2;
}

uint64_t *(*PointLightComponent.Shadow.zFar.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + 20);
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v2;
  return PointLightComponent.Shadow.zFar.modify;
}

uint64_t *PointLightComponent.Shadow.zFar.modify(uint64_t *result)
{
  v1 = *result;
  v2 = *(result + 2);
  v3 = *(result + 12);
  if (v3)
  {
    v2 = 0;
  }

  *(v1 + 20) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t PointLightComponent.Shadow.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v24 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v24 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v23 - v9;
  v11 = *(v1 + 8);
  v12 = *(v1 + 12);
  v13 = *(v1 + 16);
  v14 = *(v1 + 20);
  v15 = *(v1 + 24);
  v8.n128_u64[0] = *v1;
  v23 = v8;
  v26 = v8.n128_u64[0];
  v27 = v11;
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v31 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C189FFC0;
  *(v16 + 32) = 0x6169426874706564;
  *(v16 + 40) = 0xE900000000000073;
  v17 = MEMORY[0x1E69E6448];
  *(v16 + 48) = v23.n128_u32[0];
  *(v16 + 72) = v17;
  *(v16 + 80) = 0xD000000000000010;
  *(v16 + 88) = 0x80000001C18DE1F0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22MaterialParameterTypesV11FaceCullingOSgMd, &_s17RealityFoundation22MaterialParameterTypesV11FaceCullingOSgMR);
  *(v16 + 96) = v11;
  *(v16 + 120) = v18;
  *(v16 + 128) = 0x7261654E7ALL;
  *(v16 + 136) = 0xE500000000000000;
  if (v13)
  {
    v19 = 0;
  }

  else
  {
    v19 = v12;
  }

  *(v16 + 144) = v19;
  *(v16 + 148) = v13;
  *(v16 + 168) = &type metadata for PointLightComponent.Shadow.ShadowClippingPlane;
  *(v16 + 176) = 1918977658;
  *(v16 + 184) = 0xE400000000000000;
  *(v16 + 216) = &type metadata for PointLightComponent.Shadow.ShadowClippingPlane;
  if (v15)
  {
    v20 = 0;
  }

  else
  {
    v20 = v14;
  }

  *(v16 + 192) = v20;
  *(v16 + 196) = v15;
  v21 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E75D8], v24);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

BOOL specialized static PointLightComponent.Shadow.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  v6 = *(a1 + 16);
  v7 = *(a1 + 20);
  v8 = *(a1 + 24);
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  if (v4 == 3)
  {
    if (v9 != 3)
    {
      return 0;
    }

    goto LABEL_11;
  }

  result = 0;
  if (v9 != 3 && v4 == v9)
  {
LABEL_11:
    if (v6)
    {
      if (!*(a2 + 16))
      {
        return 0;
      }
    }

    else
    {
      if (v5 != *(a2 + 12))
      {
        v10 = 1;
      }

      if (v10)
      {
        return 0;
      }
    }

    if ((v8 & 1) == 0)
    {
      if (v7 != *(a2 + 20))
      {
        v11 = 1;
      }

      return (v11 & 1) == 0;
    }

    return (*(a2 + 24) & 1) != 0;
  }

  return result;
}

BOOL specialized static PointLightComponent.== infix(_:_:)(float *a1, float *a2)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = *a2;
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  type metadata accessor for CGColorRef(0);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef();
  v10 = static _CFObject.== infix(_:_:)();
  result = 0;
  if ((v10 & 1) != 0 && v3 == v7 && v4 == v8)
  {
    return v5 == v9;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PointLightComponent.Shadow(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for PointLightComponent.Shadow(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t one-time initialization function for noTargetSceneIdentifier()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for UUID();
  __swift_allocate_value_buffer(v4, static __RKChangeSceneAction.noTargetSceneIdentifier);
  v5 = __swift_project_value_buffer(v4, static __RKChangeSceneAction.noTargetSceneIdentifier);
  UUID.init(uuidString:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t static __RKChangeSceneAction.noTargetSceneIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for noTargetSceneIdentifier != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for UUID();
  v3 = __swift_project_value_buffer(v2, static __RKChangeSceneAction.noTargetSceneIdentifier);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}