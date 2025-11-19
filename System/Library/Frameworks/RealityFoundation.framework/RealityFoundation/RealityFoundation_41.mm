Swift::Int _sSh2eeoiySbShyxG_ABtFZ17RealityFoundation20InputTargetComponentV06DirectD4TypeV0gD6OptionO_Tt1g5(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    Hasher.init(_seed:)();
    MEMORY[0x1C68F4C10](v13);
    result = Hasher._finalize()();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (v13 != *(*(a2 + 48) + v16))
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

Swift::Int InputTargetComponent.DirectInputType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance InputTargetComponent.DirectInputType@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation20InputTargetComponentV06DirectD4TypeV0gD6OptionO_SayAJGTt0g5Tf4g_n(a1);

  *a2 = v3;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance InputTargetComponent.DirectInputType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InputTargetComponent.DirectInputType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t InputTargetComponent.init(_:)@<X0>(uint64_t a1@<X8>)
{
  AllowsDirectInput = REInputTargetComponentGetAllowsDirectInput();
  AllowsIndirectInput = REInputTargetComponentGetAllowsIndirectInput();
  v4 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation20InputTargetComponentV06DirectD4TypeV0gD6OptionO_SayAJGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  if (REInputTargetComponentGetAllowsDirectTouchInput())
  {
    v5 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation20InputTargetComponentV06DirectD4TypeV0gD6OptionO_SayAJGTt0g5Tf4g_n(&outlined read-only object #0 of InputTargetComponent.init(_:));
    specialized Set.formUnion<A>(_:)(v5);
  }

  if (REInputTargetComponentGetAllowsDirectPinchInput())
  {
    v6 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation20InputTargetComponentV06DirectD4TypeV0gD6OptionO_SayAJGTt0g5Tf4g_n(&outlined read-only object #1 of InputTargetComponent.init(_:));
    specialized Set.formUnion<A>(_:)(v6);
  }

  if (AllowsIndirectInput)
  {
    AllowsDirectInput |= 2u;
  }

  result = REInputTargetComponentIsEnabled();
  *a1 = result;
  *(a1 + 4) = AllowsDirectInput;
  *(a1 + 8) = v4;
  return result;
}

uint64_t InputTargetComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = *(v1 + 1);
  REInputTargetComponentSetEnabled();
  if (v4)
  {
    specialized Set.contains(_:)(0, v5);
    REInputTargetComponentSetAllowsDirectTouchInput();
    specialized Set.contains(_:)(1, v5);
  }

  else
  {
    REInputTargetComponentSetAllowsDirectTouchInput();
  }

  REInputTargetComponentSetAllowsDirectPinchInput();
  REInputTargetComponentSetAllowsIndirectInput();

  return RENetworkMarkComponentDirty();
}

uint64_t static InputTargetComponent.__coreComponentType.getter@<X0>(_DWORD *a1@<X8>)
{
  type metadata accessor for REComponentType(0);
  v6[3] = v2;
  LODWORD(v6[0]) = 4010;
  outlined init with copy of Any(v6, v5);
  swift_dynamicCast();
  *a1 = v4;
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

Swift::Int static InputTargetComponent.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1))
  {
    return _sSh2eeoiySbShyxG_ABtFZ17RealityFoundation20InputTargetComponentV06DirectD4TypeV0gD6OptionO_Tt1g5(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Component.__coreComponentType.getter in conformance InputTargetComponent@<X0>(_DWORD *a1@<X8>)
{
  type metadata accessor for REComponentType(0);
  v6[3] = v2;
  LODWORD(v6[0]) = 4010;
  outlined init with copy of Any(v6, v5);
  swift_dynamicCast();
  *a1 = v4;
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

Swift::Int protocol witness for static Equatable.== infix(_:_:) in conformance InputTargetComponent(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1))
  {
    return _sSh2eeoiySbShyxG_ABtFZ17RealityFoundation20InputTargetComponentV06DirectD4TypeV0gD6OptionO_Tt1g5(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t InputTargetComponent.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17[-v8];
  v11 = *(v0 + 4);
  v12 = *(v0 + 8);
  v17[0] = *v0;
  v10 = v17[0];
  v18 = v11;
  v19 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C1897FC0;
  *(v13 + 32) = 0x656C62616E457369;
  *(v13 + 40) = 0xE900000000000064;
  v14 = MEMORY[0x1E69E6370];
  *(v13 + 48) = v10;
  *(v13 + 72) = v14;
  *(v13 + 80) = 0xD000000000000011;
  *(v13 + 88) = 0x80000001C18E9D00;
  *(v13 + 120) = &type metadata for InputTargetComponent.InputType;
  *(v13 + 96) = v11;
  v15 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E75D8], v1);

  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t specialized Set.hash(into:)(__int128 *a1, uint64_t a2)
{
  v18 = a1[2];
  v19 = a1[3];
  v20 = *(a1 + 8);
  v16 = *a1;
  v17 = a1[1];
  Hasher._finalize()();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v15)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v15 = Hasher._finalize()();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1C68F4C10](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

Swift::Int specialized Set.hash(into:)(__int128 *a1, uint64_t a2)
{
  v15 = a1[2];
  v16 = a1[3];
  v17 = *(a1 + 8);
  v13 = *a1;
  v14 = a1[1];
  result = Hasher._finalize()();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + (v11 | (v10 << 6)));
    Hasher.init(_seed:)();
    MEMORY[0x1C68F4C10](v12);
    result = Hasher._finalize()();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x1C68F4C10](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type InputTargetComponent.InputType and conformance InputTargetComponent.InputType()
{
  result = lazy protocol witness table cache variable for type InputTargetComponent.InputType and conformance InputTargetComponent.InputType;
  if (!lazy protocol witness table cache variable for type InputTargetComponent.InputType and conformance InputTargetComponent.InputType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InputTargetComponent.InputType and conformance InputTargetComponent.InputType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InputTargetComponent.InputType and conformance InputTargetComponent.InputType;
  if (!lazy protocol witness table cache variable for type InputTargetComponent.InputType and conformance InputTargetComponent.InputType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InputTargetComponent.InputType and conformance InputTargetComponent.InputType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InputTargetComponent.InputType and conformance InputTargetComponent.InputType;
  if (!lazy protocol witness table cache variable for type InputTargetComponent.InputType and conformance InputTargetComponent.InputType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InputTargetComponent.InputType and conformance InputTargetComponent.InputType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InputTargetComponent.InputType and conformance InputTargetComponent.InputType;
  if (!lazy protocol witness table cache variable for type InputTargetComponent.InputType and conformance InputTargetComponent.InputType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InputTargetComponent.InputType and conformance InputTargetComponent.InputType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InputTargetComponent.DirectInputType and conformance InputTargetComponent.DirectInputType()
{
  result = lazy protocol witness table cache variable for type InputTargetComponent.DirectInputType and conformance InputTargetComponent.DirectInputType;
  if (!lazy protocol witness table cache variable for type InputTargetComponent.DirectInputType and conformance InputTargetComponent.DirectInputType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InputTargetComponent.DirectInputType and conformance InputTargetComponent.DirectInputType);
  }

  return result;
}

uint64_t outlined destroy of (_Proto_MeshScope_v1, _Proto_MeshScope_v1)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19_Proto_MeshScope_v1O_ACtMd, &_s17RealityFoundation19_Proto_MeshScope_v1O_ACtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __RKEntityAnimateAction.perform(with:)()
{
  v3[0] = StaticString.description.getter();
  v3[1] = v0;
  MEMORY[0x1C68F3410](8250, 0xE200000000000000);
  v1 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v1, v3);

  return 1;
}

Swift::Void __swiftcall __RKEntityAnimateAction.stopAnimations()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    if (*(v0 + 144) == 1)
    {
      v2 = *(v1 + 16);
      v3 = *(v0 + 16);

      RERenderOptionsComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      if (RERenderOptionsComponentGetVisibilityMode() || (v4 = *(v1 + 16), (REEntityGetSelfEnabled() & 1) == 0))
      {
        v5 = *(v1 + 16);
        if (REEntityGetSelfEnabled())
        {
          MEMORY[0x1C68F9730](*(v1 + 16), 0);
          v6 = *(v1 + 16);
          RENetworkMarkEntityMetadataDirty();
        }
      }
    }

    else
    {
      v7 = *(v0 + 16);
    }

    v8 = *(v1 + 16);
    REAnimationComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      if (REAnimationComponentHasRunningAnimations())
      {
        if ((REAnimationComponentAllAnimationsCompleted() & 1) != 0 || (swift_beginAccess(), *(v0 + 104) == 1) && *(v0 + 96) == 3)
        {
          REAnimationComponentStopAllAnimations();
          RENetworkMarkComponentDirty();
        }
      }
    }

    *(v0 + 168) = 0;
    *(v0 + 176) = 1;
  }
}

uint64_t __RKEntityAnimateAction.setAudioAnimationParameters(on:mute:gain:)(uint64_t a1, char a2, double a3)
{
  v6 = *(a1 + 16);
  REAudioAnimationComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    REAudioAnimationComponentSetMute();
    REAudioAnimationComponentSetLinearGain();
  }

  v7 = *(a1 + 16);
  if (REEntityGetChildCount() < 1)
  {
LABEL_17:
  }

  v8 = 0;
  while (1)
  {
    v9 = *(a1 + 16);
    result = REEntityGetChildCount();
    if (v8 >= result)
    {
      break;
    }

    v11 = *(a1 + 16);
    result = REEntityGetChild();
    if (!result)
    {
      goto LABEL_23;
    }

    v12 = result;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v13 = swift_dynamicCastClassUnconditional();
LABEL_9:
      v14 = v13;
      goto LABEL_13;
    }

    result = REEntityIsBeingDestroyed();
    if (result)
    {
      goto LABEL_22;
    }

    v15 = specialized static Entity.entityInfoType(_:)();
    if (!v15)
    {
      v13 = makeEntity(for:)(v12);
      goto LABEL_9;
    }

    v14 = (*(v15 + 232))();
    v16 = *(v14 + 16);

    MEMORY[0x1C68F9740](v16, 0);
    *(v14 + 16) = v12;
    MEMORY[0x1C68F9740](v12, v14);

LABEL_13:
    v17 = *(a1 + 16);
    result = REEntityGetChildCount();
    if (v8 >= result)
    {
      goto LABEL_21;
    }

    ++v8;
    __RKEntityAnimateAction.setAudioAnimationParameters(on:mute:gain:)(v14, a2 & 1, a3);

    v18 = *(a1 + 16);
    if (v8 >= REEntityGetChildCount())
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t __RKEntityAnimateAction._setupAnimations(entity:assetManager:andPlay:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(a1 + 16);
  DefaultAnimation = REAnimationLibraryComponentCreateDefaultAnimation();
  if (!DefaultAnimation)
  {
    return 0;
  }

  v9 = DefaultAnimation;
  type metadata accessor for AnimationResource();
  v10 = swift_allocObject();
  v10[2] = v9;
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
    v12 = 0xE000000000000000;
  }

  v10[3] = Name;
  v10[4] = v12;
  RERetain();
  REAssetSetSwiftObject();
  AnimationResource.definition.getter(v72);
  v14 = *(v3 + 128);
  if (v14 == 0.0)
  {
    v15 = v73;
    v16 = v74;
    __swift_project_boxed_opaque_existential_1(v72, v73);
    v14 = (*(v16 + 272))(v15, v16);
  }

  v17 = *(v3 + 112);
  if (v17)
  {
    v18 = v14;
    if (v17 >= 2)
    {
      v18 = v14 * v17;
    }
  }

  else
  {
    v18 = INFINITY;
  }

  outlined init with copy of __REAssetService(v72, v71);
  v19 = *(v3 + 136);
  if (v19 < 4)
  {
    if (one-time initialization token for forwards != -1)
    {
      swift_once();
    }

    v20 = static AnimationFillMode.forwards;
    v21 = *(v4 + 120);
    if (*(v4 + 137))
    {
      v22 = -*(v4 + 140);
    }

    else
    {
      v22 = *(v4 + 140);
    }

    outlined consume of BindTarget?(0, 0, 0xFFu);
    LOBYTE(v50) = 0;
    LOBYTE(v47[0]) = 0;
    type metadata accessor for TimelineDefinition();
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    v24 = v50;
    v25 = v47[0];
    LOBYTE(v47[0]) = 0;
    v49 = 0;
    v48 = 0;
    *&v50 = v21;
    WORD4(v50) = 0;
    *&v51 = v14 + v21;
    WORD4(v51) = 0;
    *&v52 = v18;
    WORD4(v52) = 0;
    *&v53 = 0;
    BYTE8(v53) = 0;
    *&v54 = 0;
    BYTE8(v54) = 0;
    *(&v54 + 3) = v22;
    LOBYTE(v55) = 0;
    BYTE1(v55) = v19;
    *(&v55 + 1) = 0;
    *v56 = 0;
    *&v56[8] = xmmword_1C18BCD00;
    *&v56[24] = 0xE000000000000000;
    LOBYTE(v57) = 0;
    DWORD1(v57) = 0;
    BYTE8(v57) = v24;
    BYTE9(v57) = v20;
    WORD5(v57) = v25;
    v58 = v23;
    outlined init with copy of __REAssetService(v71, v47);
    AnimationView.source.setter(v47);
    __swift_destroy_boxed_opaque_existential_1(v71);
    v65 = *v56;
    v66 = *&v56[16];
    v67 = v57;
    v61 = v52;
    v62 = v53;
    v68 = v58;
    v63 = v54;
    v64 = v55;
    v59 = v50;
    v60 = v51;
    v47[3] = &type metadata for AnimationView;
    v47[4] = &protocol witness table for AnimationView;
    v26 = swift_allocObject();
    v47[0] = v26;
    v27 = v66;
    *(v26 + 112) = v65;
    *(v26 + 128) = v27;
    *(v26 + 144) = v67;
    *(v26 + 160) = v68;
    v28 = v62;
    *(v26 + 48) = v61;
    *(v26 + 64) = v28;
    v29 = v64;
    *(v26 + 80) = v63;
    *(v26 + 96) = v29;
    v30 = v60;
    *(v26 + 16) = v59;
    *(v26 + 32) = v30;
    v31 = static AnimationFillMode.forwards;
    outlined init with copy of AnimationView(&v59, &v50);
    outlined consume of BindTarget?(0, 0, 0xFFu);
    LOBYTE(v50) = 0;
    v46[0] = 0;
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    v33 = v50;
    v34 = v46[0];
    v46[0] = 0;
    v49 = 0;
    v48 = 0;
    v46[48] = 0;
    *&v50 = 0;
    WORD4(v50) = 1;
    *&v51 = 0;
    WORD4(v51) = 1;
    *&v52 = v18;
    WORD4(v52) = 0;
    *&v53 = 0;
    BYTE8(v53) = 0;
    *&v54 = 0;
    BYTE8(v54) = 0;
    HIDWORD(v54) = 1065353216;
    LOWORD(v55) = 0;
    *(&v55 + 1) = 0;
    *v56 = 0;
    *&v56[8] = xmmword_1C18BCD00;
    *&v56[24] = 0xE000000000000000;
    LOBYTE(v57) = 0;
    DWORD1(v57) = 0;
    BYTE8(v57) = v33;
    BYTE9(v57) = v31;
    WORD5(v57) = v34;
    v58 = v32;
    outlined init with copy of __REAssetService(v47, v46);
    AnimationView.source.setter(v46);
    __swift_destroy_boxed_opaque_existential_1(v47);
    v69[6] = *v56;
    v69[7] = *&v56[16];
    v69[8] = v57;
    v69[2] = v52;
    v69[3] = v53;
    v70 = v58;
    v69[4] = v54;
    v69[5] = v55;
    v69[0] = v50;
    v69[1] = v51;
    v35 = AnimationView.createResource()();
    if (v35)
    {
      v36 = *(v35 + 16);
      REAnimationSceneAssetCreateWithTimeline();
      v37 = *(a1 + 16);
      REAnimationComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      *&v50 = 2;
      DWORD2(v50) = 256;
      *&v51 = "AnimateAction";
      BYTE8(v51) = 0;
      v13 = REAnimationComponentPlay();
      if ((a3 & 1) == 0)
      {
        REAnimationComponentPauseAnimation();
        RENetworkMarkComponentDirty();
      }

      v38 = *(a1 + 16);
      if ((REEntityGetSelfEnabled() & 1) == 0)
      {
        MEMORY[0x1C68F9730](*(a1 + 16), 0);
        v39 = *(a1 + 16);
        RENetworkMarkEntityMetadataDirty();
        v40 = *(a1 + 16);
        RERenderOptionsComponentGetComponentType();
        REEntityGetOrAddComponentByClass();
        RERenderOptionsComponentSetVisibilityMode();
        RENetworkMarkComponentDirty();
        MEMORY[0x1C68F9730](*(a1 + 16), 1);
        v41 = *(a1 + 16);
        RENetworkMarkEntityMetadataDirty();
      }

      v42 = *(a1 + 16);
      RERenderOptionsComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      if (RERenderOptionsComponentGetVisibilityMode())
      {
        v43 = 1;
      }

      else
      {
        v44 = *(a1 + 16);
        v43 = REEntityGetSelfEnabled() ^ 1;
      }

      *(v4 + 144) = v43;
      RERelease();

      outlined destroy of AnimationView(v69);
      outlined destroy of AnimationView(&v59);
      __swift_destroy_boxed_opaque_existential_1(v72);
      RERelease();
    }

    else
    {

      outlined destroy of AnimationView(v69);
      outlined destroy of AnimationView(&v59);
      __swift_destroy_boxed_opaque_existential_1(v72);
      RERelease();
      return 0;
    }

    return v13;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Bool __swiftcall __RKEntityAnimateAction.stop()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v1 + 16);
    v3 = *(v0 + 16);

    REAnimationComponentGetComponentType();
    if (REEntityGetComponentByClass() && REAnimationComponentHasRunningAnimations() && (*(v0 + 176) & 1) == 0)
    {
      v4 = *(v0 + 168);
      REAnimationComponentPauseAnimation();
    }
  }

  return 1;
}

uint64_t __RKEntityAnimateAction.clone(matching:newEntity:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = v1[2];
  if (v3 && *(a1 + 16) == *(v3 + 16))
  {
    type metadata accessor for __RKEntityAnimateAction();
    v5 = swift_allocObject();
    *(v5 + 120) = 0;
    *(v5 + 128) = 0;
    *(v5 + 112) = 1;
    *(v5 + 136) = 1;
    *(v5 + 140) = 1065353216;
    *(v5 + 144) = 0;
    *(v5 + 160) = 0;
    *(v5 + 168) = 0;
    *(v5 + 152) = 0x3FF0000000000000;
    *(v5 + 176) = 1;
    *(v5 + 184) = 0u;
    *(v5 + 200) = 0u;
    *(v5 + 216) = 0u;
    *(v5 + 232) = 0u;
    *(v5 + 248) = 0u;

    return __RKEntityAction.init(targetEntity:)(v6);
  }

  else
  {
    (*(*v1 + 464))(v8, 0);
    type metadata accessor for __RKEntityAction();
    if (swift_dynamicCast())
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __RKEntityAnimateAction.__ivar_destroyer()
{
  v1 = *(v0 + 160);

  outlined destroy of BodyTrackingComponent?(v0 + 184, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return outlined destroy of BodyTrackingComponent?(v0 + 224, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
}

uint64_t __RKEntityAnimateAction.__deallocating_deinit()
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
  v6 = *(v0 + 160);

  outlined destroy of BodyTrackingComponent?(v0 + 184, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 224, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);

  return swift_deallocClassInstance();
}

uint64_t __RKEntityStartAnimateAction.__allocating_init(targetEntity:loopCount:multiplePerformBehavior:clipStart:clipDuration:clipReversed:animationSpeed:clipReverses:muteAudio:audioGain:targetAnimationEntity:)(uint64_t a1, uint64_t a2, char *a3, char a4, char a5, char a6, uint64_t a7, double a8, double a9, float a10, double a11)
{
  v22 = swift_allocObject();
  v23 = *a3;
  *(v22 + 120) = 0;
  *(v22 + 128) = 0;
  *(v22 + 112) = 1;
  *(v22 + 136) = 1;
  *(v22 + 140) = 1065353216;
  *(v22 + 144) = 0;
  *(v22 + 160) = 0;
  *(v22 + 168) = 0;
  *(v22 + 152) = 0x3FF0000000000000;
  *(v22 + 176) = 1;
  *(v22 + 184) = 0u;
  *(v22 + 200) = 0u;
  *(v22 + 216) = 0u;
  *(v22 + 232) = 0u;
  *(v22 + 248) = 0u;

  v25 = __RKEntityAction.init(targetEntity:)(v24);
  if (a1)
  {

    v26 = *(v25 + 160);
    *(v25 + 160) = a7;

    swift_beginAccess();
    *(v25 + 105) = v23;
    *(v25 + 112) = a2;
    *(v25 + 137) = a4 & 1;
    *(v25 + 120) = a8;
    *(v25 + 128) = a9;
    *(v25 + 140) = a10;
    if (a5)
    {
      v27 = 3;
    }

    else
    {
      v27 = 1;
    }

    if (a2 == 1)
    {
      v27 = 0;
    }

    *(v25 + 136) = v27;

    *(v25 + 145) = a6 & 1;
    *(v25 + 152) = a11;
  }

  else
  {
  }

  return v25;
}

uint64_t __RKEntityStartAnimateAction.init(targetEntity:loopCount:multiplePerformBehavior:clipStart:clipDuration:clipReversed:animationSpeed:clipReverses:muteAudio:audioGain:targetAnimationEntity:)(uint64_t a1, uint64_t a2, char *a3, char a4, char a5, char a6, uint64_t a7, double a8, double a9, float a10, double a11)
{
  v22 = *a3;
  *(v11 + 120) = 0;
  *(v11 + 128) = 0;
  *(v11 + 112) = 1;
  *(v11 + 136) = 1;
  *(v11 + 140) = 1065353216;
  *(v11 + 144) = 0;
  *(v11 + 160) = 0;
  *(v11 + 168) = 0;
  *(v11 + 152) = 0x3FF0000000000000;
  *(v11 + 176) = 1;
  *(v11 + 184) = 0u;
  *(v11 + 200) = 0u;
  *(v11 + 216) = 0u;
  *(v11 + 232) = 0u;
  *(v11 + 248) = 0u;

  v24 = __RKEntityAction.init(targetEntity:)(v23);
  if (a1)
  {

    v25 = *(v24 + 160);
    *(v24 + 160) = a7;

    swift_beginAccess();
    *(v24 + 105) = v22;
    *(v24 + 112) = a2;
    *(v24 + 137) = a4 & 1;
    *(v24 + 120) = a8;
    *(v24 + 128) = a9;
    *(v24 + 140) = a10;
    if (a5)
    {
      v26 = 3;
    }

    else
    {
      v26 = 1;
    }

    if (a2 == 1)
    {
      v26 = 0;
    }

    *(v24 + 136) = v26;

    *(v24 + 145) = a6 & 1;
    *(v24 + 152) = a11;
  }

  else
  {
  }

  return v24;
}

uint64_t __RKEntityStartAnimateAction.perform(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGAF15AnimationEventsO08PlaybackL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGAF15AnimationEventsO08PlaybackL0VGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v65 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGAF15AnimationEventsO08PlaybackL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGAF15AnimationEventsO08PlaybackL0VGMR);
  v72 = *(v73 - 1);
  v9 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v11 = v65 - v10;
  v74 = *(a1 + 8);
  swift_beginAccess();
  v12 = *(v2 + 16);
  v82 = 91;
  v83 = 0xE100000000000000;
  if (v12)
  {
    v78 = 0;
    v79 = 0xE000000000000000;
    v87 = v12;

    _print_unlocked<A, B>(_:_:)();
    v13 = v78;
    v14 = v79;
  }

  else
  {
    v14 = 0xE300000000000000;
    v13 = 7104878;
  }

  MEMORY[0x1C68F3410](v13, v14);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v15 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v15);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v17 = v82;
  v16 = v83;
  v18 = *(v2 + 16);
  if (!v18)
  {
    v23 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v23, &v82);
    goto LABEL_15;
  }

  v19 = *(v18 + 16);
  v20 = *(v2 + 16);

  REAnimationComponentGetComponentType();
  if (!REEntityGetComponentByClass() || (*(v2 + 176) & 1) != 0 || (v21 = *(v2 + 168), !REAnimationComponentIsPaused()))
  {
    swift_beginAccess();
    if (*(v2 + 104) == 1 && *(v2 + 96) == 1)
    {
      swift_beginAccess();
      if (*(v2 + 105))
      {
        if (*(v2 + 105) == 1)
        {

LABEL_15:

          return 0;
        }

        v63 = *(v2 + 96);
        v64 = *(v2 + 104);
        *(v2 + 96) = 2;
        v22 = 1;
        *(v2 + 104) = 1;
        v82 = v63;
        LOBYTE(v83) = v64;
        __RKEntityAction.state.didset(&v82);
LABEL_23:

        return v22;
      }

      __RKEntityAnimateAction.stopAnimations()();
    }

    __RKEntityAnimateAction.setAudioAnimationParameters(on:mute:gain:)(v18, *(v2 + 145), *(v2 + 152));
    v24 = *(v18 + 16);
    SceneNullable = REEntityGetSceneNullable();
    v71 = v4;
    v70 = v5;
    v69 = v8;
    v68 = v16;
    v67 = v17;
    if (SceneNullable && (SceneNullable = RESceneGetECSManagerNullable()) != 0)
    {
      ServiceLocator = REECSManagerGetServiceLocator();
      SceneNullable = MEMORY[0x1C68FE1F0](ServiceLocator);
      if (SceneNullable)
      {
        SceneNullable = __RKEntityAnimateAction._setupAnimations(entity:assetManager:andPlay:)(v18, SceneNullable, 1);
      }

      else
      {
        v27 = 1;
      }
    }

    else
    {
      v27 = 0;
    }

    *(v2 + 168) = SceneNullable;
    *(v2 + 176) = v27 & 1;
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = *(v2 + 32);
    v30 = *(v2 + 40);
    *(v2 + 32) = partial apply for closure #1 in __RKEntityStartAnimateAction.perform(with:);
    *(v2 + 40) = v28;

    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v29);

    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v22 = 1;
    *(v2 + 96) = 1;
    *(v2 + 104) = 1;
    v82 = v31;
    LOBYTE(v83) = v32;
    __RKEntityAction.state.didset(&v82);
    v66 = type metadata accessor for Entity();
    v80 = v66;
    v81 = &protocol witness table for Entity;
    v78 = v18;
    v33 = swift_allocObject();
    swift_weakInit();

    Scene.eventService.getter(&v82);
    v34 = v85;
    v35 = v86;
    __swift_project_boxed_opaque_existential_1(&v82, v85);
    type metadata accessor for REAnimationHasCompletedEvent(0);
    EventService.publisher<A>(for:on:)(v36, &v78, v34, v36, v35);
    v37 = v75;
    v38 = v76;
    v39 = v77;
    __swift_destroy_boxed_opaque_existential_1(&v82);
    *(swift_allocObject() + 16) = 0;
    v82 = v37;
    v83 = v38;
    v84 = v39;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMR);
    v65[1] = &protocol conformance descriptor for Scene.CorePublisher<A>;
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationHasCompletedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMR);
    Publisher.compactMap<A>(_:)();

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So28REAnimationHasCompletedEventVGAH15AnimationEventsO08PlaybackM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So28REAnimationHasCompletedEventVGAH15AnimationEventsO08PlaybackM0VGGMR);
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    v43 = swift_allocObject();
    (*(v72 + 32))(&v43[*(*v43 + *MEMORY[0x1E695BEE8] + 16)], v11, v73);
    v82 = v43;
    v44 = swift_allocObject();
    *(v44 + 16) = partial apply for closure #2 in __RKEntityStartAnimateAction.perform(with:);
    *(v44 + 24) = v33;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMR);
    v73 = &protocol conformance descriptor for Scene.Publisher<A>;
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.Publisher<AnimationEvents.PlaybackCompleted> and conformance Scene.Publisher<A>, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMR);
    v45 = Publisher<>.sink(receiveValue:)();

    v46 = type metadata accessor for AnyCancellable();
    v85 = v46;
    v86 = MEMORY[0x1E695BF08];

    v82 = v45;
    outlined destroy of BodyTrackingComponent?(&v78, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v82, v2 + 184);
    swift_endAccess();
    v80 = v66;
    v81 = &protocol witness table for Entity;
    v78 = v18;
    v47 = swift_allocObject();
    swift_weakInit();

    Scene.eventService.getter(&v82);
    v48 = v85;
    v49 = v86;
    __swift_project_boxed_opaque_existential_1(&v82, v85);
    type metadata accessor for REAnimationHasTerminatedEvent(0);
    EventService.publisher<A>(for:on:)(v50, &v78, v48, v50, v49);
    v51 = v75;
    v52 = v76;
    v53 = v77;
    __swift_destroy_boxed_opaque_existential_1(&v82);
    *(swift_allocObject() + 16) = 0;
    v82 = v51;
    v83 = v52;
    v84 = v53;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationHasTerminatedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMR);
    v54 = v69;
    Publisher.compactMap<A>(_:)();

    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29REAnimationHasTerminatedEventVGAH15AnimationEventsO08PlaybackM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29REAnimationHasTerminatedEventVGAH15AnimationEventsO08PlaybackM0VGGMR);
    v56 = *(v55 + 48);
    v57 = *(v55 + 52);
    v58 = swift_allocObject();
    (*(v70 + 32))(&v58[*(*v58 + *MEMORY[0x1E695BEE8] + 16)], v54, v71);
    v82 = v58;
    v59 = swift_allocObject();
    *(v59 + 16) = partial apply for closure #3 in __RKEntityStartAnimateAction.perform(with:);
    *(v59 + 24) = v47;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.Publisher<AnimationEvents.PlaybackTerminated> and conformance Scene.Publisher<A>, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMR);
    v60 = Publisher<>.sink(receiveValue:)();

    v85 = v46;
    v86 = MEMORY[0x1E695BF08];

    v82 = v60;
    outlined destroy of BodyTrackingComponent?(&v78, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v82, v2 + 224);
    swift_endAccess();
    v82 = v67;
    v83 = v68;
    v61 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v61, &v82);

    goto LABEL_23;
  }

  REAnimationComponentResumeAnimation();

  return 1;
}

uint64_t closure #1 in __RKEntityStartAnimateAction.perform(with:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    outlined init with copy of Cancellable?(v1 + 184, &v4);
    if (*(&v5 + 1))
    {
      outlined init with copy of __REAssetService(&v4, v2);

      outlined destroy of BodyTrackingComponent?(&v4, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      __swift_project_boxed_opaque_existential_1(v2, v3);
      dispatch thunk of Cancellable.cancel()();
      __swift_destroy_boxed_opaque_existential_1(v2);
    }

    else
    {

      outlined destroy of BodyTrackingComponent?(&v4, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    }

    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v4, v1 + 184);
    swift_endAccess();
    swift_beginAccess();
    outlined init with copy of Cancellable?(v1 + 224, &v4);
    if (*(&v5 + 1))
    {
      outlined init with copy of __REAssetService(&v4, v2);
      outlined destroy of BodyTrackingComponent?(&v4, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      __swift_project_boxed_opaque_existential_1(v2, v3);
      dispatch thunk of Cancellable.cancel()();
      __swift_destroy_boxed_opaque_existential_1(v2);
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v4, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    }

    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v4, v1 + 224);
    swift_endAccess();

    __RKEntityAnimateAction.stopAnimations()();
  }

  return result;
}

uint64_t closure #2 in __RKEntityStartAnimateAction.perform(with:)(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if ((*(result + 176) & 1) != 0 || *(v1 + 16) != *(result + 168))
    {
    }

    else
    {
      swift_beginAccess();
      v4 = *(v3 + 96);
      v5 = *(v3 + 104);
      *(v3 + 96) = 2;
      *(v3 + 104) = 1;
      v6 = v4;
      v7 = v5;

      __RKEntityAction.state.didset(&v6);
    }
  }

  return result;
}

uint64_t __RKEntityStartAnimateAction.reversed()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  type metadata accessor for __RKEntityStopAnimateAction();
  v2 = swift_allocObject();
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 112) = 1;
  *(v2 + 136) = 1;
  *(v2 + 140) = 1065353216;
  *(v2 + 144) = 0;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  *(v2 + 152) = 0x3FF0000000000000;
  *(v2 + 176) = 1;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 0u;
  *(v2 + 232) = 0u;
  *(v2 + 248) = 0u;

  return __RKEntityAction.init(targetEntity:)(v3);
}

uint64_t __RKEntityAnimateAction.__allocating_init(targetEntity:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 112) = 1;
  *(v2 + 136) = 1;
  *(v2 + 140) = 1065353216;
  *(v2 + 144) = 0;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  *(v2 + 152) = 0x3FF0000000000000;
  *(v2 + 176) = 1;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 0u;
  *(v2 + 232) = 0u;
  *(v2 + 248) = 0u;
  return __RKEntityAction.init(targetEntity:)(a1);
}

uint64_t __RKEntityStartAnimateAction.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 112);
  swift_beginAccess();
  v5 = *(v1 + 105);
  v6 = *(v1 + 120);
  v7 = *(v1 + 128);
  v8 = *(v1 + 137);
  v9 = *(v1 + 140);
  v10 = *(v1 + 136);
  v11 = *(v1 + 145);
  v12 = *(v1 + 152);
  v13 = *(v1 + 160);
  started = type metadata accessor for __RKEntityStartAnimateAction();
  v15 = swift_allocObject();
  *(v15 + 120) = 0;
  *(v15 + 128) = 0;
  *(v15 + 112) = 1;
  *(v15 + 136) = 1;
  *(v15 + 140) = 1065353216;
  *(v15 + 144) = 0;
  *(v15 + 160) = 0;
  *(v15 + 168) = 0;
  *(v15 + 152) = 0x3FF0000000000000;
  *(v15 + 176) = 1;
  *(v15 + 184) = 0u;
  *(v15 + 200) = 0u;
  *(v15 + 216) = 0u;
  *(v15 + 232) = 0u;
  *(v15 + 248) = 0u;
  swift_retain_n();

  v16 = __RKEntityAction.init(targetEntity:)(v3);
  if (v3)
  {

    v17 = *(v16 + 160);
    *(v16 + 160) = v13;

    result = swift_beginAccess();
    *(v16 + 105) = v5;
    *(v16 + 112) = v4;
    *(v16 + 137) = v8;
    *(v16 + 120) = v6;
    *(v16 + 128) = v7;
    *(v16 + 140) = v9;
    if (v10 == 3)
    {
      v19 = 3;
    }

    else
    {
      v19 = 1;
    }

    if (v4 == 1)
    {
      v19 = 0;
    }

    *(v16 + 136) = v19;
    *(v16 + 145) = v11;
    *(v16 + 152) = v12;
  }

  else
  {
  }

  a1[3] = started;
  *a1 = v16;
  return result;
}

uint64_t __RKEntityStartAnimateAction.clone(matching:newEntity:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 && *(a1 + 16) == *(v3 + 16))
  {
    v5 = *(v1 + 112);
    swift_beginAccess();
    v6 = *(v1 + 105);
    v7 = *(v1 + 120);
    v8 = *(v1 + 128);
    v9 = *(v1 + 137);
    v10 = *(v1 + 140);
    v11 = *(v1 + 136);
    v12 = *(v1 + 145);
    v13 = *(v1 + 152);
    v14 = *(v1 + 160);
    type metadata accessor for __RKEntityStartAnimateAction();
    v15 = swift_allocObject();
    *(v15 + 120) = 0;
    *(v15 + 128) = 0;
    *(v15 + 112) = 1;
    *(v15 + 136) = 1;
    *(v15 + 140) = 1065353216;
    *(v15 + 144) = 0;
    *(v15 + 160) = 0;
    *(v15 + 168) = 0;
    *(v15 + 152) = 0x3FF0000000000000;
    *(v15 + 176) = 1;
    *(v15 + 184) = 0u;
    *(v15 + 200) = 0u;
    *(v15 + 216) = 0u;
    *(v15 + 232) = 0u;
    *(v15 + 248) = 0u;

    v17 = __RKEntityAction.init(targetEntity:)(v16);
    v18 = *(v17 + 160);
    *(v17 + 160) = v14;

    swift_beginAccess();
    result = v17;
    *(v17 + 105) = v6;
    *(v17 + 112) = v5;
    *(v17 + 137) = v9;
    *(v17 + 120) = v7;
    *(v17 + 128) = v8;
    *(v17 + 140) = v10;
    if (v11 == 3)
    {
      v19 = 3;
    }

    else
    {
      v19 = 1;
    }

    if (v5 == 1)
    {
      v19 = 0;
    }

    *(v17 + 136) = v19;
    *(v17 + 145) = v12;
    *(v17 + 152) = v13;
  }

  else
  {
    __RKEntityStartAnimateAction.copy(with:)(v21);
    type metadata accessor for __RKEntityAction();
    if (swift_dynamicCast())
    {
      return v20;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t __RKEntityAnimateAction.deinit()
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
  v6 = *(v0 + 160);

  outlined destroy of BodyTrackingComponent?(v0 + 184, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 224, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return v0;
}

uint64_t __RKEntityStopAnimateAction.perform(with:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 8);
  swift_beginAccess();
  v4 = *(v1 + 16);
  v27 = 91;
  v28 = 0xE100000000000000;
  if (v4)
  {
    v25 = v4;

    _print_unlocked<A, B>(_:_:)();
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
    v5 = 7104878;
  }

  MEMORY[0x1C68F3410](v5, v6);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v7 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v7);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v9 = v27;
  v8 = v28;
  v10 = *(v1 + 16);
  if (!v10)
  {
    v16 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v16, &v27);

    return 0;
  }

  swift_beginAccess();
  if (*(v1 + 104) == 1 && *(v1 + 96) == 1)
  {
    swift_beginAccess();
    if (*(v1 + 105) == 1)
    {

LABEL_15:
      v25 = v27;
      v26 = v28;
      v17 = static os_log_type_t.info.getter();
      specialized InteractionsLogger.log(_:_:)(v17, &v25);

      return 0;
    }
  }

  v11 = *(v3 + 16);

  if (!RESceneGetECSManagerNullable())
  {
    goto LABEL_15;
  }

  v12 = *(v10 + 16);
  SceneNullable = REEntityGetSceneNullable();
  if (SceneNullable && (SceneNullable = RESceneGetECSManagerNullable()) != 0)
  {
    ServiceLocator = REECSManagerGetServiceLocator();
    SceneNullable = MEMORY[0x1C68FE1F0](ServiceLocator);
    if (SceneNullable)
    {
      SceneNullable = __RKEntityAnimateAction._setupAnimations(entity:assetManager:andPlay:)(v10, SceneNullable, 0);
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  *(v2 + 168) = SceneNullable;
  *(v2 + 176) = v15 & 1;
  v19 = *(v2 + 96);
  v20 = *(v2 + 104);
  *(v2 + 96) = 3;
  *(v2 + 104) = 1;
  v25 = v19;
  LOBYTE(v26) = v20;
  __RKEntityAction.state.didset(&v25);
  __RKEntityAnimateAction.stopAnimations()();
  v25 = v9;
  v26 = v8;
  v21 = static os_log_type_t.debug.getter();
  specialized InteractionsLogger.log(_:_:)(v21, &v25);
  v22 = *(v2 + 96);
  v23 = *(v2 + 104);
  *(v2 + 96) = 2;
  *(v2 + 104) = 1;
  v25 = v22;
  LOBYTE(v26) = v23;
  __RKEntityAction.state.didset(&v25);
  v25 = v9;
  v26 = v8;
  v24 = static os_log_type_t.debug.getter();
  specialized InteractionsLogger.log(_:_:)(v24, &v25);

  return 1;
}

uint64_t __RKEntityStopAnimateAction.reversed()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 160);
  type metadata accessor for __RKEntityStartAnimateAction();
  v3 = swift_allocObject();
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 112) = 1;
  *(v3 + 136) = 1;
  *(v3 + 140) = 1065353216;
  *(v3 + 144) = 0;
  *(v3 + 160) = 0;
  *(v3 + 168) = 0;
  *(v3 + 152) = 0x3FF0000000000000;
  *(v3 + 176) = 1;
  *(v3 + 184) = 0u;
  *(v3 + 200) = 0u;
  *(v3 + 216) = 0u;
  *(v3 + 232) = 0u;
  *(v3 + 248) = 0u;
  swift_retain_n();

  v4 = __RKEntityAction.init(targetEntity:)(v1);

  if (v1)
  {
    v5 = *(v4 + 160);
    *(v4 + 160) = v2;

    swift_beginAccess();
    *(v4 + 105) = 1;
    *(v4 + 120) = 0;
    *(v4 + 128) = 0;
    *(v4 + 112) = 1;
    *(v4 + 140) = 1065353216;
    *(v4 + 136) = 0;
    *(v4 + 145) = 0;
    *(v4 + 152) = 0x3FF0000000000000;
  }

  return v4;
}

uint64_t __RKEntityAnimateAction.copy(with:)@<X0>(uint64_t (*a1)(uint64_t)@<X1>, uint64_t *a2@<X8>)
{
  v5 = swift_beginAccess();
  v6 = *(v2 + 16);
  v7 = a1(v5);
  v8 = swift_allocObject();
  *(v8 + 120) = 0;
  *(v8 + 128) = 0;
  *(v8 + 112) = 1;
  *(v8 + 136) = 1;
  *(v8 + 140) = 1065353216;
  *(v8 + 144) = 0;
  *(v8 + 160) = 0;
  *(v8 + 168) = 0;
  *(v8 + 152) = 0x3FF0000000000000;
  *(v8 + 176) = 1;
  *(v8 + 184) = 0u;
  *(v8 + 200) = 0u;
  *(v8 + 216) = 0u;
  *(v8 + 232) = 0u;
  *(v8 + 248) = 0u;

  result = __RKEntityAction.init(targetEntity:)(v9);
  a2[3] = v7;
  *a2 = result;
  return result;
}

uint64_t @objc __RKEntityAnimateAction.copy(with:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = swift_beginAccess();
  v7 = *(a1 + 16);
  a4(v6);
  swift_allocObject();

  return __RKEntityAnimateAction.init(targetEntity:)(v8);
}

uint64_t __RKEntityStopAnimateAction.clone(matching:newEntity:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (v5)
  {
    if (*(a1 + 16) == *(v5 + 16))
    {
      v5 = a2;
    }

    else
    {
      v6 = *(v2 + 16);
    }
  }

  type metadata accessor for __RKEntityStopAnimateAction();
  v7 = swift_allocObject();
  *(v7 + 120) = 0;
  *(v7 + 128) = 0;
  *(v7 + 112) = 1;
  *(v7 + 136) = 1;
  *(v7 + 140) = 1065353216;
  *(v7 + 144) = 0;
  *(v7 + 160) = 0;
  *(v7 + 168) = 0;
  *(v7 + 152) = 0x3FF0000000000000;
  *(v7 + 176) = 1;
  *(v7 + 184) = 0u;
  *(v7 + 200) = 0u;
  *(v7 + 216) = 0u;
  *(v7 + 232) = 0u;
  *(v7 + 248) = 0u;

  return __RKEntityAction.init(targetEntity:)(v5);
}

uint64_t __RKEntityAnimateAction.init(targetEntity:)(uint64_t a1)
{
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 112) = 1;
  *(v1 + 136) = 1;
  *(v1 + 140) = 1065353216;
  *(v1 + 144) = 0;
  *(v1 + 160) = 0;
  *(v1 + 168) = 0;
  *(v1 + 152) = 0x3FF0000000000000;
  *(v1 + 176) = 1;
  *(v1 + 184) = 0u;
  *(v1 + 200) = 0u;
  *(v1 + 216) = 0u;
  *(v1 + 232) = 0u;
  *(v1 + 248) = 0u;
  return __RKEntityAction.init(targetEntity:)(a1);
}

uint64_t __RKEntityStartAnimateAction.__deallocating_deinit()
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
  v6 = *(v0 + 160);

  outlined destroy of BodyTrackingComponent?(v0 + 184, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 224, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return swift_deallocClassInstance();
}

uint64_t __RKEntityToggleAnimateAction.perform(with:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  swift_beginAccess();
  v5 = *(v1 + 16);
  v55 = 91;
  v56 = 0xE100000000000000;
  if (v5)
  {
    v53 = 0;
    v54 = 0xE000000000000000;
    v52[0] = v5;

    _print_unlocked<A, B>(_:_:)();
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
    v6 = 7104878;
  }

  MEMORY[0x1C68F3410](v6, v7);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v8 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v8);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v10 = v55;
  v9 = v56;
  v11 = *(v1 + 16);
  if (!v11)
  {
    v15 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v15, &v55);

LABEL_14:
    v17 = 0;
    return v17 & 1;
  }

  swift_beginAccess();
  if (*(v1 + 104) == 1 && *(v1 + 96) == 1)
  {
    swift_beginAccess();
    if (*(v1 + 105) == 1)
    {

LABEL_13:
      v53 = v55;
      v54 = v56;
      v16 = static os_log_type_t.info.getter();
      specialized InteractionsLogger.log(_:_:)(v16, &v53);

      goto LABEL_14;
    }
  }

  v12 = *(v4 + 16);

  if (!RESceneGetECSManagerNullable())
  {
    goto LABEL_13;
  }

  v13 = *(v11 + 16);
  RETransformComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    IsAnimated = RETransformComponentIsAnimated();
  }

  else
  {
    IsAnimated = 0;
  }

  v18 = *(v11 + 16);
  REAnimationComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    if (REAnimationComponentHasRunningAnimations())
    {
LABEL_18:
      type metadata accessor for __RKEntityStopAnimateAction();
      v19 = swift_allocObject();
      *(v19 + 120) = 0;
      *(v19 + 128) = 0;
      *(v19 + 112) = 1;
      *(v19 + 136) = 1;
      *(v19 + 140) = 1065353216;
      *(v19 + 144) = 0;
      *(v19 + 160) = 0;
      *(v19 + 168) = 0;
      *(v19 + 152) = 0x3FF0000000000000;
      *(v19 + 176) = 1;
      *(v19 + 184) = 0u;
      *(v19 + 200) = 0u;
      *(v19 + 216) = 0u;
      *(v19 + 232) = 0u;
      *(v19 + 248) = 0u;

      v21 = __RKEntityAction.init(targetEntity:)(v20);
      goto LABEL_21;
    }
  }

  else if (IsAnimated)
  {
    goto LABEL_18;
  }

  type metadata accessor for __RKEntityStartAnimateAction();
  v22 = swift_allocObject();
  *(v22 + 120) = 0;
  *(v22 + 128) = 0;
  *(v22 + 112) = 1;
  *(v22 + 136) = 1;
  *(v22 + 140) = 1065353216;
  *(v22 + 144) = 0;
  *(v22 + 160) = 0;
  *(v22 + 168) = 0;
  *(v22 + 152) = 0x3FF0000000000000;
  *(v22 + 176) = 1;
  *(v22 + 184) = 0u;
  *(v22 + 200) = 0u;
  *(v22 + 216) = 0u;
  *(v22 + 232) = 0u;
  *(v22 + 248) = 0u;

  v21 = __RKEntityAction.init(targetEntity:)(v23);
  v24 = *(v21 + 160);
  *(v21 + 160) = 0;

  swift_beginAccess();
  *(v21 + 105) = 1;
  *(v21 + 120) = 0;
  *(v21 + 128) = 0;
  *(v21 + 112) = 1;
  *(v21 + 140) = 1065353216;
  *(v21 + 136) = 0;
  *(v21 + 145) = 0;
  *(v21 + 152) = 0x3FF0000000000000;
LABEL_21:
  v25 = *(v2 + 264);
  *(v2 + 264) = v21;

  v26 = swift_allocObject();
  swift_weakInit();
  v27 = *(v21 + 32);
  v28 = *(v21 + 40);
  *(v21 + 32) = partial apply for closure #1 in __RKEntityToggleAnimateAction.perform(with:);
  *(v21 + 40) = v26;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v27);

  v30 = *(v2 + 264);
  if (!v30)
  {
    __break(1u);
    goto LABEL_41;
  }

  v52[0] = v3;
  v52[1] = v4;
  v31 = *(*v30 + 408);

  v17 = v31(v52);

  v32 = *(v2 + 264);
  if (!v32)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  swift_beginAccess();
  v33 = *(v32 + 104);
  v34 = *(v2 + 96);
  v35 = *(v2 + 104);
  *(v2 + 96) = *(v32 + 96);
  *(v2 + 104) = v33;
  v50 = v34;
  LOBYTE(v51) = v35;
  result = __RKEntityAction.state.didset(&v50);
  v36 = *(v2 + 264);
  if (v36)
  {
    v37 = *(v36 + 168);
    v38 = *(v36 + 176);
    *(v2 + 168) = v37;
    *(v2 + 176) = v38;
    v39 = static os_log_type_t.debug.getter();
    if (one-time initialization token for interactionsLoggingEnabled != -1)
    {
      swift_once();
    }

    if (interactionsLoggingEnabled)
    {
      v50 = 0x6E696E7275746552;
      v51 = 0xEA00000000002067;
      if (v17)
      {
        v40 = 1702195828;
      }

      else
      {
        v40 = 0x65736C6166;
      }

      if (v17)
      {
        v41 = 0xE400000000000000;
      }

      else
      {
        v41 = 0xE500000000000000;
      }

      MEMORY[0x1C68F3410](v40, v41);

      v43 = v50;
      v42 = v51;
      if (one-time initialization token for interactionsLogger != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      __swift_project_value_buffer(v44, interactionsLogger);

      v45 = Logger.logObject.getter();

      if (os_log_type_enabled(v45, v39))
      {
        v49 = &v49;
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v50 = v47;
        *v46 = 136315394;
        *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v50);
        *(v46 + 12) = 2080;
        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v42, &v50);

        *(v46 + 14) = v48;
        _os_log_impl(&dword_1C1358000, v45, v39, "%s%s", v46, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C6902A30](v47, -1, -1);
        MEMORY[0x1C6902A30](v46, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }

    return v17 & 1;
  }

LABEL_42:
  __break(1u);
  return result;
}

uint64_t closure #1 in __RKEntityToggleAnimateAction.perform(with:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + 264);
    if (v2)
    {
      swift_beginAccess();
      v3 = *(v2 + 96);
      v4 = *(v2 + 104);
      swift_beginAccess();
      v5 = *(v1 + 96);
      v6 = *(v1 + 104);
      *(v1 + 96) = v3;
      *(v1 + 104) = v4;
      v7 = v5;
      v8 = v6;

      __RKEntityAction.state.didset(&v7);

      *(v1 + 168) = 0;
      *(v1 + 176) = 1;
    }
  }

  return result;
}

uint64_t __RKEntityToggleAnimateAction.reversed()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  type metadata accessor for __RKEntityToggleAnimateAction();
  v2 = swift_allocObject();
  *(v2 + 264) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 112) = 1;
  *(v2 + 136) = 1;
  *(v2 + 140) = 1065353216;
  *(v2 + 144) = 0;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  *(v2 + 152) = 0x3FF0000000000000;
  *(v2 + 176) = 1;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 0u;
  *(v2 + 232) = 0u;
  *(v2 + 248) = 0u;

  return __RKEntityAction.init(targetEntity:)(v3);
}

uint64_t __RKEntityToggleAnimateAction.__allocating_init(targetEntity:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 264) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 112) = 1;
  *(v2 + 136) = 1;
  *(v2 + 140) = 1065353216;
  *(v2 + 144) = 0;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  *(v2 + 152) = 0x3FF0000000000000;
  *(v2 + 176) = 1;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 0u;
  *(v2 + 232) = 0u;
  *(v2 + 248) = 0u;
  return __RKEntityAction.init(targetEntity:)(a1);
}

uint64_t __RKEntityToggleAnimateAction.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = type metadata accessor for __RKEntityToggleAnimateAction();
  v5 = swift_allocObject();
  *(v5 + 264) = 0;
  *(v5 + 120) = 0;
  *(v5 + 128) = 0;
  *(v5 + 112) = 1;
  *(v5 + 136) = 1;
  *(v5 + 140) = 1065353216;
  *(v5 + 144) = 0;
  *(v5 + 160) = 0;
  *(v5 + 168) = 0;
  *(v5 + 152) = 0x3FF0000000000000;
  *(v5 + 176) = 1;
  *(v5 + 184) = 0u;
  *(v5 + 200) = 0u;
  *(v5 + 216) = 0u;
  *(v5 + 232) = 0u;
  *(v5 + 248) = 0u;

  result = __RKEntityAction.init(targetEntity:)(v6);
  a1[3] = v4;
  *a1 = result;
  return result;
}

uint64_t __RKEntityToggleAnimateAction.clone(matching:newEntity:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (v5)
  {
    if (*(a1 + 16) == *(v5 + 16))
    {
      v5 = a2;
    }

    else
    {
      v6 = *(v2 + 16);
    }
  }

  type metadata accessor for __RKEntityToggleAnimateAction();
  v7 = swift_allocObject();
  *(v7 + 264) = 0;
  *(v7 + 120) = 0;
  *(v7 + 128) = 0;
  *(v7 + 112) = 1;
  *(v7 + 136) = 1;
  *(v7 + 140) = 1065353216;
  *(v7 + 144) = 0;
  *(v7 + 160) = 0;
  *(v7 + 168) = 0;
  *(v7 + 152) = 0x3FF0000000000000;
  *(v7 + 176) = 1;
  *(v7 + 184) = 0u;
  *(v7 + 200) = 0u;
  *(v7 + 216) = 0u;
  *(v7 + 232) = 0u;
  *(v7 + 248) = 0u;

  return __RKEntityAction.init(targetEntity:)(v5);
}

uint64_t __RKEntityToggleAnimateAction.init(targetEntity:)(uint64_t a1)
{
  *(v1 + 264) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 112) = 1;
  *(v1 + 136) = 1;
  *(v1 + 140) = 1065353216;
  *(v1 + 144) = 0;
  *(v1 + 160) = 0;
  *(v1 + 168) = 0;
  *(v1 + 152) = 0x3FF0000000000000;
  *(v1 + 176) = 1;
  *(v1 + 184) = 0u;
  *(v1 + 200) = 0u;
  *(v1 + 216) = 0u;
  *(v1 + 232) = 0u;
  *(v1 + 248) = 0u;
  return __RKEntityAction.init(targetEntity:)(a1);
}

uint64_t __RKEntityToggleAnimateAction.deinit()
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
  v6 = *(v0 + 160);

  outlined destroy of BodyTrackingComponent?(v0 + 184, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 224, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  v7 = *(v0 + 264);

  return v0;
}

uint64_t __RKEntityToggleAnimateAction.__deallocating_deinit()
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
  v6 = *(v0 + 160);

  outlined destroy of BodyTrackingComponent?(v0 + 184, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 224, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  v7 = *(v0 + 264);

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type AudioBufferResource.Error and conformance AudioBufferResource.Error()
{
  result = lazy protocol witness table cache variable for type AudioBufferResource.Error and conformance AudioBufferResource.Error;
  if (!lazy protocol witness table cache variable for type AudioBufferResource.Error and conformance AudioBufferResource.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioBufferResource.Error and conformance AudioBufferResource.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AudioBufferResource.Error and conformance AudioBufferResource.Error;
  if (!lazy protocol witness table cache variable for type AudioBufferResource.Error and conformance AudioBufferResource.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioBufferResource.Error and conformance AudioBufferResource.Error);
  }

  return result;
}

unint64_t protocol witness for LocalizedError.errorDescription.getter in conformance AudioBufferResource.Error()
{
  v1 = 0xD00000000000002DLL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000036;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000043;
  }

  *v0;
  return result;
}

uint64_t Entity.ComponentSet.subscript.getter@<X0>(ValueMetadata *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *v3;
  return Entity.ComponentSet.subscript.getter(a1, *(a2 + 8), a3);
}

{
  v5 = *v3;
  return Entity.ComponentSet.doGet<A>(_:borrowStrongReference:)(a1, 0, a1, a2, a3);
}

uint64_t Entity.ComponentSet.subscript.setter(uint64_t a1, uint64_t a2, ValueMetadata *a3, uint64_t a4)
{
  v55 = a2;
  v56 = a4;
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v44 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v44 - v17;
  Description = a3[-1].Description;
  v19 = Description[8];
  v20 = MEMORY[0x1EEE9AC00](v16);
  v52 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v44 - v22;
  if (one-time initialization token for $current != -1)
  {
    swift_once();
  }

  v51 = static ImplicitAnimationStack.$current;
  TaskLocal.get()();
  if (v58[0])
  {
    v53 = v23;
    v49 = v12;
    swift_unknownObjectRelease();
    v24 = *v4;
    v25 = *(v56 + 8);

    v58[0] = v24;
    v50 = v25;
    Entity.ComponentSet.subscript.getter(a3, v25, v18);

    v26 = Description;
    v27 = Description[6];
    if (v27(v18, 1, a3) == 1)
    {
      v28 = *(v8 + 8);
      v28(a1, v7);
      return (v28)(v18, v7);
    }

    else
    {
      v47 = v24;
      v30 = v18;
      v31 = v26[4];
      v31(v53, v30, a3);
      (*(v8 + 16))(v15, a1, v7);
      v48 = v27;
      if (v27(v15, 1, a3) == 1)
      {
        v32 = *(v8 + 8);
        v32(a1, v7);
        (v26[1])(v53, a3);
        return (v32)(v15, v7);
      }

      else
      {
        v45 = a1;
        v46 = v7;
        v33 = v52;
        v31(v52, v15, a3);
        (*(v56 + 16))(v58, &v57, v53, v33, a3);
        v35 = v57;
        v34 = v58[0];
        v36 = v50;
        if ((static ComponentAnimatableData.== infix(_:_:)(v58, &v57) & 1) != 0 || (TaskLocal.get()(), !v58[0]))
        {

          (*(v8 + 8))(v45, v46);
          v43 = Description[1];
          v43(v33, a3);
          return (v43)(v53, a3);
        }

        else
        {
          v51 = v58[1];
          v37 = v47;

          v58[0] = v37;
          v38 = v49;
          Entity.ComponentSet.subscript.getter(a3, v36, v49);

          result = v48(v38, 1, a3);
          v40 = v45;
          v39 = v46;
          if (result == 1)
          {
            __break(1u);
          }

          else
          {
            ObjectType = swift_getObjectType();
            v57 = v35;
            v58[0] = v34;
            (*(v51 + 8))(v37, v38, v58, &v57, a3, v56, ObjectType);
            swift_unknownObjectRelease();
            (*(v8 + 8))(v40, v39);
            v42 = Description[1];
            v42(v52, a3);
            v42(v53, a3);

            return (v42)(v38, a3);
          }
        }
      }
    }
  }

  else
  {
    specialized Entity.ComponentSet.subscript.setter(a1, v55, a3, *(v56 + 8));
    return (*(v8 + 8))(a1, v7);
  }

  return result;
}

uint64_t Entity.ComponentSet.set<A>(_:)(uint64_t a1, ValueMetadata *a2, uint64_t a3)
{
  v34 = a1;
  Description = a2[-1].Description;
  v7 = Description[8];
  MEMORY[0x1EEE9AC00](a1);
  v33 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v32 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  v19 = *v3;
  if (one-time initialization token for $current != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  if (v36[0])
  {
    swift_unknownObjectRelease();
    v20 = *(a3 + 8);

    v36[0] = v19;
    Entity.ComponentSet.subscript.getter(a2, v20, v15);

    v31 = Description[6];
    if (v31(v15, 1, a2) == 1)
    {
      return (*(v10 + 8))(v15, v9);
    }

    else
    {
      v22 = v33;
      (Description[4])(v33, v15, a2);
      v23 = *(a3 + 16);
      v24 = v34;
      v34 = a3;
      v23(v36, &v35, v22, v24, a2, a3);
      v26 = v35;
      v25 = v36[0];
      if ((static ComponentAnimatableData.== infix(_:_:)(v36, &v35) & 1) != 0 || (TaskLocal.get()(), !v36[0]))
      {
        (Description[1])(v33, a2);
      }

      else
      {
        v30 = v36[1];

        v36[0] = v19;
        v27 = v32;
        Entity.ComponentSet.subscript.getter(a2, v20, v32);

        result = v31(v27, 1, a2);
        if (result == 1)
        {
          __break(1u);
        }

        else
        {
          ObjectType = swift_getObjectType();
          v35 = v26;
          v36[0] = v25;
          (*(v30 + 8))(v19, v27, v36, &v35, a2, v34, ObjectType);
          swift_unknownObjectRelease();
          v29 = Description[1];
          v29(v33, a2);

          return (v29)(v27, a2);
        }
      }
    }
  }

  else
  {
    v36[0] = v19;
    (Description[2])(v18, v34, a2);
    (Description[7])(v18, 0, 1, a2);
    Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)(a2, v18, 0, a2, *(a3 + 8));
    return (*(v10 + 8))(v18, v9);
  }

  return result;
}

float protocol witness for RealityKitAdditiveArithmetic.rekitMinus(_:) in conformance Float@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  result = *v2 - *a1;
  *a2 = result;
  return result;
}

float protocol witness for RealityKitAdditiveArithmetic.rekitPlus(_:) in conformance Float@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  result = *a1 + *v2;
  *a2 = result;
  return result;
}

float protocol witness for RealityKitVectorArithmetic.scale(by:) in conformance Float(double a1)
{
  v2 = a1;
  result = *v1 * v2;
  *v1 = result;
  return result;
}

double protocol witness for RealityKitAdditiveArithmetic.rekitMinus(_:) in conformance Double@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = *v2 - *a1;
  *a2 = result;
  return result;
}

double protocol witness for RealityKitAdditiveArithmetic.rekitPlus(_:) in conformance Double@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = *a1 + *v2;
  *a2 = result;
  return result;
}

double protocol witness for RealityKitVectorArithmetic.scale(by:) in conformance Double(double a1)
{
  result = *v1 * a1;
  *v1 = result;
  return result;
}

float32x2_t SIMD2<>.scale(by:)(double a1)
{
  v2 = a1;
  result = vmul_n_f32(*v1, v2);
  *v1 = result;
  return result;
}

float32x2_t protocol witness for RealityKitAdditiveArithmetic.rekitMinus(_:) in conformance <> SIMD2<A>@<D0>(float32x2_t *a1@<X0>, float32x2_t *a2@<X8>)
{
  result = vsub_f32(*v2, *a1);
  *a2 = result;
  return result;
}

float32x2_t protocol witness for RealityKitAdditiveArithmetic.rekitPlus(_:) in conformance <> SIMD2<A>@<D0>(float32x2_t *a1@<X0>, float32x2_t *a2@<X8>)
{
  result = vadd_f32(*a1, *v2);
  *a2 = result;
  return result;
}

float32x2_t protocol witness for RealityKitVectorArithmetic.scale(by:) in conformance <> SIMD2<A>(double a1)
{
  v2 = a1;
  result = vmul_n_f32(*v1, v2);
  *v1 = result;
  return result;
}

float SIMD3<>.scale(by:)(double a1)
{
  v2 = a1;
  v3.i64[0] = vmulq_n_f32(*v1, v2).u64[0];
  result = vmuls_lane_f32(v2, *v1, 2);
  v3.f32[2] = result;
  v3.i32[3] = HIDWORD(*v1);
  *v1 = v3;
  return result;
}

__n128 protocol witness for RealityKitAdditiveArithmetic.rekitMinus(_:) in conformance <> SIMD3<A>@<Q0>(float32x4_t *a1@<X0>, __n128 *a2@<X8>)
{
  result = vsubq_f32(*v2, *a1);
  result.n128_u32[3] = 0;
  *a2 = result;
  return result;
}

__n128 protocol witness for RealityKitAdditiveArithmetic.rekitPlus(_:) in conformance <> SIMD3<A>@<Q0>(float32x4_t *a1@<X0>, __n128 *a2@<X8>)
{
  result = vaddq_f32(*a1, *v2);
  result.n128_u32[3] = 0;
  *a2 = result;
  return result;
}

float protocol witness for RealityKitVectorArithmetic.scale(by:) in conformance <> SIMD3<A>(double a1)
{
  v2 = a1;
  v3.i64[0] = vmulq_n_f32(*v1, v2).u64[0];
  result = vmuls_lane_f32(v2, *v1, 2);
  v3.f32[2] = result;
  v3.i32[3] = HIDWORD(*v1);
  *v1 = v3;
  return result;
}

Swift::Void __swiftcall simd_quatf.scale(by:)(Swift::Double by)
{
  v2 = by;
  simd_slerp(_PromotedConst_1, *v1, v2);
  *v1 = v3;
}

void protocol witness for RealityKitAdditiveArithmetic.rekitMinus(_:) in conformance simd_quatf(float32x4_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v6 = *v2;
  *v4.i64 = simd_inverse(*a1);
  *&v5 = simd_mul(v4, v6);
  *a2 = v5;
}

void protocol witness for RealityKitVectorArithmetic.scale(by:) in conformance simd_quatf(double a1)
{
  *v3.i64 = simd_quaternion();
  v4 = a1;
  simd_slerp(v3, *v1, v4);
  *v1 = v5;
}

float64x2_t protocol witness for RealityKitAdditiveArithmetic.rekitMinus(_:) in conformance ImplicitlyAnimatableLightColor@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X8>)
{
  result = vsubq_f64(*v2, *a1);
  v4 = vsubq_f64(v2[1], a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

float64x2_t protocol witness for RealityKitAdditiveArithmetic.rekitPlus(_:) in conformance ImplicitlyAnimatableLightColor@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X8>)
{
  result = vaddq_f64(*a1, *v2);
  v4 = vaddq_f64(a1[1], v2[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

float64x2_t protocol witness for RealityKitVectorArithmetic.scale(by:) in conformance ImplicitlyAnimatableLightColor(double a1)
{
  v2 = vmulq_n_f64(*v1, a1);
  result = vmulq_n_f64(v1[1], a1);
  *v1 = v2;
  v1[1] = result;
  return result;
}

double protocol witness for RealityKitVectorArithmetic.magnitudeSquared.getter in conformance ImplicitlyAnimatableLightColor()
{
  v1 = vmulq_f64(*v0, *v0);
  v2 = vmulq_f64(v0[1], v0[1]);
  *&result = *&vaddq_f64(vaddq_f64(vaddq_f64(v1, vdupq_laneq_s64(v1, 1)), v2), vdupq_laneq_s64(v2, 1));
  return result;
}

void static PhysicallyBasedMaterial.SheenColor.zero.getter(uint64_t a1@<X8>)
{
  __asm { FMOV            V0.4S, #1.0 }

  *a1 = specialized SIMD4<>.cgColor.getter(_Q0);
  outlined consume of MaterialParameters.Texture?(0, 0);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
}

void PhysicallyBasedMaterial.BaseColor.rekitMinus(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *v2;
  outlined copy of MaterialParameters.Texture?(v5, v6);
  v10 = CGColorRef.components.getter();
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = v10;
  v12 = CGColorRef.components.getter();
  if (!v12)
  {

    goto LABEL_15;
  }

  v13 = *(v11 + 16);
  if (!v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = *(v12 + 16);
  if (!v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[0] = *(v11 + 32) - *(v12 + 32);
  if (v13 == 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v14 == 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18[1] = *(v11 + 40) - *(v12 + 40);
  if (v13 < 3)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v14 < 3)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v18[2] = *(v11 + 48) - *(v12 + 48);
  if (v13 == 3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v14 == 3)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v18[3] = *(v11 + 56) - *(v12 + 56);
  v15 = CGColorGetColorSpace(v9);
  if (!v15)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = v15;
  v17 = CGColorCreate(v15, v18);

  if (v17)
  {

    v9 = v17;
LABEL_15:
    *a2 = v9;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
    *(a2 + 32) = v8;
    return;
  }

LABEL_25:
  __break(1u);
}

void PhysicallyBasedMaterial.BaseColor.rekitPlus(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *v2;
  outlined copy of MaterialParameters.Texture?(v5, v6);
  v10 = CGColorRef.components.getter();
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = v10;
  v12 = CGColorRef.components.getter();
  if (!v12)
  {

    goto LABEL_15;
  }

  v13 = *(v11 + 16);
  if (!v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = *(v12 + 16);
  if (!v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[0] = *(v11 + 32) + *(v12 + 32);
  if (v13 == 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v14 == 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18[1] = *(v11 + 40) + *(v12 + 40);
  if (v13 < 3)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v14 < 3)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v18[2] = *(v11 + 48) + *(v12 + 48);
  if (v13 == 3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v14 == 3)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v18[3] = *(v11 + 56) + *(v12 + 56);
  v15 = CGColorGetColorSpace(v9);
  if (!v15)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = v15;
  v17 = CGColorCreate(v15, v18);

  if (v17)
  {

    v9 = v17;
LABEL_15:
    *a2 = v9;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
    *(a2 + 32) = v8;
    return;
  }

LABEL_25:
  __break(1u);
}

void PhysicallyBasedMaterial.BaseColor.scale(by:)(double a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = CGColorRef.components.getter();
  if (v5)
  {
    v6 = *(v5 + 16);
    if (v6)
    {
      v10[0] = *(v5 + 32) * a1;
      if (v6 != 1)
      {
        v10[1] = *(v5 + 40) * a1;
        if (v6 >= 3)
        {
          v10[2] = *(v5 + 48) * a1;
          if (v6 != 3)
          {
            v10[3] = *(v5 + 56) * a1;
            v7 = CGColorGetColorSpace(v4);
            if (v7)
            {
              v8 = v7;
              v9 = CGColorCreate(v7, v10);

              if (v9)
              {

                *v2 = v9;
                return;
              }

LABEL_15:
              __break(1u);
              return;
            }

LABEL_14:
            __break(1u);
            goto LABEL_15;
          }

LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

double PhysicallyBasedMaterial.BaseColor.magnitudeSquared.getter()
{
  v1 = *v0;
  v2 = CGColorRef.components.getter();
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      if (v3 >= 4)
      {
        v4 = v3 & 0x7FFFFFFFFFFFFFFCLL;
        v6 = (v2 + 48);
        v5 = 0.0;
        v7 = v3 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v8 = vmulq_f64(v6[-1], v6[-1]);
          v9 = vmulq_f64(*v6, *v6);
          v5 = v5 + v8.f64[0] + v8.f64[1] + v9.f64[0] + v9.f64[1];
          v6 += 2;
          v7 -= 4;
        }

        while (v7);
        if (v3 == v4)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v4 = 0;
        v5 = 0.0;
      }

      v10 = v3 - v4;
      v11 = (v2 + 8 * v4 + 32);
      do
      {
        v12 = *v11++;
        v5 = v5 + v12 * v12;
        --v10;
      }

      while (v10);
    }

    else
    {
      v5 = 0.0;
    }

LABEL_12:

    return v5;
  }

  return 0.0;
}

void static PhysicallyBasedMaterial.EmissiveColor.zero.getter(uint64_t a1@<X8>)
{
  *a1 = specialized SIMD4<>.cgColor.getter(0);
  outlined consume of MaterialParameters.Texture?(0, 0);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
}

uint64_t static CustomMaterial.BaseColor.zero.getter@<X0>(uint64_t a1@<X8>)
{
  __asm { FMOV            V0.4S, #1.0 }

  result = specialized SIMD4<>.cgColor.getter(_Q0);
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t static CustomMaterial.BaseColor.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for CGColorRef(0);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef();
  return static _CFObject.== infix(_:_:)() & 1;
}

void CustomMaterial.BaseColor.rekitMinus(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v6 = *v2;
  v5 = *(v2 + 8);
  v7 = *(v2 + 16);

  v8 = v6;
  v9 = CGColorRef.components.getter();
  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = v9;
  v11 = CGColorRef.components.getter();
  if (!v11)
  {

    goto LABEL_15;
  }

  v12 = *(v10 + 16);
  if (!v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = *(v11 + 16);
  if (!v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17[0] = *(v10 + 32) - *(v11 + 32);
  if (v12 == 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v13 == 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17[1] = *(v10 + 40) - *(v11 + 40);
  if (v12 < 3)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v13 < 3)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v17[2] = *(v10 + 48) - *(v11 + 48);
  if (v12 == 3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v13 == 3)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17[3] = *(v10 + 56) - *(v11 + 56);
  v14 = CGColorGetColorSpace(v8);
  if (!v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = v14;
  v16 = CGColorCreate(v14, v17);

  if (v16)
  {

    v8 = v16;
LABEL_15:
    *a2 = v8;
    *(a2 + 8) = v5;
    *(a2 + 16) = v7;
    return;
  }

LABEL_25:
  __break(1u);
}

void CustomMaterial.BaseColor.rekitPlus(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v6 = *v2;
  v5 = *(v2 + 8);
  v7 = *(v2 + 16);

  v8 = v6;
  v9 = CGColorRef.components.getter();
  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = v9;
  v11 = CGColorRef.components.getter();
  if (!v11)
  {

    goto LABEL_15;
  }

  v12 = *(v10 + 16);
  if (!v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = *(v11 + 16);
  if (!v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17[0] = *(v10 + 32) + *(v11 + 32);
  if (v12 == 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v13 == 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17[1] = *(v10 + 40) + *(v11 + 40);
  if (v12 < 3)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v13 < 3)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v17[2] = *(v10 + 48) + *(v11 + 48);
  if (v12 == 3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v13 == 3)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17[3] = *(v10 + 56) + *(v11 + 56);
  v14 = CGColorGetColorSpace(v8);
  if (!v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = v14;
  v16 = CGColorCreate(v14, v17);

  if (v16)
  {

    v8 = v16;
LABEL_15:
    *a2 = v8;
    *(a2 + 8) = v5;
    *(a2 + 16) = v7;
    return;
  }

LABEL_25:
  __break(1u);
}

uint64_t static CustomMaterial.EmissiveColor.zero.getter@<X0>(uint64_t a1@<X8>)
{
  result = specialized SIMD4<>.cgColor.getter(0);
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t MaterialScalarParameter.rekitMinus(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  if (*v2 < 0)
  {
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    outlined consume of MaterialScalarParameter(*v2);
    result = outlined consume of MaterialScalarParameter(v4);
    *a2 = COERCE_UNSIGNED_INT(*&v5 - *&v4);
    return result;
  }

  outlined copy of MaterialScalarParameter(v4);
  outlined consume of MaterialScalarParameter(v5);
  outlined consume of MaterialScalarParameter(v4);
  *a2 = v5;

  return outlined copy of MaterialScalarParameter(v5);
}

uint64_t MaterialScalarParameter.rekitPlus(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  if (*v2 < 0)
  {
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    outlined consume of MaterialScalarParameter(*v2);
    result = outlined consume of MaterialScalarParameter(v4);
    *a2 = COERCE_UNSIGNED_INT(*&v4 + *&v5);
    return result;
  }

  outlined copy of MaterialScalarParameter(v4);
  outlined consume of MaterialScalarParameter(v5);
  outlined consume of MaterialScalarParameter(v4);
  *a2 = v5;

  return outlined copy of MaterialScalarParameter(v5);
}

Swift::Void __swiftcall MaterialScalarParameter.scale(by:)(Swift::Double by)
{
  if ((*v1 & 0x8000000000000000) == 0)
  {
    v3 = COERCE_FLOAT(*v1);
    outlined consume of MaterialScalarParameter(*v1);
    v4 = by;
    *v1 = COERCE_UNSIGNED_INT(v4 * v3);
  }
}

double MaterialScalarParameter.magnitudeSquared.getter()
{
  result = (COERCE_FLOAT(*v0) * COERCE_FLOAT(*v0));
  if (*v0 < 0)
  {
    return 0.0;
  }

  return result;
}

uint64_t protocol witness for RealityKitAdditiveArithmetic.rekitMinus(_:) in conformance MaterialScalarParameter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  if (*v2 < 0)
  {
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    outlined consume of MaterialScalarParameter(*v2);
    result = outlined consume of MaterialScalarParameter(v4);
    *a2 = COERCE_UNSIGNED_INT(*&v5 - *&v4);
    return result;
  }

  outlined copy of MaterialScalarParameter(v4);
  outlined consume of MaterialScalarParameter(v5);
  outlined consume of MaterialScalarParameter(v4);
  *a2 = v5;

  return outlined copy of MaterialScalarParameter(v5);
}

uint64_t protocol witness for RealityKitAdditiveArithmetic.rekitPlus(_:) in conformance MaterialScalarParameter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  if (*v2 < 0)
  {
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    outlined consume of MaterialScalarParameter(*v2);
    result = outlined consume of MaterialScalarParameter(v4);
    *a2 = COERCE_UNSIGNED_INT(*&v4 + *&v5);
    return result;
  }

  outlined copy of MaterialScalarParameter(v4);
  outlined consume of MaterialScalarParameter(v5);
  outlined consume of MaterialScalarParameter(v4);
  *a2 = v5;

  return outlined copy of MaterialScalarParameter(v5);
}

uint64_t protocol witness for RealityKitVectorArithmetic.scale(by:) in conformance MaterialScalarParameter(double a1)
{
  result = *v1;
  if ((*v1 & 0x8000000000000000) == 0)
  {
    v4 = COERCE_FLOAT(*v1);
    result = outlined consume of MaterialScalarParameter(result);
    v5 = a1;
    *v1 = COERCE_UNSIGNED_INT(v5 * v4);
  }

  return result;
}

double protocol witness for RealityKitVectorArithmetic.magnitudeSquared.getter in conformance MaterialScalarParameter()
{
  result = (COERCE_FLOAT(*v0) * COERCE_FLOAT(*v0));
  if (*v0 < 0)
  {
    return 0.0;
  }

  return result;
}

uint64_t _Proto_AnyAnimatableProperty_v1.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(*a2 + *MEMORY[0x1E69E6CE8] + 8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v18 - v9;
  v18[0] = *v11;
  v18[1] = v6;
  v18[2] = v12;
  v18[3] = v13;
  v18[4] = v14;
  v18[5] = v15;
  type metadata accessor for _Proto_AnyAnimatableProperty_v1.PropertyStorage();
  (*(v7 + 16))(v10, a1, v6);
  v16 = _Proto_AnyAnimatableProperty_v1.PropertyStorage.__allocating_init(_:_:)(v10, a2);
  result = (*(v7 + 8))(a1, v6);
  *a3 = v16;
  return result;
}

uint64_t _Proto_AnyAnimatableProperty_v1.PropertyStorage.__allocating_init(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  (*(*(*(*v7 + 192) - 8) + 32))(v7 + *(*v7 + 232), a1);
  *(v7 + *(*v7 + 240)) = a2;
  return v7;
}

uint64_t static _Proto_AnyAnimatableProperty_v1.zero.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for _Proto_AnyAnimatableProperty_v1.TypeErasedStorage();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

Swift::Void __swiftcall _Proto_AnyAnimatableProperty_v1.TypeErasedStorage.debugPrintValue()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 16) = xmmword_1C1887600;
  *(v0 + 56) = v1;
  strcpy((v0 + 32), "UnknownValue");
  *(v0 + 45) = 0;
  *(v0 + 46) = -5120;
  print(_:separator:terminator:)();
}

uint64_t _Proto_AnyAnimatableProperty_v1.TypeErasedStorage.processAdd(_:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  type metadata accessor for _Proto_AnyAnimatableProperty_v1.TypeErasedStorage();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

Swift::Void __swiftcall _Proto_AnyAnimatableProperty_v1.PropertyStorage.debugPrintValue()()
{
  v1 = v0;
  v2 = *(*v0 + 192);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  (MEMORY[0x1EEE9AC00])();
  v6 = &v11 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C1887600;
  v12 = 0;
  v13 = 0xE000000000000000;
  MEMORY[0x1C68F3410](0x203D2065756C6156, 0xE800000000000000);
  v8 = *(*v0 + 232);
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v8, v2);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v3 + 8))(v6, v2);
  v9 = v12;
  v10 = v13;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 32) = v9;
  *(v7 + 40) = v10;
  print(_:separator:terminator:)();
}

uint64_t _Proto_AnyAnimatableProperty_v1.PropertyStorage.assignProperty(toComponent:)(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - v5;
  v8 = *(v1 + *(v7 + 240));
  v9 = *(v7 + 232);
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v9, v2);
  return swift_setAtWritableKeyPath();
}

uint64_t _Proto_AnyAnimatableProperty_v1.PropertyStorage.processAddAndAssign(_:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  result = swift_dynamicCastClass();
  if (result)
  {
    v15 = result;
    v16 = *(v2 + 232);
    swift_beginAccess();
    v24 = v13;
    v17 = *(v4 + 16);
    v17(v10, &v1[v16], v3);
    v18 = *v15;
    v23 = v2;
    v19 = *(v18 + 232);
    swift_beginAccess();
    v17(v7, v15 + v19, v3);
    v20 = v24;
    (*(*(v23 + 208) + 16))(v7, v3);
    v21 = *(v4 + 8);
    v21(v7, v3);
    v21(v10, v3);
    swift_beginAccess();
    (*(v4 + 40))(&v1[v16], v20, v3);
    return swift_endAccess();
  }

  return result;
}

uint64_t _Proto_AnyAnimatableProperty_v1.PropertyStorage.processSubtractAndAssign(_:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  result = swift_dynamicCastClass();
  if (result)
  {
    v15 = result;
    v16 = *(v2 + 232);
    swift_beginAccess();
    v24 = v13;
    v17 = *(v4 + 16);
    v17(v10, &v1[v16], v3);
    v18 = *v15;
    v23 = v2;
    v19 = *(v18 + 232);
    swift_beginAccess();
    v17(v7, v15 + v19, v3);
    v20 = v24;
    (*(*(v23 + 208) + 8))(v7, v3);
    v21 = *(v4 + 8);
    v21(v7, v3);
    v21(v10, v3);
    swift_beginAccess();
    (*(v4 + 40))(&v1[v16], v20, v3);
    return swift_endAccess();
  }

  return result;
}

uint64_t _Proto_AnyAnimatableProperty_v1.PropertyStorage.processAdd(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = a2;
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x1EEE9AC00](a1);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v37 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v40 = v14;
  v41 = v37 - v15;
  v16 = swift_dynamicCastClass();
  v17 = v3[29];
  v18 = (v6 + 2);
  if (v16)
  {
    v19 = v16;
    swift_beginAccess();
    v20 = v6[2];
    v20(v12, v2 + v17, v5);
    v38 = v20;
    v21 = *(*v19 + 232);
    swift_beginAccess();
    v20(v9, v19 + v21, v5);
    v22 = v4[26];
    v23 = *(v22 + 16);

    v37[1] = v6 + 2;
    v23(v9, v5, v22);
    v24 = v6[1];
    v24(v9, v5);
    v24(v12, v5);
    v25 = v41;
    v38(v12, v41, v5);
    v26 = *(v2 + *(*v2 + 240));
    v27 = v4[25];
    v29 = v4[27];
    v28 = v4[28];

    _Proto_AnyAnimatableProperty_v1.init<A>(_:_:)(v12, v26, v39);

    return (v24)(v25, v5);
  }

  else
  {
    swift_beginAccess();
    v31 = v41;
    (*v18)(v41, v2 + v17, v5);
    v32 = *(v2 + *(*v2 + 240));
    v33 = v4[25];
    v34 = v4[26];
    v36 = v4[27];
    v35 = v4[28];

    return _Proto_AnyAnimatableProperty_v1.init<A>(_:_:)(v31, v32, v39);
  }
}

uint64_t _Proto_AnyAnimatableProperty_v1.PropertyStorage.processSubtract(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = a2;
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x1EEE9AC00](a1);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v37 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v40 = v14;
  v41 = v37 - v15;
  v16 = swift_dynamicCastClass();
  v17 = v3[29];
  v18 = (v6 + 2);
  if (v16)
  {
    v19 = v16;
    swift_beginAccess();
    v20 = v6[2];
    v20(v12, v2 + v17, v5);
    v38 = v20;
    v21 = *(*v19 + 232);
    swift_beginAccess();
    v20(v9, v19 + v21, v5);
    v22 = v4[26];
    v23 = *(v22 + 8);

    v37[1] = v6 + 2;
    v23(v9, v5, v22);
    v24 = v6[1];
    v24(v9, v5);
    v24(v12, v5);
    v25 = v41;
    v38(v12, v41, v5);
    v26 = *(v2 + *(*v2 + 240));
    v27 = v4[25];
    v29 = v4[27];
    v28 = v4[28];

    _Proto_AnyAnimatableProperty_v1.init<A>(_:_:)(v12, v26, v39);

    return (v24)(v25, v5);
  }

  else
  {
    swift_beginAccess();
    v31 = v41;
    (*v18)(v41, v2 + v17, v5);
    v32 = *(v2 + *(*v2 + 240));
    v33 = v4[25];
    v34 = v4[26];
    v36 = v4[27];
    v35 = v4[28];

    return _Proto_AnyAnimatableProperty_v1.init<A>(_:_:)(v31, v32, v39);
  }
}

Swift::Void __swiftcall _Proto_AnyAnimatableProperty_v1.PropertyStorage.processScale(_:)(Swift::Double a1)
{
  v3 = *v1;
  v4 = *(*v1 + 232);
  swift_beginAccess();
  (*(*(v3 + 216) + 8))(*(v3 + 192), a1);
  swift_endAccess();
}

Swift::Double __swiftcall _Proto_AnyAnimatableProperty_v1.PropertyStorage.processMagnitudeSquared()()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  (MEMORY[0x1EEE9AC00])();
  v6 = &v10 - v5;
  v7 = *(v1 + 232);
  swift_beginAccess();
  (*(v3 + 16))(v6, v0 + v7, v2);
  v8 = (*(*(v1 + 216) + 16))(v2);
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t _Proto_AnyAnimatableProperty_v1.PropertyStorage.processEqual(_:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20[-v9];
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v13 = *(v2 + 232);
    swift_beginAccess();
    v14 = v4[2];
    v14(v10, &v1[v13], v3);
    v15 = *(*v12 + 232);
    swift_beginAccess();
    v14(v7, (v12 + v15), v3);
    v16 = *(v2 + 224);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    v18 = v4[1];
    v18(v7, v3);
    v18(v10, v3);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t _Proto_AnyAnimatableProperty_v1.PropertyStorage.__ivar_destroyer()
{
  (*(*(*(*v0 + 192) - 8) + 8))(v0 + *(*v0 + 232));
  v1 = *(v0 + *(*v0 + 240));
}

uint64_t _Proto_AnyAnimatableProperty_v1.PropertyStorage.deinit()
{
  (*(*(*(*v0 + 192) - 8) + 8))(v0 + *(*v0 + 232));
  v1 = *(v0 + *(*v0 + 240));

  return v0;
}

uint64_t _Proto_AnyAnimatableProperty_v1.PropertyStorage.__deallocating_deinit()
{
  _Proto_AnyAnimatableProperty_v1.PropertyStorage.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Bool __swiftcall ComponentAnimatableData.hasValues()()
{
  v2 = v0;
  v3 = *v1;
  v4 = type metadata accessor for AnyKeyPath();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = type metadata accessor for _Proto_AnyAnimatableProperty_v1();
  return (MEMORY[0x1C68F3180](v3, v4, v7, MEMORY[0x1E69E6930]) & 1) == 0;
}

Swift::Void __swiftcall ComponentAnimatableData.debugPrintProperties()()
{
  v1 = *v0;
  type metadata accessor for AnyKeyPath();
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
    while (1)
    {
      v7 = v6;
LABEL_9:
      v8 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v9 = *(**(*(v1 + 56) + ((v7 << 9) | (8 * v8))) + 96);

      v9(v10);

      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return;
    }

    if (v7 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }
}

uint64_t ComponentAnimatableData.assignProperties(toComponent:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  v9 = *(v3 + 32);
  v23 = v11;
  v24 = v10;
  v22 = v9;
  (v9)(v7, v11, v5);
  type metadata accessor for AnyKeyPath();
  v12 = 1 << *(v8 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v8 + 64);
  v15 = (v12 + 63) >> 6;

  for (i = 0; v14; result = )
  {
    v18 = i;
LABEL_9:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = *(**(*(v8 + 56) + ((v18 << 9) | (8 * v19))) + 104);

    v20(v7);
  }

  while (1)
  {
    v18 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      return v22(v23, v7, v24);
    }

    v14 = *(v8 + 64 + 8 * v18);
    ++i;
    if (v14)
    {
      i = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t static ComponentAnimatableData.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for AnyKeyPath();
  v5 = type metadata accessor for _Proto_AnyAnimatableProperty_v1();
  v6 = MEMORY[0x1E69E6930];
  v26 = v2;
  v7 = MEMORY[0x1C68F3170](v2, v4, v5, MEMORY[0x1E69E6930]);
  v24 = v3;
  if (v7 != MEMORY[0x1C68F3170](v3, v4, v5, v6))
  {
    return 0;
  }

  v8 = MEMORY[0x1E69E6930];
  v22 = v5;
  v23 = v4;
  v9 = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(v26, v4);
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  v25 = v9;

  v16 = 0;
  while (v13)
  {
    v17 = v23;
LABEL_12:
    v19 = *(*(v25 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v13)))));
    v27 = v19;
    swift_retain_n();
    MEMORY[0x1C68F31A0](&v28, &v27, v26, v17, v22, v8);

    v20 = v28;
    if (!v28)
    {

LABEL_19:

      return 0;
    }

    v27 = v19;

    MEMORY[0x1C68F31A0](&v28, &v27, v24, v17, v22, v8);

    if (!v28)
    {

      goto LABEL_19;
    }

    v13 &= v13 - 1;
    v21 = (*(*v20 + 168))(v28);

    if ((v21 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v17 = v23;
  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v14)
    {

      return 1;
    }

    v13 = *(v10 + 8 * v18);
    ++v16;
    if (v13)
    {
      v16 = v18;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t static ComponentAnimatableData.+= infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = type metadata accessor for AnyKeyPath();
  v5 = type metadata accessor for _Proto_AnyAnimatableProperty_v1();
  v6 = MEMORY[0x1E69E6930];
  v7 = MEMORY[0x1C68F3170](v3, v4, v5, MEMORY[0x1E69E6930]);
  v26 = v2;
  result = MEMORY[0x1C68F3170](v2, v4, v5, v6);
  if (v7 == result)
  {
    v24 = v5;
    v25 = v4;
    v9 = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(v3, v4);
    v10 = v9 + 64;
    v11 = 1 << *(v9 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v9 + 64);
    v14 = (v11 + 63) >> 6;
    v27 = v9;

    v15 = 0;
    v23 = v10;
    if (v13)
    {
      while (1)
      {
        v16 = v15;
        v17 = MEMORY[0x1E69E6930];
        v19 = v24;
        v18 = v25;
LABEL_10:
        v20 = *(*(v27 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v13)))));
        v21 = *a1;
        v29 = v20;
        swift_retain_n();
        MEMORY[0x1C68F31A0](&v30, &v29, v21, v18, v19, v17);

        v22 = v30;
        if (!v30)
        {
          break;
        }

        v29 = v20;

        MEMORY[0x1C68F31A0](&v30, &v29, v26, v18, v19, v17);

        if (!v30)
        {

          break;
        }

        v13 &= v13 - 1;
        (*(*v22 + 128))(&v29, v30);
        type metadata accessor for Dictionary();
        Dictionary.updateValue(_:forKey:)();

        v15 = v16;
        v10 = v23;
        if (!v13)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v17 = MEMORY[0x1E69E6930];
      v19 = v24;
      v18 = v25;
      while (1)
      {
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v16 >= v14)
        {
        }

        v13 = *(v10 + 8 * v16);
        ++v15;
        if (v13)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t static ComponentAnimatableData.-= infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = type metadata accessor for AnyKeyPath();
  v5 = type metadata accessor for _Proto_AnyAnimatableProperty_v1();
  v6 = MEMORY[0x1E69E6930];
  v7 = MEMORY[0x1C68F3170](v3, v4, v5, MEMORY[0x1E69E6930]);
  v26 = v2;
  result = MEMORY[0x1C68F3170](v2, v4, v5, v6);
  if (v7 == result)
  {
    v24 = v5;
    v25 = v4;
    v9 = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(v3, v4);
    v10 = v9 + 64;
    v11 = 1 << *(v9 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v9 + 64);
    v14 = (v11 + 63) >> 6;
    v27 = v9;

    v15 = 0;
    v23 = v10;
    if (v13)
    {
      while (1)
      {
        v16 = v15;
        v17 = MEMORY[0x1E69E6930];
        v19 = v24;
        v18 = v25;
LABEL_10:
        v20 = *(*(v27 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v13)))));
        v21 = *a1;
        v29 = v20;
        swift_retain_n();
        MEMORY[0x1C68F31A0](&v30, &v29, v21, v18, v19, v17);

        v22 = v30;
        if (!v30)
        {
          break;
        }

        v29 = v20;

        MEMORY[0x1C68F31A0](&v30, &v29, v26, v18, v19, v17);

        if (!v30)
        {

          break;
        }

        v13 &= v13 - 1;
        (*(*v22 + 136))(&v29, v30);
        type metadata accessor for Dictionary();
        Dictionary.updateValue(_:forKey:)();

        v15 = v16;
        v10 = v23;
        if (!v13)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v17 = MEMORY[0x1E69E6930];
      v19 = v24;
      v18 = v25;
      while (1)
      {
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v16 >= v14)
        {
        }

        v13 = *(v10 + 8 * v16);
        ++v15;
        if (v13)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t static ComponentAnimatableData.- infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = type metadata accessor for AnyKeyPath();
  v7 = type metadata accessor for _Proto_AnyAnimatableProperty_v1();

  v9 = MEMORY[0x1E69E6930];
  v10 = MEMORY[0x1C68F3170](v8, v6, v7, MEMORY[0x1E69E6930]);
  v29 = v5;
  if (v10 == MEMORY[0x1C68F3170](v5, v6, v7, v9))
  {
    v25 = a3;
    v33 = v4;
    v28 = v6;
    v11 = v6;
    v12 = MEMORY[0x1E69E6930];
    v13 = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(v4, v11);
    v14 = v13 + 64;
    v15 = 1 << *(v13 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v13 + 64);
    v18 = (v15 + 63) >> 6;
    v30 = v13;

    v20 = 0;
    v26 = v18;
    v27 = v4;
    if (v17)
    {
      while (1)
      {
        v21 = v20;
        v22 = v28;
LABEL_10:
        v23 = *(*(v30 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v17)))));
        v31 = v23;
        swift_retain_n();
        MEMORY[0x1C68F31A0](&v32, &v31, v4, v22, v7, v12);

        v24 = v32;
        if (!v32)
        {

          goto LABEL_20;
        }

        v31 = v23;

        MEMORY[0x1C68F31A0](&v32, &v31, v29, v22, v7, v12);

        if (!v32)
        {
          break;
        }

        v17 &= v17 - 1;
        (*(*v24 + 136))(&v31, v32);
        v18 = v26;
        type metadata accessor for Dictionary();
        Dictionary.updateValue(_:forKey:)();

        v20 = v21;
        v4 = v27;
        if (!v17)
        {
          goto LABEL_6;
        }
      }

LABEL_20:

      *v25 = v27;
    }

    else
    {
LABEL_6:
      v22 = v28;
      while (1)
      {
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v21 >= v18)
        {

          *v25 = v33;
          return result;
        }

        v17 = *(v14 + 8 * v21);
        ++v20;
        if (v17)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {

    *a3 = v4;
  }

  return result;
}

uint64_t static ComponentAnimatableData.+ infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = type metadata accessor for AnyKeyPath();
  v7 = type metadata accessor for _Proto_AnyAnimatableProperty_v1();

  v9 = MEMORY[0x1E69E6930];
  v10 = MEMORY[0x1C68F3170](v8, v6, v7, MEMORY[0x1E69E6930]);
  v29 = v5;
  if (v10 == MEMORY[0x1C68F3170](v5, v6, v7, v9))
  {
    v25 = a3;
    v33 = v4;
    v28 = v6;
    v11 = v6;
    v12 = MEMORY[0x1E69E6930];
    v13 = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(v4, v11);
    v14 = v13 + 64;
    v15 = 1 << *(v13 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v13 + 64);
    v18 = (v15 + 63) >> 6;
    v30 = v13;

    v20 = 0;
    v26 = v18;
    v27 = v4;
    if (v17)
    {
      while (1)
      {
        v21 = v20;
        v22 = v28;
LABEL_10:
        v23 = *(*(v30 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v17)))));
        v31 = v23;
        swift_retain_n();
        MEMORY[0x1C68F31A0](&v32, &v31, v4, v22, v7, v12);

        v24 = v32;
        if (!v32)
        {

          goto LABEL_20;
        }

        v31 = v23;

        MEMORY[0x1C68F31A0](&v32, &v31, v29, v22, v7, v12);

        if (!v32)
        {
          break;
        }

        v17 &= v17 - 1;
        (*(*v24 + 128))(&v31, v32);
        v18 = v26;
        type metadata accessor for Dictionary();
        Dictionary.updateValue(_:forKey:)();

        v20 = v21;
        v4 = v27;
        if (!v17)
        {
          goto LABEL_6;
        }
      }

LABEL_20:

      *v25 = v27;
    }

    else
    {
LABEL_6:
      v22 = v28;
      while (1)
      {
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v21 >= v18)
        {

          *v25 = v33;
          return result;
        }

        v17 = *(v14 + 8 * v21);
        ++v20;
        if (v17)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {

    *a3 = v4;
  }

  return result;
}

Swift::Void __swiftcall ComponentAnimatableData.scale(by:)(Swift::Double by)
{
  v3 = v1;
  v5 = *v2;
  v6 = type metadata accessor for AnyKeyPath();
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = type metadata accessor for _Proto_AnyAnimatableProperty_v1();
  v26 = v6;
  v10 = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(v5, v6);
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;
  v25 = v10;

  v16 = 0;
  while (v14)
  {
    v17 = v16;
    v19 = v26;
    v18 = v27;
    v20 = MEMORY[0x1E69E6930];
LABEL_11:
    v21 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v22 = *v18;
    v28 = *(*(v25 + 48) + ((v17 << 9) | (8 * v21)));

    v23 = MEMORY[0x1C68F31A0](&v29, &v28, v22, v19, v9, v20);
    v24 = v29;
    if (v29)
    {
      (*(*v29 + 144))(v23, by);
      v28 = v24;
      type metadata accessor for Dictionary();

      Dictionary.updateValue(_:forKey:)();
    }

    v16 = v17;
  }

  v19 = v26;
  v18 = v27;
  v20 = MEMORY[0x1E69E6930];
  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      return;
    }

    v14 = *(v11 + 8 * v17);
    ++v16;
    if (v14)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t ComponentAnimatableData.magnitudeSquared.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for AnyKeyPath();
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for _Proto_AnyAnimatableProperty_v1();
  v8 = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(v3, v4);
  v9 = v8;
  v10 = v8 + 64;
  v11 = 1 << *(v8 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v8 + 64);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  v17 = 0.0;
  while (1)
  {
    v18 = v16;
    if (!v13)
    {
      break;
    }

LABEL_8:
    v19 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v22 = *(*(v9 + 48) + ((v16 << 9) | (8 * v19)));

    v20 = MEMORY[0x1C68F31A0](&v23, &v22, v3, v4, v7, MEMORY[0x1E69E6930]);
    if (v23)
    {
      v21 = (*(*v23 + 160))(v20);

      v17 = v17 + v21;
    }

    else
    {
    }
  }

  while (1)
  {
    v16 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v16 >= v14)
    {
    }

    v13 = *(v10 + 8 * v16);
    ++v18;
    if (v13)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t ComponentAnimatableData.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AnyKeyPath();
  v3 = type metadata accessor for _Proto_AnyAnimatableProperty_v1();
  swift_getTupleTypeMetadata2();
  v4 = static Array._allocateUninitialized(_:)();
  v5 = specialized Dictionary.init(dictionaryLiteral:)(v4, v2, v3, MEMORY[0x1E69E6930]);

  *a1 = v5;
  return result;
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance ComponentAnimatableData<A>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>, uint64_t a4@<X2>)
{
  v5 = *(a4 + 16);
  v4 = *(a4 + 24);
  return static ComponentAnimatableData.+ infix(_:_:)(a1, a2, a3);
}

uint64_t protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance ComponentAnimatableData<A>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static ComponentAnimatableData.+= infix(_:_:)(a1, a2);
}

uint64_t protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance ComponentAnimatableData<A>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>, uint64_t a4@<X2>)
{
  v5 = *(a4 + 16);
  v4 = *(a4 + 24);
  return static ComponentAnimatableData.- infix(_:_:)(a1, a2, a3);
}

uint64_t protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance ComponentAnimatableData<A>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static ComponentAnimatableData.-= infix(_:_:)(a1, a2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ComponentAnimatableData<A>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static ComponentAnimatableData.== infix(_:_:)(a1, a2);
}

uint64_t static _ImplicitlyAnimatableBuiltinComponent.animation(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static _ImplicitlyAnimatableBuiltinComponent.animation(from:to:)(a1, a2, a3, a4, a5, a6);
}

{
  v7 = *(a6 + 8);
  static ComponentAnimatableData.zero.getter(a5, v7);

  return static ComponentAnimatableData.zero.getter(a5, v7);
}

uint64_t ImplicitAnimatableContext.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AnyKeyPath();
  v3 = type metadata accessor for _Proto_AnyAnimatableProperty_v1();
  swift_getTupleTypeMetadata2();
  v4 = static Array._allocateUninitialized(_:)();
  v5 = MEMORY[0x1E69E6930];
  specialized Dictionary.init(dictionaryLiteral:)(v4, v2, v3, MEMORY[0x1E69E6930]);

  v6 = static Array._allocateUninitialized(_:)();
  specialized Dictionary.init(dictionaryLiteral:)(v6, v2, v3, v5);

  v7 = static Array._allocateUninitialized(_:)();
  v8 = specialized Dictionary.init(dictionaryLiteral:)(v7, v2, v3, v5);

  *a1 = v8;
  v9 = static Array._allocateUninitialized(_:)();
  v10 = specialized Dictionary.init(dictionaryLiteral:)(v9, v2, v3, v5);

  a1[1] = v10;
  return result;
}

uint64_t registerAnimatableProperties<A>(_:)(void *a1, uint64_t *a2, uint64_t (*a3)(uint64_t *))
{
  ImplicitAnimatableContext.init()(v8);
  result = a3(v8);
  v7 = v8[1];
  *a1 = v8[0];
  *a2 = v7;
  return result;
}

uint64_t specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(uint64_t result, uint64_t *a2, float32x4_t a3, float32x4_t a4)
{
  if ((vminv_u16(vmovn_s32(vceqq_f32(a3, a4))) & 1) == 0)
  {
    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit9TransformV_So10simd_quatfaGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit9TransformV_So10simd_quatfaGMR);
    v6 = swift_allocObject();
    v6[1] = a3;
    v6[2].n128_u64[0] = v5;
    swift_retain_n();
    v7 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *a2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, v5, isUniquelyReferenced_nonNull_native);
    *a2 = v14;
    v9 = swift_allocObject();
    v9[1] = a4;
    v9[2].n128_u64[0] = v5;

    v10 = a2[1];
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v15 = a2[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, v5, v11);

    a2[1] = v15;
  }

  return result;
}

uint64_t specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v10 = a1[1];
  v33 = *a1;
  v34 = v10;
  v35 = *(a1 + 8);
  v11 = a2[1];
  v30 = *a2;
  v31 = v11;
  v32 = *(a2 + 8);
  result = specialized static PhysicallyBasedMaterial.SheenColor.== infix(_:_:)(&v33, &v30);
  if ((result & 1) == 0)
  {
    v13 = v33;
    v14 = v34;
    v15 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    *(v16 + 32) = v14;
    *(v16 + 48) = v15;
    *(v16 + 56) = a3;
    swift_retain_n();
    v17 = v13;
    outlined copy of MaterialParameters.Texture?(*(&v13 + 1), v14);
    v18 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *a4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, a3, isUniquelyReferenced_nonNull_native);
    v20 = v30;
    *a4 = v28;
    v21 = *(&v30 + 1);
    v22 = v31;
    v23 = v32;
    v24 = swift_allocObject();
    *(v24 + 16) = v20;
    *(v24 + 24) = v21;
    *(v24 + 32) = v22;
    *(v24 + 48) = v23;
    *(v24 + 56) = a3;

    v25 = v20;
    outlined copy of MaterialParameters.Texture?(v21, v22);
    v26 = a4[1];
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v29 = a4[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, a3, v27);

    a4[1] = v29;
  }

  return result;
}

uint64_t specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = result;
  if (result < 0)
  {
    if ((a2 & 0x8000000000000000) == 0 || *((result & 0x7FFFFFFFFFFFFFFFLL) + 0x10) != *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10))
    {
      goto LABEL_7;
    }
  }

  else if (a2 < 0 || *&result != *&a2)
  {
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_AF23MaterialScalarParameterOGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_AF23MaterialScalarParameterOGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = a3;
    swift_retain_n();
    outlined copy of MaterialScalarParameter(v7);
    v9 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *a4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, a3, isUniquelyReferenced_nonNull_native);
    *a4 = v14;
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;

    outlined copy of MaterialScalarParameter(a2);
    v12 = a4[1];
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v15 = a4[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, a3, v13);

    a4[1] = v15;
  }

  return result;
}

uint64_t specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(void *a1, uint64_t a2, int a3, void *a4, uint64_t a5, int a6, uint64_t a7, uint64_t *a8, void (*a9)(void), uint64_t a10, uint64_t *a11, uint64_t *a12)
{
  a9();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a11, a12);
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = a2;
    *(v15 + 32) = a3;
    *(v15 + 40) = a7;

    v16 = *a8;
    swift_retain_n();
    v17 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *a8;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, a7, isUniquelyReferenced_nonNull_native);
    *a8 = v23;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;
    *(v19 + 32) = a6;
    *(v19 + 40) = a7;

    v20 = a8[1];

    v21 = a4;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v24 = a8[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, a7, v22);

    a8[1] = v24;
  }

  return result;
}

uint64_t specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(__n128 *, uint64_t, uint64_t), float32x4_t a6, float32x4_t a7)
{
  v9 = vmovn_s32(vceqq_f32(a6, a7));
  if ((v9.i8[0] & 1) == 0 || (v9.i8[2] & 1) == 0 || (v9.i8[4] & 1) == 0)
  {
    v10 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v11 = swift_allocObject();
    v11[1] = a6;
    v11[2].n128_u64[0] = v10;
    swift_retain_n();
    v12 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *a2;
    a5(v11, v10, isUniquelyReferenced_nonNull_native);
    *a2 = v19;
    v14 = swift_allocObject();
    v14[1] = a7;
    v14[2].n128_u64[0] = v10;

    v15 = a2[1];
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v20 = a2[1];
    a5(v14, v10, v16);

    a2[1] = v20;
  }

  return result;
}

uint64_t propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a7;
  v21 = a4;
  v22 = a6;
  v10 = *a3;
  v11 = *(*a3 + *MEMORY[0x1E69E6CE8] + 8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v18 - v14;
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    v19 = *(v12 + 16);
    v19(v15, a1, v11);
    swift_retain_n();
    _Proto_AnyAnimatableProperty_v1.init<A>(_:_:)(v15, a3, &v25);
    v23 = a3;
    v24 = v25;
    type metadata accessor for AnyKeyPath();
    v17 = *(v10 + *MEMORY[0x1E69E6CE8]);
    type metadata accessor for _Proto_AnyAnimatableProperty_v1();
    type metadata accessor for Dictionary();

    Dictionary.subscript.setter();
    v19(v15, a2, v11);

    _Proto_AnyAnimatableProperty_v1.init<A>(_:_:)(v15, a3, &v25);
    v23 = a3;
    v24 = v25;
    return Dictionary.subscript.setter();
  }

  return result;
}

uint64_t static Transform.animation(from:to:)(unint64_t *a1, unint64_t *a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  v10 = MEMORY[0x1E69E7CC0];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit9TransformVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit9TransformVGTt0g5Tf4g_n(v10);
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit9TransformVGTt0g5Tf4g_n(v10);

  v24 = v11;
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit9TransformVGTt0g5Tf4g_n(v10);

  v25 = v12;
  KeyPath = swift_getKeyPath();
  specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(KeyPath, &v24, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit9TransformV_s5SIMD3VySfGGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit9TransformV_s5SIMD3VySfGGMR, specialized _NativeDictionary.setValue(_:forKey:isUnique:), a3, a6);

  v14 = swift_getKeyPath();
  specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v14, &v24, a4, a7);

  v15 = swift_getKeyPath();
  specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v15, &v24, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit9TransformV_s5SIMD3VySfGGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit9TransformV_s5SIMD3VySfGGMR, specialized _NativeDictionary.setValue(_:forKey:isUnique:), a5, a8);

  v17 = v25;
  *a1 = v24;
  *a2 = v17;
  return result;
}

uint64_t static OpacityComponent.animation(from:to:)(unint64_t *a1, unint64_t *a2, float *a3, float *a4)
{
  v6 = *a3;
  v7 = *a4;
  v8 = MEMORY[0x1E69E7CC0];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE16OpacityComponentVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE16OpacityComponentVGTt0g5Tf4g_n(v8);
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE16OpacityComponentVGTt0g5Tf4g_n(v8);

  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE16OpacityComponentVGTt0g5Tf4g_n(v8);

  KeyPath = swift_getKeyPath();
  if (v6 == v7)
  {
  }

  else
  {
    v13 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA16OpacityComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA16OpacityComponentV_SfGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = v6;
    *(v14 + 24) = v13;
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v13, isUniquelyReferenced_nonNull_native);
    v16 = swift_allocObject();
    *(v16 + 16) = v7;
    *(v16 + 24) = v13;

    v17 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, v13, v17);
  }

  *a1 = v9;
  *a2 = v10;
  return result;
}

void ModelComponent.subscript.getter(uint64_t a1, void *a2)
{
  v3 = *(*a2 + *MEMORY[0x1E69E6CE8]);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11[-v7 - 8];
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v9 = *(v2 + 8);
    if (*(v9 + 16) > v6)
    {
      outlined init with copy of __REAssetService(v9 + 40 * v6 + 32, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
      swift_dynamicCast();
      swift_getAtKeyPath();
      (*(v4 + 8))(v8, v3);
      return;
    }
  }

  __break(1u);
}

uint64_t specialized ModelComponent.subscript.setter(unint64_t a1, float a2)
{
  v20 = a2;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = a1;
  v2 = *(v3 + 8);
  if (v2[2] <= a1)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    goto LABEL_5;
  }

  outlined init with copy of __REAssetService(&v2[5 * a1 + 4], v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
  if (!swift_dynamicCast())
  {

    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    return outlined destroy of BodyTrackingComponent?(&v7, &_s17RealityFoundation23PhysicallyBasedMaterialVSgMd, &_s17RealityFoundation23PhysicallyBasedMaterialVSgMR);
  }

  v18[6] = v13;
  v18[7] = v14;
  v18[8] = v15;
  v19 = v16;
  v18[2] = v9;
  v18[3] = v10;
  v18[4] = v11;
  v18[5] = v12;
  v18[0] = v7;
  v18[1] = v8;
  swift_setAtWritableKeyPath();
  *(&v8 + 1) = &type metadata for PhysicallyBasedMaterial;
  *&v9 = &protocol witness table for PhysicallyBasedMaterial;
  *&v7 = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v18, v7 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:

  result = outlined destroy of PhysicallyBasedMaterial(v18);
  if (v2[2] <= v4)
  {
    __break(1u);
  }

  else
  {
    v6 = &v2[5 * v4];
    __swift_destroy_boxed_opaque_existential_1(v6 + 4);
    result = outlined init with take of ForceEffectBase(&v7, (v6 + 4));
    *(v3 + 8) = v2;
  }

  return result;
}

{
  v10 = a2;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = a1;
  v2 = *(v3 + 8);
  if (v2[2] <= a1)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    goto LABEL_5;
  }

  outlined init with copy of __REAssetService(&v2[5 * a1 + 4], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
  if (!swift_dynamicCast())
  {

    memset(v7, 0, 354);
    return outlined destroy of BodyTrackingComponent?(v7, &_s17RealityFoundation14CustomMaterialVSgMd, &_s17RealityFoundation14CustomMaterialVSgMR);
  }

  memcpy(__dst, v7, 0x162uLL);
  swift_setAtWritableKeyPath();
  *(&v7[1] + 1) = &type metadata for CustomMaterial;
  *&v7[2] = &protocol witness table for CustomMaterial;
  *&v7[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(__dst, *&v7[0] + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:

  result = outlined destroy of CustomMaterial(__dst);
  if (v2[2] <= v4)
  {
    __break(1u);
  }

  else
  {
    v6 = &v2[5 * v4];
    __swift_destroy_boxed_opaque_existential_1(v6 + 4);
    result = outlined init with take of ForceEffectBase(v7, (v6 + 4));
    *(v3 + 8) = v2;
  }

  return result;
}

uint64_t specialized ModelComponent.subscript.setter(__int128 *a1, unint64_t a2)
{
  v5 = a1[1];
  v23 = *a1;
  v24 = v5;
  v25 = *(a1 + 8);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = a2;
  v4 = *(v2 + 8);
  if (v4[2] <= a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    goto LABEL_5;
  }

  outlined init with copy of __REAssetService(&v4[5 * a2 + 4], v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
  if (!swift_dynamicCast())
  {
    v8 = *(&v23 + 1);
    v9 = v24;

    outlined consume of MaterialParameters.Texture?(v8, v9);

    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    return outlined destroy of BodyTrackingComponent?(&v10, &_s17RealityFoundation23PhysicallyBasedMaterialVSgMd, &_s17RealityFoundation23PhysicallyBasedMaterialVSgMR);
  }

  v21[6] = v16;
  v21[7] = v17;
  v21[8] = v18;
  v22 = v19;
  v21[2] = v12;
  v21[3] = v13;
  v21[4] = v14;
  v21[5] = v15;
  v21[0] = v10;
  v21[1] = v11;
  swift_setAtWritableKeyPath();
  *(&v11 + 1) = &type metadata for PhysicallyBasedMaterial;
  *&v12 = &protocol witness table for PhysicallyBasedMaterial;
  *&v10 = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v21, v10 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:

  result = outlined destroy of PhysicallyBasedMaterial(v21);
  if (v4[2] <= v3)
  {
    __break(1u);
  }

  else
  {
    v7 = &v4[5 * v3];
    __swift_destroy_boxed_opaque_existential_1(v7 + 4);
    result = outlined init with take of ForceEffectBase(&v10, (v7 + 4));
    *(v2 + 8) = v4;
  }

  return result;
}

{
  v5 = a1[1];
  v21 = *a1;
  v22 = v5;
  v23 = *(a1 + 8);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = a2;
  v4 = *(v2 + 8);
  if (v4[2] <= a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    goto LABEL_5;
  }

  outlined init with copy of __REAssetService(&v4[5 * a2 + 4], v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
  if (!swift_dynamicCast())
  {
    v8 = *(&v21 + 1);
    v9 = v22;

    outlined consume of MaterialParameters.Texture?(v8, v9);

    v16 = 0u;
    memset(v17, 0, 27);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    return outlined destroy of BodyTrackingComponent?(&v10, &_s10RealityKit14SimpleMaterialVSgMd, &_s10RealityKit14SimpleMaterialVSgMR);
  }

  v19[6] = v16;
  v20[0] = v17[0];
  *(v20 + 11) = *(v17 + 11);
  v19[2] = v12;
  v19[3] = v13;
  v19[4] = v14;
  v19[5] = v15;
  v19[0] = v10;
  v19[1] = v11;
  swift_setAtWritableKeyPath();
  *(&v11 + 1) = &type metadata for SimpleMaterial;
  *&v12 = &protocol witness table for SimpleMaterial;
  *&v10 = swift_allocObject();
  outlined init with copy of SimpleMaterial(v19, v10 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:

  result = outlined destroy of SimpleMaterial(v19);
  if (v4[2] <= v3)
  {
    __break(1u);
  }

  else
  {
    v7 = &v4[5 * v3];
    __swift_destroy_boxed_opaque_existential_1(v7 + 4);
    result = outlined init with take of ForceEffectBase(&v10, (v7 + 4));
    *(v2 + 8) = v4;
  }

  return result;
}

{
  v5 = a1[1];
  v22 = *a1;
  v23 = v5;
  v24 = *(a1 + 8);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = a2;
  v4 = *(v2 + 8);
  if (v4[2] <= a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    goto LABEL_5;
  }

  outlined init with copy of __REAssetService(&v4[5 * a2 + 4], v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
  if (!swift_dynamicCast())
  {
    v8 = *(&v22 + 1);
    v9 = v23;

    outlined consume of MaterialParameters.Texture?(v8, v9);

    v17 = 0u;
    memset(v18, 0, 30);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    return outlined destroy of BodyTrackingComponent?(&v10, &_s10RealityKit13UnlitMaterialVSgMd, &_s10RealityKit13UnlitMaterialVSgMR);
  }

  v20[6] = v16;
  v20[7] = v17;
  v21[0] = v18[0];
  *(v21 + 14) = *(v18 + 14);
  v20[2] = v12;
  v20[3] = v13;
  v20[4] = v14;
  v20[5] = v15;
  v20[0] = v10;
  v20[1] = v11;
  swift_setAtWritableKeyPath();
  *(&v11 + 1) = &type metadata for UnlitMaterial;
  *&v12 = &protocol witness table for UnlitMaterial;
  *&v10 = swift_allocObject();
  outlined init with copy of UnlitMaterial(v20, v10 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:

  result = outlined destroy of UnlitMaterial(v20);
  if (v4[2] <= v3)
  {
    __break(1u);
  }

  else
  {
    v7 = &v4[5 * v3];
    __swift_destroy_boxed_opaque_existential_1(v7 + 4);
    result = outlined init with take of ForceEffectBase(&v10, (v7 + 4));
    *(v2 + 8) = v4;
  }

  return result;
}

uint64_t specialized ModelComponent.subscript.setter(unint64_t a1, double a2)
{
  v20 = a2;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = a1;
  v2 = *(v3 + 8);
  if (v2[2] <= a1)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    goto LABEL_5;
  }

  outlined init with copy of __REAssetService(&v2[5 * a1 + 4], v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
  if (!swift_dynamicCast())
  {

    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    return outlined destroy of BodyTrackingComponent?(&v7, &_s17RealityFoundation23PhysicallyBasedMaterialVSgMd, &_s17RealityFoundation23PhysicallyBasedMaterialVSgMR);
  }

  v18[6] = v13;
  v18[7] = v14;
  v18[8] = v15;
  v19 = v16;
  v18[2] = v9;
  v18[3] = v10;
  v18[4] = v11;
  v18[5] = v12;
  v18[0] = v7;
  v18[1] = v8;
  swift_setAtWritableKeyPath();
  *(&v8 + 1) = &type metadata for PhysicallyBasedMaterial;
  *&v9 = &protocol witness table for PhysicallyBasedMaterial;
  *&v7 = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v18, v7 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:

  result = outlined destroy of PhysicallyBasedMaterial(v18);
  if (v2[2] <= v4)
  {
    __break(1u);
  }

  else
  {
    v6 = &v2[5 * v4];
    __swift_destroy_boxed_opaque_existential_1(v6 + 4);
    result = outlined init with take of ForceEffectBase(&v7, (v6 + 4));
    *(v3 + 8) = v2;
  }

  return result;
}

{
  v19 = a2;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = a1;
  v2 = *(v3 + 8);
  if (v2[2] <= a1)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    goto LABEL_5;
  }

  outlined init with copy of __REAssetService(&v2[5 * a1 + 4], v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
  if (!swift_dynamicCast())
  {

    v14 = 0u;
    memset(v15, 0, 30);
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    return outlined destroy of BodyTrackingComponent?(&v7, &_s10RealityKit13UnlitMaterialVSgMd, &_s10RealityKit13UnlitMaterialVSgMR);
  }

  v17[6] = v13;
  v17[7] = v14;
  v18[0] = v15[0];
  *(v18 + 14) = *(v15 + 14);
  v17[2] = v9;
  v17[3] = v10;
  v17[4] = v11;
  v17[5] = v12;
  v17[0] = v7;
  v17[1] = v8;
  swift_setAtWritableKeyPath();
  *(&v8 + 1) = &type metadata for UnlitMaterial;
  *&v9 = &protocol witness table for UnlitMaterial;
  *&v7 = swift_allocObject();
  outlined init with copy of UnlitMaterial(v17, v7 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:

  result = outlined destroy of UnlitMaterial(v17);
  if (v2[2] <= v4)
  {
    __break(1u);
  }

  else
  {
    v6 = &v2[5 * v4];
    __swift_destroy_boxed_opaque_existential_1(v6 + 4);
    result = outlined init with take of ForceEffectBase(&v7, (v6 + 4));
    *(v3 + 8) = v2;
  }

  return result;
}

{
  v10 = a2;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = a1;
  v2 = *(v3 + 8);
  if (v2[2] <= a1)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    goto LABEL_5;
  }

  outlined init with copy of __REAssetService(&v2[5 * a1 + 4], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
  if (!swift_dynamicCast())
  {

    memset(v7, 0, sizeof(v7));
    return outlined destroy of BodyTrackingComponent?(v7, &_s17RealityFoundation14CustomMaterialVSgMd, &_s17RealityFoundation14CustomMaterialVSgMR);
  }

  memcpy(__dst, v7, 0x162uLL);
  swift_setAtWritableKeyPath();
  *&v7[24] = &type metadata for CustomMaterial;
  *&v7[32] = &protocol witness table for CustomMaterial;
  *v7 = swift_allocObject();
  outlined init with copy of CustomMaterial(__dst, *v7 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:

  result = outlined destroy of CustomMaterial(__dst);
  if (v2[2] <= v4)
  {
    __break(1u);
  }

  else
  {
    v6 = &v2[5 * v4];
    __swift_destroy_boxed_opaque_existential_1(v6 + 4);
    result = outlined init with take of ForceEffectBase(v7, (v6 + 4));
    *(v3 + 8) = v2;
  }

  return result;
}

uint64_t specialized ModelComponent.subscript.setter(uint64_t a1, unint64_t a2)
{
  v19 = a1;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = a2;
  v2 = *(v3 + 8);
  if (v2[2] <= a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    goto LABEL_5;
  }

  outlined init with copy of __REAssetService(&v2[5 * a2 + 4], v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
  if (!swift_dynamicCast())
  {
    outlined consume of MaterialScalarParameter(a1);

    v14 = 0u;
    memset(v15, 0, 27);
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    return outlined destroy of BodyTrackingComponent?(&v8, &_s10RealityKit14SimpleMaterialVSgMd, &_s10RealityKit14SimpleMaterialVSgMR);
  }

  v17[6] = v14;
  v18[0] = v15[0];
  *(v18 + 11) = *(v15 + 11);
  v17[2] = v10;
  v17[3] = v11;
  v17[4] = v12;
  v17[5] = v13;
  v17[0] = v8;
  v17[1] = v9;
  swift_setAtWritableKeyPath();
  *(&v9 + 1) = &type metadata for SimpleMaterial;
  *&v10 = &protocol witness table for SimpleMaterial;
  *&v8 = swift_allocObject();
  outlined init with copy of SimpleMaterial(v17, v8 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:

  result = outlined destroy of SimpleMaterial(v17);
  if (v2[2] <= v4)
  {
    __break(1u);
  }

  else
  {
    v7 = &v2[5 * v4];
    __swift_destroy_boxed_opaque_existential_1(v7 + 4);
    result = outlined init with take of ForceEffectBase(&v8, (v7 + 4));
    *(v3 + 8) = v2;
  }

  return result;
}

uint64_t specialized ModelComponent.subscript.setter(void *a1, uint64_t a2, int a3, unint64_t a4)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = a4;
  v6 = *(v5 + 8);
  if (v6[2] <= a4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    goto LABEL_5;
  }

  outlined init with copy of __REAssetService(&v6[5 * a4 + 4], v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
  if (!swift_dynamicCast())
  {

    memset(v10, 0, sizeof(v10));
    return outlined destroy of BodyTrackingComponent?(v10, &_s17RealityFoundation14CustomMaterialVSgMd, &_s17RealityFoundation14CustomMaterialVSgMR);
  }

  memcpy(__dst, v10, 0x162uLL);
  swift_setAtWritableKeyPath();
  *&v10[24] = &type metadata for CustomMaterial;
  *&v10[32] = &protocol witness table for CustomMaterial;
  *v10 = swift_allocObject();
  outlined init with copy of CustomMaterial(__dst, *v10 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:

  result = outlined destroy of CustomMaterial(__dst);
  if (v6[2] <= v4)
  {
    __break(1u);
  }

  else
  {
    v9 = &v6[5 * v4];
    __swift_destroy_boxed_opaque_existential_1(v9 + 4);
    result = outlined init with take of ForceEffectBase(v10, (v9 + 4));
    *(v5 + 8) = v6;
  }

  return result;
}

unint64_t static ModelComponent.animation(from:to:)(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 8);
  v7 = *(a4 + 8);
  if (*(v6 + 16) == *(v7 + 16))
  {
    v8 = *(a4 + 16);
    v17 = *a4;
    v18 = *(a4 + 24);
    v9 = *(a3 + 24);
    v10 = *(a3 + 16);
    v11 = *a3;
    v12 = MEMORY[0x1E69E7CC0];
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit14ModelComponentVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit14ModelComponentVGTt0g5Tf4g_n(v12);
    v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit14ModelComponentVGTt0g5Tf4g_n(v12);

    v19 = v13;
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit14ModelComponentVGTt0g5Tf4g_n(v12);

    v20 = v14;
    closure #1 in static ModelComponent.animation(from:to:)(&v19, v11, v6, v9, v17, v7);
    result = v20;
    *a1 = v19;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
    *a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit14ModelComponentVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit14ModelComponentVGTt0g5Tf4g_n(v16);
  }

  *a2 = result;
  return result;
}

uint64_t closure #1 in static ModelComponent.animation(from:to:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v271 = *(a3 + 16);
  v272 = result;
  if (!v271)
  {
    return result;
  }

  v6 = a6;
  v7 = 0;
  v8 = a3 + 32;
  for (i = a6 + 32; ; i += 40)
  {
    v273 = v8;
    outlined init with copy of __REAssetService(v8, v306);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      memset(v307, 0, 146);
      v28 = v307;
      goto LABEL_24;
    }

    v308[6] = v307[6];
    v308[7] = v307[7];
    v308[8] = v307[8];
    LOWORD(v308[9]) = v307[9];
    v308[2] = v307[2];
    v308[3] = v307[3];
    v308[4] = v307[4];
    v308[5] = v307[5];
    v308[0] = v307[0];
    v308[1] = v307[1];
    if (v7 >= *(v6 + 16))
    {
      break;
    }

    outlined init with copy of __REAssetService(i, &v295);
    if (swift_dynamicCast())
    {
      v307[6] = v306[6];
      v307[7] = v306[7];
      v307[8] = v306[8];
      LOWORD(v307[9]) = v306[9];
      v307[2] = v306[2];
      v307[3] = v306[3];
      v307[4] = v306[4];
      v307[5] = v306[5];
      v307[0] = v306[0];
      v307[1] = v306[1];
      *(&v306[1] + 1) = &type metadata for PhysicallyBasedMaterial;
      *&v306[2] = &protocol witness table for PhysicallyBasedMaterial;
      *&v306[0] = swift_allocObject();
      outlined init with copy of PhysicallyBasedMaterial(v308, *&v306[0] + 16);
      PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(&v295, v306, 0, 0);
      v317[0] = v295;
      v317[1] = v296;
      v318 = v297;
      *(&v306[1] + 1) = &type metadata for PhysicallyBasedMaterial;
      *&v306[2] = &protocol witness table for PhysicallyBasedMaterial;
      *&v306[0] = swift_allocObject();
      outlined init with copy of PhysicallyBasedMaterial(v307, *&v306[0] + 16);
      PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(&v290, v306, 0, 0);
      v319[0] = v290;
      v319[1] = v291;
      v320 = v292;
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v23 = swift_getKeyPath();
      specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v317, v319, v23, v272, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_AA23PhysicallyBasedMaterialV9BaseColorVGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_AA23PhysicallyBasedMaterialV9BaseColorVGMR);

      outlined destroy of PhysicallyBasedMaterial.BaseColor(v319);
      outlined destroy of PhysicallyBasedMaterial.BaseColor(v317);
      *(&v306[1] + 1) = &type metadata for PhysicallyBasedMaterial;
      *&v306[2] = &protocol witness table for PhysicallyBasedMaterial;
      *&v306[0] = swift_allocObject();
      outlined init with copy of PhysicallyBasedMaterial(v308, *&v306[0] + 16);
      PhysicallyBasedMaterial.Roughness.init(material:alternateTintKey:)(v306, &v295);
      v24 = *&v295;
      outlined consume of MaterialParameters.Texture?(*(&v295 + 1), v296);
      *(&v306[1] + 1) = &type metadata for PhysicallyBasedMaterial;
      *&v306[2] = &protocol witness table for PhysicallyBasedMaterial;
      *&v306[0] = swift_allocObject();
      outlined init with copy of PhysicallyBasedMaterial(v307, *&v306[0] + 16);
      PhysicallyBasedMaterial.Roughness.init(material:alternateTintKey:)(v306, &v290);
      v25 = *&v290;
      outlined consume of MaterialParameters.Texture?(*(&v290 + 1), v291);
      v26 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v26);
      v27 = swift_getKeyPath();
      if (v24 == v25)
      {
      }

      else
      {
        v49 = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMR);
        v50 = swift_allocObject();
        *(v50 + 16) = v24;
        *(v50 + 24) = v49;
        swift_retain_n();
        v51 = *v272;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v306[0] = *v272;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v50, v49, isUniquelyReferenced_nonNull_native);
        *v272 = *&v306[0];
        v53 = swift_allocObject();
        *(v53 + 16) = v25;
        *(v53 + 24) = v49;

        v54 = v272[1];
        v55 = swift_isUniquelyReferenced_nonNull_native();
        *&v306[0] = v272[1];
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v53, v49, v55);

        v272[1] = *&v306[0];
      }

      *(&v306[1] + 1) = &type metadata for PhysicallyBasedMaterial;
      *&v306[2] = &protocol witness table for PhysicallyBasedMaterial;
      *&v306[0] = swift_allocObject();
      outlined init with copy of PhysicallyBasedMaterial(v308, *&v306[0] + 16);
      PhysicallyBasedMaterial.Metallic.init(material:alternateTintKey:)(v306, &v295);
      v56 = *&v295;
      outlined consume of MaterialParameters.Texture?(*(&v295 + 1), v296);
      *(&v306[1] + 1) = &type metadata for PhysicallyBasedMaterial;
      *&v306[2] = &protocol witness table for PhysicallyBasedMaterial;
      *&v306[0] = swift_allocObject();
      outlined init with copy of PhysicallyBasedMaterial(v307, *&v306[0] + 16);
      PhysicallyBasedMaterial.Metallic.init(material:alternateTintKey:)(v306, &v290);
      v57 = *&v290;
      outlined consume of MaterialParameters.Texture?(*(&v290 + 1), v291);
      v58 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v58);
      v59 = swift_getKeyPath();
      if (v56 == v57)
      {
      }

      else
      {
        v60 = v59;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMR);
        v61 = swift_allocObject();
        *(v61 + 16) = v56;
        *(v61 + 24) = v60;
        swift_retain_n();
        v62 = *v272;
        v63 = swift_isUniquelyReferenced_nonNull_native();
        *&v306[0] = *v272;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v61, v60, v63);
        *v272 = *&v306[0];
        v64 = swift_allocObject();
        *(v64 + 16) = v57;
        *(v64 + 24) = v60;

        v65 = v272[1];
        v66 = swift_isUniquelyReferenced_nonNull_native();
        *&v306[0] = v272[1];
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v64, v60, v66);

        v272[1] = *&v306[0];
      }

      *(&v306[1] + 1) = &type metadata for PhysicallyBasedMaterial;
      *&v306[2] = &protocol witness table for PhysicallyBasedMaterial;
      *&v306[0] = swift_allocObject();
      outlined init with copy of PhysicallyBasedMaterial(v308, *&v306[0] + 16);
      PhysicallyBasedMaterial.Specular.init(material:alternateTintKey:)(v306, &v295);
      v67 = *&v295;
      outlined consume of MaterialParameters.Texture?(*(&v295 + 1), v296);
      *(&v306[1] + 1) = &type metadata for PhysicallyBasedMaterial;
      *&v306[2] = &protocol witness table for PhysicallyBasedMaterial;
      *&v306[0] = swift_allocObject();
      outlined init with copy of PhysicallyBasedMaterial(v307, *&v306[0] + 16);
      PhysicallyBasedMaterial.Specular.init(material:alternateTintKey:)(v306, &v290);
      v68 = *&v290;
      outlined consume of MaterialParameters.Texture?(*(&v290 + 1), v291);
      v69 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v69);
      v70 = swift_getKeyPath();
      if (v67 == v68)
      {
      }

      else
      {
        v71 = v70;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMR);
        v72 = swift_allocObject();
        *(v72 + 16) = v67;
        *(v72 + 24) = v71;
        swift_retain_n();
        v73 = *v272;
        v74 = swift_isUniquelyReferenced_nonNull_native();
        *&v306[0] = *v272;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v72, v71, v74);
        *v272 = *&v306[0];
        v75 = swift_allocObject();
        *(v75 + 16) = v68;
        *(v75 + 24) = v71;

        v76 = v272[1];
        v77 = swift_isUniquelyReferenced_nonNull_native();
        *&v306[0] = v272[1];
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v75, v71, v77);

        v272[1] = *&v306[0];
      }

      *(&v306[1] + 1) = &type metadata for PhysicallyBasedMaterial;
      *&v306[2] = &protocol witness table for PhysicallyBasedMaterial;
      *&v306[0] = swift_allocObject();
      outlined init with copy of PhysicallyBasedMaterial(v308, *&v306[0] + 16);
      PhysicallyBasedMaterial.Clearcoat.init(material:alternateTintKey:)(v306, &v295);
      v78 = *&v295;
      outlined consume of MaterialParameters.Texture?(*(&v295 + 1), v296);
      *(&v306[1] + 1) = &type metadata for PhysicallyBasedMaterial;
      *&v306[2] = &protocol witness table for PhysicallyBasedMaterial;
      *&v306[0] = swift_allocObject();
      outlined init with copy of PhysicallyBasedMaterial(v307, *&v306[0] + 16);
      PhysicallyBasedMaterial.Clearcoat.init(material:alternateTintKey:)(v306, &v290);
      v79 = *&v290;
      outlined consume of MaterialParameters.Texture?(*(&v290 + 1), v291);
      v80 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v80);
      v81 = swift_getKeyPath();
      if (v78 == v79)
      {
      }

      else
      {
        v82 = v81;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMR);
        v83 = swift_allocObject();
        *(v83 + 16) = v78;
        *(v83 + 24) = v82;
        swift_retain_n();
        v84 = *v272;
        v85 = swift_isUniquelyReferenced_nonNull_native();
        *&v306[0] = *v272;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v83, v82, v85);
        *v272 = *&v306[0];
        v86 = swift_allocObject();
        *(v86 + 16) = v79;
        *(v86 + 24) = v82;

        v87 = v272[1];
        v88 = swift_isUniquelyReferenced_nonNull_native();
        *&v306[0] = v272[1];
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v86, v82, v88);

        v272[1] = *&v306[0];
      }

      *(&v306[1] + 1) = &type metadata for PhysicallyBasedMaterial;
      *&v306[2] = &protocol witness table for PhysicallyBasedMaterial;
      *&v306[0] = swift_allocObject();
      outlined init with copy of PhysicallyBasedMaterial(v308, *&v306[0] + 16);
      PhysicallyBasedMaterial.ClearcoatRoughness.init(material:alternateTintKey:)(v306, &v295);
      v89 = *&v295;
      outlined consume of MaterialParameters.Texture?(*(&v295 + 1), v296);
      *(&v306[1] + 1) = &type metadata for PhysicallyBasedMaterial;
      *&v306[2] = &protocol witness table for PhysicallyBasedMaterial;
      *&v306[0] = swift_allocObject();
      outlined init with copy of PhysicallyBasedMaterial(v307, *&v306[0] + 16);
      PhysicallyBasedMaterial.ClearcoatRoughness.init(material:alternateTintKey:)(v306, &v290);
      v90 = *&v290;
      outlined consume of MaterialParameters.Texture?(*(&v290 + 1), v291);
      v91 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v91);
      v92 = swift_getKeyPath();
      if (v89 == v90)
      {

        if ((WORD5(v308[6]) & 0x800) == 0)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v93 = v92;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMR);
        v94 = swift_allocObject();
        *(v94 + 16) = v89;
        *(v94 + 24) = v93;
        swift_retain_n();
        v95 = *v272;
        v96 = swift_isUniquelyReferenced_nonNull_native();
        *&v306[0] = *v272;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v94, v93, v96);
        *v272 = *&v306[0];
        v97 = swift_allocObject();
        *(v97 + 16) = v90;
        *(v97 + 24) = v93;

        v98 = v272[1];
        v99 = swift_isUniquelyReferenced_nonNull_native();
        *&v306[0] = v272[1];
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v97, v93, v99);

        v272[1] = *&v306[0];
        if ((WORD5(v308[6]) & 0x800) == 0)
        {
LABEL_60:
          *(&v306[1] + 1) = &type metadata for PhysicallyBasedMaterial;
          *&v306[2] = &protocol witness table for PhysicallyBasedMaterial;
          *&v306[0] = swift_allocObject();
          outlined init with copy of PhysicallyBasedMaterial(v308, *&v306[0] + 16);
          PhysicallyBasedMaterial.AnisotropyLevel.init(material:alternateTintKey:)(v306, &v295);
          v106 = *&v295;
          outlined consume of MaterialParameters.Texture?(*(&v295 + 1), v296);
          *(&v306[1] + 1) = &type metadata for PhysicallyBasedMaterial;
          *&v306[2] = &protocol witness table for PhysicallyBasedMaterial;
          *&v306[0] = swift_allocObject();
          outlined init with copy of PhysicallyBasedMaterial(v307, *&v306[0] + 16);
          PhysicallyBasedMaterial.AnisotropyLevel.init(material:alternateTintKey:)(v306, &v290);
          v107 = *&v290;
          outlined consume of MaterialParameters.Texture?(*(&v290 + 1), v291);
          v108 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v108);
          v109 = swift_getKeyPath();
          if (v106 == v107)
          {
          }

          else
          {
            v110 = v109;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMR);
            v111 = swift_allocObject();
            *(v111 + 16) = v106;
            *(v111 + 24) = v110;
            swift_retain_n();
            v112 = *v272;
            v113 = swift_isUniquelyReferenced_nonNull_native();
            *&v306[0] = *v272;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v111, v110, v113);
            *v272 = *&v306[0];
            v114 = swift_allocObject();
            *(v114 + 16) = v107;
            *(v114 + 24) = v110;

            v115 = v272[1];
            v116 = swift_isUniquelyReferenced_nonNull_native();
            *&v306[0] = v272[1];
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v114, v110, v116);

            v272[1] = *&v306[0];
          }

          *(&v306[1] + 1) = &type metadata for PhysicallyBasedMaterial;
          *&v306[2] = &protocol witness table for PhysicallyBasedMaterial;
          *&v306[0] = swift_allocObject();
          outlined init with copy of PhysicallyBasedMaterial(v308, *&v306[0] + 16);
          PhysicallyBasedMaterial.AnisotropyAngle.init(material:alternateTintKey:)(v306, &v303);
          v117 = v303;
          outlined consume of MaterialParameters.Texture?(v304, v305);
          *(&v306[1] + 1) = &type metadata for PhysicallyBasedMaterial;
          *&v306[2] = &protocol witness table for PhysicallyBasedMaterial;
          *&v306[0] = swift_allocObject();
          outlined init with copy of PhysicallyBasedMaterial(v307, *&v306[0] + 16);
          PhysicallyBasedMaterial.AnisotropyAngle.init(material:alternateTintKey:)(v306, &v300);
          v118 = v300;
          outlined consume of MaterialParameters.Texture?(v301, v302);
          v119 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v119);
          v120 = swift_getKeyPath();
          if (v117 == v118)
          {
          }

          else
          {
            v121 = v120;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMR);
            v122 = swift_allocObject();
            *(v122 + 16) = v117;
            *(v122 + 24) = v121;
            swift_retain_n();
            v123 = *v272;
            v124 = swift_isUniquelyReferenced_nonNull_native();
            *&v306[0] = *v272;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v122, v121, v124);
            *v272 = *&v306[0];
            v125 = swift_allocObject();
            *(v125 + 16) = v118;
            *(v125 + 24) = v121;

            v126 = v272[1];
            v127 = swift_isUniquelyReferenced_nonNull_native();
            *&v306[0] = v272[1];
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v125, v121, v127);

            v272[1] = *&v306[0];
          }

          v128 = *&v308[2];

          v129 = v128;

          specialized String.withCString<A>(_:)(0x6576697373696D65, 0xED0000656C616353, v129, &v295);
          if (v299 == 255)
          {
            __MaterialResource.subscript.getter(v306);
          }

          else
          {
            v306[0] = v295;
            v306[1] = v296;
            v306[2] = v297;
            v306[3] = v298;
            LOBYTE(v306[4]) = v299;
          }

          v292 = v306[2];
          v293 = v306[3];
          v294 = v306[4];
          v290 = v306[0];
          v291 = v306[1];
          v130 = 0.0;
          if (LOBYTE(v306[4]) != 255)
          {
            if (LOBYTE(v306[4]) == 2)
            {
              v130 = *&v290;
            }

            outlined destroy of BodyTrackingComponent?(&v290, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
          }

          v131 = *&v307[2];

          v132 = v131;

          specialized String.withCString<A>(_:)(0x6576697373696D65, 0xED0000656C616353, v132, v283);
          if (v284 == 255)
          {
            __MaterialResource.subscript.getter(&v285);
          }

          else
          {
            v285 = v283[0];
            v286 = v283[1];
            v287 = v283[2];
            v288 = v283[3];
            v289 = v284;
          }

          v281[1] = v286;
          v281[2] = v287;
          v281[3] = v288;
          v282 = v289;
          v281[0] = v285;
          v133 = 0.0;
          if (v289 != 255)
          {
            if (v289 == 2)
            {
              v133 = *v281;
            }

            outlined destroy of BodyTrackingComponent?(v281, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
          }

          v134 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v134);
          v135 = swift_getKeyPath();
          if (v130 == v133)
          {

            v136 = v272;
          }

          else
          {
            v137 = v135;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMR);
            v138 = swift_allocObject();
            *(v138 + 16) = v130;
            *(v138 + 24) = v137;
            swift_retain_n();
            v136 = v272;
            v139 = *v272;
            v140 = swift_isUniquelyReferenced_nonNull_native();
            v276[0] = *v272;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v138, v137, v140);
            *v272 = v276[0];
            v141 = swift_allocObject();
            *(v141 + 16) = v133;
            *(v141 + 24) = v137;

            v142 = v272[1];
            v143 = swift_isUniquelyReferenced_nonNull_native();
            v276[0] = v272[1];
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v141, v137, v143);

            v272[1] = v276[0];
          }

          v277 = &type metadata for PhysicallyBasedMaterial;
          v278 = &protocol witness table for PhysicallyBasedMaterial;
          v276[0] = swift_allocObject();
          outlined init with copy of PhysicallyBasedMaterial(v308, v276[0] + 16);
          PhysicallyBasedMaterial.EmissiveColor.init(material:alternateTintKey:)(v276, v279);
          v309[0] = v279[0];
          v309[1] = v279[1];
          v310 = v280;
          v277 = &type metadata for PhysicallyBasedMaterial;
          v278 = &protocol witness table for PhysicallyBasedMaterial;
          v276[0] = swift_allocObject();
          outlined init with copy of PhysicallyBasedMaterial(v307, v276[0] + 16);
          PhysicallyBasedMaterial.EmissiveColor.init(material:alternateTintKey:)(v276, v274);
          v311[0] = v274[0];
          v311[1] = v274[1];
          v312 = v275;
          v144 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v144);
          v145 = swift_getKeyPath();
          specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v309, v311, v145, v136, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_AA23PhysicallyBasedMaterialV13EmissiveColorVGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_AA23PhysicallyBasedMaterialV13EmissiveColorVGMR);

          outlined destroy of PhysicallyBasedMaterial.EmissiveColor(v311);
          outlined destroy of PhysicallyBasedMaterial.EmissiveColor(v309);
          specialized Material.getUVTransform(withSuffix:)(0, 0xE000000000000000, v276);
          v146 = v276[0];
          specialized Material.getUVTransform(withSuffix:)(0, 0xE000000000000000, v279);
          v147 = *&v279[0];
          v148 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v148);
          v149 = swift_getKeyPath();
          v150 = vceq_f32(v146, v147);
          if (v150.i32[0] & v150.i32[1])
          {
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_s5SIMD2VySfGGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_s5SIMD2VySfGGMR);
            v151 = swift_allocObject();
            *(v151 + 16) = v146;
            *(v151 + 24) = v149;
            swift_retain_n();
            v152 = *v136;
            v153 = swift_isUniquelyReferenced_nonNull_native();
            *&v274[0] = *v136;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v151, v149, v153);
            *v136 = *&v274[0];
            v154 = swift_allocObject();
            *(v154 + 16) = v147;
            *(v154 + 24) = v149;

            v155 = v136[1];
            v156 = swift_isUniquelyReferenced_nonNull_native();
            *&v274[0] = v136[1];
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v154, v149, v156);

            v136[1] = *&v274[0];
          }

          specialized Material.getUVTransform(withSuffix:)(49, 0xE100000000000000, v276);
          v157 = v276[0];
          specialized Material.getUVTransform(withSuffix:)(49, 0xE100000000000000, v279);
          v158 = *&v279[0];
          v159 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v159);
          v160 = swift_getKeyPath();
          v161 = vceq_f32(v157, v158);
          if (v161.i32[0] & v161.i32[1])
          {
          }

          else
          {
            v162 = v160;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_s5SIMD2VySfGGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_s5SIMD2VySfGGMR);
            v163 = swift_allocObject();
            *(v163 + 16) = v157;
            *(v163 + 24) = v162;
            swift_retain_n();
            v164 = *v272;
            v165 = swift_isUniquelyReferenced_nonNull_native();
            *&v274[0] = *v272;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v163, v162, v165);
            *v272 = *&v274[0];
            v166 = swift_allocObject();
            *(v166 + 16) = v158;
            *(v166 + 24) = v162;

            v167 = v272[1];
            v168 = swift_isUniquelyReferenced_nonNull_native();
            *&v274[0] = v272[1];
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v166, v162, v168);

            v272[1] = *&v274[0];
          }

          v8 = v273;
          v6 = a6;
          outlined destroy of PhysicallyBasedMaterial(v307);
          result = outlined destroy of PhysicallyBasedMaterial(v308);
          goto LABEL_16;
        }
      }

      *(&v306[1] + 1) = &type metadata for PhysicallyBasedMaterial;
      *&v306[2] = &protocol witness table for PhysicallyBasedMaterial;
      *&v306[0] = swift_allocObject();
      outlined init with copy of PhysicallyBasedMaterial(v308, *&v306[0] + 16);
      PhysicallyBasedMaterial.SheenColor.init(material:alternateTintKey:)(v306, &v295);
      v100 = *(&v295 + 1);
      v101 = v296;

      outlined consume of MaterialParameters.Texture?(v100, v101);
      if ((WORD5(v307[6]) & 0x800) != 0)
      {
        *(&v306[1] + 1) = &type metadata for PhysicallyBasedMaterial;
        *&v306[2] = &protocol witness table for PhysicallyBasedMaterial;
        *&v306[0] = swift_allocObject();
        outlined init with copy of PhysicallyBasedMaterial(v307, *&v306[0] + 16);
        PhysicallyBasedMaterial.SheenColor.init(material:alternateTintKey:)(v306, &v295);
        v102 = *(&v295 + 1);
        v103 = v296;

        outlined consume of MaterialParameters.Texture?(v102, v103);
        *(&v306[1] + 1) = &type metadata for PhysicallyBasedMaterial;
        *&v306[2] = &protocol witness table for PhysicallyBasedMaterial;
        *&v306[0] = swift_allocObject();
        outlined init with copy of PhysicallyBasedMaterial(v308, *&v306[0] + 16);
        PhysicallyBasedMaterial.SheenColor.init(material:alternateTintKey:)(v306, &v295);
        v313[0] = v295;
        v313[1] = v296;
        v314 = v297;
        *(&v306[1] + 1) = &type metadata for PhysicallyBasedMaterial;
        *&v306[2] = &protocol witness table for PhysicallyBasedMaterial;
        *&v306[0] = swift_allocObject();
        outlined init with copy of PhysicallyBasedMaterial(v307, *&v306[0] + 16);
        PhysicallyBasedMaterial.SheenColor.init(material:alternateTintKey:)(v306, &v295);
        v315[0] = v295;
        v315[1] = v296;
        v316 = v297;
        v104 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v104);
        v105 = swift_getKeyPath();
        specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v313, v315, v105, v272, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_AA23PhysicallyBasedMaterialV10SheenColorVGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_AA23PhysicallyBasedMaterialV10SheenColorVGMR);

        outlined destroy of PhysicallyBasedMaterial.SheenColor(v313);
        outlined destroy of PhysicallyBasedMaterial.SheenColor(v315);
      }

      goto LABEL_60;
    }

    outlined destroy of PhysicallyBasedMaterial(v308);
    memset(v306, 0, 146);
    v28 = v306;
LABEL_24:
    outlined destroy of BodyTrackingComponent?(v28, &_s17RealityFoundation23PhysicallyBasedMaterialVSgMd, &_s17RealityFoundation23PhysicallyBasedMaterialVSgMR);
    outlined init with copy of __REAssetService(v8, v306);
    result = swift_dynamicCast();
    if (result)
    {
      v308[5] = v307[5];
      v308[6] = v307[6];
      v308[7] = v307[7];
      *(&v308[7] + 11) = *(&v307[7] + 11);
      v308[2] = v307[2];
      v308[3] = v307[3];
      v308[4] = v307[4];
      v308[0] = v307[0];
      v308[1] = v307[1];
      if (v7 >= *(v6 + 16))
      {
        goto LABEL_117;
      }

      outlined init with copy of __REAssetService(i, &v295);
      if (swift_dynamicCast())
      {
        v307[6] = v306[6];
        v307[7] = v306[7];
        *(&v307[7] + 11) = *(&v306[7] + 11);
        v307[2] = v306[2];
        v307[3] = v306[3];
        v307[4] = v306[4];
        v307[5] = v306[5];
        v307[0] = v306[0];
        v307[1] = v306[1];
        *(&v306[1] + 1) = &type metadata for SimpleMaterial;
        *&v306[2] = &protocol witness table for SimpleMaterial;
        *&v306[0] = swift_allocObject();
        outlined init with copy of SimpleMaterial(v308, *&v306[0] + 16);
        v10 = v308[5];

        PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(&v295, v306, v10, *(&v10 + 1));
        v321[0] = v295;
        v321[1] = v296;
        v322 = v297;
        *(&v306[1] + 1) = &type metadata for SimpleMaterial;
        *&v306[2] = &protocol witness table for SimpleMaterial;
        *&v306[0] = swift_allocObject();
        outlined init with copy of SimpleMaterial(v307, *&v306[0] + 16);
        v11 = v307[5];

        PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(&v290, v306, v11, *(&v11 + 1));
        v323[0] = v290;
        v323[1] = v291;
        v324 = v292;
        v12 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v12);
        v13 = swift_getKeyPath();
        specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v321, v323, v13, v272, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_AA23PhysicallyBasedMaterialV9BaseColorVGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_AA23PhysicallyBasedMaterialV9BaseColorVGMR);

        outlined destroy of PhysicallyBasedMaterial.BaseColor(v323);
        outlined destroy of PhysicallyBasedMaterial.BaseColor(v321);
        specialized Material.getScalarParameter(_:)(0, v306);
        if (*&v306[0] >> 60 == 15)
        {
          v14 = 1065353216;
        }

        else
        {
          v14 = *&v306[0];
        }

        specialized Material.getScalarParameter(_:)(0, v306);
        if (*&v306[0] >> 60 == 15)
        {
          v15 = 1065353216;
        }

        else
        {
          v15 = *&v306[0];
        }

        v16 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v16);
        v17 = swift_getKeyPath();
        specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v14, v15, v17, v272);

        outlined consume of MaterialScalarParameter(v14);
        outlined consume of MaterialScalarParameter(v15);
        specialized Material.getScalarParameter(_:)(1, v306);
        if (*&v306[0] >> 60 == 15)
        {
          v18 = 0;
        }

        else
        {
          v18 = *&v306[0];
        }

        specialized Material.getScalarParameter(_:)(1, v306);
        if (*&v306[0] >> 60 == 15)
        {
          v19 = 0;
        }

        else
        {
          v19 = *&v306[0];
        }

        v20 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v20);
        v21 = swift_getKeyPath();
        v6 = a6;
        specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v18, v19, v21, v272);

        outlined consume of MaterialScalarParameter(v18);
        outlined consume of MaterialScalarParameter(v19);
        outlined destroy of SimpleMaterial(v307);
        result = outlined destroy of SimpleMaterial(v308);
        goto LABEL_16;
      }

      outlined destroy of SimpleMaterial(v308);
      memset(v306, 0, 139);
      outlined destroy of BodyTrackingComponent?(v306, &_s10RealityKit14SimpleMaterialVSgMd, &_s10RealityKit14SimpleMaterialVSgMR);
    }

    else
    {
      memset(v307, 0, 139);
      outlined destroy of BodyTrackingComponent?(v307, &_s10RealityKit14SimpleMaterialVSgMd, &_s10RealityKit14SimpleMaterialVSgMR);
    }

    outlined init with copy of __REAssetService(v8, v306);
    result = swift_dynamicCast();
    if (result)
    {
      v308[6] = v307[6];
      v308[7] = v307[7];
      v308[8] = v307[8];
      *(&v308[8] + 14) = *(&v307[8] + 14);
      v308[2] = v307[2];
      v308[3] = v307[3];
      v308[4] = v307[4];
      v308[5] = v307[5];
      v308[0] = v307[0];
      v308[1] = v307[1];
      if (v7 >= *(v6 + 16))
      {
        goto LABEL_118;
      }

      outlined init with copy of __REAssetService(i, &v295);
      if (swift_dynamicCast())
      {
        v307[6] = v306[6];
        v307[7] = v306[7];
        v307[8] = v306[8];
        *(&v307[8] + 14) = *(&v306[8] + 14);
        v307[2] = v306[2];
        v307[3] = v306[3];
        v307[4] = v306[4];
        v307[5] = v306[5];
        v307[0] = v306[0];
        v307[1] = v306[1];
        *(&v306[1] + 1) = &type metadata for UnlitMaterial;
        *&v306[2] = &protocol witness table for UnlitMaterial;
        *&v306[0] = swift_allocObject();
        outlined init with copy of UnlitMaterial(v308, *&v306[0] + 16);
        v29 = v308[5];

        PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(&v295, v306, v29, *(&v29 + 1));
        v325[0] = v295;
        v325[1] = v296;
        v326 = v297;
        *(&v306[1] + 1) = &type metadata for UnlitMaterial;
        *&v306[2] = &protocol witness table for UnlitMaterial;
        *&v306[0] = swift_allocObject();
        outlined init with copy of UnlitMaterial(v307, *&v306[0] + 16);
        v30 = v307[5];

        PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(&v290, v306, v30, *(&v30 + 1));
        v327[0] = v290;
        v327[1] = v291;
        v328 = v292;
        v31 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v31);
        v32 = swift_getKeyPath();
        specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v325, v327, v32, v272, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_AA23PhysicallyBasedMaterialV9BaseColorVGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_AA23PhysicallyBasedMaterialV9BaseColorVGMR);

        outlined destroy of PhysicallyBasedMaterial.BaseColor(v327);
        outlined destroy of PhysicallyBasedMaterial.BaseColor(v325);
        specialized Material.getUVTransform(withSuffix:)(0, 0xE000000000000000, v306);
        v33 = *&v306[0];
        specialized Material.getUVTransform(withSuffix:)(0, 0xE000000000000000, &v295);
        v34 = v295;
        v35 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v35);
        v36 = swift_getKeyPath();
        v37 = vceq_f32(v33, v34);
        if (v37.i32[0] & v37.i32[1])
        {
        }

        else
        {
          v169 = v36;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_s5SIMD2VySfGGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_s5SIMD2VySfGGMR);
          v170 = swift_allocObject();
          *(v170 + 16) = v33;
          *(v170 + 24) = v169;
          swift_retain_n();
          v171 = *v272;
          v172 = swift_isUniquelyReferenced_nonNull_native();
          *&v290 = *v272;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v170, v169, v172);
          *v272 = v290;
          v173 = swift_allocObject();
          *(v173 + 16) = v34;
          *(v173 + 24) = v169;

          v174 = v272[1];
          v175 = swift_isUniquelyReferenced_nonNull_native();
          *&v290 = v272[1];
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v173, v169, v175);

          v272[1] = v290;
        }

        specialized Material.getUVTransform(withSuffix:)(49, 0xE100000000000000, v306);
        v176 = *&v306[0];
        specialized Material.getUVTransform(withSuffix:)(49, 0xE100000000000000, &v295);
        v177 = v295;
        v178 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v178);
        v179 = swift_getKeyPath();
        v180 = vceq_f32(v176, v177);
        if (v180.i32[0] & v180.i32[1])
        {
        }

        else
        {
          v181 = v179;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_s5SIMD2VySfGGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_s5SIMD2VySfGGMR);
          v182 = swift_allocObject();
          *(v182 + 16) = v176;
          *(v182 + 24) = v181;
          swift_retain_n();
          v183 = *v272;
          v184 = swift_isUniquelyReferenced_nonNull_native();
          *&v290 = *v272;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v182, v181, v184);
          *v272 = v290;
          v185 = swift_allocObject();
          *(v185 + 16) = v177;
          *(v185 + 24) = v181;

          v186 = v272[1];
          v187 = swift_isUniquelyReferenced_nonNull_native();
          *&v290 = v272[1];
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v185, v181, v187);

          v272[1] = v290;
        }

        v8 = v273;
        v6 = a6;
        outlined destroy of UnlitMaterial(v307);
        result = outlined destroy of UnlitMaterial(v308);
        goto LABEL_16;
      }

      outlined destroy of UnlitMaterial(v308);
      memset(v306, 0, 158);
      v38 = v306;
    }

    else
    {
      memset(v307, 0, 158);
      v38 = v307;
    }

    outlined destroy of BodyTrackingComponent?(v38, &_s10RealityKit13UnlitMaterialVSgMd, &_s10RealityKit13UnlitMaterialVSgMR);
    outlined init with copy of __REAssetService(v8, v306);
    if (swift_dynamicCast())
    {
      result = memcpy(v308, v307, 0x162uLL);
      if (v7 >= *(v6 + 16))
      {
        goto LABEL_119;
      }

      outlined init with copy of __REAssetService(i, &v295);
      if (swift_dynamicCast())
      {
        memcpy(v307, v306, 0x162uLL);
        *(&v306[1] + 1) = &type metadata for CustomMaterial;
        *&v306[2] = &protocol witness table for CustomMaterial;
        *&v306[0] = swift_allocObject();
        outlined init with copy of CustomMaterial(v308, *&v306[0] + 16);
        CustomMaterial.BaseColor.init(material:alternateTintKey:)(&v295, v306, 0, 0);
        v39 = v295;
        v269 = v296;
        *(&v306[1] + 1) = &type metadata for CustomMaterial;
        *&v306[2] = &protocol witness table for CustomMaterial;
        *&v306[0] = swift_allocObject();
        outlined init with copy of CustomMaterial(v307, *&v306[0] + 16);
        CustomMaterial.BaseColor.init(material:alternateTintKey:)(&v290, v306, 0, 0);
        v40 = v290;
        v41 = v291;
        v42 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v42);
        v43 = swift_getKeyPath();
        specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v39, *(&v39 + 1), v269, v40, *(&v40 + 1), v41, v43, v272, lazy protocol witness table accessor for type CustomMaterial.BaseColor and conformance CustomMaterial.BaseColor, &type metadata for CustomMaterial.BaseColor, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_AA14CustomMaterialV9BaseColorVGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_AA14CustomMaterialV9BaseColorVGMR);

        *(&v306[1] + 1) = &type metadata for CustomMaterial;
        *&v306[2] = &protocol witness table for CustomMaterial;
        *&v306[0] = swift_allocObject();
        outlined init with copy of CustomMaterial(v308, *&v306[0] + 16);
        CustomMaterial.Roughness.init(material:alternateTintKey:)(v306, &v295);
        v44 = *&v295;

        *(&v306[1] + 1) = &type metadata for CustomMaterial;
        *&v306[2] = &protocol witness table for CustomMaterial;
        *&v306[0] = swift_allocObject();
        outlined init with copy of CustomMaterial(v307, *&v306[0] + 16);
        CustomMaterial.Roughness.init(material:alternateTintKey:)(v306, &v290);
        v45 = *&v290;

        v46 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v46);
        v47 = swift_getKeyPath();
        if (v44 == v45)
        {
        }

        else
        {
          v188 = v47;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMR);
          v189 = swift_allocObject();
          *(v189 + 16) = v44;
          *(v189 + 24) = v188;
          swift_retain_n();
          v190 = *v272;
          v191 = swift_isUniquelyReferenced_nonNull_native();
          *&v306[0] = *v272;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v189, v188, v191);
          *v272 = *&v306[0];
          v192 = swift_allocObject();
          *(v192 + 16) = v45;
          *(v192 + 24) = v188;

          v193 = v272[1];
          v194 = swift_isUniquelyReferenced_nonNull_native();
          *&v306[0] = v272[1];
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v192, v188, v194);

          v272[1] = *&v306[0];
        }

        *(&v306[1] + 1) = &type metadata for CustomMaterial;
        *&v306[2] = &protocol witness table for CustomMaterial;
        *&v306[0] = swift_allocObject();
        outlined init with copy of CustomMaterial(v308, *&v306[0] + 16);
        CustomMaterial.Metallic.init(material:alternateTintKey:)(v306, &v295);
        v195 = *&v295;

        *(&v306[1] + 1) = &type metadata for CustomMaterial;
        *&v306[2] = &protocol witness table for CustomMaterial;
        *&v306[0] = swift_allocObject();
        outlined init with copy of CustomMaterial(v307, *&v306[0] + 16);
        CustomMaterial.Metallic.init(material:alternateTintKey:)(v306, &v290);
        v196 = *&v290;

        v197 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v197);
        v198 = swift_getKeyPath();
        if (v195 == v196)
        {
        }

        else
        {
          v199 = v198;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMR);
          v200 = swift_allocObject();
          *(v200 + 16) = v195;
          *(v200 + 24) = v199;
          swift_retain_n();
          v201 = *v272;
          v202 = swift_isUniquelyReferenced_nonNull_native();
          *&v306[0] = *v272;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v200, v199, v202);
          *v272 = *&v306[0];
          v203 = swift_allocObject();
          *(v203 + 16) = v196;
          *(v203 + 24) = v199;

          v204 = v272[1];
          v205 = swift_isUniquelyReferenced_nonNull_native();
          *&v306[0] = v272[1];
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v203, v199, v205);

          v272[1] = *&v306[0];
        }

        *(&v306[1] + 1) = &type metadata for CustomMaterial;
        *&v306[2] = &protocol witness table for CustomMaterial;
        *&v306[0] = swift_allocObject();
        outlined init with copy of CustomMaterial(v308, *&v306[0] + 16);
        CustomMaterial.Specular.init(material:alternateTintKey:)(v306, &v295);
        v206 = *&v295;

        *(&v306[1] + 1) = &type metadata for CustomMaterial;
        *&v306[2] = &protocol witness table for CustomMaterial;
        *&v306[0] = swift_allocObject();
        outlined init with copy of CustomMaterial(v307, *&v306[0] + 16);
        CustomMaterial.Specular.init(material:alternateTintKey:)(v306, &v290);
        v207 = *&v290;

        v208 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v208);
        v209 = swift_getKeyPath();
        if (v206 == v207)
        {
        }

        else
        {
          v210 = v209;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMR);
          v211 = swift_allocObject();
          *(v211 + 16) = v206;
          *(v211 + 24) = v210;
          swift_retain_n();
          v212 = *v272;
          v213 = swift_isUniquelyReferenced_nonNull_native();
          *&v306[0] = *v272;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v211, v210, v213);
          *v272 = *&v306[0];
          v214 = swift_allocObject();
          *(v214 + 16) = v207;
          *(v214 + 24) = v210;

          v215 = v272[1];
          v216 = swift_isUniquelyReferenced_nonNull_native();
          *&v306[0] = v272[1];
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v214, v210, v216);

          v272[1] = *&v306[0];
        }

        *(&v306[1] + 1) = &type metadata for CustomMaterial;
        *&v306[2] = &protocol witness table for CustomMaterial;
        *&v306[0] = swift_allocObject();
        outlined init with copy of CustomMaterial(v308, *&v306[0] + 16);
        CustomMaterial.Clearcoat.init(material:alternateTintKey:)(v306, &v295);
        v217 = *&v295;

        *(&v306[1] + 1) = &type metadata for CustomMaterial;
        *&v306[2] = &protocol witness table for CustomMaterial;
        *&v306[0] = swift_allocObject();
        outlined init with copy of CustomMaterial(v307, *&v306[0] + 16);
        CustomMaterial.Clearcoat.init(material:alternateTintKey:)(v306, &v290);
        v218 = *&v290;

        v219 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v219);
        v220 = swift_getKeyPath();
        if (v217 == v218)
        {
        }

        else
        {
          v221 = v220;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMR);
          v222 = swift_allocObject();
          *(v222 + 16) = v217;
          *(v222 + 24) = v221;
          swift_retain_n();
          v223 = *v272;
          v224 = swift_isUniquelyReferenced_nonNull_native();
          *&v306[0] = *v272;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v222, v221, v224);
          *v272 = *&v306[0];
          v225 = swift_allocObject();
          *(v225 + 16) = v218;
          *(v225 + 24) = v221;

          v226 = v272[1];
          v227 = swift_isUniquelyReferenced_nonNull_native();
          *&v306[0] = v272[1];
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v225, v221, v227);

          v272[1] = *&v306[0];
        }

        *(&v306[1] + 1) = &type metadata for CustomMaterial;
        *&v306[2] = &protocol witness table for CustomMaterial;
        *&v306[0] = swift_allocObject();
        outlined init with copy of CustomMaterial(v308, *&v306[0] + 16);
        CustomMaterial.ClearcoatRoughness.init(material:alternateTintKey:)(v306, &v295);
        v228 = *&v295;

        *(&v306[1] + 1) = &type metadata for CustomMaterial;
        *&v306[2] = &protocol witness table for CustomMaterial;
        *&v306[0] = swift_allocObject();
        outlined init with copy of CustomMaterial(v307, *&v306[0] + 16);
        CustomMaterial.ClearcoatRoughness.init(material:alternateTintKey:)(v306, &v290);
        v229 = *&v290;

        v230 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v230);
        v231 = swift_getKeyPath();
        if (v228 == v229)
        {
        }

        else
        {
          v232 = v231;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMR);
          v233 = swift_allocObject();
          *(v233 + 16) = v228;
          *(v233 + 24) = v232;
          swift_retain_n();
          v234 = *v272;
          v235 = swift_isUniquelyReferenced_nonNull_native();
          *&v306[0] = *v272;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v233, v232, v235);
          *v272 = *&v306[0];
          v236 = swift_allocObject();
          *(v236 + 16) = v229;
          *(v236 + 24) = v232;

          v237 = v272[1];
          v238 = swift_isUniquelyReferenced_nonNull_native();
          *&v306[0] = v272[1];
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v236, v232, v238);

          v272[1] = *&v306[0];
        }

        *(&v306[1] + 1) = &type metadata for CustomMaterial;
        *&v306[2] = &protocol witness table for CustomMaterial;
        *&v306[0] = swift_allocObject();
        outlined init with copy of CustomMaterial(v308, *&v306[0] + 16);
        CustomMaterial.EmissiveColor.init(material:alternateTintKey:)(v306, &v295);
        v239 = v295;
        v240 = v296;
        *(&v306[1] + 1) = &type metadata for CustomMaterial;
        *&v306[2] = &protocol witness table for CustomMaterial;
        *&v306[0] = swift_allocObject();
        outlined init with copy of CustomMaterial(v307, *&v306[0] + 16);
        CustomMaterial.EmissiveColor.init(material:alternateTintKey:)(v306, &v290);
        v241 = v290;
        v242 = v291;
        v243 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v243);
        v244 = swift_getKeyPath();
        specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v239, *(&v239 + 1), v240, v241, *(&v241 + 1), v242, v244, v272, lazy protocol witness table accessor for type CustomMaterial.EmissiveColor and conformance CustomMaterial.EmissiveColor, &type metadata for CustomMaterial.EmissiveColor, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_AA14CustomMaterialV13EmissiveColorVGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_AA14CustomMaterialV13EmissiveColorVGMR);

        specialized Material.getUVTransform(withSuffix:)(0, 0xE000000000000000, v306);
        v245 = *&v306[0];
        specialized Material.getUVTransform(withSuffix:)(0, 0xE000000000000000, &v295);
        v246 = v295;
        v247 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v247);
        v248 = swift_getKeyPath();
        v249 = vceq_f32(v245, v246);
        if (v249.i32[0] & v249.i32[1])
        {
        }

        else
        {
          v250 = v248;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_s5SIMD2VySfGGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_s5SIMD2VySfGGMR);
          v251 = swift_allocObject();
          *(v251 + 16) = v245;
          *(v251 + 24) = v250;
          swift_retain_n();
          v252 = *v272;
          v253 = swift_isUniquelyReferenced_nonNull_native();
          *&v290 = *v272;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v251, v250, v253);
          *v272 = v290;
          v254 = swift_allocObject();
          *(v254 + 16) = v246;
          *(v254 + 24) = v250;

          v255 = v272[1];
          v256 = swift_isUniquelyReferenced_nonNull_native();
          *&v290 = v272[1];
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v254, v250, v256);

          v272[1] = v290;
        }

        specialized Material.getUVTransform(withSuffix:)(49, 0xE100000000000000, v306);
        v257 = *&v306[0];
        specialized Material.getUVTransform(withSuffix:)(49, 0xE100000000000000, &v295);
        v258 = v295;
        v259 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v259);
        v260 = swift_getKeyPath();
        v261 = vceq_f32(v257, v258);
        if (v261.i32[0] & v261.i32[1])
        {
        }

        else
        {
          v262 = v260;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_s5SIMD2VySfGGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_s5SIMD2VySfGGMR);
          v263 = swift_allocObject();
          *(v263 + 16) = v257;
          *(v263 + 24) = v262;
          swift_retain_n();
          v264 = *v272;
          v265 = swift_isUniquelyReferenced_nonNull_native();
          *&v290 = *v272;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v263, v262, v265);
          *v272 = v290;
          v266 = swift_allocObject();
          *(v266 + 16) = v258;
          *(v266 + 24) = v262;

          v267 = v272[1];
          v268 = swift_isUniquelyReferenced_nonNull_native();
          *&v290 = v272[1];
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v266, v262, v268);

          v272[1] = v290;
        }

        v8 = v273;
        v6 = a6;
        outlined destroy of CustomMaterial(v307);
        result = outlined destroy of CustomMaterial(v308);
        goto LABEL_16;
      }

      outlined destroy of CustomMaterial(v308);
      memset(v306, 0, 354);
      v48 = v306;
    }

    else
    {
      memset(v307, 0, 354);
      v48 = v307;
    }

    result = outlined destroy of BodyTrackingComponent?(v48, &_s17RealityFoundation14CustomMaterialVSgMd, &_s17RealityFoundation14CustomMaterialVSgMR);
LABEL_16:
    ++v7;
    v8 += 40;
    if (v271 == v7)
    {
      return result;
    }
  }

  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
  return result;
}

uint64_t key path getter for ModelComponent.subscript<A, B>(_:_:) : ModelComponentPhysicallyBasedMaterialFloat@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, _DWORD *a3@<X8>)
{
  v4 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(result + 8);
    if (v4 < *(v5 + 16))
    {
      v6 = a2[1];
      outlined init with copy of __REAssetService(v5 + 40 * v4 + 32, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
      swift_dynamicCast();
      swift_getAtKeyPath();
      result = outlined destroy of PhysicallyBasedMaterial(v7);
      *a3 = v9;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t key path getter for ModelComponent.subscript<A, B>(_:_:) : ModelComponentPhysicallyBasedMaterialPhysicallyBasedMaterial.BaseColor@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(result + 8);
    if (v4 < *(v5 + 16))
    {
      v6 = a2[1];
      outlined init with copy of __REAssetService(v5 + 40 * v4 + 32, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
      swift_dynamicCast();
      swift_getAtKeyPath();
      result = outlined destroy of PhysicallyBasedMaterial(v9);
      v7 = v13;
      v8 = v14;
      *a3 = v11;
      *(a3 + 8) = v12;
      *(a3 + 24) = v7;
      *(a3 + 32) = v8;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t key path setter for ModelComponent.subscript<A, B>(_:_:) : ModelComponentPhysicallyBasedMaterialPhysicallyBasedMaterial.BaseColor(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, void (*a5)(__int128 *, _BYTE *))
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v8;
  v12 = *(a1 + 32);

  a5(v11, v10);
  return specialized ModelComponent.subscript.setter(v11, v6);
}

uint64_t key path getter for ModelComponent.subscript<A, B>(_:_:) : ModelComponentPhysicallyBasedMaterialSIMD2<Float>@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(result + 8);
    if (v4 < *(v5 + 16))
    {
      v6 = a2[1];
      outlined init with copy of __REAssetService(v5 + 40 * v4 + 32, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
      swift_dynamicCast();
      swift_getAtKeyPath();
      result = outlined destroy of PhysicallyBasedMaterial(v7);
      *a3 = v9;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t key path getter for ModelComponent.subscript<A, B>(_:_:) : ModelComponentSimpleMaterialPhysicallyBasedMaterial.BaseColor@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(result + 8);
    if (v4 < *(v5 + 16))
    {
      v6 = a2[1];
      outlined init with copy of __REAssetService(v5 + 40 * v4 + 32, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
      swift_dynamicCast();
      swift_getAtKeyPath();
      result = outlined destroy of SimpleMaterial(&v9);
      v7 = v13;
      v8 = v14;
      *a3 = v11;
      *(a3 + 8) = v12;
      *(a3 + 24) = v7;
      *(a3 + 32) = v8;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t key path getter for ModelComponent.subscript<A, B>(_:_:) : ModelComponentSimpleMaterialMaterialScalarParameter@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(result + 8);
    if (v4 < *(v5 + 16))
    {
      v6 = a2[1];
      outlined init with copy of __REAssetService(v5 + 40 * v4 + 32, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
      swift_dynamicCast();
      swift_getAtKeyPath();
      result = outlined destroy of SimpleMaterial(&v7);
      *a3 = v9;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t key path setter for ModelComponent.subscript<A, B>(_:_:) : ModelComponentSimpleMaterialMaterialScalarParameter(uint64_t *a1, uint64_t a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;

  outlined copy of MaterialScalarParameter(v5);
  return specialized ModelComponent.subscript.setter(v5, v3);
}

uint64_t key path getter for ModelComponent.subscript<A, B>(_:_:) : ModelComponentUnlitMaterialPhysicallyBasedMaterial.BaseColor@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(result + 8);
    if (v4 < *(v5 + 16))
    {
      v6 = a2[1];
      outlined init with copy of __REAssetService(v5 + 40 * v4 + 32, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
      swift_dynamicCast();
      swift_getAtKeyPath();
      result = outlined destroy of UnlitMaterial(&v9);
      v7 = v13;
      v8 = v14;
      *a3 = v11;
      *(a3 + 8) = v12;
      *(a3 + 24) = v7;
      *(a3 + 32) = v8;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t key path setter for ModelComponent.subscript<A, B>(_:_:) : ModelComponentSimpleMaterialPhysicallyBasedMaterial.BaseColor(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(_OWORD *, uint64_t, uint64_t))
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v8;
  v12 = *(a1 + 32);

  outlined init with copy of PhysicallyBasedMaterial.BaseColor(v11, v10);
  return a5(v11, v6, v7);
}

uint64_t key path getter for ModelComponent.subscript<A, B>(_:_:) : ModelComponentUnlitMaterialSIMD2<Float>@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(result + 8);
    if (v4 < *(v5 + 16))
    {
      v6 = a2[1];
      outlined init with copy of __REAssetService(v5 + 40 * v4 + 32, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
      swift_dynamicCast();
      swift_getAtKeyPath();
      result = outlined destroy of UnlitMaterial(&v7);
      *a3 = v9;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t key path getter for ModelComponent.subscript<A, B>(_:_:) : ModelComponentCustomMaterialFloat@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, _DWORD *a3@<X8>)
{
  v4 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(result + 8);
    if (v4 < *(v5 + 16))
    {
      v6 = a2[1];
      outlined init with copy of __REAssetService(v5 + 40 * v4 + 32, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
      swift_dynamicCast();
      swift_getAtKeyPath();
      result = outlined destroy of CustomMaterial(v7);
      *a3 = v9;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t key path getter for ModelComponent.subscript<A, B>(_:_:) : ModelComponentCustomMaterialCustomMaterial.BaseColor@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(result + 8);
    if (v4 < *(v5 + 16))
    {
      v6 = a2[1];
      outlined init with copy of __REAssetService(v5 + 40 * v4 + 32, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
      swift_dynamicCast();
      swift_getAtKeyPath();
      result = outlined destroy of CustomMaterial(v9);
      v7 = v12;
      v8 = v13;
      *a3 = v11;
      *(a3 + 8) = v7;
      *(a3 + 16) = v8;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t key path setter for ModelComponent.subscript<A, B>(_:_:) : ModelComponentCustomMaterialCustomMaterial.BaseColor(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);

  return specialized ModelComponent.subscript.setter(v6, v5, v7, v3);
}

BOOL key path index equality operator for (Int, WritableKeyPath<PhysicallyBasedMaterial, PhysicallyBasedMaterial.BaseColor>)(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  result = 0;
  if (*a2 == *a1)
  {
    v6 = a1[1];
    v7 = a2[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      return 1;
    }
  }

  return result;
}

uint64_t key path getter for ModelComponent.subscript<A, B>(_:_:) : ModelComponentCustomMaterialSIMD2<Float>@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(result + 8);
    if (v4 < *(v5 + 16))
    {
      v6 = a2[1];
      outlined init with copy of __REAssetService(v5 + 40 * v4 + 32, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
      swift_dynamicCast();
      swift_getAtKeyPath();
      result = outlined destroy of CustomMaterial(v7);
      *a3 = v9;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t static ParticleEmitterComponent.animation(from:to:)(unint64_t *a1, unint64_t *a2, void *__src, const void *a4)
{
  memcpy(__dst, __src, 0x382uLL);
  memcpy(v15, a4, 0x382uLL);
  v7 = MEMORY[0x1E69E7CC0];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE24ParticleEmitterComponentVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE24ParticleEmitterComponentVGTt0g5Tf4g_n(v7);
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE24ParticleEmitterComponentVGTt0g5Tf4g_n(v7);

  v12 = v8;
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE24ParticleEmitterComponentVGTt0g5Tf4g_n(v7);

  v13 = v9;
  result = closure #1 in static ParticleEmitterComponent.animation(from:to:)(&v12, __dst, v15);
  v11 = v13;
  *a1 = v12;
  *a2 = v11;
  return result;
}

uint64_t closure #1 in static ParticleEmitterComponent.animation(from:to:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v539 = *(a3 + 128);
  v542 = *(a2 + 128);
  KeyPath = swift_getKeyPath();
  specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(KeyPath, a1, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_s5SIMD3VySfGGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_s5SIMD3VySfGGMR, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v542, v539);

  v540 = *(a3 + 96);
  v543 = *(a2 + 96);
  v7 = swift_getKeyPath();
  specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v7, a1, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_s5SIMD3VySfGGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_s5SIMD3VySfGGMR, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v543, v540);

  v8 = *(a2 + 144);
  v9 = *(a3 + 144);
  v10 = swift_getKeyPath();
  if (v8 != v9)
  {
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    *(v12 + 24) = v11;
    swift_retain_n();
    v13 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, v11, isUniquelyReferenced_nonNull_native);
    *a1 = *&v549[0];
    v15 = swift_allocObject();
    *(v15 + 16) = v9;
    *(v15 + 24) = v11;

    v16 = a1[1];
    v17 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, v11, v17);

    a1[1] = *&v549[0];
  }

  v18 = *(a2 + 160);
  v19 = *(a3 + 160);
  v20 = swift_getKeyPath();
  if (v18 != v19)
  {
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v22 = swift_allocObject();
    *(v22 + 16) = v18;
    *(v22 + 24) = v21;
    swift_retain_n();
    v23 = *a1;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v21, v24);
    *a1 = *&v549[0];
    v25 = swift_allocObject();
    *(v25 + 16) = v19;
    *(v25 + 24) = v21;

    v26 = a1[1];
    v27 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, v21, v27);

    a1[1] = *&v549[0];
  }

  v28 = *(a2 + 164);
  v29 = *(a3 + 164);
  v30 = swift_getKeyPath();
  if (v28 != v29)
  {
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v32 = swift_allocObject();
    *(v32 + 16) = v28;
    *(v32 + 24) = v31;
    swift_retain_n();
    v33 = *a1;
    v34 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v32, v31, v34);
    *a1 = *&v549[0];
    v35 = swift_allocObject();
    *(v35 + 16) = v29;
    *(v35 + 24) = v31;

    v36 = a1[1];
    v37 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v31, v37);

    a1[1] = *&v549[0];
  }

  v38 = *(a2 + 156);
  v39 = *(a3 + 156);
  v40 = swift_getKeyPath();
  if (v38 != v39)
  {
    v41 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v42 = swift_allocObject();
    *(v42 + 16) = v38;
    *(v42 + 24) = v41;
    swift_retain_n();
    v43 = *a1;
    v44 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v42, v41, v44);
    *a1 = *&v549[0];
    v45 = swift_allocObject();
    *(v45 + 16) = v39;
    *(v45 + 24) = v41;

    v46 = a1[1];
    v47 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, v41, v47);

    a1[1] = *&v549[0];
  }

  v48 = *(a2 + 112);
  v49 = *(a3 + 112);
  v50 = swift_getKeyPath();
  if (v48 != v49)
  {
    v51 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v52 = swift_allocObject();
    *(v52 + 16) = v48;
    *(v52 + 24) = v51;
    swift_retain_n();
    v53 = *a1;
    v54 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v52, v51, v54);
    *a1 = *&v549[0];
    v55 = swift_allocObject();
    *(v55 + 16) = v49;
    *(v55 + 24) = v51;

    v56 = a1[1];
    v57 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v55, v51, v57);

    a1[1] = *&v549[0];
  }

  v58 = *(a2 + 116);
  v59 = *(a3 + 116);
  v60 = swift_getKeyPath();
  if (v58 != v59)
  {
    v61 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v62 = swift_allocObject();
    *(v62 + 16) = v58;
    *(v62 + 24) = v61;
    swift_retain_n();
    v63 = *a1;
    v64 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v62, v61, v64);
    *a1 = *&v549[0];
    v65 = swift_allocObject();
    *(v65 + 16) = v59;
    *(v65 + 24) = v61;

    v66 = a1[1];
    v67 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v65, v61, v67);

    a1[1] = *&v549[0];
  }

  v68 = *(a2 + 148);
  v69 = *(a3 + 148);
  v70 = swift_getKeyPath();
  if (v68 != v69)
  {
    v71 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v72 = swift_allocObject();
    *(v72 + 16) = v68;
    *(v72 + 24) = v71;
    swift_retain_n();
    v73 = *a1;
    v74 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v72, v71, v74);
    *a1 = *&v549[0];
    v75 = swift_allocObject();
    *(v75 + 16) = v69;
    *(v75 + 24) = v71;

    v76 = a1[1];
    v77 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v75, v71, v77);

    a1[1] = *&v549[0];
  }

  v489 = *(a2 + 240);
  v493 = *(a2 + 244);
  v499 = *(a2 + 248);
  v532 = *(a2 + 256);
  v528 = *(a2 + 272);
  v513 = *(a2 + 280);
  v522 = *(a2 + 284);
  v78 = *(a2 + 360);
  v506 = *(a2 + 364);
  v79 = *(a2 + 368);
  v503 = *(a2 + 376);
  v80 = *(a2 + 384);
  v81 = *(a2 + 388);
  v480 = *(a2 + 392);
  v483 = *(a2 + 396);
  v516 = *(a2 + 412);
  v519 = *(a2 + 416);
  v536 = *(a2 + 424);
  v509 = *(a2 + 428);
  v533 = *(a2 + 432);
  v486 = *(a2 + 436);
  v485 = *(a2 + 448);
  v544 = *(a2 + 464);
  v525 = *(a2 + 480);
  v538 = *(a2 + 500);
  v491 = *(a3 + 240);
  v495 = *(a3 + 244);
  v497 = *(a2 + 420);
  v500 = *(a3 + 248);
  v527 = *(a3 + 256);
  v82 = *(a3 + 272);
  v514 = *(a3 + 280);
  v517 = *(a3 + 284);
  v530 = *(a3 + 360);
  v507 = *(a3 + 364);
  v501 = *(a3 + 368);
  v504 = *(a3 + 376);
  v83 = *(a3 + 384);
  v84 = *(a3 + 388);
  v481 = *(a3 + 392);
  v85 = *(a3 + 396);
  v521 = *(a3 + 416);
  v498 = *(a3 + 420);
  v534 = *(a3 + 424);
  v511 = *(a3 + 428);
  v512 = *(a3 + 412);
  v529 = *(a3 + 432);
  v488 = *(a3 + 436);
  v484 = *(a3 + 448);
  v541 = *(a3 + 464);
  v524 = *(a3 + 480);
  v535 = *(a3 + 500);
  v86 = swift_getKeyPath();
  specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v86, a1, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_s5SIMD3VySfGGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_s5SIMD3VySfGGMR, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v532, v527);

  v87 = swift_getKeyPath();
  if (v80 != v83)
  {
    v88 = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v89 = swift_allocObject();
    *(v89 + 16) = v80;
    *(v89 + 24) = v88;
    swift_retain_n();
    v90 = *a1;
    v91 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, v88, v91);
    *a1 = *&v549[0];
    v92 = swift_allocObject();
    *(v92 + 16) = v83;
    *(v92 + 24) = v88;

    v93 = a1[1];
    v94 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v92, v88, v94);

    a1[1] = *&v549[0];
  }

  v95 = swift_getKeyPath();
  if (v81 != v84)
  {
    v96 = v95;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v97 = swift_allocObject();
    *(v97 + 16) = v81;
    *(v97 + 24) = v96;
    swift_retain_n();
    v98 = *a1;
    v99 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v97, v96, v99);
    *a1 = *&v549[0];
    v100 = swift_allocObject();
    *(v100 + 16) = v84;
    *(v100 + 24) = v96;

    v101 = a1[1];
    v102 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v100, v96, v102);

    a1[1] = *&v549[0];
  }

  v103 = swift_getKeyPath();
  if (v480 != v481)
  {
    v104 = v103;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v105 = swift_allocObject();
    *(v105 + 16) = v480;
    *(v105 + 24) = v104;
    swift_retain_n();
    v106 = *a1;
    v107 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v105, v104, v107);
    *a1 = *&v549[0];
    v108 = swift_allocObject();
    *(v108 + 16) = v481;
    *(v108 + 24) = v104;

    v109 = a1[1];
    v110 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v108, v104, v110);

    a1[1] = *&v549[0];
  }

  v111 = swift_getKeyPath();
  if (v483 != v85)
  {
    v112 = v111;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v113 = swift_allocObject();
    *(v113 + 16) = v483;
    *(v113 + 24) = v112;
    swift_retain_n();
    v114 = *a1;
    v115 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v113, v112, v115);
    *a1 = *&v549[0];
    v116 = swift_allocObject();
    *(v116 + 16) = v85;
    *(v116 + 24) = v112;

    v117 = a1[1];
    v118 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v116, v112, v118);

    a1[1] = *&v549[0];
  }

  v119 = swift_getKeyPath();
  specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v119, a1, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_s5SIMD3VySfGGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_s5SIMD3VySfGGMR, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v485, v484);

  v120 = swift_getKeyPath();
  if (v486 != v488)
  {
    v121 = v120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v122 = swift_allocObject();
    *(v122 + 16) = v486;
    *(v122 + 24) = v121;
    swift_retain_n();
    v123 = *a1;
    v124 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v122, v121, v124);
    *a1 = *&v549[0];
    v125 = swift_allocObject();
    *(v125 + 16) = v488;
    *(v125 + 24) = v121;

    v126 = a1[1];
    v127 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v125, v121, v127);

    a1[1] = *&v549[0];
  }

  v128 = swift_getKeyPath();
  if (v489 != v491)
  {
    v129 = v128;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v130 = swift_allocObject();
    *(v130 + 16) = v489;
    *(v130 + 24) = v129;
    swift_retain_n();
    v131 = *a1;
    v132 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v130, v129, v132);
    *a1 = *&v549[0];
    v133 = swift_allocObject();
    *(v133 + 16) = v491;
    *(v133 + 24) = v129;

    v134 = a1[1];
    v135 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v133, v129, v135);

    a1[1] = *&v549[0];
  }

  v136 = swift_getKeyPath();
  if (v493 != v495)
  {
    v137 = v136;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v138 = swift_allocObject();
    *(v138 + 16) = v493;
    *(v138 + 24) = v137;
    swift_retain_n();
    v139 = *a1;
    v140 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v138, v137, v140);
    *a1 = *&v549[0];
    v141 = swift_allocObject();
    *(v141 + 16) = v495;
    *(v141 + 24) = v137;

    v142 = a1[1];
    v143 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v141, v137, v143);

    a1[1] = *&v549[0];
  }

  v144 = swift_getKeyPath();
  if (v497 != v498)
  {
    v145 = v144;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v146 = swift_allocObject();
    *(v146 + 16) = v497;
    *(v146 + 24) = v145;
    swift_retain_n();
    v147 = *a1;
    v148 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v146, v145, v148);
    *a1 = *&v549[0];
    v149 = swift_allocObject();
    *(v149 + 16) = v498;
    *(v149 + 24) = v145;

    v150 = a1[1];
    v151 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v149, v145, v151);

    a1[1] = *&v549[0];
  }

  v152 = swift_getKeyPath();
  if (v499 != v500)
  {
    v153 = v152;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v154 = swift_allocObject();
    *(v154 + 16) = v499;
    *(v154 + 24) = v153;
    swift_retain_n();
    v155 = *a1;
    v156 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v154, v153, v156);
    *a1 = *&v549[0];
    v157 = swift_allocObject();
    *(v157 + 16) = v500;
    *(v157 + 24) = v153;

    v158 = a1[1];
    v159 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v157, v153, v159);

    a1[1] = *&v549[0];
  }

  v160 = swift_getKeyPath();
  if (v79 != v501)
  {
    v161 = v160;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SdGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SdGMR);
    v162 = swift_allocObject();
    *(v162 + 16) = v79;
    *(v162 + 24) = v161;
    swift_retain_n();
    v163 = *a1;
    v164 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v162, v161, v164);
    *a1 = *&v549[0];
    v165 = swift_allocObject();
    *(v165 + 16) = v501;
    *(v165 + 24) = v161;

    v166 = a1[1];
    v167 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v165, v161, v167);

    a1[1] = *&v549[0];
  }

  v168 = swift_getKeyPath();
  if (v503 != v504)
  {
    v169 = v168;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SdGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SdGMR);
    v170 = swift_allocObject();
    *(v170 + 16) = v503;
    *(v170 + 24) = v169;
    swift_retain_n();
    v171 = *a1;
    v172 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v170, v169, v172);
    *a1 = *&v549[0];
    v173 = swift_allocObject();
    *(v173 + 16) = v504;
    *(v173 + 24) = v169;

    v174 = a1[1];
    v175 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v173, v169, v175);

    a1[1] = *&v549[0];
  }

  v176 = swift_getKeyPath();
  if (v78 != v530)
  {
    v177 = v176;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v178 = swift_allocObject();
    *(v178 + 16) = v78;
    *(v178 + 24) = v177;
    swift_retain_n();
    v179 = *a1;
    v180 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v178, v177, v180);
    *a1 = *&v549[0];
    v181 = swift_allocObject();
    *(v181 + 16) = v530;
    *(v181 + 24) = v177;

    v182 = a1[1];
    v183 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v181, v177, v183);

    a1[1] = *&v549[0];
  }

  v184 = swift_getKeyPath();
  if (v506 != v507)
  {
    v185 = v184;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v186 = swift_allocObject();
    *(v186 + 16) = v506;
    *(v186 + 24) = v185;
    swift_retain_n();
    v187 = *a1;
    v188 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v186, v185, v188);
    *a1 = *&v549[0];
    v189 = swift_allocObject();
    *(v189 + 16) = v507;
    *(v189 + 24) = v185;

    v190 = a1[1];
    v191 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v189, v185, v191);

    a1[1] = *&v549[0];
  }

  v192 = swift_getKeyPath();
  if (v533 != v529)
  {
    v193 = v192;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v194 = swift_allocObject();
    *(v194 + 16) = v533;
    *(v194 + 24) = v193;
    swift_retain_n();
    v195 = *a1;
    v196 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v194, v193, v196);
    *a1 = *&v549[0];
    v197 = swift_allocObject();
    *(v197 + 16) = v529;
    *(v197 + 24) = v193;

    v198 = a1[1];
    v199 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v197, v193, v199);

    a1[1] = *&v549[0];
  }

  v200 = swift_getKeyPath();
  if (v509 != v511)
  {
    v201 = v200;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v202 = swift_allocObject();
    *(v202 + 16) = v509;
    *(v202 + 24) = v201;
    swift_retain_n();
    v203 = *a1;
    v204 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v202, v201, v204);
    *a1 = *&v549[0];
    v205 = swift_allocObject();
    *(v205 + 16) = v511;
    *(v205 + 24) = v201;

    v206 = a1[1];
    v207 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v205, v201, v207);

    a1[1] = *&v549[0];
  }

  v208 = swift_getKeyPath();
  if (v536 != v534)
  {
    v209 = v208;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v210 = swift_allocObject();
    *(v210 + 16) = v536;
    *(v210 + 24) = v209;
    swift_retain_n();
    v211 = *a1;
    v212 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v210, v209, v212);
    *a1 = *&v549[0];
    v213 = swift_allocObject();
    *(v213 + 16) = v534;
    *(v213 + 24) = v209;

    v214 = a1[1];
    v215 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v213, v209, v215);

    a1[1] = *&v549[0];
  }

  v216 = swift_getKeyPath();
  if (v513 != v514)
  {
    v217 = v216;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v218 = swift_allocObject();
    *(v218 + 16) = v513;
    *(v218 + 24) = v217;
    swift_retain_n();
    v219 = *a1;
    v220 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v218, v217, v220);
    *a1 = *&v549[0];
    v221 = swift_allocObject();
    *(v221 + 16) = v514;
    *(v221 + 24) = v217;

    v222 = a1[1];
    v223 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v221, v217, v223);

    a1[1] = *&v549[0];
  }

  v224 = swift_getKeyPath();
  if (v516 != v512)
  {
    v225 = v224;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v226 = swift_allocObject();
    *(v226 + 16) = v516;
    *(v226 + 24) = v225;
    swift_retain_n();
    v227 = *a1;
    v228 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v226, v225, v228);
    *a1 = *&v549[0];
    v229 = swift_allocObject();
    *(v229 + 16) = v512;
    *(v229 + 24) = v225;

    v230 = a1[1];
    v231 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v229, v225, v231);

    a1[1] = *&v549[0];
  }

  v232 = swift_getKeyPath();
  if (v519 != v521)
  {
    v233 = v232;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v234 = swift_allocObject();
    *(v234 + 16) = v519;
    *(v234 + 24) = v233;
    swift_retain_n();
    v235 = *a1;
    v236 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v234, v233, v236);
    *a1 = *&v549[0];
    v237 = swift_allocObject();
    *(v237 + 16) = v521;
    *(v237 + 24) = v233;

    v238 = a1[1];
    v239 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v237, v233, v239);

    a1[1] = *&v549[0];
  }

  v240 = swift_getKeyPath();
  if (v522 != v517)
  {
    v241 = v240;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v242 = swift_allocObject();
    *(v242 + 16) = v522;
    *(v242 + 24) = v241;
    swift_retain_n();
    v243 = *a1;
    v244 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v242, v241, v244);
    *a1 = *&v549[0];
    v245 = swift_allocObject();
    *(v245 + 16) = v517;
    *(v245 + 24) = v241;

    v246 = a1[1];
    v247 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v245, v241, v247);

    a1[1] = *&v549[0];
  }

  v248 = swift_getKeyPath();
  if (v528 != v82)
  {
    v249 = v248;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v250 = swift_allocObject();
    *(v250 + 16) = v528;
    *(v250 + 24) = v249;
    swift_retain_n();
    v251 = *a1;
    v252 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v250, v249, v252);
    *a1 = *&v549[0];
    v253 = swift_allocObject();
    *(v253 + 16) = v82;
    *(v253 + 24) = v249;

    v254 = a1[1];
    v255 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v253, v249, v255);

    a1[1] = *&v549[0];
  }

  v256 = swift_getKeyPath();
  if (v538 != v535)
  {
    v257 = v256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v258 = swift_allocObject();
    *(v258 + 16) = v538;
    *(v258 + 24) = v257;
    swift_retain_n();
    v259 = *a1;
    v260 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v258, v257, v260);
    *a1 = *&v549[0];
    v261 = swift_allocObject();
    *(v261 + 16) = v535;
    *(v261 + 24) = v257;

    v262 = a1[1];
    v263 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v261, v257, v263);

    a1[1] = *&v549[0];
  }

  v264 = swift_getKeyPath();
  specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v264, a1, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_s5SIMD3VySfGGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_s5SIMD3VySfGGMR, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v525, v524);

  v265 = swift_getKeyPath();
  if (v544 != v541)
  {
    v266 = v265;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
    v267 = swift_allocObject();
    *(v267 + 16) = v544;
    *(v267 + 24) = v266;
    swift_retain_n();
    v268 = *a1;
    v269 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v267, v266, v269);
    *a1 = *&v549[0];
    v270 = swift_allocObject();
    *(v270 + 16) = v541;
    *(v270 + 24) = v266;

    v271 = a1[1];
    v272 = swift_isUniquelyReferenced_nonNull_native();
    *&v549[0] = a1[1];
    a1[1] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v270, v266, v272);

    a1[1] = *&v549[0];
  }

  memcpy(__dst, (a2 + 576), 0x141uLL);
  memcpy(v548, (a2 + 576), 0x141uLL);
  result = _s17RealityFoundation24ParticleEmitterComponentV0cD0VSgWOg(v548);
  if (result != 1)
  {
    v274 = *&v548[0];
    v531 = *(v548 + 2);
    v520 = v548[1];
    v275 = *&v548[2];
    v276 = *(&v548[2] + 1);
    v277 = *(&v548[7] + 1);
    v278 = v548[8];
    v280 = v548[9];
    v523 = v280 >> 64;
    v279 = v280;
    v281 = *(&v548[10] + 3);
    v282 = v548[11];
    v283 = *&v548[12];
    v526 = v548[13];
    v284 = *&v548[14];
    v537 = v548[15];
    v285 = *(&v548[16] + 1);
    memcpy(v546, (a3 + 576), 0x141uLL);
    memcpy(v549, (a3 + 576), 0x141uLL);
    result = _s17RealityFoundation24ParticleEmitterComponentV0cD0VSgWOg(v549);
    if (result != 1)
    {
      v286 = *&v549[0];
      v487 = *(v549 + 2);
      v505 = v549[1];
      v515 = *&v549[2];
      v496 = *(&v549[2] + 1);
      v287 = v549[8];
      v289 = v549[9];
      v479 = v289 >> 64;
      v288 = v289;
      v494 = *(&v549[10] + 3);
      v290 = *&v549[11];
      v508 = *(&v549[7] + 2);
      v510 = *(&v549[11] + 2);
      v490 = *(&v549[7] + 3);
      v492 = *(&v549[11] + 3);
      v291 = *&v549[12];
      v482 = v549[13];
      v292 = *&v549[14];
      v502 = v549[15];
      v518 = *(&v549[16] + 1);
      v293 = swift_getKeyPath();
      outlined init with copy of ParticleEmitterComponent.ParticleEmitter?(__dst, v545);
      outlined init with copy of ParticleEmitterComponent.ParticleEmitter?(v546, v545);
      specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v293, a1, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_s5SIMD3VySfGGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_s5SIMD3VySfGGMR, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v520, v505);

      v294 = swift_getKeyPath();
      if (*&v279 != *&v288)
      {
        v295 = v294;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v296 = swift_allocObject();
        *(v296 + 16) = v279;
        *(v296 + 24) = v295;
        swift_retain_n();
        v297 = *a1;
        v298 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v296, v295, v298);
        *a1 = v545[0];
        v299 = swift_allocObject();
        *(v299 + 16) = v288;
        *(v299 + 24) = v295;

        v300 = a1[1];
        v301 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v299, v295, v301);

        a1[1] = v545[0];
      }

      v302 = swift_getKeyPath();
      if (*(&v279 + 1) != *(&v288 + 1))
      {
        v303 = v302;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v304 = swift_allocObject();
        *(v304 + 16) = HIDWORD(v279);
        *(v304 + 24) = v303;
        swift_retain_n();
        v305 = *a1;
        v306 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v304, v303, v306);
        *a1 = v545[0];
        v307 = swift_allocObject();
        *(v307 + 16) = HIDWORD(v288);
        *(v307 + 24) = v303;

        v308 = a1[1];
        v309 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v307, v303, v309);

        a1[1] = v545[0];
      }

      v310 = swift_getKeyPath();
      if (*&v523 != *&v479)
      {
        v311 = v310;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v312 = swift_allocObject();
        *(v312 + 16) = v523;
        *(v312 + 24) = v311;
        swift_retain_n();
        v313 = *a1;
        v314 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v312, v311, v314);
        *a1 = v545[0];
        v315 = swift_allocObject();
        *(v315 + 16) = v479;
        *(v315 + 24) = v311;

        v316 = a1[1];
        v317 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v315, v311, v317);

        a1[1] = v545[0];
      }

      v318 = swift_getKeyPath();
      if (*(&v523 + 1) != *(&v479 + 1))
      {
        v319 = v318;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v320 = swift_allocObject();
        *(v320 + 16) = HIDWORD(v523);
        *(v320 + 24) = v319;
        swift_retain_n();
        v321 = *a1;
        v322 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v320, v319, v322);
        *a1 = v545[0];
        v323 = swift_allocObject();
        *(v323 + 16) = HIDWORD(v479);
        *(v323 + 24) = v319;

        v324 = a1[1];
        v325 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v323, v319, v325);

        a1[1] = v545[0];
      }

      v326 = swift_getKeyPath();
      specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v326, a1, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_s5SIMD3VySfGGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_s5SIMD3VySfGGMR, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v526, v482);

      v327 = swift_getKeyPath();
      if (*(&v283 + 1) != *(&v291 + 1))
      {
        v328 = v327;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v329 = swift_allocObject();
        *(v329 + 16) = HIDWORD(v283);
        *(v329 + 24) = v328;
        swift_retain_n();
        v330 = *a1;
        v331 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v329, v328, v331);
        *a1 = v545[0];
        v332 = swift_allocObject();
        *(v332 + 16) = HIDWORD(v291);
        *(v332 + 24) = v328;

        v333 = a1[1];
        v334 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v332, v328, v334);

        a1[1] = v545[0];
      }

      v335 = swift_getKeyPath();
      if (*&v274 != *&v286)
      {
        v336 = v335;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v337 = swift_allocObject();
        *(v337 + 16) = v274;
        *(v337 + 24) = v336;
        swift_retain_n();
        v338 = *a1;
        v339 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v337, v336, v339);
        *a1 = v545[0];
        v340 = swift_allocObject();
        *(v340 + 16) = v286;
        *(v340 + 24) = v336;

        v341 = a1[1];
        v342 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v340, v336, v342);

        a1[1] = v545[0];
      }

      v343 = swift_getKeyPath();
      if (*(&v274 + 1) != *(&v286 + 1))
      {
        v344 = v343;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v345 = swift_allocObject();
        *(v345 + 16) = HIDWORD(v274);
        *(v345 + 24) = v344;
        swift_retain_n();
        v346 = *a1;
        v347 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v345, v344, v347);
        *a1 = v545[0];
        v348 = swift_allocObject();
        *(v348 + 16) = HIDWORD(v286);
        *(v348 + 24) = v344;

        v349 = a1[1];
        v350 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v348, v344, v350);

        a1[1] = v545[0];
      }

      v351 = swift_getKeyPath();
      if (*(&v282 + 1) != *(&v290 + 1))
      {
        v352 = v351;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v353 = swift_allocObject();
        *(v353 + 16) = DWORD1(v282);
        *(v353 + 24) = v352;
        swift_retain_n();
        v354 = *a1;
        v355 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v353, v352, v355);
        *a1 = v545[0];
        v356 = swift_allocObject();
        *(v356 + 16) = HIDWORD(v290);
        *(v356 + 24) = v352;

        v357 = a1[1];
        v358 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v356, v352, v358);

        a1[1] = v545[0];
      }

      v359 = swift_getKeyPath();
      if (v531 != v487)
      {
        v360 = v359;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v361 = swift_allocObject();
        *(v361 + 16) = v531;
        *(v361 + 24) = v360;
        swift_retain_n();
        v362 = *a1;
        v363 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v361, v360, v363);
        *a1 = v545[0];
        v364 = swift_allocObject();
        *(v364 + 16) = v487;
        *(v364 + 24) = v360;

        v365 = a1[1];
        v366 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v364, v360, v366);

        a1[1] = v545[0];
      }

      v367 = swift_getKeyPath();
      if (*&v278 != *&v287)
      {
        v368 = v367;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SdGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SdGMR);
        v369 = swift_allocObject();
        *(v369 + 16) = v278;
        *(v369 + 24) = v368;
        swift_retain_n();
        v370 = *a1;
        v371 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v369, v368, v371);
        *a1 = v545[0];
        v372 = swift_allocObject();
        *(v372 + 16) = v287;
        *(v372 + 24) = v368;

        v373 = a1[1];
        v374 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v372, v368, v374);

        a1[1] = v545[0];
      }

      v375 = swift_getKeyPath();
      if (*(&v278 + 1) != *(&v287 + 1))
      {
        v376 = v375;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SdGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SdGMR);
        v377 = swift_allocObject();
        *(v377 + 16) = *(&v278 + 1);
        *(v377 + 24) = v376;
        swift_retain_n();
        v378 = *a1;
        v379 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v377, v376, v379);
        *a1 = v545[0];
        v380 = swift_allocObject();
        *(v380 + 16) = *(&v287 + 1);
        *(v380 + 24) = v376;

        v381 = a1[1];
        v382 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v380, v376, v382);

        a1[1] = v545[0];
      }

      v383 = swift_getKeyPath();
      if (*&v277 != v508)
      {
        v384 = v383;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v385 = swift_allocObject();
        *(v385 + 16) = v277;
        *(v385 + 24) = v384;
        swift_retain_n();
        v386 = *a1;
        v387 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v385, v384, v387);
        *a1 = v545[0];
        v388 = swift_allocObject();
        *(v388 + 16) = v508;
        *(v388 + 24) = v384;

        v389 = a1[1];
        v390 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v388, v384, v390);

        a1[1] = v545[0];
      }

      v391 = swift_getKeyPath();
      if (*(&v277 + 1) != v490)
      {
        v392 = v391;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v393 = swift_allocObject();
        *(v393 + 16) = HIDWORD(v277);
        *(v393 + 24) = v392;
        swift_retain_n();
        v394 = *a1;
        v395 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v393, v392, v395);
        *a1 = v545[0];
        v396 = swift_allocObject();
        *(v396 + 16) = v490;
        *(v396 + 24) = v392;

        v397 = a1[1];
        v398 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v396, v392, v398);

        a1[1] = v545[0];
      }

      v399 = swift_getKeyPath();
      if (*&v283 != *&v291)
      {
        v400 = v399;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v401 = swift_allocObject();
        *(v401 + 16) = v283;
        *(v401 + 24) = v400;
        swift_retain_n();
        v402 = *a1;
        v403 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v401, v400, v403);
        *a1 = v545[0];
        v404 = swift_allocObject();
        *(v404 + 16) = v291;
        *(v404 + 24) = v400;

        v405 = a1[1];
        v406 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v404, v400, v406);

        a1[1] = v545[0];
      }

      v407 = swift_getKeyPath();
      if (*(&v282 + 3) != v492)
      {
        v408 = v407;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v409 = swift_allocObject();
        *(v409 + 16) = HIDWORD(v282);
        *(v409 + 24) = v408;
        swift_retain_n();
        v410 = *a1;
        v411 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v409, v408, v411);
        *a1 = v545[0];
        v412 = swift_allocObject();
        *(v412 + 16) = v492;
        *(v412 + 24) = v408;

        v413 = a1[1];
        v414 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v412, v408, v414);

        a1[1] = v545[0];
      }

      v415 = swift_getKeyPath();
      if (*(&v282 + 2) != v510)
      {
        v416 = v415;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v417 = swift_allocObject();
        *(v417 + 16) = DWORD2(v282);
        *(v417 + 24) = v416;
        swift_retain_n();
        v418 = *a1;
        v419 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v417, v416, v419);
        *a1 = v545[0];
        v420 = swift_allocObject();
        *(v420 + 16) = v510;
        *(v420 + 24) = v416;

        v421 = a1[1];
        v422 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v420, v416, v422);

        a1[1] = v545[0];
      }

      v423 = swift_getKeyPath();
      if (*&v276 != *&v496)
      {
        v424 = v423;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v425 = swift_allocObject();
        *(v425 + 16) = v276;
        *(v425 + 24) = v424;
        swift_retain_n();
        v426 = *a1;
        v427 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v425, v424, v427);
        *a1 = v545[0];
        v428 = swift_allocObject();
        *(v428 + 16) = v496;
        *(v428 + 24) = v424;

        v429 = a1[1];
        v430 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v428, v424, v430);

        a1[1] = v545[0];
      }

      v431 = swift_getKeyPath();
      if (v281 != v494)
      {
        v432 = v431;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v433 = swift_allocObject();
        *(v433 + 16) = v281;
        *(v433 + 24) = v432;
        swift_retain_n();
        v434 = *a1;
        v435 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v433, v432, v435);
        *a1 = v545[0];
        v436 = swift_allocObject();
        *(v436 + 16) = v494;
        *(v436 + 24) = v432;

        v437 = a1[1];
        v438 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v436, v432, v438);

        a1[1] = v545[0];
      }

      v439 = swift_getKeyPath();
      if (*&v282 != *&v290)
      {
        v440 = v439;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v441 = swift_allocObject();
        *(v441 + 16) = v282;
        *(v441 + 24) = v440;
        swift_retain_n();
        v442 = *a1;
        v443 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v441, v440, v443);
        *a1 = v545[0];
        v444 = swift_allocObject();
        *(v444 + 16) = v290;
        *(v444 + 24) = v440;

        v445 = a1[1];
        v446 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v444, v440, v446);

        a1[1] = v545[0];
      }

      v447 = swift_getKeyPath();
      if (*(&v276 + 1) != *(&v496 + 1))
      {
        v448 = v447;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v449 = swift_allocObject();
        *(v449 + 16) = HIDWORD(v276);
        *(v449 + 24) = v448;
        swift_retain_n();
        v450 = *a1;
        v451 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v449, v448, v451);
        *a1 = v545[0];
        v452 = swift_allocObject();
        *(v452 + 16) = HIDWORD(v496);
        *(v452 + 24) = v448;

        v453 = a1[1];
        v454 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v452, v448, v454);

        a1[1] = v545[0];
      }

      v455 = swift_getKeyPath();
      if (v275 != v515)
      {
        v456 = v455;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v457 = swift_allocObject();
        *(v457 + 16) = v275;
        *(v457 + 24) = v456;
        swift_retain_n();
        v458 = *a1;
        v459 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v457, v456, v459);
        *a1 = v545[0];
        v460 = swift_allocObject();
        *(v460 + 16) = v515;
        *(v460 + 24) = v456;

        v461 = a1[1];
        v462 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v460, v456, v462);

        a1[1] = v545[0];
      }

      v463 = swift_getKeyPath();
      if (v285 != v518)
      {
        v464 = v463;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v465 = swift_allocObject();
        *(v465 + 16) = v285;
        *(v465 + 24) = v464;
        swift_retain_n();
        v466 = *a1;
        v467 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v465, v464, v467);
        *a1 = v545[0];
        v468 = swift_allocObject();
        *(v468 + 16) = v518;
        *(v468 + 24) = v464;

        v469 = a1[1];
        v470 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v468, v464, v470);

        a1[1] = v545[0];
      }

      v471 = swift_getKeyPath();
      specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v471, a1, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_s5SIMD3VySfGGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_s5SIMD3VySfGGMR, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v537, v502);

      v472 = swift_getKeyPath();
      if (v284 != v292)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA24ParticleEmitterComponentV_SfGMR);
        v473 = swift_allocObject();
        *(v473 + 16) = v284;
        *(v473 + 24) = v472;
        swift_retain_n();
        v474 = *a1;
        v475 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = *a1;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v473, v472, v475);
        *a1 = v545[0];
        v476 = swift_allocObject();
        *(v476 + 16) = v292;
        *(v476 + 24) = v472;

        v477 = a1[1];
        v478 = swift_isUniquelyReferenced_nonNull_native();
        v545[0] = a1[1];
        a1[1] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v476, v472, v478);

        a1[1] = v545[0];
      }

      outlined destroy of BodyTrackingComponent?(v546, &_s17RealityFoundation24ParticleEmitterComponentV0cD0VSgMd, &_s17RealityFoundation24ParticleEmitterComponentV0cD0VSgMR);
      outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation24ParticleEmitterComponentV0cD0VSgMd, &_s17RealityFoundation24ParticleEmitterComponentV0cD0VSgMR);
    }
  }

  return result;
}

uint64_t protocol witness for static _ImplicitlyAnimatableBuiltinComponent.animation(from:to:) in conformance ParticleEmitterComponent(unint64_t *a1, unint64_t *a2, void *__src, const void *a4)
{
  memcpy(__dst, __src, 0x382uLL);
  memcpy(v15, a4, 0x382uLL);
  v7 = MEMORY[0x1E69E7CC0];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE24ParticleEmitterComponentVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE24ParticleEmitterComponentVGTt0g5Tf4g_n(v7);
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE24ParticleEmitterComponentVGTt0g5Tf4g_n(v7);

  v12 = v8;
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE24ParticleEmitterComponentVGTt0g5Tf4g_n(v7);

  v13 = v9;
  result = closure #1 in static ParticleEmitterComponent.animation(from:to:)(&v12, __dst, v15);
  v11 = v13;
  *a1 = v12;
  *a2 = v11;
  return result;
}

uint64_t static BillboardComponent.animation(from:to:)(unint64_t *a1, unint64_t *a2, float *a3, float *a4)
{
  v6 = *a3;
  v7 = *a4;
  v8 = MEMORY[0x1E69E7CC0];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE18BillboardComponentVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE18BillboardComponentVGTt0g5Tf4g_n(v8);
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE18BillboardComponentVGTt0g5Tf4g_n(v8);

  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE18BillboardComponentVGTt0g5Tf4g_n(v8);

  KeyPath = swift_getKeyPath();
  if (v6 == v7)
  {
  }

  else
  {
    v13 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA18BillboardComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA18BillboardComponentV_SfGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = v6;
    *(v14 + 24) = v13;
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v13, isUniquelyReferenced_nonNull_native);
    v16 = swift_allocObject();
    *(v16 + 16) = v7;
    *(v16 + 24) = v13;

    v17 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, v13, v17);
  }

  *a1 = v9;
  *a2 = v10;
  return result;
}

double DirectionalLightComponent.lightColor.getter()
{
  v1 = *v0;
  v2 = CGColorRef.components.getter();
  if (!v2)
  {
    return 0.0;
  }

  v3 = 0.0;
  if (*(v2 + 2) == 4)
  {
    v3 = v2[4];
    v4 = *(v2 + 5);
    v6 = *(v2 + 6);
    v5 = *(v2 + 7);
  }

  return v3;
}

uint64_t static DirectionalLightComponent.animation(from:to:)(unint64_t *a1, unint64_t *a2, float *a3, float *a4)
{
  v6 = *a3;
  v7 = a3[2];
  v8 = *(a3 + 12);
  v9 = *a4;
  v10 = a4[2];
  v11 = *(a4 + 12);
  v12 = MEMORY[0x1E69E7CC0];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit25DirectionalLightComponentVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit25DirectionalLightComponentVGTt0g5Tf4g_n(v12);
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit25DirectionalLightComponentVGTt0g5Tf4g_n(v12);

  v17 = v13;
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit25DirectionalLightComponentVGTt0g5Tf4g_n(v12);

  v18 = v14;
  result = closure #1 in static DirectionalLightComponent.animation(from:to:)(&v17, v7, v10);
  v16 = v18;
  *a1 = v17;
  *a2 = v16;
  return result;
}

uint64_t closure #1 in static DirectionalLightComponent.animation(from:to:)(uint64_t *a1, float a2, float a3)
{
  KeyPath = swift_getKeyPath();
  if (a2 == a3)
  {
  }

  else
  {
    v7 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit25DirectionalLightComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit25DirectionalLightComponentV_SfGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = v7;
    swift_retain_n();
    v9 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, v7, isUniquelyReferenced_nonNull_native);
    *a1 = v39;
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = v7;

    v12 = a1[1];
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v40 = a1[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v7, v13);

    a1[1] = v40;
  }

  v14 = DirectionalLightComponent.lightColor.getter();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = DirectionalLightComponent.lightColor.getter();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = swift_getKeyPath();
  if (v14 == v21 && v16 == v23 && v18 == v25 && v20 == v27)
  {
  }

  else
  {
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit25DirectionalLightComponentV_AA010ImplicitlyeK5ColorVGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit25DirectionalLightComponentV_AA010ImplicitlyeK5ColorVGMR);
    v31 = swift_allocObject();
    *(v31 + 16) = v14;
    *(v31 + 24) = v16;
    *(v31 + 32) = v18;
    *(v31 + 40) = v20;
    *(v31 + 48) = v30;
    swift_retain_n();
    v32 = *a1;
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v37 = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v30, v33);
    *a1 = v37;
    v34 = swift_allocObject();
    *(v34 + 16) = v21;
    *(v34 + 24) = v23;
    *(v34 + 32) = v25;
    *(v34 + 40) = v27;
    *(v34 + 48) = v30;

    v35 = a1[1];
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v38 = a1[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v30, v36);

    a1[1] = v38;
  }

  return result;
}

uint64_t protocol witness for static _ImplicitlyAnimatableBuiltinComponent.animation(from:to:) in conformance DirectionalLightComponent(unint64_t *a1, unint64_t *a2, float *a3, float *a4)
{
  v6 = *a3;
  v7 = a3[2];
  v8 = *(a3 + 12);
  v9 = *a4;
  v10 = a4[2];
  v11 = *(a4 + 12);
  v12 = MEMORY[0x1E69E7CC0];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit25DirectionalLightComponentVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit25DirectionalLightComponentVGTt0g5Tf4g_n(v12);
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit25DirectionalLightComponentVGTt0g5Tf4g_n(v12);

  v17 = v13;
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit25DirectionalLightComponentVGTt0g5Tf4g_n(v12);

  v18 = v14;
  result = closure #1 in static DirectionalLightComponent.animation(from:to:)(&v17, v7, v10);
  v16 = v18;
  *a1 = v17;
  *a2 = v16;
  return result;
}

uint64_t static PointLightComponent.animation(from:to:)(unint64_t *a1, unint64_t *a2, float *a3, float *a4)
{
  v6 = *a3;
  v7 = a3[2];
  v8 = a3[3];
  v9 = a3[4];
  v10 = *a4;
  v11 = a4[2];
  v12 = a4[3];
  v13 = a4[4];
  v14 = MEMORY[0x1E69E7CC0];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit19PointLightComponentVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit19PointLightComponentVGTt0g5Tf4g_n(v14);
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit19PointLightComponentVGTt0g5Tf4g_n(v14);

  v19 = v15;
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit19PointLightComponentVGTt0g5Tf4g_n(v14);

  v20 = v16;
  result = closure #1 in static PointLightComponent.animation(from:to:)(&v19, v7, v8, v9, v11, v12, v13);
  v18 = v20;
  *a1 = v19;
  *a2 = v18;
  return result;
}

uint64_t closure #1 in static PointLightComponent.animation(from:to:)(uint64_t *a1, float a2, float a3, float a4, float a5, float a6, float a7)
{
  KeyPath = swift_getKeyPath();
  if (a2 == a5)
  {
  }

  else
  {
    v15 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit19PointLightComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit19PointLightComponentV_SfGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = v15;
    swift_retain_n();
    v17 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, v15, isUniquelyReferenced_nonNull_native);
    *a1 = v63;
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 24) = v15;

    v20 = a1[1];
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v64 = a1[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, v15, v21);

    a1[1] = v64;
  }

  v22 = swift_getKeyPath();
  if (a4 == a7)
  {
  }

  else
  {
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit19PointLightComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit19PointLightComponentV_SfGMR);
    v24 = swift_allocObject();
    *(v24 + 16) = a4;
    *(v24 + 24) = v23;
    swift_retain_n();
    v25 = *a1;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v65 = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, v23, v26);
    *a1 = v65;
    v27 = swift_allocObject();
    *(v27 + 16) = a7;
    *(v27 + 24) = v23;

    v28 = a1[1];
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v66 = a1[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, v23, v29);

    a1[1] = v66;
  }

  v30 = swift_getKeyPath();
  if (a3 == a6)
  {
  }

  else
  {
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit19PointLightComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit19PointLightComponentV_SfGMR);
    v32 = swift_allocObject();
    *(v32 + 16) = a3;
    *(v32 + 24) = v31;
    swift_retain_n();
    v33 = *a1;
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v67 = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v32, v31, v34);
    *a1 = v67;
    v35 = swift_allocObject();
    *(v35 + 16) = a6;
    *(v35 + 24) = v31;

    v36 = a1[1];
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v68 = a1[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v31, v37);

    a1[1] = v68;
  }

  v38 = DirectionalLightComponent.lightColor.getter();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = DirectionalLightComponent.lightColor.getter();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = swift_getKeyPath();
  if (v38 == v45 && v40 == v47 && v42 == v49 && v44 == v51)
  {
  }

  else
  {
    v54 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit19PointLightComponentV_AA010ImplicitlyeK5ColorVGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit19PointLightComponentV_AA010ImplicitlyeK5ColorVGMR);
    v55 = swift_allocObject();
    *(v55 + 16) = v38;
    *(v55 + 24) = v40;
    *(v55 + 32) = v42;
    *(v55 + 40) = v44;
    *(v55 + 48) = v54;
    swift_retain_n();
    v56 = *a1;
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v61 = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v55, v54, v57);
    *a1 = v61;
    v58 = swift_allocObject();
    *(v58 + 16) = v45;
    *(v58 + 24) = v47;
    *(v58 + 32) = v49;
    *(v58 + 40) = v51;
    *(v58 + 48) = v54;

    v59 = a1[1];
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v62 = a1[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v58, v54, v60);

    a1[1] = v62;
  }

  return result;
}

uint64_t protocol witness for static _ImplicitlyAnimatableBuiltinComponent.animation(from:to:) in conformance PointLightComponent(unint64_t *a1, unint64_t *a2, float *a3, float *a4)
{
  v6 = *a3;
  v7 = a3[2];
  v8 = a3[3];
  v9 = a3[4];
  v10 = *a4;
  v11 = a4[2];
  v12 = a4[3];
  v13 = a4[4];
  v14 = MEMORY[0x1E69E7CC0];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit19PointLightComponentVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit19PointLightComponentVGTt0g5Tf4g_n(v14);
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit19PointLightComponentVGTt0g5Tf4g_n(v14);

  v19 = v15;
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit19PointLightComponentVGTt0g5Tf4g_n(v14);

  v20 = v16;
  result = closure #1 in static PointLightComponent.animation(from:to:)(&v19, v7, v8, v9, v11, v12, v13);
  v18 = v20;
  *a1 = v19;
  *a2 = v18;
  return result;
}

uint64_t static SpotLightComponent.animation(from:to:)(unint64_t *a1, unint64_t *a2, _OWORD *a3, _OWORD *a4)
{
  *v13 = *a3;
  *&v13[3] = *(a3 + 12);
  *v14 = *a4;
  *&v14[3] = *(a4 + 12);
  v6 = MEMORY[0x1E69E7CC0];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit18SpotLightComponentVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit18SpotLightComponentVGTt0g5Tf4g_n(v6);
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit18SpotLightComponentVGTt0g5Tf4g_n(v6);

  v11 = v7;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit18SpotLightComponentVGTt0g5Tf4g_n(v6);

  v12 = v8;
  result = closure #1 in static SpotLightComponent.animation(from:to:)(&v11, v13, v14);
  v10 = v12;
  *a1 = v11;
  *a2 = v10;
  return result;
}

uint64_t closure #1 in static SpotLightComponent.animation(from:to:)(uint64_t *a1, float *a2, float *a3)
{
  v6 = a2[2];
  v7 = a3[2];
  KeyPath = swift_getKeyPath();
  if (v6 == v7)
  {
  }

  else
  {
    v9 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit18SpotLightComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit18SpotLightComponentV_SfGMR);
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    *(v10 + 24) = v9;
    swift_retain_n();
    v11 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v9, isUniquelyReferenced_nonNull_native);
    *a1 = v79;
    v13 = swift_allocObject();
    *(v13 + 16) = v7;
    *(v13 + 24) = v9;

    v14 = a1[1];
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v80 = a1[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, v9, v15);

    a1[1] = v80;
  }

  v16 = a2[3];
  v17 = a3[3];
  v18 = swift_getKeyPath();
  if (v16 == v17)
  {
  }

  else
  {
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit18SpotLightComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit18SpotLightComponentV_SfGMR);
    v20 = swift_allocObject();
    *(v20 + 16) = v16;
    *(v20 + 24) = v19;
    swift_retain_n();
    v21 = *a1;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v81 = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, v19, v22);
    *a1 = v81;
    v23 = swift_allocObject();
    *(v23 + 16) = v17;
    *(v23 + 24) = v19;

    v24 = a1[1];
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v82 = a1[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, v19, v25);

    a1[1] = v82;
  }

  v26 = a2[4];
  v27 = a3[4];
  v28 = swift_getKeyPath();
  if (v26 == v27)
  {
  }

  else
  {
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit18SpotLightComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit18SpotLightComponentV_SfGMR);
    v30 = swift_allocObject();
    *(v30 + 16) = v26;
    *(v30 + 24) = v29;
    swift_retain_n();
    v31 = *a1;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v83 = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, v29, v32);
    *a1 = v83;
    v33 = swift_allocObject();
    *(v33 + 16) = v27;
    *(v33 + 24) = v29;

    v34 = a1[1];
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v84 = a1[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v29, v35);

    a1[1] = v84;
  }

  v36 = a2[5];
  v37 = a3[5];
  v38 = swift_getKeyPath();
  if (v36 == v37)
  {
  }

  else
  {
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit18SpotLightComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit18SpotLightComponentV_SfGMR);
    v40 = swift_allocObject();
    *(v40 + 16) = v36;
    *(v40 + 24) = v39;
    swift_retain_n();
    v41 = *a1;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v85 = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v40, v39, v42);
    *a1 = v85;
    v43 = swift_allocObject();
    *(v43 + 16) = v37;
    *(v43 + 24) = v39;

    v44 = a1[1];
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v86 = a1[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v43, v39, v45);

    a1[1] = v86;
  }

  v46 = a2[6];
  v47 = a3[6];
  v48 = swift_getKeyPath();
  if (v46 == v47)
  {
  }

  else
  {
    v49 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit18SpotLightComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit18SpotLightComponentV_SfGMR);
    v50 = swift_allocObject();
    *(v50 + 16) = v46;
    *(v50 + 24) = v49;
    swift_retain_n();
    v51 = *a1;
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v87 = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v50, v49, v52);
    *a1 = v87;
    v53 = swift_allocObject();
    *(v53 + 16) = v47;
    *(v53 + 24) = v49;

    v54 = a1[1];
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v88 = a1[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v53, v49, v55);

    a1[1] = v88;
  }

  v56 = DirectionalLightComponent.lightColor.getter();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = DirectionalLightComponent.lightColor.getter();
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v70 = swift_getKeyPath();
  if (v56 == v63 && v58 == v65 && v60 == v67 && v62 == v69)
  {
  }

  else
  {
    v72 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit18SpotLightComponentV_AA010ImplicitlyeK5ColorVGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit18SpotLightComponentV_AA010ImplicitlyeK5ColorVGMR);
    v73 = swift_allocObject();
    *(v73 + 16) = v56;
    *(v73 + 24) = v58;
    *(v73 + 32) = v60;
    *(v73 + 40) = v62;
    *(v73 + 48) = v72;
    swift_retain_n();
    v74 = *a1;
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v89 = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v73, v72, v75);
    *a1 = v89;
    v76 = swift_allocObject();
    *(v76 + 16) = v63;
    *(v76 + 24) = v65;
    *(v76 + 32) = v67;
    *(v76 + 40) = v69;
    *(v76 + 48) = v72;

    v77 = a1[1];
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v90 = a1[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v76, v72, v78);

    a1[1] = v90;
  }

  return result;
}