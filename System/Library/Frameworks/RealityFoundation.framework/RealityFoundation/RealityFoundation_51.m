id static ForceEffectProtocol.create(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = REForceEffectComponentGetForceEffectUserClass();
  if (result)
  {
    type metadata accessor for ForceEffectProtocolWrapper();
    v13 = swift_dynamicCastClassUnconditional();
    (*(v8 + 16))(v11, v13 + *(*v13 + 96), a2);
    static ForceEffectProtocol.createFromCoreAndUserForceEffect<A>(_:_:_:)(a1, v11, a2, a3, a4);

    return (*(v8 + 8))(v11, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static ForceEffectProtocol.createFromCoreAndUserForceEffect<A>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t *a5@<X8>)
{
  v34 = a2;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  REForceEffectComponentGetForceEffectPosition();
  v36 = v12;
  REForceEffectComponentGetForceEffectOrientation();
  v35 = v13;
  REForceEffectComponentGetForceEffectStrengthScale();
  v15 = v14;
  ForceEffectMask = REForceEffectComponentGetForceEffectMask();
  HasSpatialFalloff = REForceEffectComponentForceEffectHasSpatialFalloff();
  v18 = HasSpatialFalloff;
  v19 = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  if (HasSpatialFalloff)
  {
    REForceEffectComponentGetForceEffectBoundSphereRadius();
    v23 = v22;
    REForceEffectComponentGetForceEffectSpatialFalloffRate();
    v20 = v23;
    v21 = v24;
  }

  HasTimedFalloff = REForceEffectComponentForceEffectHasTimedFalloff();
  v26 = HasTimedFalloff;
  v27 = 0.0;
  if (HasTimedFalloff)
  {
    REForceEffectComponentGetForceEffectTimedFalloffRate();
    v29 = v28;
    REForceEffectComponentGetForceEffectTimedFalloffDuration();
    v19 = v30;
    v27 = v29;
  }

  (*(v8 + 16))(v11, v34, a3);
  *&v40 = 0;
  *(&v40 + 1) = v20;
  v41 = v21;
  v42 = v18 ^ 1;
  *v38 = v19;
  *&v38[1] = v27;
  v39 = v26 ^ 1;
  v37 = ForceEffectMask;
  a5[3] = type metadata accessor for ForceEffect();
  a5[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  return ForceEffect.init(effect:strengthScale:spatialFalloff:timedFalloff:position:orientation:mask:)(v11, &v40, v38, &v37, a3, a4, boxed_opaque_existential_1, v15, v36, v35);
}

uint64_t ForceEffect.init(effect:strengthScale:spatialFalloff:timedFalloff:position:orientation:mask:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, int *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, __n128 a9@<Q1>, __n128 a10@<Q2>)
{
  v26 = *a2;
  v25 = *(a2 + 2);
  v24 = *(a2 + 24);
  v15 = a3[1];
  v23 = *a3;
  v16 = *(a3 + 16);
  v27 = *a4;
  v17 = type metadata accessor for ForceEffect();
  v18 = a7 + v17[9];
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *(v18 + 24) = 1;
  v19 = a7 + v17[10];
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 16) = 1;
  v20 = *(a5 - 8);
  (*(v20 + 16))(a7, a1, a5);
  *v18 = v26;
  *(v18 + 16) = v25;
  *(v18 + 24) = v24;
  *v19 = v23;
  *(v19 + 8) = v15;
  *(v19 + 16) = v16;
  *(a7 + v17[11]) = a9;
  *(a7 + v17[12]) = a10;
  v21 = a8;
  *(a7 + v17[13]) = v21;
  *(a7 + v17[14]) = v27;
  (*(a6 + 16))(&v30, a5, a6);
  result = (*(v20 + 8))(a1, a5);
  *(a7 + v17[15]) = v30;
  return result;
}

uint64_t dispatchEvent #1 <A>(sourceObject:payloadRef:) in static ForceEffectProtocol<>.__register(engine:_:)(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a7;
  v25[1] = a4;
  v26 = a3;
  v10 = type metadata accessor for ForceEffectEvent();
  v11 = type metadata accessor for Optional();
  v27 = *(v11 - 8);
  v28 = v11;
  v12 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v25 - v13;
  v15 = *(v10 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v25 - v18;
  static ForceEffectParameters.__fromCore(_:)(a2, v45);
  v20 = specialized Data.init(bytes:count:)(*(a2 + 120), *(a2 + 128));
  v22 = v21;
  v42 = v45[12];
  v43 = v45[13];
  v44 = v46;
  v38 = v45[8];
  v39 = v45[9];
  v40 = v45[10];
  v41 = v45[11];
  v34 = v45[4];
  v35 = v45[5];
  v36 = v45[6];
  v37 = v45[7];
  *&v30[232] = v45[0];
  v31 = v45[1];
  v32 = v45[2];
  v33 = v45[3];
  outlined copy of Data._Representation(v20, v21);
  outlined init with copy of ForceEffectParameters(v45, v30);
  v23 = ForceEffectEvent.init<>(effectData:parameters:)(v20, v22, a5, a6, v14);
  (*(v15 + 56))(v14, 0, 1, v10, v23);
  (*(v15 + 32))(v19, v14, v10);
  v26(v19);
  outlined destroy of ForceEffectParameters(v45);
  outlined consume of Data._Representation(v20, v22);
  (*(v15 + 8))(v19, v10);
  return 0;
}

__n128 ForceEffectEvent.init<>(effectData:parameters:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v48 = a4;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v14[13];
  v45 = v14[12];
  v46 = v15;
  v47 = *(v14 + 28);
  v16 = v14[9];
  v41 = v14[8];
  v42 = v16;
  v17 = v14[11];
  v43 = v14[10];
  v44 = v17;
  v18 = v14[5];
  v37 = v14[4];
  v38 = v18;
  v19 = v14[7];
  v39 = v14[6];
  v40 = v19;
  v20 = v14[1];
  v33 = *v14;
  v34 = v20;
  v21 = v14[2];
  v36 = v14[3];
  v35 = v21;
  v22 = type metadata accessor for JSONDecoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (v5)
  {
    outlined destroy of ForceEffectParameters(&v33);
    outlined consume of Data._Representation(a1, a2);
  }

  else
  {
    outlined consume of Data._Representation(a1, a2);
    (*(v10 + 32))(a5, v13, a3);
    v26 = a5 + *(type metadata accessor for ForceEffectEvent() + 36);
    v27 = v46;
    *(v26 + 192) = v45;
    *(v26 + 208) = v27;
    *(v26 + 224) = v47;
    v28 = v42;
    *(v26 + 128) = v41;
    *(v26 + 144) = v28;
    v29 = v44;
    *(v26 + 160) = v43;
    *(v26 + 176) = v29;
    v30 = v38;
    *(v26 + 64) = v37;
    *(v26 + 80) = v30;
    v31 = v40;
    *(v26 + 96) = v39;
    *(v26 + 112) = v31;
    v32 = v34;
    *v26 = v33;
    *(v26 + 16) = v32;
    result = v36;
    *(v26 + 32) = v35;
    *(v26 + 48) = result;
  }

  return result;
}

uint64_t static ForceEffectProtocol<>.create(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v19 = a4;
  v20 = a3;
  v21 = *(a2 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ForceEffectUserData = REForceEffectComponentGetForceEffectUserData();
  ForceEffectUserDataSize = REForceEffectComponentGetForceEffectUserDataSize();
  v12 = type metadata accessor for JSONDecoder();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v15 = specialized Data.init(bytes:count:)(ForceEffectUserData, ForceEffectUserDataSize);
  v17 = v16;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v4)
  {

    return outlined consume of Data._Representation(v15, v17);
  }

  else
  {
    outlined consume of Data._Representation(v15, v17);
    static ForceEffectProtocol.createFromCoreAndUserForceEffect<A>(_:_:_:)(a1, v9, a2, v20, v19);

    return (*(v21 + 8))(v9, a2);
  }
}

__n128 ForceEffect.spatialFalloff.getter@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (v2 + *(a1 + 36));
  v4 = v3[1].n128_u64[0];
  v5 = v3[1].n128_u8[8];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u64[0] = v4;
  a2[1].n128_u8[8] = v5;
  return result;
}

__n128 ForceEffect.spatialFalloff.setter(__n128 *a1, uint64_t a2)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = (v2 + *(a2 + 36));
  result = *a1;
  *v5 = *a1;
  v5[1].n128_u64[0] = v3;
  v5[1].n128_u8[8] = v4;
  return result;
}

uint64_t (*ForceEffect.spatialFalloff.modify(uint64_t a1, uint64_t a2))(void, void)
{
  result = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  v4 = v2 + *(a2 + 36);
  return result;
}

__n128 ForceEffect.timedFalloff.getter@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (v2 + *(a1 + 40));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u8[0] = v4;
  return result;
}

__n128 ForceEffect.timedFalloff.setter(__n128 *a1, uint64_t a2)
{
  v3 = a1[1].n128_u8[0];
  v4 = (v2 + *(a2 + 40));
  result = *a1;
  *v4 = *a1;
  v4[1].n128_u8[0] = v3;
  return result;
}

uint64_t (*ForceEffect.timedFalloff.modify(uint64_t a1, uint64_t a2))(void, void)
{
  result = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t (*ForceEffect.position.modify(uint64_t a1, uint64_t a2))(void, void)
{
  result = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t (*ForceEffect.orientation.modify(uint64_t a1, uint64_t a2))(void, void)
{
  result = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t (*ForceEffect.strengthScale.modify(uint64_t a1, uint64_t a2))(void, void)
{
  result = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t (*ForceEffect.mask.modify(uint64_t a1, uint64_t a2))(void, void)
{
  result = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  v4 = v2 + *(a2 + 56);
  return result;
}

Swift::Void __swiftcall ForceEffect.toCore(_:_:)(Swift::Int a1, Swift::OpaquePointer a2)
{
  v4 = v3;
  v5 = v2;
  v80 = a1;
  v77 = *(v2 - 8);
  v7 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v75 = v8;
  v76 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  rawValue = *(v10 - 8);
  v11 = rawValue[8];
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v78 = &v72 - v14;
  v81 = v15;
  v16 = dynamic_cast_existential_3_conditional(v15);
  if (v16)
  {
    v20 = v16;
    v21 = v17;
    v22 = v18;
    v23 = v19;
    if (one-time initialization token for _registeredForceEffectsCodable != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v24 = static ForceEffectComponent._registeredForceEffectsCodable;
    os_unfair_lock_lock(static ForceEffectComponent._registeredForceEffectsCodable + 6);
    v25 = *(v24 + 2);

    os_unfair_lock_unlock(v24 + 6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v82[0] = v25;
    v27 = v21;
    v28 = v81;
    v29 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, v27, v22, v23, v81, isUniquelyReferenced_nonNull_native);
    MEMORY[0x1EEE9AC00](v29);
    *(&v72 - 2) = v82;
    os_unfair_lock_lock(v24 + 6);
    partial apply for specialized closure #1 in Atomic.store(_:)(v24 + 2);
    os_unfair_lock_unlock(v24 + 6);

    swift_endAccess();
  }

  else
  {
    v73 = v3;
    v30 = *(v5 + 24);
    if (one-time initialization token for _registeredForceEffects != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v31 = static ForceEffectComponent._registeredForceEffects;
    os_unfair_lock_lock(static ForceEffectComponent._registeredForceEffects + 6);
    v32 = *(v31 + 2);

    os_unfair_lock_unlock(v31 + 6);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    *&v82[0] = v32;
    v28 = v81;
    v34 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v81, v30, v81, v33);
    MEMORY[0x1EEE9AC00](v34);
    *(&v72 - 2) = v82;
    os_unfair_lock_lock(v31 + 6);
    closure #1 in Atomic.store(_:)specialized partial apply(v31 + 2);
    os_unfair_lock_unlock(v31 + 6);

    swift_endAccess();
    v4 = v73;
  }

  REForceEffectComponentSetForceEffectEventKey();
  v35 = *(v4 + *(v5 + 44));
  REForceEffectComponentSetForceEffectPosition();
  v36 = *(v4 + *(v5 + 48));
  REForceEffectComponentSetForceEffectOrientation();
  v37 = *(v4 + *(v5 + 52));
  REForceEffectComponentSetForceEffectStrengthScale();
  v38 = *(v4 + *(v5 + 56));
  REForceEffectComponentSetForceEffectMask();
  v39 = 0x2010300u >> (8 * *(v4 + *(v5 + 60)));
  REForceEffectComponentSetForceEffectForceMode();
  v40 = *(v5 + 24);
  (*(v40 + 8))(&aBlock, v28, v40);
  REForceEffectComponentSetForceEffectInputs();
  v41 = rawValue[2];
  v41(v78, v4, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_SEpMd, &_sSe_SEpMR);
  if (!swift_dynamicCast())
  {
    memset(v82, 0, sizeof(v82));
    outlined destroy of BodyTrackingComponent?(v82, &_sSe_SEpSgMd, &_sSe_SEpSgMR);
    type metadata accessor for ForceEffectProtocolWrapper();
    v47 = v74;
    v41(v74, v4, v28);
    EntityActionWrapper.__allocating_init(action:)(v47);
    REForceEffectComponentSetAndRetainForceEffectUserClass();

    goto LABEL_33;
  }

  outlined init with take of Decodable & Encodable(v82, &aBlock);
  v42 = type metadata accessor for JSONEncoder();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  __swift_project_boxed_opaque_existential_1(&aBlock, v85);
  ForceEffectUserData = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v48 = v46 >> 62;
  if ((v46 >> 62) > 1)
  {
    if (v48 == 2)
    {
      v50 = *(ForceEffectUserData + 16);
      v49 = *(ForceEffectUserData + 24);
      v51 = __OFSUB__(v49, v50);
      v52 = v49 - v50;
      if (v51)
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      if (v52)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    if (v48)
    {
      goto LABEL_24;
    }

    if (BYTE6(v46))
    {
      while (1)
      {
LABEL_18:
        if (!v48)
        {
          v54 = ForceEffectUserData;
          v53 = v46;
          goto LABEL_30;
        }

        if (v48 != 2)
        {
          break;
        }

        if (__OFSUB__(*(ForceEffectUserData + 24), *(ForceEffectUserData + 16)))
        {
          goto LABEL_43;
        }

        v53 = v46;
        v54 = ForceEffectUserData;
        REForceEffectComponentResizeForceEffectUserData();
        ForceEffectUserData = REForceEffectComponentGetForceEffectUserData();
        v48 = *(v54 + 16);
        if (!__OFSUB__(*(v54 + 24), v48))
        {
          goto LABEL_31;
        }

        __break(1u);
LABEL_24:
        if (__OFSUB__(HIDWORD(ForceEffectUserData), ForceEffectUserData))
        {
          goto LABEL_42;
        }

        if (HIDWORD(ForceEffectUserData) == ForceEffectUserData)
        {
          goto LABEL_26;
        }
      }

      if (__OFSUB__(HIDWORD(ForceEffectUserData), ForceEffectUserData))
      {
        goto LABEL_44;
      }

      v54 = ForceEffectUserData;
      v53 = v46;
LABEL_30:
      REForceEffectComponentResizeForceEffectUserData();
      REForceEffectComponentGetForceEffectUserData();
LABEL_31:
      Data.copyBytes(to:count:)();
      outlined consume of Data._Representation(v54, v53);

      goto LABEL_32;
    }
  }

LABEL_26:
  v55 = ForceEffectUserData;
  v56 = v46;

  outlined consume of Data._Representation(v55, v56);
LABEL_32:
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
LABEL_33:
  v57 = v4 + *(v5 + 36);
  if (*(v57 + 24))
  {
    REForceEffectComponentForceEffectRemoveSpatialFalloff();
  }

  else
  {
    v59 = *(v57 + 8);
    v58 = *(v57 + 16);
    REForceEffectComponentSetForceEffectSpatialFalloffRate();
    REForceEffectComponentSetForceEffectBoundSphereRadius();
  }

  v60 = (v4 + *(v5 + 40));
  v61 = v5;
  if (v60[2])
  {
    REForceEffectComponentForceEffectRemoveTimedFalloff();
  }

  else
  {
    v63 = *v60;
    v62 = v60[1];
    REForceEffectComponentSetForceEffectTimedFalloffRate();
    REForceEffectComponentSetForceEffectTimedFalloffDuration();
  }

  v64 = v40;
  v65 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  if (MEMORY[0x1C68FE250](*(v65 + 16)))
  {
    v78 = _s17RealityFoundation10getEventIDys6UInt64VxmlFSo032REEntityForceEffectComputeForcesD0V_Ttg5();
    REComponentGetEntity();
    v66 = v77;
    v67 = *(v77 + 16);
    rawValue = a2._rawValue;
    v68 = v76;
    v67(v76, v4, v61);
    v69 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v70 = swift_allocObject();
    *(v70 + 16) = v81;
    *(v70 + 24) = v64;
    (*(v66 + 32))(v70 + v69, v68, v61);
    v86 = partial apply for dispatchEvent #1 <A>(sourceObject:payloadRef:) in ForceEffect.toCore(_:_:);
    v87 = v70;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v84 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    v85 = &block_descriptor_40;
    v71 = _Block_copy(&aBlock);

    REEventBusSubscribeWithMatch();
    _Block_release(v71);
    REForceEffectComponentSetForceEffectSubscription();
    return;
  }

LABEL_45:
  __break(1u);
}

uint64_t UnsafeForceEffectBuffer.Iterator.next()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v2[2] = v4;
    if (v4 >= v2[1])
    {
      v11 = *(result + 16);
      v8 = *(*(v11 - 8) + 56);
      v9 = a2;
      v10 = 1;
    }

    else
    {
      v5 = *v2;
      v6 = *(result + 16);
      v12 = *(v6 - 8);
      (*(v12 + 16))(a2, v5 + *(v12 + 72) * v4, v6);
      v8 = *(v12 + 56);
      v9 = a2;
      v10 = 0;
      v11 = v6;
    }

    return v8(v9, v10, 1, v11);
  }

  return result;
}

__n128 UnsafeForceEffectBuffer.makeIterator()@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = -1;
  return result;
}

__n128 ForceEffectParameters.positions.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[3].n128_u8[0];
  result = v1[2];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 ForceEffectParameters.orientations.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 72);
  result = *(v1 + 56);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 ForceEffectParameters.velocities.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[6].n128_u8[0];
  result = v1[5];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 ForceEffectParameters.angularVelocities.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 120);
  result = *(v1 + 104);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 ForceEffectParameters.distances.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[9].n128_u8[0];
  result = v1[8];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 ForceEffectParameters.masses.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 168);
  result = *(v1 + 152);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 ForceEffectParameters.inertiaTensors.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[12].n128_u8[0];
  result = v1[11];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t ForceEffectParameters.setForce(_:index:)(uint64_t result, __n128 a2)
{
  if ((result & 0x8000000000000000) == 0 && *(v2 + 208) > result)
  {
    *(*(v2 + 200) + 16 * result) = a2;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForceMode.CodingKeys and conformance ForceMode.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ForceMode.CodingKeys and conformance ForceMode.CodingKeys;
  if (!lazy protocol witness table cache variable for type ForceMode.CodingKeys and conformance ForceMode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForceMode.CodingKeys and conformance ForceMode.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForceMode.CodingKeys and conformance ForceMode.CodingKeys;
  if (!lazy protocol witness table cache variable for type ForceMode.CodingKeys and conformance ForceMode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForceMode.CodingKeys and conformance ForceMode.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForceMode.CodingKeys and conformance ForceMode.CodingKeys;
  if (!lazy protocol witness table cache variable for type ForceMode.CodingKeys and conformance ForceMode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForceMode.CodingKeys and conformance ForceMode.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForceMode.CodingKeys and conformance ForceMode.CodingKeys;
  if (!lazy protocol witness table cache variable for type ForceMode.CodingKeys and conformance ForceMode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForceMode.CodingKeys and conformance ForceMode.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForceMode.VelocityCodingKeys and conformance ForceMode.VelocityCodingKeys()
{
  result = lazy protocol witness table cache variable for type ForceMode.VelocityCodingKeys and conformance ForceMode.VelocityCodingKeys;
  if (!lazy protocol witness table cache variable for type ForceMode.VelocityCodingKeys and conformance ForceMode.VelocityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForceMode.VelocityCodingKeys and conformance ForceMode.VelocityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForceMode.VelocityCodingKeys and conformance ForceMode.VelocityCodingKeys;
  if (!lazy protocol witness table cache variable for type ForceMode.VelocityCodingKeys and conformance ForceMode.VelocityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForceMode.VelocityCodingKeys and conformance ForceMode.VelocityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForceMode.VelocityCodingKeys and conformance ForceMode.VelocityCodingKeys;
  if (!lazy protocol witness table cache variable for type ForceMode.VelocityCodingKeys and conformance ForceMode.VelocityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForceMode.VelocityCodingKeys and conformance ForceMode.VelocityCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForceMode.ImpulseCodingKeys and conformance ForceMode.ImpulseCodingKeys()
{
  result = lazy protocol witness table cache variable for type ForceMode.ImpulseCodingKeys and conformance ForceMode.ImpulseCodingKeys;
  if (!lazy protocol witness table cache variable for type ForceMode.ImpulseCodingKeys and conformance ForceMode.ImpulseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForceMode.ImpulseCodingKeys and conformance ForceMode.ImpulseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForceMode.ImpulseCodingKeys and conformance ForceMode.ImpulseCodingKeys;
  if (!lazy protocol witness table cache variable for type ForceMode.ImpulseCodingKeys and conformance ForceMode.ImpulseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForceMode.ImpulseCodingKeys and conformance ForceMode.ImpulseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForceMode.ImpulseCodingKeys and conformance ForceMode.ImpulseCodingKeys;
  if (!lazy protocol witness table cache variable for type ForceMode.ImpulseCodingKeys and conformance ForceMode.ImpulseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForceMode.ImpulseCodingKeys and conformance ForceMode.ImpulseCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForceMode.AccelerationCodingKeys and conformance ForceMode.AccelerationCodingKeys()
{
  result = lazy protocol witness table cache variable for type ForceMode.AccelerationCodingKeys and conformance ForceMode.AccelerationCodingKeys;
  if (!lazy protocol witness table cache variable for type ForceMode.AccelerationCodingKeys and conformance ForceMode.AccelerationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForceMode.AccelerationCodingKeys and conformance ForceMode.AccelerationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForceMode.AccelerationCodingKeys and conformance ForceMode.AccelerationCodingKeys;
  if (!lazy protocol witness table cache variable for type ForceMode.AccelerationCodingKeys and conformance ForceMode.AccelerationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForceMode.AccelerationCodingKeys and conformance ForceMode.AccelerationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForceMode.AccelerationCodingKeys and conformance ForceMode.AccelerationCodingKeys;
  if (!lazy protocol witness table cache variable for type ForceMode.AccelerationCodingKeys and conformance ForceMode.AccelerationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForceMode.AccelerationCodingKeys and conformance ForceMode.AccelerationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForceMode.ForceCodingKeys and conformance ForceMode.ForceCodingKeys()
{
  result = lazy protocol witness table cache variable for type ForceMode.ForceCodingKeys and conformance ForceMode.ForceCodingKeys;
  if (!lazy protocol witness table cache variable for type ForceMode.ForceCodingKeys and conformance ForceMode.ForceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForceMode.ForceCodingKeys and conformance ForceMode.ForceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForceMode.ForceCodingKeys and conformance ForceMode.ForceCodingKeys;
  if (!lazy protocol witness table cache variable for type ForceMode.ForceCodingKeys and conformance ForceMode.ForceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForceMode.ForceCodingKeys and conformance ForceMode.ForceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForceMode.ForceCodingKeys and conformance ForceMode.ForceCodingKeys;
  if (!lazy protocol witness table cache variable for type ForceMode.ForceCodingKeys and conformance ForceMode.ForceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForceMode.ForceCodingKeys and conformance ForceMode.ForceCodingKeys);
  }

  return result;
}

uint64_t partial apply for closure #1 in static ForceEffectProtocol.register(_:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  return static ForceEffectProtocol.__register(engine:_:)(0, v3, v4, v1, v2);
}

uint64_t ForceEffectParameters.setTorque(_:index:)(uint64_t result, __n128 a2)
{
  if ((result & 0x8000000000000000) == 0 && *(v2 + 224) > result)
  {
    *(*(v2 + 216) + 16 * result) = a2;
  }

  return result;
}

uint64_t ForceEffectEvent.parameters.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(a1 + 36));
  v4 = v3[11];
  v5 = v3[13];
  v37 = v3[12];
  v38 = v5;
  v6 = v3[7];
  v7 = v3[9];
  v33 = v3[8];
  v8 = v33;
  v34 = v7;
  v9 = v3[9];
  v10 = v3[11];
  v35 = v3[10];
  v11 = v35;
  v36 = v10;
  v12 = v3[3];
  v13 = v3[5];
  v29 = v3[4];
  v14 = v29;
  v30 = v13;
  v15 = v3[5];
  v16 = v3[7];
  v31 = v3[6];
  v17 = v31;
  v32 = v16;
  v18 = v3[1];
  v26[0] = *v3;
  v26[1] = v18;
  v19 = v3[3];
  v21 = *v3;
  v20 = v3[1];
  v27 = v3[2];
  v22 = v27;
  v28 = v19;
  v23 = v3[13];
  *(a2 + 192) = v37;
  *(a2 + 208) = v23;
  *(a2 + 128) = v8;
  *(a2 + 144) = v9;
  *(a2 + 160) = v11;
  *(a2 + 176) = v4;
  *(a2 + 64) = v14;
  *(a2 + 80) = v15;
  *(a2 + 96) = v17;
  *(a2 + 112) = v6;
  *a2 = v21;
  *(a2 + 16) = v20;
  v39 = *(v3 + 28);
  *(a2 + 224) = *(v3 + 28);
  *(a2 + 32) = v22;
  *(a2 + 48) = v12;
  return outlined init with copy of ForceEffectParameters(v26, v25);
}

__n128 ForceEffectEvent.parameters.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *(a2 + 36);
  v5 = *(v4 + 208);
  v19[12] = *(v4 + 192);
  v19[13] = v5;
  v20 = *(v4 + 224);
  v6 = *(v4 + 144);
  v19[8] = *(v4 + 128);
  v19[9] = v6;
  v7 = *(v4 + 176);
  v19[10] = *(v4 + 160);
  v19[11] = v7;
  v8 = *(v4 + 80);
  v19[4] = *(v4 + 64);
  v19[5] = v8;
  v9 = *(v4 + 112);
  v19[6] = *(v4 + 96);
  v19[7] = v9;
  v10 = *(v4 + 16);
  v19[0] = *v4;
  v19[1] = v10;
  v11 = *(v4 + 48);
  v19[2] = *(v4 + 32);
  v19[3] = v11;
  outlined destroy of ForceEffectParameters(v19);
  v12 = *(a1 + 208);
  *(v4 + 192) = *(a1 + 192);
  *(v4 + 208) = v12;
  *(v4 + 224) = *(a1 + 224);
  v13 = *(a1 + 144);
  *(v4 + 128) = *(a1 + 128);
  *(v4 + 144) = v13;
  v14 = *(a1 + 176);
  *(v4 + 160) = *(a1 + 160);
  *(v4 + 176) = v14;
  v15 = *(a1 + 80);
  *(v4 + 64) = *(a1 + 64);
  *(v4 + 80) = v15;
  v16 = *(a1 + 112);
  *(v4 + 96) = *(a1 + 96);
  *(v4 + 112) = v16;
  v17 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v17;
  result = *(a1 + 48);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 48) = result;
  return result;
}

uint64_t (*ForceEffectEvent.parameters.modify(uint64_t a1, uint64_t a2))(void, void)
{
  result = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t ForceEffectComponent.effects.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ForceEffectComponent.init(effect:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15ForceEffectBase_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15ForceEffectBase_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C1887600;
  result = outlined init with take of ForceEffectBase(a1, v4 + 32);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

RealityFoundation::ForceEffectComponent __swiftcall ForceEffectComponent.init(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  result.effects._rawValue = REForceEffectComponentGetForceEffectCount();
  if ((result.effects._rawValue & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
LABEL_29:
    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static ForceEffectLogger.logger);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v42[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000058, 0x80000001C18ECA10, v42);
      _os_log_impl(&dword_1C1358000, v34, v35, "%s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1C6902A30](v37, -1, -1);
      MEMORY[0x1C6902A30](v36, -1, -1);
    }

    v2 = v38;
  }

  else
  {
    rawValue = result.effects._rawValue;
    if (result.effects._rawValue)
    {
      v5 = 0;
      v38 = v2;
      v39 = MEMORY[0x1E69E7CC0];
      v6 = 0x1EBEA5000uLL;
      v7 = &static ForceEffectComponent._registeredForceEffectsCodable;
      while (1)
      {
        v8 = v5;
        if (v5 >= rawValue)
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (__OFADD__(v5, 1))
        {
          goto LABEL_34;
        }

        v40 = (v5 + 1);
        ForceEffectEventKey = REForceEffectComponentGetForceEffectEventKey();
        if (*(v6 + 2688) != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v10 = *v7;

        os_unfair_lock_lock((v10 + 24));
        v11 = *(v10 + 16);

        os_unfair_lock_unlock((v10 + 24));

        if (*(v11 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(ForceEffectEventKey), (v13 & 1) != 0))
        {
          v14 = rawValue;
          v15 = v7;
          v16 = v6;
          v17 = (*(v11 + 56) + 32 * v12);
          v18 = *v17;
          v19 = v17[1];
          v20 = v17[2];

          static ForceEffectProtocol<>.create(_:_:)(v8, v18, v19, &v41);
          outlined init with take of ForceEffectBase(&v41, v42);
          outlined init with copy of __REAssetService(v42, &v41);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1, v39);
          }

          v6 = v16;
          v32 = v39[2];
          v31 = v39[3];
          v7 = v15;
          if (v32 >= v31 >> 1)
          {
            v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v39);
          }

          rawValue = v14;
          __swift_destroy_boxed_opaque_existential_1(v42);
          v39[2] = v32 + 1;
          result.effects._rawValue = outlined init with take of ForceEffectBase(&v41, &v39[5 * v32 + 4]);
        }

        else
        {

          if (one-time initialization token for _registeredForceEffects != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v21 = static ForceEffectComponent._registeredForceEffects;

          os_unfair_lock_lock(v21 + 6);
          v22 = *&v21[4]._os_unfair_lock_opaque;

          os_unfair_lock_unlock(v21 + 6);

          if (!*(v22 + 16) || (v23 = specialized __RawDictionaryStorage.find<A>(_:)(ForceEffectEventKey), (v24 & 1) == 0))
          {

            if (one-time initialization token for logger != -1)
            {
              goto LABEL_36;
            }

            goto LABEL_29;
          }

          v25 = (*(v22 + 56) + 16 * v23);
          v26 = *v25;
          v27 = v25[1];

          static ForceEffectProtocol.create(_:_:)(v8, v26, v27, &v41);
          outlined init with take of ForceEffectBase(&v41, v42);
          outlined init with copy of __REAssetService(v42, &v41);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1, v39);
          }

          v29 = v39[2];
          v28 = v39[3];
          if (v29 >= v28 >> 1)
          {
            v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v39);
          }

          __swift_destroy_boxed_opaque_existential_1(v42);
          v39[2] = v29 + 1;
          result.effects._rawValue = outlined init with take of ForceEffectBase(&v41, &v39[5 * v29 + 4]);
        }

        v5 = v40;
        v2 = v38;
        if (v40 == rawValue)
        {
          goto LABEL_32;
        }
      }
    }

    v39 = MEMORY[0x1E69E7CC0];
  }

LABEL_32:
  *v2 = v39;
  *(v2 + 8) = 3;
  result.simulationState.value = v3;
  return result;
}

uint64_t ForceEffectComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v11 = *(v1 + 8);
  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  result = MEMORY[0x1C68FE250](*(v4 + 16));
  if (result)
  {
    v6 = *(v3 + 16);
    REForceEffectComponentResizeForceEffects();
    if (v6)
    {
      v7 = 0;
      v8 = v3 + 32;
      do
      {
        outlined init with copy of __REAssetService(v8, v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation15ForceEffectBase_pMd, &_s17RealityFoundation15ForceEffectBase_pMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19ForceEffectInternal_pMd, &_s17RealityFoundation19ForceEffectInternal_pMR);
        swift_dynamicCast();
        v10 = v14;
        v9 = v15;
        __swift_project_boxed_opaque_existential_1(v13, v14);
        (*(v9 + 16))(v7, v2, v10, v9);
        __swift_destroy_boxed_opaque_existential_1(v13);
        v8 += 40;
        ++v7;
      }

      while (v6 != v7);
    }

    if (v11 == 3)
    {
      return REForceEffectComponentRemoveSimulationState();
    }

    else
    {
      return REForceEffectComponentSetSimulationState();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t one-time initialization function for _registeredForceEffects(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v8 = a2(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v8;
  *a5 = result;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ConstantForceEffect.CodingKeys()
{
  v1 = 0x6F69746365726964;
  if (*v0 != 1)
  {
    v1 = 0x646F4D6563726F66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6874676E65727473;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ConstantForceEffect.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ConstantForceEffect.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ConstantForceEffect.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ConstantForceEffect.CodingKeys and conformance ConstantForceEffect.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ConstantForceEffect.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ConstantForceEffect.CodingKeys and conformance ConstantForceEffect.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ConstantRadialForceEffect.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ConstantRadialForceEffect.CodingKeys and conformance ConstantRadialForceEffect.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ConstantRadialForceEffect.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ConstantRadialForceEffect.CodingKeys and conformance ConstantRadialForceEffect.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

float VortexForceEffect.init(strength:axis:)@<S0>(__n128 *a1@<X8>, double a2@<D0>, __n128 a3@<Q1>)
{
  result = a2;
  a1->n128_f32[0] = result;
  a1[1] = a3;
  a1[2].n128_u8[0] = 0;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance VortexForceEffect.CodingKeys()
{
  v1 = 1936291937;
  if (*v0 != 1)
  {
    v1 = 0x646F4D6563726F66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6874676E65727473;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance VortexForceEffect.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized VortexForceEffect.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance VortexForceEffect.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type VortexForceEffect.CodingKeys and conformance VortexForceEffect.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance VortexForceEffect.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type VortexForceEffect.CodingKeys and conformance VortexForceEffect.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ConstantForceEffect.encode(to:)(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  v12 = *v4;
  v19 = *(v4 + 1);
  v18 = *(v4 + 32);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v22) = 0;
  v14 = v20;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v14)
  {
    v15 = v18;
    v22 = v19;
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v22) = v15;
    v21 = 2;
    lazy protocol witness table accessor for type ForceMode and conformance ForceMode();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t ConstantForceEffect.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v21 = a5;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v11 = &v20 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v5)
  {
    v13 = v8;
    v15 = v21;
    v14 = v22;
    LOBYTE(v24) = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    v23 = 1;
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v20 = v24;
    v23 = 2;
    lazy protocol witness table accessor for type ForceMode and conformance ForceMode();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v13 + 8))(v11, v14);
    v19 = v24;
    *v15 = v17;
    *(v15 + 16) = v20;
    *(v15 + 32) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for ForceEffectProtocol.parameterTypes.getter in conformance VortexForceEffect@<X0>(_DWORD *a1@<X8>)
{
  if (one-time initialization token for position != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static PhysicsBodyParameterTypes.position;
  return result;
}

void __swiftcall DragForceEffect.init(strength:)(RealityFoundation::DragForceEffect *__return_ptr retstr, Swift::Double strength)
{
  v2 = strength;
  retstr->strength = v2;
  retstr->forceMode = RealityFoundation_ForceMode_force;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ConstantRadialForceEffect.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6874676E65727473 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646F4D6563726F66 && a2 == 0xE900000000000065)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DragForceEffect.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DragForceEffect.CodingKeys and conformance DragForceEffect.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DragForceEffect.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DragForceEffect.CodingKeys and conformance DragForceEffect.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ConstantRadialForceEffect.encode(to:)(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  v12 = *v4;
  v17 = *(v4 + 4);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = 0;
  v14 = v18;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v14)
  {
    v20 = v17;
    v19 = 1;
    lazy protocol witness table accessor for type ForceMode and conformance ForceMode();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t ConstantRadialForceEffect.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v21 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v5)
  {
    v14 = v20;
    v13 = v21;
    v24 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v16 = v15;
    v22 = 1;
    lazy protocol witness table accessor for type ForceMode and conformance ForceMode();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v14 + 8))(v11, v8);
    v17 = v23;
    *v13 = v16;
    *(v13 + 4) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for ForceEffectProtocol.parameterTypes.getter in conformance ConstantRadialForceEffect@<X0>(void *a1@<X2>, _DWORD *a2@<X3>, _DWORD *a3@<X8>)
{
  if (*a1 != -1)
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

void __swiftcall TurbulenceForceEffect.init(strength:smoothness:speed:)(RealityFoundation::TurbulenceForceEffect *__return_ptr retstr, Swift::Double strength, Swift::Double smoothness, Swift::Double speed)
{
  v4 = strength;
  v5 = smoothness;
  retstr->strength = v4;
  retstr->smoothness = v5;
  v6 = speed;
  retstr->speed = v6;
  retstr->forceMode = RealityFoundation_ForceMode_force;
}

uint64_t TurbulenceForceEffect.parameterTypes.getter@<X0>(int *a1@<X8>)
{
  if (one-time initialization token for velocity != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = static PhysicsBodyParameterTypes.velocity;
  if (one-time initialization token for position != -1)
  {
    v5 = a1;
    result = swift_once();
    a1 = v5;
  }

  v2 = static PhysicsBodyParameterTypes.position;
  if ((static PhysicsBodyParameterTypes.position & ~v1) == 0)
  {
    v2 = 0;
  }

  *a1 = v2 | v1;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TurbulenceForceEffect.CodingKeys()
{
  v1 = 0x6874676E65727473;
  v2 = 0x6465657073;
  if (*v0 != 2)
  {
    v2 = 0x646F4D6563726F66;
  }

  if (*v0)
  {
    v1 = 0x656E68746F6F6D73;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TurbulenceForceEffect.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized TurbulenceForceEffect.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TurbulenceForceEffect.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TurbulenceForceEffect.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TurbulenceForceEffect.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation21TurbulenceForceEffectV10CodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation21TurbulenceForceEffectV10CodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-v7];
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v12 = *(v1 + 12);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15[12] = v12;
    v15[11] = 3;
    lazy protocol witness table accessor for type ForceMode and conformance ForceMode();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t TurbulenceForceEffect.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation21TurbulenceForceEffectV10CodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation21TurbulenceForceEffectV10CodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys();
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
    v19[11] = 3;
    lazy protocol witness table accessor for type ForceMode and conformance ForceMode();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    v18 = v19[12];
    *a2 = v12;
    *(a2 + 4) = v14;
    *(a2 + 8) = v17;
    *(a2 + 12) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for ForceEffectProtocol.parameterTypes.getter in conformance TurbulenceForceEffect@<X0>(int *a1@<X8>)
{
  if (one-time initialization token for velocity != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = static PhysicsBodyParameterTypes.velocity;
  if (one-time initialization token for position != -1)
  {
    v5 = a1;
    result = swift_once();
    a1 = v5;
  }

  v2 = static PhysicsBodyParameterTypes.position;
  if ((static PhysicsBodyParameterTypes.position & ~v1) == 0)
  {
    v2 = 0;
  }

  *a1 = v2 | v1;
  return result;
}

RealityFoundation::RadialForceEffect __swiftcall RadialForceEffect.init(strength:restDistance:)(Swift::Double strength, Swift::Double restDistance)
{
  v3 = strength;
  v4 = restDistance;
  *v2 = v3;
  *(v2 + 4) = v4;
  *(v2 + 8) = 0;
  result.restDistance = v4;
  result.strength = v3;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance RadialForceEffect.CodingKeys()
{
  v1 = 0x7473694474736572;
  if (*v0 != 1)
  {
    v1 = 0x646F4D6563726F66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6874676E65727473;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RadialForceEffect.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized RadialForceEffect.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RadialForceEffect.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RadialForceEffect.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RadialForceEffect.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation17RadialForceEffectV10CodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation17RadialForceEffectV10CodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = *(v1 + 8);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v17 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v11;
    v15 = 2;
    lazy protocol witness table accessor for type ForceMode and conformance ForceMode();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t RadialForceEffect.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation17RadialForceEffectV10CodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation17RadialForceEffectV10CodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v21 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v11;
    v20 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v14;
    v18 = 2;
    lazy protocol witness table accessor for type ForceMode and conformance ForceMode();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    v16 = v19;
    *a2 = v12;
    *(a2 + 4) = v15;
    *(a2 + 8) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t specialized closure #1 in Atomic.store(_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;

  *a1 = v3;
}

unint64_t specialized Data.InlineData.init(count:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized Data.init(bytes:count:)(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return specialized Data.InlineData.init(_:)(a1, &a1[a2]);
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
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

unint64_t lazy protocol witness table accessor for type ConstantForceEffect.CodingKeys and conformance ConstantForceEffect.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ConstantForceEffect.CodingKeys and conformance ConstantForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConstantForceEffect.CodingKeys and conformance ConstantForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConstantForceEffect.CodingKeys and conformance ConstantForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConstantForceEffect.CodingKeys and conformance ConstantForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConstantForceEffect.CodingKeys and conformance ConstantForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConstantForceEffect.CodingKeys and conformance ConstantForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConstantForceEffect.CodingKeys and conformance ConstantForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConstantForceEffect.CodingKeys and conformance ConstantForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConstantForceEffect.CodingKeys and conformance ConstantForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConstantForceEffect.CodingKeys and conformance ConstantForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConstantForceEffect.CodingKeys and conformance ConstantForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConstantForceEffect.CodingKeys and conformance ConstantForceEffect.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForceMode and conformance ForceMode()
{
  result = lazy protocol witness table cache variable for type ForceMode and conformance ForceMode;
  if (!lazy protocol witness table cache variable for type ForceMode and conformance ForceMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForceMode and conformance ForceMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForceMode and conformance ForceMode;
  if (!lazy protocol witness table cache variable for type ForceMode and conformance ForceMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForceMode and conformance ForceMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForceMode and conformance ForceMode;
  if (!lazy protocol witness table cache variable for type ForceMode and conformance ForceMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForceMode and conformance ForceMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConstantRadialForceEffect.CodingKeys and conformance ConstantRadialForceEffect.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ConstantRadialForceEffect.CodingKeys and conformance ConstantRadialForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConstantRadialForceEffect.CodingKeys and conformance ConstantRadialForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConstantRadialForceEffect.CodingKeys and conformance ConstantRadialForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConstantRadialForceEffect.CodingKeys and conformance ConstantRadialForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConstantRadialForceEffect.CodingKeys and conformance ConstantRadialForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConstantRadialForceEffect.CodingKeys and conformance ConstantRadialForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConstantRadialForceEffect.CodingKeys and conformance ConstantRadialForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConstantRadialForceEffect.CodingKeys and conformance ConstantRadialForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConstantRadialForceEffect.CodingKeys and conformance ConstantRadialForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConstantRadialForceEffect.CodingKeys and conformance ConstantRadialForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConstantRadialForceEffect.CodingKeys and conformance ConstantRadialForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConstantRadialForceEffect.CodingKeys and conformance ConstantRadialForceEffect.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VortexForceEffect.CodingKeys and conformance VortexForceEffect.CodingKeys()
{
  result = lazy protocol witness table cache variable for type VortexForceEffect.CodingKeys and conformance VortexForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type VortexForceEffect.CodingKeys and conformance VortexForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VortexForceEffect.CodingKeys and conformance VortexForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VortexForceEffect.CodingKeys and conformance VortexForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type VortexForceEffect.CodingKeys and conformance VortexForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VortexForceEffect.CodingKeys and conformance VortexForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VortexForceEffect.CodingKeys and conformance VortexForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type VortexForceEffect.CodingKeys and conformance VortexForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VortexForceEffect.CodingKeys and conformance VortexForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VortexForceEffect.CodingKeys and conformance VortexForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type VortexForceEffect.CodingKeys and conformance VortexForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VortexForceEffect.CodingKeys and conformance VortexForceEffect.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DragForceEffect.CodingKeys and conformance DragForceEffect.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DragForceEffect.CodingKeys and conformance DragForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type DragForceEffect.CodingKeys and conformance DragForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DragForceEffect.CodingKeys and conformance DragForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DragForceEffect.CodingKeys and conformance DragForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type DragForceEffect.CodingKeys and conformance DragForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DragForceEffect.CodingKeys and conformance DragForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DragForceEffect.CodingKeys and conformance DragForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type DragForceEffect.CodingKeys and conformance DragForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DragForceEffect.CodingKeys and conformance DragForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DragForceEffect.CodingKeys and conformance DragForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type DragForceEffect.CodingKeys and conformance DragForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DragForceEffect.CodingKeys and conformance DragForceEffect.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TurbulenceForceEffect.CodingKeys and conformance TurbulenceForceEffect.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys;
  if (!lazy protocol witness table cache variable for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RadialForceEffect.CodingKeys and conformance RadialForceEffect.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhysicsBodyParameterTypes and conformance PhysicsBodyParameterTypes()
{
  result = lazy protocol witness table cache variable for type PhysicsBodyParameterTypes and conformance PhysicsBodyParameterTypes;
  if (!lazy protocol witness table cache variable for type PhysicsBodyParameterTypes and conformance PhysicsBodyParameterTypes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsBodyParameterTypes and conformance PhysicsBodyParameterTypes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicsBodyParameterTypes and conformance PhysicsBodyParameterTypes;
  if (!lazy protocol witness table cache variable for type PhysicsBodyParameterTypes and conformance PhysicsBodyParameterTypes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsBodyParameterTypes and conformance PhysicsBodyParameterTypes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicsBodyParameterTypes and conformance PhysicsBodyParameterTypes;
  if (!lazy protocol witness table cache variable for type PhysicsBodyParameterTypes and conformance PhysicsBodyParameterTypes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsBodyParameterTypes and conformance PhysicsBodyParameterTypes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicsBodyParameterTypes and conformance PhysicsBodyParameterTypes;
  if (!lazy protocol witness table cache variable for type PhysicsBodyParameterTypes and conformance PhysicsBodyParameterTypes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsBodyParameterTypes and conformance PhysicsBodyParameterTypes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForceEffectComponent.SimulationState and conformance ForceEffectComponent.SimulationState()
{
  result = lazy protocol witness table cache variable for type ForceEffectComponent.SimulationState and conformance ForceEffectComponent.SimulationState;
  if (!lazy protocol witness table cache variable for type ForceEffectComponent.SimulationState and conformance ForceEffectComponent.SimulationState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForceEffectComponent.SimulationState and conformance ForceEffectComponent.SimulationState);
  }

  return result;
}

void type metadata completion function for ForceEffect(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for SpatialForceFalloff?);
    if (v3 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for TimedForceFalloff?);
      if (v4 <= 0x3F)
      {
        type metadata accessor for SIMD3<Float>();
        if (v5 <= 0x3F)
        {
          type metadata accessor for simd_quatf(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ForceEffect(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFC)
  {
    v7 = 252;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2 && *(a1 + ((((((v6 + 71) & 0xFFFFFFFFFFFFFFF0) + 31) & 0xFFFFFFFFFFFFFFF0) + 19) & 0xFFFFFFFFFFFFFFF0 | 9)))
  {
    return v7 + *a1 + 1;
  }

  if (v5 >= 0xFC)
  {
    return (*(v4 + 48))();
  }

  v9 = *(((((((a1 + v6 + 71) & 0xFFFFFFFFFFFFFFF0) + 31) & 0xFFFFFFFFFFFFFFF0) + 19) & 0xFFFFFFFFFFFFFFF0) + 8);
  if (v9 >= 4)
  {
    return v9 - 3;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for ForceEffect(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFC)
  {
    v8 = 252;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = (((((v9 + 71) & 0xFFFFFFFFFFFFFFF0) + 31) & 0xFFFFFFFFFFFFFFF0) + 19) & 0xFFFFFFFFFFFFFFF0 | 9;
  if (v8 >= a2)
  {
    if (v8 < a3)
    {
      a1[v10] = 0;
    }

    if (a2)
    {
      if (v7 < 0xFC)
      {
        *((((((&a1[v9 + 71] & 0xFFFFFFFFFFFFFFF0) + 31) & 0xFFFFFFFFFFFFFFF0) + 19) & 0xFFFFFFFFFFFFFFF0) + 8) = a2 + 3;
      }

      else
      {
        v12 = *(v6 + 56);

        v12();
      }
    }
  }

  else
  {
    v11 = ~v8 + a2;
    bzero(a1, v10);
    *a1 = v11;
    if (v8 < a3)
    {
      a1[v10] = 1;
    }
  }
}

void type metadata accessor for SIMD3<Float>()
{
  if (!lazy cache variable for type metadata for SIMD3<Float>)
  {
    lazy protocol witness table accessor for type Float and conformance Float();
    v0 = type metadata accessor for SIMD3();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SIMD3<Float>);
    }
  }
}

uint64_t type metadata instantiation function for UnsafeForceEffectBuffer()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for UnsafeForceEffectBuffer.Iterator()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy232_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ForceEffectParameters(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
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

uint64_t storeEnumTagSinglePayload for ForceEffectParameters(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
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
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for ForceEffectEvent(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ForceEffectEvent(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 232;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
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
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *storeEnumTagSinglePayload for ForceEffectEvent(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 232;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFF18)
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFF18)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFF18)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 232);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = (result + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      *(v18 + 200) = 0u;
      v19 = a2 & 0x7FFFFFFF;
      *(v18 + 216) = 0u;
      *(v18 + 184) = 0u;
      *(v18 + 168) = 0u;
      *(v18 + 152) = 0u;
      *(v18 + 136) = 0u;
      *(v18 + 120) = 0u;
      *(v18 + 104) = 0u;
      *(v18 + 88) = 0u;
      *(v18 + 72) = 0u;
      *(v18 + 56) = 0u;
      *(v18 + 40) = 0u;
      *(v18 + 24) = 0u;
      *(v18 + 8) = 0u;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConstantForceEffect(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ConstantForceEffect(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 32) = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConstantRadialForceEffect(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 5))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ConstantRadialForceEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 4) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TurbulenceForceEffect(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 13))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 12);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TurbulenceForceEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 12) = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RadialForceEffect(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RadialForceEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t specialized RadialForceEffect.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874676E65727473 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7473694474736572 && a2 == 0xEC00000065636E61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F4D6563726F66 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized VortexForceEffect.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874676E65727473 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1936291937 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F4D6563726F66 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized ConstantForceEffect.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874676E65727473 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F4D6563726F66 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized TurbulenceForceEffect.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874676E65727473 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E68746F6F6D73 && a2 == 0xEA00000000007373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465657073 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646F4D6563726F66 && a2 == 0xE900000000000065)
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

uint64_t specialized ForceMode.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6563726F66 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6172656C65636361 && a2 == 0xEC0000006E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736C75706D69 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x797469636F6C6576 && a2 == 0xE800000000000000)
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

uint64_t dynamic_cast_existential_3_conditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      if (swift_conformsToProtocol2())
      {
        return a1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t partial apply for dispatchEvent #1 <A>(sourceObject:payloadRef:) in ForceEffect.toCore(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for ForceEffect() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  static ForceEffectParameters.__fromCore(_:)(a2, v9);
  (*(v5 + 24))(v9, v4, v5);
  v11[12] = v9[12];
  v11[13] = v9[13];
  v12 = v10;
  v11[8] = v9[8];
  v11[9] = v9[9];
  v11[10] = v9[10];
  v11[11] = v9[11];
  v11[4] = v9[4];
  v11[5] = v9[5];
  v11[6] = v9[6];
  v11[7] = v9[7];
  v11[0] = v9[0];
  v11[1] = v9[1];
  v11[2] = v9[2];
  v11[3] = v9[3];
  outlined destroy of ForceEffectParameters(v11);
  return 0;
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *outlined init with take of Decodable & Encodable(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t partial apply for specialized thunk for @callee_guaranteed () -> (@out A, @error @owned Error)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t specialized Entity.withMutation<A, B>(keyPath:_:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  v4 = v2;
  v33 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v33 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - v14;
  v16 = *(v4 + 16);
  ObservationRegistrar = REEntityGetObservationRegistrar();
  if (ObservationRegistrar)
  {
    outlined init with copy of ObservationRegistrar?(ObservationRegistrar, v15);
    v18 = type metadata accessor for ObservationRegistrar();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v15, 1, v18) != 1)
    {
      v34 = v4;
      lazy protocol witness table accessor for type Entity and conformance Entity();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();
      v20 = (*(v19 + 8))(v15, v18);
      goto LABEL_6;
    }
  }

  else
  {
    v21 = type metadata accessor for ObservationRegistrar();
    (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  }

  v20 = outlined destroy of ObservationRegistrar?(v15);
LABEL_6:
  a2(&v35, v20);
  if (!v3)
  {
    LOBYTE(v35) = 0;
    v27 = *(v4 + 16);
    v28 = REEntityGetObservationRegistrar();
    if (v28)
    {
      outlined init with copy of ObservationRegistrar?(v28, v13);
      v29 = type metadata accessor for ObservationRegistrar();
      v30 = *(v29 - 8);
      if ((*(v30 + 48))(v13, 1, v29) != 1)
      {
        v34 = v4;
        lazy protocol witness table accessor for type Entity and conformance Entity();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();
        (*(v30 + 8))(v13, v29);
        return v35;
      }
    }

    else
    {
      v32 = type metadata accessor for ObservationRegistrar();
      (*(*(v32 - 8) + 56))(v13, 1, 1, v32);
    }

    outlined destroy of ObservationRegistrar?(v13);
    return v35;
  }

  v22 = *(v4 + 16);
  v23 = REEntityGetObservationRegistrar();
  if (v23)
  {
    outlined init with copy of ObservationRegistrar?(v23, v10);
    v24 = type metadata accessor for ObservationRegistrar();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v10, 1, v24) != 1)
    {
      v34 = v4;
      lazy protocol witness table accessor for type Entity and conformance Entity();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();
      return (*(v25 + 8))(v10, v24);
    }
  }

  else
  {
    v31 = type metadata accessor for ObservationRegistrar();
    (*(*(v31 - 8) + 56))(v10, 1, 1, v31);
  }

  return outlined destroy of ObservationRegistrar?(v10);
}

{
  return sub_1C1370C70(a1, a2);
}

uint64_t AudioGroupPlaybackController.deinit()
{
  v1 = v0[5];
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v0[5];

  for (i = 0; v4; result = RERelease())
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    MEMORY[0x1C68F7170](*(*(v1 + 56) + ((v9 << 9) | (8 * v10))), *(*(v1 + 48) + ((v9 << 9) | (8 * v10))));
    RENetworkMarkComponentDirty();
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      v11 = v0[5];

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v0[6], v0[7]);
      return v0;
    }

    v4 = *(v1 + 64 + 8 * v9);
    ++i;
    if (v4)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t AudioGroupPlaybackController.__deallocating_deinit()
{
  AudioGroupPlaybackController.deinit();

  return swift_deallocClassInstance();
}

uint64_t AudioGroupPlaybackController.play()(void (*a1)(void, void))
{
  a1(*(v1 + 24), *(v1 + 32));
  v2 = *(v1 + 24);

  return RENetworkMarkComponentDirty();
}

uint64_t AudioGroupPlaybackController.seek(to:)()
{
  v1 = Duration.components.getter();
  Duration.components.getter();
  MEMORY[0x1C68F7300](*(v0 + 24), *(v0 + 32), v2 * 1.0e-18 + v1);
  v3 = *(v0 + 24);

  return RENetworkMarkComponentDirty();
}

uint64_t AudioGroupPlaybackController.playbackPosition.setter()
{
  MEMORY[0x1C68F7300](*(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 24);

  return RENetworkMarkComponentDirty();
}

uint64_t key path getter for AudioGroupPlaybackController.completionHandler : AudioGroupPlaybackController@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sIg_Ieg_TRTA_0;
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

uint64_t key path setter for AudioGroupPlaybackController.completionHandler : AudioGroupPlaybackController(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  v8 = *(*a2 + 48);
  v9 = v7[7];
  v7[6] = v6;
  v7[7] = v5;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v3);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v6);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
  v11 = v7[2];
  v10 = v7[3];
  REAudioPlayerComponentSetCompletionHandler();

  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6, v5);
}

uint64_t AudioGroupPlaybackController.completionHandler.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v1);
  return v1;
}

uint64_t AudioGroupPlaybackController.completionHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[6];
  v6 = v2[7];
  v2[6] = a1;
  v2[7] = a2;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a1);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v6);
  v8 = v2[2];
  v7 = v2[3];
  REAudioPlayerComponentSetCompletionHandler();

  return outlined consume of (@escaping @callee_guaranteed () -> ())?(a1, a2);
}

uint64_t handler #1 (token:) in AudioGroupPlaybackController.completionHandler.setter(uint64_t a1)
{
  if (one-time initialization token for instances != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static AudioGroupPlaybackController.instances;
  if (!*(static AudioGroupPlaybackController.instances + 16))
  {
    return swift_endAccess();
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return swift_endAccess();
  }

  v5 = *(*(v2 + 56) + 8 * v3);
  result = swift_endAccess();
  v7 = *(v5 + 48);
  if (v7)
  {
    v8 = *(v5 + 56);

    v9 = outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v7);
    v7(v9);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v7, v8);
  }

  return result;
}

uint64_t (*AudioGroupPlaybackController.completionHandler.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  *a1 = v3;
  a1[1] = v4;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v3);
  return AudioGroupPlaybackController.completionHandler.modify;
}

uint64_t AudioGroupPlaybackController.completionHandler.modify(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  v6 = v4[6];
  v7 = v4[7];
  v4[6] = *a1;
  v4[7] = v3;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v5);
  if (a2)
  {
    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v5);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v6, v7);
    v9 = v4[2];
    v8 = v4[3];
    REAudioPlayerComponentSetCompletionHandler();
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v3);
  }

  else
  {
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v6, v7);
    v11 = v4[2];
    v10 = v4[3];
    REAudioPlayerComponentSetCompletionHandler();
  }

  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v3);
}

void AudioGroupPlaybackController.playbackPosition.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  JUMPOUT(0x1C68F7250);
}

uint64_t (*AudioGroupPlaybackController.playbackPosition.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  *a1 = MEMORY[0x1C68F7250](*(v1 + 24), *(v1 + 32));
  return AudioGroupPlaybackController.playbackPosition.modify;
}

uint64_t AudioGroupPlaybackController.playbackPosition.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  MEMORY[0x1C68F7300](*(v1 + 24), *(v1 + 32), *a1);
  v2 = *(v1 + 24);

  return RENetworkMarkComponentDirty();
}

uint64_t static Audio.prepareAudio(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v94 - v5;
  PlaybackToken = REAudioGroupPlaybackComponentCreatePlaybackToken();
  v8 = *(a1 + 16);
  if (v8 > 0xFF)
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    swift_once();
LABEL_80:
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v105 = static AudioGroupPlaybackController.instances;
    static AudioGroupPlaybackController.instances = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v8, isUniquelyReferenced_nonNull_native);
    static AudioGroupPlaybackController.instances = v105;
    swift_endAccess();
    return a1;
  }

  v9 = PlaybackToken;
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_s13OpaquePointerVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  if (!v8)
  {

    goto LABEL_77;
  }

  v101 = 0;
  v102 = v10;
  v94 = v1;
  v95 = v6;
  v99 = v9;
  v103 = 0;
  v11 = a1 + 40;
  v12 = MEMORY[0x1E69E7CC0];
  v13 = 0.0;
  v98 = v8;
  v14 = 1;
  while (1)
  {
    v100 = v8;
    v8 = v14;
    v104 = v12;
    v16 = *(v11 - 8);
    v15 = *v11;
    v17 = *(v16 + 16);
    v18 = *(*v11 + 16);

    REAudioPlayerComponentGetComponentType();
    a1 = REEntityGetOrAddComponentByClass();
    v19 = REAudioPlayerComponentPrepareAssetForGroup();
    v20 = v102;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v106[0] = v20;
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v19);
    v24 = *(v20 + 16);
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v28 = v23;
    if (*(v20 + 24) >= v27)
    {
      if ((v21 & 1) == 0)
      {
        v41 = v22;
        specialized _NativeDictionary.copy()();
        v22 = v41;
      }

      goto LABEL_10;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, v21);
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v19);
    if ((v28 & 1) != (v29 & 1))
    {
      break;
    }

LABEL_10:
    v30 = v106[0];
    v102 = v106[0];
    if (v28)
    {
      *(*(v106[0] + 56) + 8 * v22) = a1;
    }

    else
    {
      *(v106[0] + 8 * (v22 >> 6) + 64) |= 1 << v22;
      *(v30[6] + 8 * v22) = v19;
      *(v30[7] + 8 * v22) = a1;
      v31 = v30[2];
      v26 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v26)
      {
        goto LABEL_82;
      }

      v30[2] = v32;
    }

    v33 = *(v16 + 16);
    REAudioFileAssetGetLengthInSeconds();
    v35 = v101;
    if (v13 < v34)
    {
      v35 = a1;
    }

    v101 = v35;
    v36 = v103;
    v12 = v104;
    if (v13 < v34)
    {
      v36 = v19;
    }

    v103 = v36;
    if (v13 < v34)
    {
      v14 = 0;
    }

    else
    {
      v14 = v8;
    }

    if (v13 < v34)
    {
      v13 = v34;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
    }

    v38 = v12[2];
    v37 = v12[3];
    a1 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v12);
    }

    v39 = v100;

    v12[2] = a1;
    v40 = &v12[2 * v38];
    v40[4] = v19;
    v40[5] = v15;
    v11 += 16;
    v8 = v39 - 1;
    if (!v8)
    {
      if ((v14 & 1) == 0 && v101)
      {
        v42 = v38 + 1;
        v43 = v12 + 5;
        v96 = xmmword_1C1887600;
        v8 = v99;
        v104 = v12;
        while (1)
        {
          v44 = *(v43 - 1);
          v45 = *v43;
          v46 = *(*v43 + 16);
          swift_retain_n();
          Component = REEntityGetComponent();
          if (Component)
          {
            v106[0] = Component;
            v48 = specialized static AudioGroupPlaybackComponent.__fromCore(_:)(v106);
          }

          else
          {

            v48 = MEMORY[0x1E69E7CC8];
          }

          v49 = v48[2];
          v100 = v42;
          if (v49)
          {
            v50 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
            if (v51)
            {
              a1 = *(v48[7] + 8 * v50);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16) + 1, 1, a1);
              }

              v53 = *(a1 + 16);
              v52 = *(a1 + 24);
              if (v53 >= v52 >> 1)
              {
                a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, a1);
              }

              *(a1 + 16) = v53 + 1;
              v54 = a1 + 24 * v53;
              *(v54 + 32) = v44;
              *(v54 + 40) = v98;
              *(v54 + 48) = v103;
              v55 = swift_isUniquelyReferenced_nonNull_native();
              v106[0] = v48;
              v8 = v99;
              v56 = specialized __RawDictionaryStorage.find<A>(_:)(v99);
              v58 = v48[2];
              v59 = (v57 & 1) == 0;
              v26 = __OFADD__(v58, v59);
              v60 = v58 + v59;
              if (v26)
              {
                goto LABEL_85;
              }

              v61 = v57;
              if (v48[3] < v60)
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v60, v55);
                v56 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
                if ((v61 & 1) != (v62 & 1))
                {
                  goto LABEL_89;
                }

                goto LABEL_56;
              }

              if (v55)
              {
LABEL_56:
                v70 = v106[0];
                if (v61)
                {
                  goto LABEL_57;
                }
              }

              else
              {
                v76 = v56;
                specialized _NativeDictionary.copy()();
                v56 = v76;
                v70 = v106[0];
                if (v61)
                {
LABEL_57:
                  v73 = v70[7];
                  v74 = *(v73 + 8 * v56);
                  *(v73 + 8 * v56) = a1;

                  goto LABEL_63;
                }
              }

              v70[(v56 >> 6) + 8] |= 1 << v56;
              *(v70[6] + 8 * v56) = v8;
              *(v70[7] + 8 * v56) = a1;
              v77 = v70[2];
              v26 = __OFADD__(v77, 1);
              v72 = v77 + 1;
              if (v26)
              {
                goto LABEL_87;
              }

              goto LABEL_62;
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt64V16audioPlayerToken_s5UInt8V9groupSizeAD016transportControlG0tGMd, &_ss23_ContiguousArrayStorageCys6UInt64V16audioPlayerToken_s5UInt8V9groupSizeAD016transportControlG0tGMR);
          a1 = swift_allocObject();
          *(a1 + 16) = v96;
          *(a1 + 32) = v44;
          *(a1 + 40) = v98;
          *(a1 + 48) = v103;
          v63 = swift_isUniquelyReferenced_nonNull_native();
          v106[0] = v48;
          v56 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
          v65 = v48[2];
          v66 = (v64 & 1) == 0;
          v26 = __OFADD__(v65, v66);
          v67 = v65 + v66;
          if (v26)
          {
            goto LABEL_83;
          }

          v68 = v64;
          if (v48[3] >= v67)
          {
            if ((v63 & 1) == 0)
            {
              v75 = v56;
              specialized _NativeDictionary.copy()();
              v56 = v75;
              v70 = v106[0];
              if (v68)
              {
                goto LABEL_57;
              }

              goto LABEL_52;
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v67, v63);
            v56 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
            if ((v68 & 1) != (v69 & 1))
            {
              goto LABEL_89;
            }
          }

          v70 = v106[0];
          if (v68)
          {
            goto LABEL_57;
          }

LABEL_52:
          v70[(v56 >> 6) + 8] |= 1 << v56;
          *(v70[6] + 8 * v56) = v8;
          *(v70[7] + 8 * v56) = a1;
          v71 = v70[2];
          v26 = __OFADD__(v71, 1);
          v72 = v71 + 1;
          if (v26)
          {
            goto LABEL_84;
          }

LABEL_62:
          v70[2] = v72;
LABEL_63:
          v78 = *(v45 + 16);

          if (REComponentClassFromType())
          {
            v106[0] = v70;

            ComponentByClass = REEntityGetComponentByClass();
            v80 = ComponentByClass;
            v81 = ComponentByClass;
            if (ComponentByClass || (ComponentByClass = REEntityAddComponentNoEvents(), (v81 = ComponentByClass) != 0))
            {
              v97 = v78;
              MEMORY[0x1EEE9AC00](ComponentByClass);
              *(&v94 - 4) = v106;
              *(&v94 - 3) = v81;
              *(&v94 - 16) = 0;
              v82 = *(v45 + 16);
              ObservationRegistrar = REEntityGetObservationRegistrar();
              if (ObservationRegistrar)
              {
                v84 = v95;
                outlined init with copy of ObservationRegistrar?(ObservationRegistrar, v95);
                v85 = type metadata accessor for ObservationRegistrar();
                if ((*(*(v85 - 8) + 48))(v84, 1, v85) != 1)
                {
                  v86 = outlined destroy of ObservationRegistrar?(v84);
                  MEMORY[0x1EEE9AC00](v86);
                  *(&v94 - 4) = &type metadata for AudioGroupPlaybackComponent;
                  *(&v94 - 3) = &protocol witness table for AudioGroupPlaybackComponent;
                  *(&v94 - 2) = &type metadata for AudioGroupPlaybackComponent;
                  KeyPath = swift_getKeyPath();
                  v88 = v94;
                  specialized Entity.withMutation<A, B>(keyPath:_:)(KeyPath, partial apply for specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:));
                  v94 = v88;

                  goto LABEL_71;
                }
              }

              else
              {
                v89 = type metadata accessor for ObservationRegistrar();
                v84 = v95;
                (*(*(v89 - 8) + 56))(v95, 1, 1, v89);
              }

              outlined destroy of ObservationRegistrar?(v84);
              v105 = v81;
              AudioGroupPlaybackComponent.__toCore(_:)(&v105, v70);
LABEL_71:
              if (!v80)
              {
                REEntitySendAddAndActivateComponentEvents();
              }

              v8 = v99;
            }

            swift_bridgeObjectRelease_n();
            goto LABEL_32;
          }

LABEL_32:

          v43 += 2;
          v42 = v100 - 1;
          if (v100 == 1)
          {

            type metadata accessor for AudioGroupPlaybackController();
            a1 = swift_allocObject();
            v91 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_s13OpaquePointerVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
            *(a1 + 48) = 0;
            *(a1 + 56) = 0;
            *(a1 + 32) = v103;
            *(a1 + 40) = v91;
            v92 = v101;
            *(a1 + 16) = v8;
            *(a1 + 24) = v92;
            if (one-time initialization token for instances == -1)
            {
              goto LABEL_80;
            }

            goto LABEL_88;
          }
        }
      }

LABEL_77:
      lazy protocol witness table accessor for type AudioGroupPlaybackComponent.Error and conformance AudioGroupPlaybackComponent.Error();
      swift_allocError();
      swift_willThrow();
      return a1;
    }
  }

LABEL_89:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type AudioGroupPlaybackComponent.Error and conformance AudioGroupPlaybackComponent.Error()
{
  result = lazy protocol witness table cache variable for type AudioGroupPlaybackComponent.Error and conformance AudioGroupPlaybackComponent.Error;
  if (!lazy protocol witness table cache variable for type AudioGroupPlaybackComponent.Error and conformance AudioGroupPlaybackComponent.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioGroupPlaybackComponent.Error and conformance AudioGroupPlaybackComponent.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AudioGroupPlaybackComponent.Error and conformance AudioGroupPlaybackComponent.Error;
  if (!lazy protocol witness table cache variable for type AudioGroupPlaybackComponent.Error and conformance AudioGroupPlaybackComponent.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioGroupPlaybackComponent.Error and conformance AudioGroupPlaybackComponent.Error);
  }

  return result;
}

uint64_t type metadata completion function for Box(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t static Box<A>.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 88);
  v4 = a2 + *(*a2 + 88);
  v5 = *(v2 + 80);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Box.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t static MutableBox<A>.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 80);
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v13 = v5[2];
  v13(&v18 - v11, v14 + *(*v14 + 88), v4, v10);
  (v13)(v8, a2 + *(*a2 + 88), v4);
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = v5[1];
  v16(v8, v4);
  v16(v12, v4);
  return v15 & 1;
}

uint64_t static Indirect<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v13 = v5[2];
  v13(&v18 - v11, v14 + *(*v14 + 88), v10);
  (v13)(v8, a2 + *(*a2 + 88), a3);
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = v5[1];
  v16(v8, a3);
  v16(v12, a3);
  return v15 & 1;
}

uint64_t type metadata instantiation function for Indirect()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double MaterialParameters.Texture.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = REMaterialCreateDefaultSamplerDescriptor();
  *(a2 + 8) = a1;
  *(a2 + 16) = 0;
  *&result = 84148994;
  *(a2 + 24) = 84148994;
  return result;
}

uint64_t MaterialParameters.allKeys.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = Material.allKeys.getter(v2, v3);
  v5 = v4;
  v6 = v4 + 56;
  v7 = 1 << *(v4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return v13;
    }

    v9 = *(v6 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      do
      {
LABEL_8:
        v15 = (*(v5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
        v17 = *v15;
        v16 = v15[1];

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1, v13);
          v13 = result;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v13);
          v13 = result;
        }

        v9 &= v9 - 1;
        *(v13 + 16) = v19 + 1;
        v20 = v13 + 16 * v19;
        *(v20 + 32) = v17;
        *(v20 + 40) = v16;
      }

      while (v9);
    }
  }

  __break(1u);
  return result;
}

id MaterialParameters.Texture.sampler.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  if (*v1)
  {
    v4 = *v1;
  }

  else
  {
    v4 = REMaterialCreateDefaultSamplerDescriptor();
    v3 = 0;
  }

  *a1 = v4;

  return v3;
}

double MaterialParameters.Texture.init(_:sampler:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *(a3 + 8) = a1;
  *(a3 + 16) = 0;
  *&result = 84148994;
  *(a3 + 24) = 84148994;
  *a3 = v3;
  return result;
}

RealityFoundation::MaterialParameters::Texture::Sampler __swiftcall MaterialParameters.Texture.Sampler.init()()
{
  v1 = v0;
  result.descriptor.super.isa = REMaterialCreateDefaultSamplerDescriptor();
  v1->descriptor.super.isa = result.descriptor.super.isa;
  return result;
}

void MaterialParameters.Texture.Sampler.modify<A>(_:)(void (*a1)())
{
  [*v1 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MTLSamplerDescriptor, 0x1E6974170);
  swift_dynamicCast();
  a1();
  if (v2)
  {
  }

  else
  {

    *v1 = v4;
  }
}

void MaterialParameters.Texture.Sampler.access<A>(_:)(void (*a1)())
{
  [*v1 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MTLSamplerDescriptor, 0x1E6974170);
  swift_dynamicCast();
  a1();
}

uint64_t MaterialParameters.Texture.resource.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

id key path getter for MaterialParameters.Texture.sampler : MaterialParameters.Texture@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *a1;
  }

  else
  {
    v4 = REMaterialCreateDefaultSamplerDescriptor();
    v3 = 0;
  }

  *a2 = v4;

  return v3;
}

void MaterialParameters.Texture.sampler.setter(void **a1)
{
  v2 = *a1;

  *v1 = v2;
}

void (*MaterialParameters.Texture.sampler.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = *v1;
  if (*v1)
  {
    v4 = *v1;
  }

  else
  {
    v4 = REMaterialCreateDefaultSamplerDescriptor();
    v3 = 0;
  }

  *a1 = v4;
  v5 = v3;
  return MaterialParameters.Texture.sampler.modify;
}

void MaterialParameters.Texture.sampler.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *v2;
  if (a2)
  {
    v5 = v3;

    *v2 = v3;
  }

  else
  {

    *v2 = v3;
  }
}

uint64_t MaterialParameters.Handle.SharedHandle.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  RERelease();

  return swift_deallocClassInstance();
}

double MaterialParameters.Value.init(_:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  switch(*(a1 + 64))
  {
    case 1:
      *a2 = v2;
      *(a2 + 8) = v3;
      *(a2 + 16) = v4;
      *(a2 + 24) = v5;
      *(a2 + 26) = BYTE2(v5);
      *(a2 + 27) = BYTE3(v5);
      *(a2 + 64) = 0;
      break;
    case 2:
      *a2 = v2;
      *(a2 + 64) = 2;
      break;
    case 3:
      *a2 = v2;
      *(a2 + 64) = 3;
      break;
    case 4:
      *a2 = v2;
      *(a2 + 8) = v3;
      *(a2 + 64) = 4;
      break;
    case 5:
      *a2 = v2;
      *(a2 + 8) = v3;
      *(a2 + 64) = 5;
      break;
    case 6:
      *a2 = v2;
      *(a2 + 64) = 6;
      break;
    case 7:
      *a2 = v2;
      *(a2 + 8) = v3;
      *(a2 + 64) = 7;
      break;
    case 8:
      *a2 = v2;
      *(a2 + 8) = v3;
      *(a2 + 16) = v4;
      *(a2 + 24) = v5;
      *(a2 + 32) = v6;
      *(a2 + 40) = v7;
      *(a2 + 64) = 8;
      break;
    case 9:
      v8 = a1[6];
      v9 = a1[7];
      *a2 = v2;
      *(a2 + 8) = v3;
      *(a2 + 16) = v4;
      *(a2 + 24) = v5;
      *(a2 + 32) = v6;
      *(a2 + 40) = v7;
      *(a2 + 48) = v8;
      *(a2 + 56) = v9;
      *(a2 + 64) = 9;
      break;
    case 0xA:
      *a2 = v2 & 1;
      *(a2 + 64) = 10;
      break;
    case 0xB:
      *a2 = v2;
      *(a2 + 64) = 11;
      break;
    case 0xC:
      *a2 = v2;
      *(a2 + 64) = 12;
      break;
    case 0xD:
      *a2 = v2;
      *(a2 + 8) = v3;
      *(a2 + 64) = 13;
      break;
    case 0xE:
      *a2 = v2;
      *(a2 + 8) = v3;
      *(a2 + 64) = 14;
      break;
    case 0xF:
      *a2 = v2;
      *(a2 + 64) = 15;
      break;
    case 0x10:
      *a2 = v2;
      *(a2 + 64) = 16;
      break;
    case 0x11:
      *a2 = v2;
      *(a2 + 8) = v3;
      *(a2 + 64) = 17;
      break;
    case 0x12:
      *a2 = v2;
      *(a2 + 8) = v3;
      *(a2 + 64) = 18;
      break;
    case 0x13:
      result = 0.0;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 64) = -1;
      break;
    default:
      *a2 = v2;
      *(a2 + 64) = 1;
      break;
  }

  return result;
}

__n128 *MaterialParameters.Value.init(_:)@<X0>(__n128 *result@<X0>, __n128 *a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>, __n128 a5@<Q2>, __n128 a6@<Q3>)
{
  v7 = result->n128_u64[0];
  v6 = result->n128_u64[1];
  v9 = result[1].n128_u64[0];
  v8 = result[1].n128_u64[1];
  v11 = result[2].n128_u64[0];
  v10 = result[2].n128_u64[1];
  switch(result[4].n128_u8[0])
  {
    case 1u:
      a3.n128_u32[0] = result->n128_u64[0];
      v13 = 2;
      break;
    case 2u:
      a3.n128_u64[0] = result->n128_u64[0];
      v13 = 3;
      break;
    case 3u:
      a3 = *result;
      v13 = 4;
      break;
    case 4u:
      a3 = *result;
      v13 = 5;
      break;
    case 5u:
      a3.n128_u64[0] = result->n128_u64[0];
      v13 = 6;
      break;
    case 6u:
      a3.n128_u64[0] = result->n128_u64[0];
      a4.n128_u64[0] = result->n128_u64[1];
      a3.n128_u64[1] = a4.n128_u64[0];
      v13 = 7;
      break;
    case 7u:
      a5 = result[2];
      a3 = *result;
      a4 = result[1];
      v13 = 8;
      break;
    case 8u:
      a5 = result[2];
      a6 = result[3];
      a3 = *result;
      a4 = result[1];
      v13 = 9;
      break;
    case 9u:
      a3.n128_u32[0] = v7 & 1;
      v13 = 10;
      break;
    case 0xAu:
      a3.n128_u32[0] = result->n128_u64[0];
      v13 = 11;
      break;
    case 0xBu:
      a3.n128_u64[0] = result->n128_u64[0];
      v13 = 12;
      break;
    case 0xCu:
      a3 = *result;
      v13 = 13;
      break;
    case 0xDu:
      a3 = *result;
      v13 = 14;
      break;
    case 0xEu:
      a3.n128_u32[0] = result->n128_u64[0];
      v13 = 15;
      break;
    case 0xFu:
      a3.n128_u64[0] = result->n128_u64[0];
      v13 = 16;
      break;
    case 0x10u:
      a3 = *result;
      v13 = 17;
      break;
    case 0x11u:
      a3 = *result;
      v13 = 18;
      break;
    default:
      v12 = a2;
      result = REMaterialCreateDefaultSamplerDescriptor();
      a2 = v12;
      v13 = 0;
      a3.n128_u64[0] = result;
      a3.n128_u64[1] = v7;
      a4 = xmmword_1C18CD450;
      break;
  }

  *a2 = a3;
  a2[1] = a4;
  a2[2] = a5;
  a2[3] = a6;
  a2[4].n128_u8[0] = v13;
  return result;
}

uint64_t MaterialParameters.Value.cgColorValue.getter()
{
  if (v0[4].n128_u8[0] == 5)
  {
    return specialized SIMD4<>.cgColor.getter(*v0);
  }

  else
  {
    return 0;
  }
}

uint64_t MaterialParameters.Value.simd4FloatValue.getter()
{
  if (*(v0 + 64) != 5)
  {
    return 0;
  }

  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t MaterialParameters.Value.textureValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 64))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v6 = *(v1 + 24);
    v4 = *(v1 + 8);
    v5 = *(v1 + 16);
    v3 = *v1;
    v7 = v3;
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return result;
}

uint64_t MaterialParameters.Value.textureResourceValue.getter()
{
  if (*(v0 + 64) != 1)
  {
    return 0;
  }

  v1 = *v0;
}

uint64_t MaterialParameters.Value.floatValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 64);
  v3 = v2 == 2;
  v4 = v2 != 2;
  if (!v3)
  {
    v1 = 0;
  }

  return v1 | (v4 << 32);
}

uint64_t MaterialParameters.Value.simd2FloatValue.getter()
{
  if (v0[64] == 3)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

id MaterialParameters.Value.colorValue.getter()
{
  if (*(v0 + 64) != 6)
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t MaterialParameters.Value.float2x2Value.getter()
{
  v1 = *(v0 + 64);
  if (v1 == 7)
  {
    result = *v0;
  }

  else
  {
    result = 0;
  }

  if (v1 == 7)
  {
    v3 = v0[1];
  }

  return result;
}

void MaterialParameters.Value.float3x3Value.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = 0uLL;
  v4 = 0uLL;
  v5 = 0uLL;
  if (v2 == 8)
  {
    v4 = v1[1];
    v5 = v1[2];
    v3 = *v1;
  }

  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v2 != 8;
}

void MaterialParameters.Value.float4x4Value.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 64) == 9)
  {
    v2 = 0;
    v5 = v1[2];
    v6 = v1[3];
    v3 = *v1;
    v4 = v1[1];
    *(&v3 + 1) = *(v1 + 1);
    *(&v4 + 1) = *(v1 + 3);
    *(&v5 + 1) = *(v1 + 5);
    *(&v6 + 1) = *(v1 + 7);
  }

  else
  {
    v2 = 1;
    v3 = 0uLL;
    v4 = 0uLL;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
}

uint64_t MaterialParameters.Value.BOOLValue.getter()
{
  if (v0[64] == 10)
  {
    return *v0 & 1;
  }

  else
  {
    return 2;
  }
}

uint64_t MaterialParameters.Value.intValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 64);
  v3 = v2 == 11;
  v4 = v2 != 11;
  if (!v3)
  {
    v1 = 0;
  }

  return v1 | (v4 << 32);
}

uint64_t MaterialParameters.Value.uintValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 64);
  v3 = v2 == 15;
  v4 = v2 != 15;
  if (!v3)
  {
    v1 = 0;
  }

  return v1 | (v4 << 32);
}

uint64_t MaterialParameters.Value.simd2IntValue.getter()
{
  if (v0[64] == 12)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t MaterialParameters.Value.simd2UIntValue.getter()
{
  if (v0[64] == 16)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t MaterialParameters.Value.simd3IntValue.getter()
{
  if (*(v0 + 64) != 13)
  {
    return 0;
  }

  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t MaterialParameters.Value.simd3UIntValue.getter()
{
  if (*(v0 + 64) != 17)
  {
    return 0;
  }

  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t MaterialParameters.Value.simd4IntValue.getter()
{
  if (*(v0 + 64) != 14)
  {
    return 0;
  }

  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t MaterialParameters.Value.simd4UIntValue.getter()
{
  if (*(v0 + 64) != 18)
  {
    return 0;
  }

  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t (*MaterialParameters.subscript.modify(void *a1, uint64_t a2, uint64_t a3))()
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x138uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[29] = v4;
  v8[19] = a3;
  v8[9] = a2;
  v10 = v4[3];
  v11 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v10);
  Material.subscript.getter(a2, a3, v10, v11, v16);
  v12 = v17;
  if (v17 == 255)
  {
    *(v9 + 32) = 0u;
    *(v9 + 48) = 0u;
    *v9 = 0u;
    *(v9 + 16) = 0u;
    *(v9 + 64) = v12;
  }

  else
  {
    v14[0] = v16[0];
    v14[1] = v16[1];
    v14[2] = v16[2];
    v14[3] = v16[3];
    v15 = v17;
    MaterialParameters.Value.init(_:)(v14, v9);
  }

  return MaterialParameters.subscript.modify;
}

{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x138uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[29] = v4;
  v8[19] = a3;
  v8[9] = a2;
  v10 = v4[3];
  v11 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v10);
  Material.subscript.getter(a2, a3, v10, v11, v16);
  v12 = v17;
  if (v17 == 255)
  {
    *(v9 + 32) = 0u;
    *(v9 + 48) = 0u;
    *v9 = 0u;
    *(v9 + 16) = 0u;
    *(v9 + 64) = v12;
  }

  else
  {
    v14[0] = v16[0];
    v14[1] = v16[1];
    v14[2] = v16[2];
    v14[3] = v16[3];
    v15 = v17;
    MaterialParameters.Value.init(_:)(v14, v9);
  }

  return MaterialParameters.subscript.modify;
}

double MaterialParameters.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  Material.subscript.getter(a1, a2, v7, v8, v13);
  v9 = v14;
  if (v14 == 255)
  {
    result = 0.0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 64) = v9;
  }

  else
  {
    v11[0] = v13[0];
    v11[1] = v13[1];
    v11[2] = v13[2];
    v11[3] = v13[3];
    v12 = v14;
    return MaterialParameters.Value.init(_:)(v11, a3);
  }

  return result;
}

__n128 key path getter for MaterialParameters.subscript(_:) : MaterialParameters@<Q0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  Material.subscript.getter(v4, v5, v6, v7, v12);
  if (v13 == 255)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v18 = v13;
  }

  else
  {
    v10[0] = v12[0];
    v10[1] = v12[1];
    v10[2] = v12[2];
    v10[3] = v12[3];
    v11 = v13;
    MaterialParameters.Value.init(_:)(v10, &v14);
  }

  v8 = v17;
  *(a3 + 32) = v16;
  *(a3 + 48) = v8;
  *(a3 + 64) = v18;
  result = v15;
  *a3 = v14;
  *(a3 + 16) = result;
  return result;
}

uint64_t key path setter for MaterialParameters.subscript(_:) : MaterialParameters(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  v17 = *(a1 + 32);
  v18 = v5;
  v6 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v6;
  v7 = *(a1 + 48);
  v14[2] = v17;
  v14[3] = v7;
  v8 = *a3;
  v9 = a3[1];
  v19 = *(a1 + 64);
  v15 = *(a1 + 64);
  v14[0] = v16[0];
  v14[1] = v4;
  __RKMaterialParameterBlock.Parameter.init(_:)(v14, v13, v7, v4, v17);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v10);

  outlined init with copy of [String : String](v16, v14, &_s17RealityFoundation18MaterialParametersV5ValueOSgMd, &_s17RealityFoundation18MaterialParametersV5ValueOSgMR);
  return Material.subscript.setter(v13, v8, v9, v10, v11);
}

uint64_t MaterialParameters.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, __n128 a7)
{
  v10 = *(a1 + 48);
  v16[2] = *(a1 + 32);
  v16[3] = v10;
  v17 = *(a1 + 64);
  v11 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v11;
  __RKMaterialParameterBlock.Parameter.init(_:)(v16, v15, v11, v16[0], a7);
  v12 = *(v7 + 24);
  v13 = *(v7 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v7, v12);
  return Material.subscript.setter(v15, a2, a3, v12, v13);
}

void MaterialParameters.subscript.modify(void **a1, char a2, double a3, double a4, double a5, __n128 a6)
{
  v6 = *a1;
  if (a2)
  {
    v7 = *(v6 + 1);
    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    *(v6 + 12) = v9;
    *(v6 + 13) = v8;
    v10 = *(v6 + 1);
    v11 = *v6;
    *(v6 + 10) = *v6;
    *(v6 + 11) = v10;
    v12 = *(v6 + 3);
    v29 = v9;
    v30 = v12;
    v13 = *(v6 + 29);
    v14 = *(v6 + 19);
    v15 = *(v6 + 9);
    *(v6 + 224) = *(v6 + 64);
    v31 = *(v6 + 64);
    v27 = v11;
    v28 = v7;
    __RKMaterialParameterBlock.Parameter.init(_:)(&v27, v32, v12, v7, v9);
    v16 = *(v13 + 24);
    v17 = *(v13 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v13, v16);

    outlined init with copy of [String : String](v6 + 160, v6 + 240, &_s17RealityFoundation18MaterialParametersV5ValueOSgMd, &_s17RealityFoundation18MaterialParametersV5ValueOSgMR);
    Material.subscript.setter(v32, v15, v14, v16, v17);
    v18 = *(v6 + 3);
    *(v6 + 7) = *(v6 + 2);
    *(v6 + 8) = v18;
    *(v6 + 144) = *(v6 + 64);
    v19 = *(v6 + 1);
    *(v6 + 5) = *v6;
    *(v6 + 6) = v19;
    outlined destroy of BodyTrackingComponent?(v6 + 80, &_s17RealityFoundation18MaterialParametersV5ValueOSgMd, &_s17RealityFoundation18MaterialParametersV5ValueOSgMR);
  }

  else
  {
    v20 = *(v6 + 29);
    v21 = *(v6 + 19);
    v22 = *(v6 + 9);
    v23 = *(v6 + 3);
    v29 = *(v6 + 2);
    v30 = v23;
    v31 = *(v6 + 64);
    v24 = *(v6 + 1);
    v27 = *v6;
    v28 = v24;
    __RKMaterialParameterBlock.Parameter.init(_:)(&v27, v32, v24, v27, a6);
    v25 = *(v20 + 24);
    v26 = *(v20 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v20, v25);

    Material.subscript.setter(v32, v22, v21, v25, v26);
  }

  free(v6);
}

uint64_t MaterialParameters.Metadata.displayName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MaterialParameters.Metadata.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

RealityFoundation::MaterialParameters::Metadata_optional __swiftcall MaterialParameters.metadata(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v5._countAndFlagsBits = countAndFlagsBits;
  v5._object = object;
  return Material.metadata(for:)(v5);
}

void UniformParameters.Value.init(_:)(uint64_t a1@<X0>, __n128 *a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>, __n128 a5@<Q2>, __n128 a6@<Q3>)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v13 = *(a1 + 48);
  v12 = *(a1 + 56);
  switch(*(a1 + 64))
  {
    case 1:
      v16 = 0;
      a3.n128_u64[0] = *a1;
      goto LABEL_14;
    case 2:
      a3.n128_u32[0] = *a1;
      v16 = 1;
      break;
    case 3:
      a3.n128_u64[0] = *a1;
      v16 = 2;
      break;
    case 4:
      a3 = *a1;
      v16 = 3;
      break;
    case 5:
      a3 = *a1;
      v16 = 4;
      break;
    case 6:
      a3.n128_u64[0] = *a1;
      v16 = 5;
      break;
    case 7:
      a3.n128_u64[0] = *a1;
      a4.n128_u64[0] = *(a1 + 8);
      a3.n128_u64[1] = a4.n128_u64[0];
      v16 = 6;
      break;
    case 8:
      a4 = *(a1 + 16);
      a5 = *(a1 + 32);
      a3 = *a1;
      v16 = 7;
      break;
    case 9:
      a4 = *(a1 + 16);
      a5 = *(a1 + 32);
      a6 = *(a1 + 48);
      a3 = *a1;
      v16 = 8;
      break;
    case 0xA:
      a3.n128_u32[0] = v7 & 1;
      v16 = 9;
      break;
    case 0xB:
      a3.n128_u32[0] = *a1;
      v16 = 10;
      break;
    case 0xC:
      a3.n128_u64[0] = *a1;
      v16 = 11;
      break;
    case 0xD:
      a3 = *a1;
      v16 = 12;
      break;
    case 0xE:
      a3 = *a1;
      v16 = 13;
      break;
    case 0xF:
      a3.n128_u32[0] = *a1;
      v16 = 14;
      break;
    case 0x10:
      a3.n128_u64[0] = *a1;
      v16 = 15;
      break;
    case 0x11:
      a3 = *a1;
      v16 = 16;
      break;
    case 0x12:
      a3 = *a1;
      v16 = 17;
      break;
    default:
      v14 = *(a1 + 8);
      v15 = a2;

      outlined consume of MaterialParameters.Value(v7, v6, v9, v8, v11, v10, v13, v12, 0);
      a2 = v15;
      v16 = 0;
      a3.n128_u64[0] = v6;
LABEL_14:
      a4.n128_u64[0] = 84148994;
      a3.n128_u64[1] = 84148994;
      break;
  }

  *a2 = a3;
  a2[1] = a4;
  a2[2] = a5;
  a2[3] = a6;
  a2[4].n128_u8[0] = v16;
}

uint64_t UniformParameters.Value.cgColorValue.getter()
{
  if (v0[4].n128_u8[0] == 4)
  {
    return specialized SIMD4<>.cgColor.getter(*v0);
  }

  else
  {
    return 0;
  }
}

uint64_t MaterialParameters.Value.simd3FloatValue.getter()
{
  if (*(v0 + 64) != 4)
  {
    return 0;
  }

  result = *v0;
  v2 = v0[1];
  return result;
}

id static UniformParameters.Value.cgColor(_:)@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 64) = 6;
  return a1;
}

uint64_t UniformParameters.Value.textureValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 64))
  {
    result = 0;
    v4 = 0;
  }

  else
  {
    v4 = *(v1 + 2);
    v5 = *v1;
  }

  *a1 = result;
  *(a1 + 8) = v4;
  return result;
}

uint64_t UniformParameters.Value.floatValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 64);
  v3 = v2 == 1;
  v4 = v2 != 1;
  if (!v3)
  {
    v1 = 0;
  }

  return v1 | (v4 << 32);
}

uint64_t UniformParameters.Value.simd2FloatValue.getter()
{
  if (v0[64] == 2)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t UniformParameters.Value.simd3FloatValue.getter()
{
  if (*(v0 + 64) != 3)
  {
    return 0;
  }

  result = *v0;
  v2 = v0[1];
  return result;
}

id UniformParameters.Value.colorValue.getter()
{
  if (*(v0 + 64) != 5)
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t UniformParameters.Value.float2x2Value.getter()
{
  v1 = *(v0 + 64);
  if (v1 == 6)
  {
    result = *v0;
  }

  else
  {
    result = 0;
  }

  if (v1 == 6)
  {
    v3 = v0[1];
  }

  return result;
}

void UniformParameters.Value.float3x3Value.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = 0uLL;
  v4 = 0uLL;
  v5 = 0uLL;
  if (v2 == 7)
  {
    v4 = v1[1];
    v5 = v1[2];
    v3 = *v1;
  }

  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v2 != 7;
}

void UniformParameters.Value.float4x4Value.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 64) == 8)
  {
    v2 = 0;
    v5 = v1[2];
    v6 = v1[3];
    v3 = *v1;
    v4 = v1[1];
    *(&v3 + 1) = *(v1 + 1);
    *(&v4 + 1) = *(v1 + 3);
    *(&v5 + 1) = *(v1 + 5);
    *(&v6 + 1) = *(v1 + 7);
  }

  else
  {
    v2 = 1;
    v3 = 0uLL;
    v4 = 0uLL;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
}

uint64_t UniformParameters.Value.BOOLValue.getter()
{
  if (v0[64] == 9)
  {
    return *v0 & 1;
  }

  else
  {
    return 2;
  }
}

double UniformParameters.subscript.getter@<D0>(uint64_t a1@<X8>)
{
  strcpy(v15, "customParams.");
  HIWORD(v15[0]) = -4864;
  MEMORY[0x1C68F3410]();
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  Material.subscript.getter(*&v15[0], *(&v15[0] + 1), v3, v4, v13);

  if (v14 == 255 || (v8 = v13[0], v9 = v13[1], v10 = v13[2], v11 = v13[3], v12 = v14, MaterialParameters.Value.init(_:)(&v8, v15), v18 == 255))
  {
    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 64) = -1;
  }

  else
  {
    v8 = v15[0];
    v9 = v15[1];
    v10 = v16;
    v11 = v17;
    v12 = v18;
    UniformParameters.Value.init(_:)(&v8, a1, v16, v17, v5, v6);
  }

  return result;
}

uint64_t key path setter for UniformParameters.subscript(_:) : UniformParameters(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *(a1 + 48);
  v10[2] = *(a1 + 32);
  v10[3] = v6;
  v11 = *(a1 + 64);
  v7 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v7;

  outlined init with copy of [String : String](v10, &v9, &_s17RealityFoundation17UniformParametersV5ValueOSgMd, &_s17RealityFoundation17UniformParametersV5ValueOSgMR);
  return UniformParameters.subscript.setter(a1, v4, v5);
}

uint64_t UniformParameters.subscript.setter(__n128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[3];
  v29 = a1[2];
  v30 = v4;
  v31 = a1[4].n128_u8[0];
  v5 = a1[1];
  v27 = *a1;
  v28 = v5;
  strcpy(&v22, "customParams.");
  v22.n128_u16[7] = -4864;
  MEMORY[0x1C68F3410](a2, a3);

  v6 = v22;
  if (v31 == 255)
  {
    v17 = *(v3 + 24);
    v18 = *(v3 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v3, v17);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v26 = 19;
    return Material.subscript.setter(&v22, v6.n128_i64[0], v6.n128_i64[1], v17, v18);
  }

  else
  {
    v20[0] = v27;
    v20[1] = v28;
    v20[2] = v29;
    v20[3] = v30;
    v21 = v31;
    v24 = v29;
    v25 = v30;
    v26 = v31;
    v22 = v27;
    v23 = v28;
    outlined init with copy of UniformParameters.Value(&v22, v19);
    MaterialParameters.Value.init(_:)(v20, v19, v7, v8, v9, v10);
    __RKMaterialParameterBlock.Parameter.init(_:)(v19, v20, v11, v12, v13);
    v14 = *(v3 + 24);
    v15 = *(v3 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v3, v14);
    Material.subscript.setter(v20, v6.n128_i64[0], v6.n128_i64[1], v14, v15);
    return outlined destroy of BodyTrackingComponent?(&v27, &_s17RealityFoundation17UniformParametersV5ValueOSgMd, &_s17RealityFoundation17UniformParametersV5ValueOSgMR);
  }
}

void (*UniformParameters.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x138uLL);
  }

  *a1 = v7;
  v7[29] = v3;
  v7[19] = a3;
  v7[9] = a2;
  UniformParameters.subscript.getter(v7);
  return UniformParameters.subscript.modify;
}

void UniformParameters.subscript.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 1);
    v5 = *(v2 + 2);
    v4 = *(v2 + 3);
    *(v2 + 12) = v5;
    *(v2 + 13) = v4;
    v6 = *(v2 + 1);
    v7 = *v2;
    *(v2 + 10) = *v2;
    *(v2 + 11) = v6;
    v8 = *(v2 + 3);
    v21 = v5;
    v22 = v8;
    v9 = *(v2 + 29);
    v10 = *(v2 + 19);
    v11 = *(v2 + 9);
    *(v2 + 224) = *(v2 + 64);
    v23 = *(v2 + 64);
    v19 = v7;
    v20 = v3;

    outlined init with copy of [String : String](v2 + 160, v2 + 240, &_s17RealityFoundation17UniformParametersV5ValueOSgMd, &_s17RealityFoundation17UniformParametersV5ValueOSgMR);
    UniformParameters.subscript.setter(&v19, v11, v10);
    v12 = *(v2 + 3);
    *(v2 + 7) = *(v2 + 2);
    *(v2 + 8) = v12;
    *(v2 + 144) = *(v2 + 64);
    v13 = *(v2 + 1);
    *(v2 + 5) = *v2;
    *(v2 + 6) = v13;
    outlined destroy of BodyTrackingComponent?(v2 + 80, &_s17RealityFoundation17UniformParametersV5ValueOSgMd, &_s17RealityFoundation17UniformParametersV5ValueOSgMR);
  }

  else
  {
    v14 = *(v2 + 29);
    v15 = *(v2 + 19);
    v16 = *(v2 + 9);
    v17 = *(v2 + 3);
    v21 = *(v2 + 2);
    v22 = v17;
    v23 = *(v2 + 64);
    v18 = *(v2 + 1);
    v19 = *v2;
    v20 = v18;

    UniformParameters.subscript.setter(&v19, v16, v15);
  }

  free(v2);
}

uint64_t static MaterialParameters.Texture.Sampler.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MaterialParameters.Texture.Sampler(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t static MaterialParameters.Handle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a2 + 16);
  return RESerializedMaterialParameterHandleIsEqual();
}

uint64_t MaterialParameters.Handle.hash(into:)()
{
  v1 = *(*v0 + 16);
  Hash = RESerializedMaterialParameterHandleGetHash();
  return MEMORY[0x1C68F4C50](Hash);
}

Swift::Int MaterialParameters.Handle.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + 16);
  Hash = RESerializedMaterialParameterHandleGetHash();
  MEMORY[0x1C68F4C50](Hash);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MaterialParameters.Handle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + 16);
  Hash = RESerializedMaterialParameterHandleGetHash();
  MEMORY[0x1C68F4C50](Hash);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MaterialParameters.Handle()
{
  v1 = *(*v0 + 16);
  Hash = RESerializedMaterialParameterHandleGetHash();
  return MEMORY[0x1C68F4C50](Hash);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MaterialParameters.Handle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + 16);
  Hash = RESerializedMaterialParameterHandleGetHash();
  MEMORY[0x1C68F4C50](Hash);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MaterialParameters.Handle(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a2 + 16);
  return RESerializedMaterialParameterHandleIsEqual();
}

uint64_t specialized static MaterialParameters.Texture.== infix(_:_:)(uint64_t a1, uint64_t a2, uint8x8_t a3)
{
  if (*(*(a1 + 8) + 16) != *(*(a2 + 8) + 16))
  {
    return 0;
  }

  v4 = *a1;
  v5 = *(a1 + 16);
  v6 = *a2;
  v7 = *(a2 + 16);
  a3.i32[0] = *(a1 + 24);
  v8 = vmovl_u8(a3).u64[0];
  v17 = v8;
  v8.i32[0] = *(a2 + 24);
  v16 = vmovl_u8(v8);
  if (!*a1)
  {
    v9 = REMaterialCreateDefaultSamplerDescriptor();
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_7:
    v12 = v4;
    v11 = REMaterialCreateDefaultSamplerDescriptor();
    goto LABEL_8;
  }

  v9 = *a1;
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_5:
  v10 = v4;
  v11 = v6;
LABEL_8:
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v13 = v6;
  v14 = static NSObject.== infix(_:_:)();

  v15 = vceq_s16((*&v17 & 0xFF00FF00FF00FFLL), (v16.i64[0] & 0xFF00FF00FF00FFLL));
  v15.i16[0] = vminv_u16(v15);
  return v14 & v15.i32[0] & (v5 == v7);
}

uint64_t specialized static MaterialParameters.Value.== infix(_:_:)(uint64_t a1, float32x4_t *a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v41 = *(a1 + 32);
  v42 = v2;
  v4 = *(a1 + 16);
  v40[0] = *a1;
  v40[1] = v4;
  v5 = a2[3];
  v6 = a2[1];
  v46 = a2[2];
  v47 = v5;
  v7 = a2[1];
  v44 = *a2;
  v45 = v7;
  v8 = *(a1 + 48);
  v49[2] = v41;
  v49[3] = v8;
  v49[0] = *a1;
  v49[1] = v3;
  v9 = a2[3];
  v53 = v46;
  v54 = v9;
  v43 = *(a1 + 64);
  v48 = a2[4].i8[0];
  v50 = *(a1 + 64);
  v55 = a2[4].i8[0];
  v51 = v44;
  v52 = v6;
  v56 = v40[0];
  switch(v43)
  {
    case 1:
      if (v48 != 1)
      {
        goto LABEL_51;
      }

      v16 = *(v56.i64[0] + 16);
      v21 = *(v44.i64[0] + 16);
      outlined init with copy of MaterialParameters.Value(v40, v39);
      outlined init with copy of MaterialParameters.Value(&v44, v39);
      outlined destroy of BodyTrackingComponent?(v49, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMd, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMR);
      LOBYTE(v16) = v16 == v21;
      return v16 & 1;
    case 2:
      if (v48 != 2)
      {
        goto LABEL_53;
      }

      v15 = v56.f32[0];
      outlined destroy of BodyTrackingComponent?(v49, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMd, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMR);
      LOBYTE(v16) = v15 == v44.f32[0];
      return v16 & 1;
    case 3:
      if (v48 != 3)
      {
        goto LABEL_53;
      }

      v18 = *v56.f32;
      outlined destroy of BodyTrackingComponent?(v49, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMd, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMR);
      v13 = vceq_f32(v18, *v44.f32);
      if ((v13.i8[0] & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_23;
    case 4:
      if (v48 != 4)
      {
        goto LABEL_53;
      }

      v29 = v56;
      outlined destroy of BodyTrackingComponent?(v49, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMd, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMR);
      v11 = vceqq_f32(v29, v44);
      goto LABEL_34;
    case 5:
      if (v48 != 5)
      {
        goto LABEL_53;
      }

      v30 = v56;
      outlined destroy of BodyTrackingComponent?(v49, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMd, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMR);
      LOBYTE(v16) = 0;
      v22 = vceqq_f32(v30, v44);
      goto LABEL_40;
    case 6:
      if (v48 != 6)
      {
        v26 = *&v40[0];
        goto LABEL_53;
      }

      type metadata accessor for CGColorRef(0);
      outlined init with copy of MaterialParameters.Value(v40, v39);
      outlined init with copy of MaterialParameters.Value(&v44, v39);
      lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef();
      LOBYTE(v16) = static _CFObject.== infix(_:_:)();
LABEL_50:
      outlined destroy of BodyTrackingComponent?(v49, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMd, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMR);
      break;
    case 7:
      if (v48 != 7)
      {
        goto LABEL_53;
      }

      v19 = vand_s8(vceq_f32(*v56.f32, *v44.f32), vceq_f32(*&v56.u32[2], *&v44.u32[2]));
      v20 = vpmin_u32(v19, v19).u32[0];
      goto LABEL_49;
    case 8:
      if (v48 != 8)
      {
        goto LABEL_53;
      }

      v14 = vandq_s8(vandq_s8(vceqq_f32(v45, v4), vceqq_f32(v41, v46)), vceqq_f32(v56, v44));
      v14.i32[3] = v14.i32[2];
      goto LABEL_48;
    case 9:
      if (v48 != 9)
      {
        goto LABEL_53;
      }

      v14 = vandq_s8(vandq_s8(vceqq_f32(v41, v46), vceqq_f32(v42, v47)), vandq_s8(vceqq_f32(v45, v4), vceqq_f32(v56, v44)));
LABEL_48:
      v20 = vminvq_u32(v14);
LABEL_49:
      LODWORD(v16) = v20 >> 31;
      goto LABEL_50;
    case 10:
      if (v48 != 10)
      {
        goto LABEL_53;
      }

      v25 = v56.i8[0];
      outlined destroy of BodyTrackingComponent?(v49, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMd, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMR);
      LOBYTE(v16) = v25 ^ v44.i8[0] ^ 1;
      return v16 & 1;
    case 11:
      if (v48 != 11)
      {
        goto LABEL_53;
      }

      goto LABEL_20;
    case 12:
      if (v48 == 12)
      {
        goto LABEL_13;
      }

      goto LABEL_53;
    case 13:
      if (v48 == 13)
      {
        goto LABEL_33;
      }

      goto LABEL_53;
    case 14:
      if (v48 == 14)
      {
        goto LABEL_39;
      }

      goto LABEL_53;
    case 15:
      if (v48 != 15)
      {
        goto LABEL_53;
      }

LABEL_20:
      v17 = v56.i32[0];
      outlined destroy of BodyTrackingComponent?(v49, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMd, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMR);
      LOBYTE(v16) = v17 == v44.i32[0];
      return v16 & 1;
    case 16:
      if (v48 != 16)
      {
        goto LABEL_53;
      }

LABEL_13:
      v12 = *v56.f32;
      outlined destroy of BodyTrackingComponent?(v49, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMd, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMR);
      v13 = vceq_s32(v12, *v44.f32);
      if ((v13.i8[0] & 1) == 0)
      {
        goto LABEL_54;
      }

LABEL_23:
      LOBYTE(v16) = v13.i8[4];
      return v16 & 1;
    case 17:
      if (v48 != 17)
      {
        goto LABEL_53;
      }

LABEL_33:
      v31 = v56;
      outlined destroy of BodyTrackingComponent?(v49, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMd, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMR);
      v11 = vceqq_s32(v31, v44);
LABEL_34:
      v23 = vmovn_s32(v11);
      if ((v23.i16[0] & v23.i16[1] & 1) == 0)
      {
        goto LABEL_54;
      }

      LOBYTE(v16) = v23.i8[4];
      return v16 & 1;
    case 18:
      if (v48 != 18)
      {
        goto LABEL_53;
      }

LABEL_39:
      v32 = v56;
      outlined destroy of BodyTrackingComponent?(v49, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMd, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMR);
      LOBYTE(v16) = 0;
      v22 = vceqq_s32(v32, v44);
LABEL_40:
      v24 = vmovn_s32(v22);
      if (v24.i8[0] & 1) != 0 && (v24.i8[2] & 1) != 0 && (v24.i8[4])
      {
        LOBYTE(v16) = v24.i8[6];
      }

      return v16 & 1;
    default:
      if (v48)
      {
        v10 = *&v40[0];
LABEL_51:

LABEL_53:
        outlined init with copy of MaterialParameters.Value(&v44, v39);
        outlined destroy of BodyTrackingComponent?(v49, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMd, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMR);
LABEL_54:
        LOBYTE(v16) = 0;
      }

      else
      {
        v36 = v56;
        v37 = v4.i64[0];
        v38 = vmovn_s16(vzip2q_s8(v4, v4)).u32[0];
        v33 = v44;
        v34 = v45.i64[0];
        v35 = v45.i32[2];
        outlined init with copy of MaterialParameters.Value(&v44, v39);
        outlined init with copy of MaterialParameters.Value(v40, v39);
        outlined init with copy of MaterialParameters.Value(v40, v39);
        outlined init with copy of MaterialParameters.Value(&v44, v39);
        LOBYTE(v16) = specialized static MaterialParameters.Texture.== infix(_:_:)(&v36, &v33, v28);
        outlined destroy of BodyTrackingComponent?(v49, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMd, &_s17RealityFoundation18MaterialParametersV5ValueO_AEtMR);
        outlined destroy of MaterialParameters.Value(&v44);
        outlined destroy of MaterialParameters.Value(v40);
      }

      break;
  }

  return v16 & 1;
}

unint64_t lazy protocol witness table accessor for type MaterialParameters.Handle and conformance MaterialParameters.Handle()
{
  result = lazy protocol witness table cache variable for type MaterialParameters.Handle and conformance MaterialParameters.Handle;
  if (!lazy protocol witness table cache variable for type MaterialParameters.Handle and conformance MaterialParameters.Handle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialParameters.Handle and conformance MaterialParameters.Handle);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MaterialParameters.Texture(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
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

uint64_t storeEnumTagSinglePayload for MaterialParameters.Texture(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MaterialParameters.Value(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEE && *(a1 + 65))
  {
    return (*a1 + 238);
  }

  v3 = *(a1 + 64);
  if (v3 <= 0x12)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MaterialParameters.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xED)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 238;
    if (a3 >= 0xEE)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEE)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UniformParameters.Value(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEF && *(a1 + 65))
  {
    return (*a1 + 239);
  }

  v3 = *(a1 + 64);
  if (v3 <= 0x11)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for UniformParameters.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 239;
    if (a3 >= 0xEF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t one-time initialization function for default()
{
  type metadata accessor for PhysicsMaterialResource();
  v0 = swift_allocObject();
  v0[4] = 0;
  v0[2] = vdup_n_s32(0x3F4CCCCDu);
  v0[3].i32[0] = 1061997773;
  result = PhysicsMaterialResource.makeCoreAsset()();
  static PhysicsMaterialResource.default = v0;
  return result;
}

uint64_t static PhysicsMaterialResource.generate(friction:restitution:)(float a1, float a2)
{
  type metadata accessor for PhysicsMaterialResource();
  v4 = swift_allocObject();
  *(v4 + 32) = 0;
  *(v4 + 16) = a1;
  *(v4 + 20) = a1;
  *(v4 + 24) = a2;
  PhysicsMaterialResource.makeCoreAsset()();
  return v4;
}

uint64_t static PhysicsMaterialResource.default.getter()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }
}

uint64_t PhysicsMaterialResource.deinit()
{
  v1 = v0;
  isEscapingClosureAtFileLocation = type metadata accessor for DispatchPredicate();
  v3 = *(isEscapingClosureAtFileLocation - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](isEscapingClosureAtFileLocation);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for __ServiceLocator();
  v7 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v8 = *(v7 + 24);
  swift_unownedRetainStrong();

  v9 = *(v8 + 32);

  *v6 = v9;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], isEscapingClosureAtFileLocation);
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, isEscapingClosureAtFileLocation);
  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = partial apply for closure #1 in PhysicsMaterialResource.deinit;
    *(v10 + 24) = v1;
    partial apply for specialized thunk for @callee_guaranteed () -> (@out A, @error @owned Error)();
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);

  swift_isEscapingClosureAtFileLocation();

  __break(1u);
  return result;
}

uint64_t closure #1 in PhysicsMaterialResource.deinit(uint64_t a1)
{
  if (*(a1 + 32) && (v2 = *(a1 + 32), REAssetHandleIsLoaded()) || (result = PhysicsMaterialResource.makeCoreAsset()(), *(a1 + 32)))
  {
    REAssetSetSwiftObject();
    if (*(a1 + 32))
    {
      v4 = *(a1 + 32);
      if (REAssetHandleIsLoaded())
      {
        return RERelease();
      }
    }

    result = PhysicsMaterialResource.makeCoreAsset()();
    if (*(a1 + 32))
    {
      return RERelease();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t PhysicsMaterialResource.__deallocating_deinit()
{
  PhysicsMaterialResource.deinit();

  return swift_deallocClassInstance();
}

uint64_t PhysicsMaterialResource.makeCoreAsset()()
{
  v1 = v0;
  type metadata accessor for __ServiceLocator();
  v2 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, v9);

  v3 = v10;
  v4 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v4 + 32))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v9);
  swift_beginAccess();
  v5 = *(v1 + 24);
  swift_beginAccess();
  v6 = *(v1 + 16);
  swift_beginAccess();
  v7 = *(v1 + 20);
  result = REAssetManagerPhysicsMaterialAssetCreate2();
  if (result)
  {
    *(v1 + 32) = result;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t static PhysicsMaterialResource.generate(staticFriction:dynamicFriction:restitution:)(float a1, float a2, float a3)
{
  type metadata accessor for PhysicsMaterialResource();
  v6 = swift_allocObject();
  *(v6 + 32) = 0;
  *(v6 + 16) = a1;
  *(v6 + 20) = a2;
  *(v6 + 24) = a3;
  PhysicsMaterialResource.makeCoreAsset()();
  return v6;
}

uint64_t PhysicsMaterialResource.addToLoadRequest(_:)(uint64_t a1)
{
  if (*(v1 + 32) && (v3 = *(v1 + 32), REAssetHandleIsLoaded()) || (result = PhysicsMaterialResource.makeCoreAsset()(), *(v1 + 32)))
  {
    v5 = *(a1 + 16);

    return REAssetLoadRequestAddAsset();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for RequestLoadable.addToLoadRequest(_:) in conformance PhysicsMaterialResource(uint64_t a1)
{
  v3 = *v1;
  if (*(v3 + 32) && (v4 = *(v3 + 32), REAssetHandleIsLoaded()) || (result = PhysicsMaterialResource.makeCoreAsset()(), *(v3 + 32)))
  {
    v6 = *(a1 + 16);

    return REAssetLoadRequestAddAsset();
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int CameraControls.InteractionMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

void CameraControls.hash(into:)()
{
  v1 = *v0;
  if (v1 == 7)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1);
  }
}

Swift::Int CameraControls.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 7)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CameraControls()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 7)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance CameraControls()
{
  v1 = *v0;
  if (v1 == 7)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CameraControls()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 7)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1);
  }

  return Hasher._finalize()();
}

uint64_t specialized static CameraControls.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 7)
  {
    if (v3 == 7)
    {
      return 1;
    }
  }

  else if (v2 == v3)
  {
    return 1;
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type CameraControls.InteractionMode and conformance CameraControls.InteractionMode()
{
  result = lazy protocol witness table cache variable for type CameraControls.InteractionMode and conformance CameraControls.InteractionMode;
  if (!lazy protocol witness table cache variable for type CameraControls.InteractionMode and conformance CameraControls.InteractionMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CameraControls.InteractionMode and conformance CameraControls.InteractionMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CameraControls.InteractionMode] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CameraControls.InteractionMode] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CameraControls.InteractionMode] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay17RealityFoundation14CameraControlsV15InteractionModeOGMd, &_sSay17RealityFoundation14CameraControlsV15InteractionModeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CameraControls.InteractionMode] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CameraControls and conformance CameraControls()
{
  result = lazy protocol witness table cache variable for type CameraControls and conformance CameraControls;
  if (!lazy protocol witness table cache variable for type CameraControls and conformance CameraControls)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CameraControls and conformance CameraControls);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CameraControls(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 7)
  {
    v7 = 7;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 8;
  if (v6 < 7)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t GeometricPinsComponent.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = *v3;
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 56);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      outlined init with copy of GeometricPin(*(v7 + 48) + 80 * (__clz(__rbit64(v10)) | (v14 << 6)), v16);
      outlined init with take of GeometricPin(v16, v15);
      if (v15[1] == a1 && v15[2] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v10 &= v10 - 1;
      result = outlined destroy of GeometricPin(v15);
      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    return outlined init with take of GeometricPin(v15, a3);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        a3[3] = 0u;
        a3[4] = 0u;
        a3[1] = 0u;
        a3[2] = 0u;
        *a3 = 0u;
        return result;
      }

      v10 = *(v7 + 56 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

double GeometricPinsComponent.removePin(named:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7[0].i64[0] = *v3;
  GeometricPinsComponent.subscript.getter(a1, a2, v8);
  outlined init with copy of GeometricPin?(v8, v6);
  if (v6[2])
  {
    outlined init with take of GeometricPin(v6, v7);
    specialized Set._Variant.remove(_:)(v7, a3);
    outlined destroy of GeometricPin(v7);
    outlined destroy of GeometricPin?(v8);
  }

  else
  {
    outlined destroy of GeometricPin?(v8);
    outlined destroy of GeometricPin?(v6);
    result = 0.0;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t GeometricPinsComponent.set(pin:)(uint64_t a1)
{
  outlined init with copy of GeometricPin(a1, v7);
  v2 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v1;
  *v1 = 0x8000000000000000;
  specialized _NativeSet.update(with:isUnique:)(v7, isUniquelyReferenced_nonNull_native, v8);
  outlined destroy of GeometricPin?(v8);
  v4 = *v1;

  *v1 = v6;
  return result;
}

uint64_t static GeometricPinsComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v34 = MEMORY[0x1E69E7CD0];
  PinCount = REPinComponentGetPinCount();
  Entity = REComponentGetEntity();
  type metadata accessor for Entity();
  if (!REEntityGetSwiftObject())
  {
    result = REEntityIsBeingDestroyed();
    if (result)
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v8 = static Entity.entityInfoType(_:)(Entity);
    if (v8)
    {
      v9 = (*(v8 + 232))();
      v10 = *(v9 + 16);

      MEMORY[0x1C68F9740](v10, 0);
      *(v9 + 16) = Entity;
      MEMORY[0x1C68F9740](Entity, v9);

      if ((PinCount & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      result = makeEntity(for:)(Entity);
      if ((PinCount & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = swift_dynamicCastClassUnconditional();
  if (PinCount < 0)
  {
    goto LABEL_17;
  }

LABEL_7:
  if (PinCount)
  {
    for (i = 0; i != PinCount; ++i)
    {
      v24 = v7;
      REPinComponentGetPinNameAtIndex();
      v13 = String.init(cString:)();
      v15 = v14;
      REPinComponentGetPinOffsetPoseAtIndex();
      v22 = v16;
      HIDWORD(v17) = v24;
      v23 = v17;
      if (REPinComponentIsSkeletalJointPinAtIndex())
      {
        REPinComponentGetSkeletalJointNameAtIndex();
        v18 = String.init(cString:)();
        v20 = v19;
        swift_weakInit();
        v32 = v23;
        v33 = v22;
        v12 = swift_weakAssign();
        v28 = v13;
        v29 = v15;
        v30 = v18;
        v31 = v20;
      }

      else
      {
        swift_weakInit();
        v32 = v23;
        v33 = v22;
        v12 = swift_weakAssign();
        v28 = v13;
        v29 = v15;
        v30 = 0;
        v31 = 0;
      }

      outlined init with copy of GeometricPin(v12, v25);
      specialized Set._Variant.insert(_:)(v26, v25);
      outlined destroy of GeometricPin(v26);
      outlined destroy of GeometricPin(v27);
      v7 = HIDWORD(v23);
    }

    v21 = v34;
  }

  else
  {

    v21 = MEMORY[0x1E69E7CD0];
  }

  *a2 = v21;
  return result;
}

uint64_t GeometricPinsComponent.__toCore(_:)(uint64_t *a1)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *v1;

  v28 = v8;
  result = REPinComponentRemoveAllPins();
  v11 = 0;
  v13 = v9 + 56;
  v12 = *(v9 + 56);
  v30 = v9;
  v14 = 1 << *(v9 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;
  v18 = (v4 + 8);
  v27 = (v4 + 8);
  v26 = v7;
  v31 = v3;
  while (v16)
  {
LABEL_11:
    outlined init with copy of GeometricPin(*(v30 + 48) + 80 * (__clz(__rbit64(v16)) | (v11 << 6)), v39);
    outlined init with take of GeometricPin(v39, v34);
    v32 = v35;
    v33 = v36;

    static String.Encoding.utf8.getter();
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.cString(using:)();
    v22 = *v18;
    (*v18)(v7, v31);

    if (v38)
    {
      v32 = v37;
      v33 = v38;
      static String.Encoding.utf8.getter();
      StringProtocol.cString(using:)();
      v22(v7, v31);
      REPoseIdentity();
      v24 = v23;
      HIDWORD(v24) = HIDWORD(v29);
      v29 = v24;
      REPinCreateExt();
    }

    else
    {
      REPoseIdentity();
      v20 = v19;
      HIDWORD(v20) = HIDWORD(v25);
      v25 = v20;
      REPinCreateExt();
    }

    v16 &= v16 - 1;

    REPinComponentAddPin();
    RERelease();
    result = outlined destroy of GeometricPin(v34);
    v18 = v27;
    v7 = v26;
  }

  while (1)
  {
    v21 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v21 >= v17)
    {
    }

    v16 = *(v13 + 8 * v21);
    ++v11;
    if (v16)
    {
      v11 = v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

double specialized Set._Variant.remove(_:)@<D0>(float32x4_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = a1[3];
  v28 = a1[2];
  v29 = v7;
  v30 = a1[4];
  v8 = a1[1];
  v26 = *a1;
  v27 = v8;
  Hasher.init(_seed:)();
  CollisionPlane_v1.hash(into:)(v25);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v5 + 32);
  v11 = v9 & ~v10;
  if ((*(v5 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v5 + 48) + 80 * v11);
      v14 = v13->i64[0] == a1->i64[0] && v13->f32[2] == a1->f32[2];
      v15 = v14 && v13->f32[3] == a1->f32[3];
      if (v15 && (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v13[3], a1[3]), vceqq_f32(v13[4], a1[4])), vandq_s8(vceqq_f32(v13[2], a1[2]), vceqq_f32(v13[1], a1[1])))) & 0x80000000) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v5 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    v26.i64[0] = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v18 = v26.i64[0];
    }

    v19 = *(v18 + 48) + 80 * v11;
    v20 = *(v19 + 16);
    v21 = *(v19 + 32);
    v22 = *(v19 + 48);
    v23 = *(v19 + 64);
    *a2 = *v19;
    *(a2 + 8) = *(v19 + 8);
    *(a2 + 16) = v20;
    *(a2 + 32) = v21;
    *(a2 + 48) = v22;
    *(a2 + 64) = v23;
    specialized _NativeSet._delete(at:)(v11);
    *v2 = v26.i64[0];
    *(a2 + 80) = 0;
  }

  else
  {
LABEL_16:
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 1;
  }

  return result;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  specialized _NativeSet._delete(at:)(v9);
  *v2 = v20;
  return v13;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](a1);
  v5 = Hasher._finalize()();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  while (*(*(v3 + 48) + 8 * v7) != a1)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v7);
  specialized _NativeSet._delete(at:)(v7);
  result = v13;
  *v1 = v14;
  return result;
}

unint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  v47 = *v5;
  v11 = *(*v5 + 40);
  Hasher.init(_seed:)();
  v43 = v5;
  v44 = a5;
  if (a4)
  {
    if (a4 != 1)
    {
      MEMORY[0x1C68F4C10](0);
      goto LABEL_7;
    }

    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  MEMORY[0x1C68F4C10](v12);
  String.hash(into:)();
  specialized Set.hash(into:)(v48, a3);
LABEL_7:
  result = Hasher._finalize()();
  v14 = -1 << *(v47 + 32);
  v15 = result & ~v14;
  if (((*(v47 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_41:
    *v44 = 0;
    *(v44 + 8) = 0;
    *(v44 + 16) = 0;
    *(v44 + 24) = -1;
    return result;
  }

  v46 = ~v14;
  v17 = a4 != 2 || (a2 | a1 | a3) != 0;
  v45 = v17;
  while (1)
  {
    v23 = *(v47 + 48) + 32 * v15;
    v25 = *v23;
    v24 = *(v23 + 8);
    v26 = *(v23 + 16);
    v27 = *(v23 + 24);
    if (*(v23 + 24))
    {
      break;
    }

    if (a4)
    {
      outlined copy of _Proto_MeshScope_v1(a1, a2, a3, a4);
      v30 = v25;
      v31 = v24;
      v32 = v26;
      v33 = 0;
LABEL_32:
      outlined copy of _Proto_MeshScope_v1(v30, v31, v32, v33);
      v29 = a4;
      goto LABEL_33;
    }

    if (v25 != a1 || v24 != a2)
    {
      v35 = *v23;
      v36 = *(v23 + 8);
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        outlined copy of _Proto_MeshScope_v1(a1, a2, a3, 0);
        outlined copy of _Proto_MeshScope_v1(v25, v24, v26, 0);
        v29 = 0;
        goto LABEL_33;
      }
    }

    outlined copy of _Proto_MeshScope_v1(v25, v24, v26, 0);
    outlined copy of _Proto_MeshScope_v1(a1, a2, a3, 0);
    outlined copy of _Proto_MeshScope_v1(v25, v24, v26, 0);
    v18 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v26, a3);
    outlined consume of _Proto_MeshScope_v1(v25, v24, v26, 0);
    outlined consume of _Proto_MeshScope_v1(v25, v24, v26, 0);
    v19 = a1;
    v20 = a2;
    v21 = a3;
    v22 = 0;
LABEL_16:
    result = outlined consume of _Proto_MeshScope_v1(v19, v20, v21, v22);
    if (v18)
    {
      goto LABEL_43;
    }

LABEL_17:
    v15 = (v15 + 1) & v46;
    if (((*(v47 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  if (v27 == 1)
  {
    if (a4 != 1)
    {
      outlined copy of _Proto_MeshScope_v1(a1, a2, a3, a4);
      v30 = v25;
      v31 = v24;
      v32 = v26;
      v33 = 1;
      goto LABEL_32;
    }

    v28 = v25 == a1 && v24 == a2;
    if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v29 = 1;
      outlined copy of _Proto_MeshScope_v1(a1, a2, a3, 1u);
      outlined copy of _Proto_MeshScope_v1(v25, v24, v26, 1u);
LABEL_33:
      outlined consume of _Proto_MeshScope_v1(v25, v24, v26, v27);
      result = outlined consume of _Proto_MeshScope_v1(a1, a2, a3, v29);
      goto LABEL_17;
    }

    outlined copy of _Proto_MeshScope_v1(v25, v24, v26, 1u);
    outlined copy of _Proto_MeshScope_v1(a1, a2, a3, 1u);
    outlined copy of _Proto_MeshScope_v1(v25, v24, v26, 1u);
    v18 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v26, a3);
    outlined consume of _Proto_MeshScope_v1(v25, v24, v26, 1u);
    outlined consume of _Proto_MeshScope_v1(v25, v24, v26, 1u);
    v19 = a1;
    v20 = a2;
    v21 = a3;
    v22 = 1;
    goto LABEL_16;
  }

  if (v45)
  {
    v30 = a1;
    v31 = a2;
    v32 = a3;
    v33 = a4;
    goto LABEL_32;
  }

  outlined consume of _Proto_MeshScope_v1(v25, v24, v26, 2u);
  outlined consume of _Proto_MeshScope_v1(0, 0, 0, 2u);
LABEL_43:
  v37 = *v43;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v43;
  *&v48[0] = *v43;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v39 = *&v48[0];
  }

  v40 = *(v39 + 48) + 32 * v15;
  v41 = *(v40 + 16);
  v42 = *(v40 + 24);
  *v44 = *v40;
  *(v44 + 16) = v41;
  *(v44 + 24) = v42;
  result = specialized _NativeSet._delete(at:)(v15);
  *v43 = *&v48[0];
  return result;
}

unint64_t specialized Set._Variant.remove(_:)@<X0>(float32x4_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  v7 = a1->i64[1];
  v8 = a1[1].i64[0];
  String.hash(into:)();
  result = Hasher._finalize()();
  v10 = -1 << *(v5 + 32);
  v11 = result & ~v10;
  if (((*(v5 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_29:
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
    return result;
  }

  v12 = ~v10;
  while (1)
  {
    outlined init with copy of GeometricPin(*(v5 + 48) + 80 * v11, v26);
    v13 = v26[1] == v7 && v26[2] == v8;
    if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_27;
    }

    v14 = a1[2].i64[0];
    if (v27)
    {
      if (!v14 || (v26[3] != a1[1].i64[1] || v27 != v14) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v14)
    {
      goto LABEL_27;
    }

    v15 = vmovn_s32(vceqq_f32(v28, a1[3]));
    if ((v15.i8[0] & 1) == 0 || (v15.i8[2] & 1) == 0 || (v15.i8[4] & 1) == 0 || (vminv_u16(vmovn_s32(vceqq_f32(v29, a1[4]))) & 1) == 0)
    {
      goto LABEL_27;
    }

    Strong = swift_weakLoadStrong();
    v17 = swift_weakLoadStrong();
    if (!Strong)
    {
      break;
    }

    if (!v17)
    {
      goto LABEL_26;
    }

    v23 = *(Strong + 16);
    v18 = v17;

    v24 = v3;
    v19 = *(v18 + 16);

    result = outlined destroy of GeometricPin(v26);
    v13 = v23 == v19;
    v3 = v24;
    if (v13)
    {
      goto LABEL_30;
    }

LABEL_28:
    v11 = (v11 + 1) & v12;
    if (((*(v5 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  if (v17)
  {
LABEL_26:

LABEL_27:
    result = outlined destroy of GeometricPin(v26);
    goto LABEL_28;
  }

  outlined destroy of GeometricPin(v26);
LABEL_30:
  v20 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v3;
  v26[0] = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v22 = v26[0];
  }

  outlined init with take of GeometricPin(*(v22 + 48) + 80 * v11, a2);
  result = specialized _NativeSet._delete(at:)(v11);
  *v3 = v26[0];
  return result;
}

unint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return specialized Set._Variant.remove(_:)(a1, specialized _NativeSet.copy(), a2);
}

{
  return specialized Set._Variant.remove(_:)(a1, specialized _NativeSet.copy(), a2);
}

unint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](a1);
  result = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = result & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (*(*(v7 + 48) + 8 * v11) != a1)
    {
      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v14 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    v17 = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      a2();
      v16 = v17;
    }

    *a3 = *(*(v16 + 48) + 8 * v11);
    result = specialized _NativeSet._delete(at:)(v11);
    v13 = 0;
    *v3 = v17;
  }

  else
  {
LABEL_5:
    *a3 = 0;
    v13 = 1;
  }

  *(a3 + 8) = v13;
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
        v12 = *(v3 + 48) + 80 * v6;
        v13 = *v12;
        v14 = *(v12 + 8);
        v15 = *(v12 + 12);
        v25 = *(v12 + 16);
        v26 = *(v12 + 32);
        v27 = *(v12 + 48);
        v28 = *(v12 + 64);
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](v13);
        if (v14 == 0.0)
        {
          v16 = 0.0;
        }

        else
        {
          v16 = v14;
        }

        Hasher._combine(_:)(LODWORD(v16));
        if (v15 == 0.0)
        {
          v17 = 0.0;
        }

        else
        {
          v17 = v15;
        }

        Hasher._combine(_:)(LODWORD(v17));
        specialized SIMD.hash(into:)(v29, v25);
        specialized SIMD.hash(into:)(v29, v26);
        specialized SIMD.hash(into:)(v29, v27);
        specialized SIMD.hash(into:)(v29, v28);
        v18 = Hasher._finalize()() & v7;
        if (v2 >= v10)
        {
          if (v18 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v18 >= v10)
        {
          goto LABEL_17;
        }

        if (v2 >= v18)
        {
LABEL_17:
          v19 = *(v3 + 48);
          v20 = (v19 + 80 * v2);
          v21 = (v19 + 80 * v6);
          if (v2 != v6 || v20 >= v21 + 80)
          {
            memmove(v20, v21, 0x50uLL);
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

  v22 = *(v3 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v24;
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
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
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
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](v12);
        v13 = Hasher._finalize()() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 8 * v2);
          v16 = (v14 + 8 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
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

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
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
      v29 = v3;
      v30 = v4;
      while (1)
      {
        v12 = v7;
        v13 = 32 * v6;
        v14 = *(v3 + 40);
        v15 = *(v3 + 48) + 32 * v6;
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        v19 = *(v15 + 24);
        Hasher.init(_seed:)();
        if (!v19)
        {
          break;
        }

        if (v19 == 1)
        {
          v20 = 2;
LABEL_10:
          MEMORY[0x1C68F4C10](v20);

          String.hash(into:)();
          specialized Set.hash(into:)(v31, v18);
          goto LABEL_12;
        }

        MEMORY[0x1C68F4C10](0);
LABEL_12:
        v21 = Hasher._finalize()();
        outlined consume of _Proto_MeshScope_v1(v16, v17, v18, v19);
        v7 = v12;
        v22 = v21 & v12;
        if (v2 >= v10)
        {
          v3 = v29;
          if (v22 < v10)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v3 = v29;
          if (v22 >= v10)
          {
            goto LABEL_17;
          }
        }

        if (v2 >= v22)
        {
LABEL_17:
          v23 = *(v3 + 48);
          v24 = (v23 + 32 * v2);
          v25 = (v23 + v13);
          if (32 * v2 != v13 || (v2 = v6, v24 >= v25 + 2))
          {
            v11 = v25[1];
            *v24 = *v25;
            v24[1] = v11;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v12;
        v4 = v30;
        if (((*(v30 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v20 = 1;
      goto LABEL_10;
    }

LABEL_20:

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v26 = *(v3 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v28;
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
      while (1)
      {
        outlined init with copy of GeometricPin(*(v3 + 48) + 80 * v6, v17);
        v11 = *(v3 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v12 = Hasher._finalize()();
        outlined destroy of GeometricPin(v17);
        v13 = v12 & v7;
        if (v2 >= v10)
        {
          break;
        }

        if (v13 < v10)
        {
          goto LABEL_11;
        }

LABEL_12:
        if (v2 < v6 || *(v3 + 48) + 80 * v2 >= *(v3 + 48) + 80 * v6 + 80)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          if (v2 == v6)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        v2 = v6;
LABEL_6:
        v6 = (v6 + 1) & v7;
        if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if (v13 < v10)
      {
        goto LABEL_6;
      }

LABEL_11:
      if (v2 < v13)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_16:

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t specialized _NativeSet.update(with:isUnique:)@<X0>(float32x4_t *a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  v9 = a1->i64[1];
  v10 = a1[1].i64[0];
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v7 + 32);
  v13 = v11 & ~v12;
  v14 = (1 << v13) & *(v7 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8));
  v15 = v14 != 0;
  if (v14)
  {
    v45 = (1 << v13) & *(v7 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8));
    v48 = v3;
    v16 = ~v12;
    while (1)
    {
      outlined init with copy of GeometricPin(*(v7 + 48) + 80 * v13, v54);
      v17 = v55 == v9 && v56 == v10;
      if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_27;
      }

      v18 = a1[2].i64[0];
      if (v58)
      {
        if (!v18 || (v57 != a1[1].i64[1] || v58 != v18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else if (v18)
      {
        goto LABEL_27;
      }

      v19 = vmovn_s32(vceqq_f32(v59, a1[3]));
      if (v19.i8[0] & 1) != 0 && (v19.i8[2] & 1) != 0 && (v19.i8[4] & 1) != 0 && (vminv_u16(vmovn_s32(vceqq_f32(v60, a1[4]))))
      {
        Strong = swift_weakLoadStrong();
        v21 = swift_weakLoadStrong();
        if (Strong)
        {
          if (v21)
          {
            v46 = *(Strong + 16);
            v22 = v21;

            v50 = a3;
            v23 = *(v22 + 16);

            outlined destroy of GeometricPin(v54);
            v17 = v46 == v23;
            a3 = v50;
            if (v17)
            {
              v24 = 0;
              v15 = 1;
              v4 = v48;
              goto LABEL_31;
            }

            goto LABEL_28;
          }
        }

        else if (!v21)
        {
          outlined destroy of GeometricPin(v54);
          v4 = v48;
          v14 = v45;
          break;
        }
      }

LABEL_27:
      outlined destroy of GeometricPin(v54);
LABEL_28:
      v13 = (v13 + 1) & v16;
      if (((*(v7 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v15 = 0;
        v4 = v48;
        v24 = 1;
        goto LABEL_31;
      }
    }
  }

  v24 = v14 == 0;
LABEL_31:
  v25 = *(v7 + 16);
  result = v25 + v24;
  if (__OFADD__(v25, v24))
  {
    goto LABEL_76;
  }

  v27 = *(v7 + 24);
  if (v27 >= result && (a2 & 1) != 0)
  {
    if (v15)
    {
LABEL_35:
      v28 = *v4;
      outlined init with take of GeometricPin(*(v28 + 48) + 80 * v13, a3);
      return outlined init with take of GeometricPin(a1, *(v28 + 48) + 80 * v13);
    }

LABEL_71:
    v41 = *v4;
    *(v41 + 8 * (v13 >> 6) + 56) |= 1 << v13;
    result = outlined init with take of GeometricPin(a1, *(v41 + 48) + 80 * v13);
    v42 = *(v41 + 16);
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      goto LABEL_77;
    }

    *(v41 + 16) = v44;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
    return result;
  }

  if (a2)
  {
    v51 = a3;
    specialized _NativeSet.resize(capacity:)(result);
  }

  else
  {
    if (v27 >= result)
    {
      specialized _NativeSet.copy()();
      if (v15)
      {
        goto LABEL_35;
      }

      goto LABEL_71;
    }

    v51 = a3;
    specialized _NativeSet.copyAndResize(capacity:)(result);
  }

  v47 = v15;
  v29 = *v4;
  v30 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v31 = Hasher._finalize()();
  v32 = -1 << *(v29 + 32);
  v13 = v31 & ~v32;
  if (((*(v29 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_70:
    a3 = v51;
    if (v47)
    {
      goto LABEL_75;
    }

    goto LABEL_71;
  }

  v33 = ~v32;
  while (1)
  {
    outlined init with copy of GeometricPin(*(v29 + 48) + 80 * v13, v54);
    v34 = v55 == v9 && v56 == v10;
    if (!v34 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_68;
    }

    v35 = a1[2].i64[0];
    if (v58)
    {
      if (!v35 || (v57 != a1[1].i64[1] || v58 != v35) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_68;
      }
    }

    else if (v35)
    {
      goto LABEL_68;
    }

    v36 = vmovn_s32(vceqq_f32(v59, a1[3]));
    if ((v36.i8[0] & 1) == 0 || (v36.i8[2] & 1) == 0 || (v36.i8[4] & 1) == 0 || (vminv_u16(vmovn_s32(vceqq_f32(v60, a1[4]))) & 1) == 0)
    {
      goto LABEL_68;
    }

    v37 = swift_weakLoadStrong();
    v38 = swift_weakLoadStrong();
    if (!v37)
    {
      break;
    }

    if (!v38)
    {
      goto LABEL_67;
    }

    v53 = *(v37 + 16);
    v39 = v38;

    v49 = v4;
    v40 = *(v39 + 16);

    outlined destroy of GeometricPin(v54);
    v17 = v53 == v40;
    v4 = v49;
    if (v17)
    {
      goto LABEL_74;
    }

LABEL_69:
    v13 = (v13 + 1) & v33;
    if (((*(v29 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_70;
    }
  }

  if (v38)
  {
LABEL_67:

LABEL_68:
    outlined destroy of GeometricPin(v54);
    goto LABEL_69;
  }

  outlined destroy of GeometricPin(v54);
LABEL_74:
  a3 = v51;
  if (v47)
  {
    goto LABEL_35;
  }

LABEL_75:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
  return result;
}

unint64_t Entity.ConfigurationCatalog.USDConfigurationReaderError.errorDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Entity.ConfigurationCatalog.USDConfigurationReaderError(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        (*(v3 + 32))(v6, v10, v2);
        v33[0] = 0;
        v33[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(45);

        v33[0] = 0xD000000000000029;
        v33[1] = 0x80000001C18ECEB0;
        _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type URL and conformance URL, 255, MEMORY[0x1E6968FB0]);
        v12 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1C68F3410](v12);

        MEMORY[0x1C68F3410](11815, 0xE200000000000000);
        v13 = v33[0];
        (*(v3 + 8))(v6, v2);
        return v13;
      }

      v26 = *v10;
      v27 = v10[1];
      v33[0] = 0;
      v33[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      v28 = 0x80000001C18ECE60;
      v29 = 0xD000000000000017;
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v22 = *v10;
      v23 = v10[1];
      v33[0] = 0;
      v33[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      strcpy(v33, "Prim at path '");
      HIBYTE(v33[1]) = -18;
      MEMORY[0x1C68F3410](v22, v23);

      v24 = 0x80000001C18ECE40;
      v25 = 0xD000000000000016;
LABEL_18:
      MEMORY[0x1C68F3410](v25, v24);
      return v33[0];
    }

    v30 = *v10;
    v31 = v10[1];
    v32 = v10[2];
    v19 = v10[3];
    v33[0] = 0;
    v33[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    MEMORY[0x1C68F3410](0x207461206D697250, 0xEE00272068746170);
    MEMORY[0x1C68F3410](v30, v31);

    MEMORY[0x1C68F3410](0xD000000000000025, 0x80000001C18ECE10);
    v21 = v32;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v26 = *v10;
      v27 = v10[1];
      v33[0] = 0;
      v33[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(48);

      v28 = 0x80000001C18ECD80;
      v29 = 0xD00000000000002CLL;
LABEL_14:
      v33[0] = v29;
      v33[1] = v28;
      MEMORY[0x1C68F3410](v26, v27);
LABEL_17:

      v25 = 11815;
      v24 = 0xE200000000000000;
      goto LABEL_18;
    }

    v15 = *v10;
    v16 = v10[1];
    v18 = v10[2];
    v17 = v10[3];
    v20 = v10[4];
    v19 = v10[5];
    v33[0] = 0;
    v33[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(99);
    MEMORY[0x1C68F3410](0x207461206D697250, 0xEE00272068746170);
    MEMORY[0x1C68F3410](v15, v16);

    MEMORY[0x1C68F3410](0xD00000000000001BLL, 0x80000001C18ECDB0);
    MEMORY[0x1C68F3410](v18, v17);

    MEMORY[0x1C68F3410](0xD000000000000032, 0x80000001C18ECDD0);
    v21 = v20;
LABEL_16:
    MEMORY[0x1C68F3410](v21, v19);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 6)
  {
    return 0xD000000000000028;
  }

  else
  {
    return 0xD000000000000030;
  }
}

uint64_t type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError()
{
  result = type metadata singleton initialization cache for Entity.ConfigurationCatalog.USDConfigurationReaderError;
  if (!type metadata singleton initialization cache for Entity.ConfigurationCatalog.USDConfigurationReaderError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of Entity.ConfigurationCatalog.USDConfigurationReaderError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata completion function for Entity.ConfigurationCatalog.USDConfigurationReaderError()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (String, String)();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (String, String, String)();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (String, String)()
{
  if (!lazy cache variable for type metadata for (String, String))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, String));
    }
  }
}

void type metadata accessor for (String, String, String)()
{
  if (!lazy cache variable for type metadata for (String, String, String))
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (String, String, String));
    }
  }
}

uint64_t Entity.ConfigurationCatalog.USDConfigurationReader.init(importSession:importSessionSwiftObject:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[7] = *v3;
  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.USDConfigurationReader.init(importSession:importSessionSwiftObject:options:), 0, 0);
}

uint64_t Entity.ConfigurationCatalog.USDConfigurationReader.init(importSession:importSessionSwiftObject:options:)()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  swift_defaultActor_initialize();
  type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReader.CriticalSequencer();
  v4 = swift_allocObject();
  Entity.ConfigurationCatalog.USDConfigurationReader.CriticalSequencer.init()();
  *(v1 + 264) = v4;
  *(v1 + 128) = v2;
  *(v1 + 136) = v3;
  swift_unknownObjectRetain();
  v5 = v2;
  v6 = RIOImportSessionGetStage();
  v0[8] = v6;
  if (v6)
  {
    v8 = v0[6];
    v7 = v0[7];
    v0[9] = RIOPxrUsdStageCopySessionLayer();
    v0[10] = RIOPxrUsdEditTargetCreateWithLayer();
    RIOPxrUsdStageSetEditTarget();
    v9 = RIOPxrUsdStageCopyDefaultPrim();
    v0[11] = v9;
    v10 = RIOPxrUsdObjectCopyPath();
    v11 = RIOPxrSdfPathCopyString();

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    *(v8 + 112) = v12;
    *(v8 + 120) = v14;
    v0[2] = MEMORY[0x1E69E7CC0];
    static Entity.ConfigurationCatalog.USDConfigurationReader.buildConfigurationSets(forPrim:configurationCollectionCaches:)(v9, (v0 + 2));
    v15 = v0[2];
    type metadata accessor for Entity.ConfigurationCatalog.ConfigurationMapCache();
    swift_allocObject();
    v16 = Entity.ConfigurationCatalog.ConfigurationMapCache.init(configurationCollectionCaches:)(v15);
    v24 = v0[5];
    v25 = v0[6];
    *(v25 + 256) = v16;
    outlined init with copy of Entity.ConfigurationCatalog.LoadOptions?(v24, v25 + 144);

    return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.USDConfigurationReader.init(importSession:importSessionSwiftObject:options:), v25, 0);
  }

  else
  {
    type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError();
    _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.USDConfigurationReaderError and conformance Entity.ConfigurationCatalog.USDConfigurationReaderError, 255, type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v17 = v0[5];
    v18 = v0[6];
    v19 = v0[3];

    v20 = *(v1 + 136);
    swift_unknownObjectRelease();
    v21 = *(v1 + 264);

    type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReader();
    swift_defaultActor_destroy();
    swift_unknownObjectRelease();

    outlined destroy of BodyTrackingComponent?(v17, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
    swift_deallocPartialClassInstance();
    v22 = v0[1];

    return v22();
  }
}

{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[4];
  v13 = v0[5];
  v6 = v0[3];
  v7 = RIOPxrUsdStageCopyRootLayer();
  v8 = RIOPxrTfTokenCreateWithCString();
  v9 = RIOPxrVtValueCreateWithBool();
  RIOPxrSdfLayerSetCustomLayerData();

  swift_unknownObjectRelease();
  outlined destroy of BodyTrackingComponent?(v13, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  v10 = v0[1];
  v11 = v0[6];

  return v10(v11);
}

void static Entity.ConfigurationCatalog.USDConfigurationReader.buildConfigurationSets(forPrim:configurationCollectionCaches:)(uint64_t a1, uint64_t a2)
{
  if (!RIOPxrUsdPrimHasVariantSets())
  {
    while (1)
    {
      v4 = RIOPxrUsdPrimCopyChildren();
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v13 = 0;
        type metadata accessor for RIOPxrUsdObjectRef(0);
        static Array._conditionallyBridgeFromObjectiveC(_:result:)();

        if (v13)
        {
          v5 = v13;
        }

        else
        {
          v5 = MEMORY[0x1E69E7CC0];
        }

        if (!(v5 >> 62))
        {
LABEL_9:
          v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v6)
          {
            goto LABEL_21;
          }

          goto LABEL_10;
        }
      }

      else
      {

        v5 = MEMORY[0x1E69E7CC0];
        if (!(MEMORY[0x1E69E7CC0] >> 62))
        {
          goto LABEL_9;
        }
      }

      v6 = __CocoaSet.count.getter();
      if (!v6)
      {
LABEL_21:

        return;
      }

LABEL_10:
      v12 = a2;
      v7 = 0;
      a2 = v5 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1C68F41F0](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        static Entity.ConfigurationCatalog.USDConfigurationReader.buildConfigurationSets(forPrim:configurationCollectionCaches:)(v8, v12);

        if (!v2)
        {
          ++v7;
          if (v10 != v6)
          {
            continue;
          }
        }

        goto LABEL_21;
      }

      __break(1u);
LABEL_23:
      __break(1u);
      __break(1u);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  RIOPxrUsdPrimCopyVariantSets();
  if (RIOPxrUsdVariantSetsCopySetNames())
  {
    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    static Array._forceBridgeFromObjectiveC(_:result:)();
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[94] = v3;
  v4[93] = a3;
  v4[92] = a2;
  v4[91] = a1;
  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:), v3, 0);
}

uint64_t Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:)()
{
  outlined init with copy of Entity.ConfigurationCatalog.LoadOptions?(*(v0 + 744), v0 + 128);
  if (*(v0 + 128) != 1)
  {
    v38 = *(v0 + 208);
    *(v0 + 80) = *(v0 + 192);
    *(v0 + 96) = v38;
    *(v0 + 112) = *(v0 + 224);
    v39 = *(v0 + 144);
    *(v0 + 16) = *(v0 + 128);
    *(v0 + 32) = v39;
    v40 = *(v0 + 176);
    *(v0 + 48) = *(v0 + 160);
    *(v0 + 64) = v40;
    v2 = *(v0 + 736);
    if (v2)
    {
      goto LABEL_5;
    }

LABEL_32:
    v4 = 0;
LABEL_33:
    *(v0 + 768) = v4;
    *(v0 + 760) = 0;
    v41 = *(v0 + 752);
    *(v0 + 776) = _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.USDConfigurationReader and conformance Entity.ConfigurationCatalog.USDConfigurationReader, v1, type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReader);
    v42 = *(MEMORY[0x1E69E88D0] + 4);
    v43 = swift_task_alloc();
    *(v0 + 784) = v43;
    *v43 = v0;
    v43[1] = Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:);
    v44 = *(v0 + 752);

    return MEMORY[0x1EEE6DDE0]();
  }

  outlined init with copy of Entity.ConfigurationCatalog.LoadOptions?(*(v0 + 752) + 144, v0 + 16);
  if (*(v0 + 128) != 1)
  {
    outlined destroy of BodyTrackingComponent?(v0 + 128, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  }

  v2 = *(v0 + 736);
  if (!v2)
  {
    goto LABEL_32;
  }

LABEL_5:
  v46 = v0;
  v3 = *(v2 + 16);

  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0, MEMORY[0x1E69E7CC0]);
  v5 = 0;
  v6 = v2 + 64;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 64);
  v10 = (63 - v7) >> 6;
  v47 = v10;
  v48 = v2 + 64;
  v49 = v2;
  if (!v9)
  {
    goto LABEL_10;
  }

  do
  {
    v53 = v4;
LABEL_14:
    v52 = (v9 - 1) & v9;
    v12 = __clz(__rbit64(v9)) | (v5 << 6);
    v13 = (*(v2 + 48) + 16 * v12);
    v50 = v13[1];
    v51 = *v13;
    v14 = *(*(v2 + 56) + 8 * v12);
    v15 = *(v14 + 16);

    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0, MEMORY[0x1E69E7CC0]);
    v17 = 0;
    v19 = v14 + 64;
    v18 = *(v14 + 64);
    v54 = v14;
    v20 = -1 << *(v14 + 32);
    if (-v20 < 64)
    {
      v21 = ~(-1 << -v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & v18;
    v23 = (63 - v20) >> 6;
    if ((v21 & v18) != 0)
    {
      do
      {
LABEL_22:
        v25 = (v17 << 10) | (16 * __clz(__rbit64(v22)));
        v26 = (*(v54 + 48) + v25);
        v27 = v26[1];
        v28 = (*(v54 + 56) + v25);
        v29 = v28[1];
        v55 = *v28;
        v56 = *v26;
        v31 = v16[2];
        v30 = v16[3];
        v57 = v16;

        if (v31 >= v30 >> 1)
        {
          v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v16);
        }

        v22 &= v22 - 1;
        v57[2] = v31 + 1;
        v16 = v57;
        v32 = &v57[4 * v31];
        v32[4] = v56;
        v32[5] = v27;
        v32[6] = v55;
        v32[7] = v29;
      }

      while (v22);
    }

    while (1)
    {
      v24 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v24 >= v23)
      {
        break;
      }

      v22 = *(v19 + 8 * v24);
      ++v17;
      if (v22)
      {
        v17 = v24;
        goto LABEL_22;
      }
    }

    v4 = v53;
    v34 = v53[2];
    v33 = v53[3];
    if (v34 >= v33 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v53);
    }

    v6 = v48;
    v2 = v49;
    v10 = v47;
    v9 = v52;
    v4[2] = v34 + 1;
    v35 = &v4[3 * v34];
    v35[4] = v51;
    v35[5] = v50;
    v35[6] = v16;
  }

  while (v52);
LABEL_10:
  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v10)
    {
      v0 = v46;
      v36 = *(v46 + 752);

      Entity.ConfigurationCatalog.USDConfigurationReader.validateSpecification(_:)(v37);

      goto LABEL_33;
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v53 = v4;
      v5 = v11;
      goto LABEL_14;
    }
  }

LABEL_37:
  __break(1u);
  return MEMORY[0x1EEE6DDE0]();
}

{
  v1 = *(*v0 + 784);
  v2 = *(*v0 + 752);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:), v2, 0);
}

{
  v1 = *(v0[94] + 128);
  v2 = RIOImportSessionGetStage();
  v0[99] = v2;
  if (v2)
  {
    v3 = v0[96];
    v0[100] = RIOPxrUsdStageCopyEditTarget();
    v4 = RIOPxrUsdStageCopySessionLayer();
    v0[101] = RIOPxrUsdEditTargetCreateWithLayer();

    RIOPxrUsdStageSetEditTarget();
    if (v3)
    {
      v5 = v0[96];
      v6 = v0[95];
      v7 = v0[94];
      Entity.ConfigurationCatalog.USDConfigurationReader.setSpecification(_:)(v5);
      if (v6)
      {
LABEL_4:
        v8 = v0[94];
        Entity.ConfigurationCatalog.USDConfigurationReader.clearSpecification(_:)(v5);
        v19 = v0[96];

LABEL_14:
        v20 = v0[101];
        v21 = v0[100];
        v22 = v0[99];
        v23 = v0[94];
        swift_willThrow();
        RIOPxrUsdStageSetEditTarget();

        v24 = *(v23 + 264);
        v25 = *(v24 + 24);
        v26 = swift_allocObject();
        *(v26 + 16) = closure #1 in Entity.ConfigurationCatalog.USDConfigurationReader.CriticalSequencer.end()partial apply;
        *(v26 + 24) = v24;
        v0[65] = thunk for @callee_guaranteed () -> ()partial apply;
        v0[66] = v26;
        v0[61] = MEMORY[0x1E69E9820];
        v0[62] = 1107296256;
        v0[63] = thunk for @escaping @callee_guaranteed () -> ();
        v0[64] = &block_descriptor_39_1;
        v27 = _Block_copy(v0 + 61);
        v28 = v0[66];

        dispatch_sync(v25, v27);
        _Block_release(v27);
        LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

        if ((v27 & 1) == 0)
        {
          goto LABEL_15;
        }

        __break(1u);
        return MEMORY[0x1EEE6DE38](v29, v30, v31, v32, v33, v34, v35, v36);
      }

LABEL_8:
      v16 = *(v0[94] + 136);
      if (v16)
      {
        outlined init with copy of Entity.ConfigurationCatalog.LoadOptions?((v0 + 2), (v0 + 30));
        v17 = v0[30];
        if (v17 == 1)
        {
          outlined destroy of BodyTrackingComponent?((v0 + 30), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
        }

        else
        {
          v18 = v0[31];
          swift_unknownObjectRetain();
          _ss6ResultOyxs5Error_pGRi_zRi0_zly10RealityKit19EnvironmentResourceCIsegn_SgWOy(v17, v18);
          outlined destroy of Entity.ConfigurationCatalog.LoadOptions((v0 + 30));
          if (v17)
          {
            v17(v16);
            if (v6)
            {
              swift_unknownObjectRelease();
              outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v17);
              v5 = v0[96];
              if (!v5)
              {
                goto LABEL_14;
              }

              goto LABEL_4;
            }

            outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v17);
          }

          swift_unknownObjectRelease();
        }
      }

      v39 = v0[97];
      v40 = v0[94];
      v41 = *(MEMORY[0x1E69E8920] + 4);
      v29 = swift_task_alloc();
      v0[102] = v29;
      *v29 = v0;
      v29[1] = Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:);
      v35 = v0[94];
      v34 = partial apply for closure #1 in Entity.ConfigurationCatalog.USDConfigurationReader.loadStagedEntity(atPathString:);
      v33 = 0x80000001C18ED090;
      v36 = MEMORY[0x1E69E7CA8] + 8;
      v30 = v40;
      v31 = v39;
      v32 = 0xD00000000000001FLL;

      return MEMORY[0x1EEE6DE38](v29, v30, v31, v32, v33, v34, v35, v36);
    }

LABEL_7:
    v6 = v0[95];
    goto LABEL_8;
  }

  v9 = v0[96];
  v10 = v0[94];

  type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError();
  _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.USDConfigurationReaderError and conformance Entity.ConfigurationCatalog.USDConfigurationReaderError, 255, type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v11 = *(v10 + 264);
  v12 = *(v11 + 24);
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in Entity.ConfigurationCatalog.USDConfigurationReader.CriticalSequencer.end();
  *(v13 + 24) = v11;
  v0[59] = thunk for @callee_guaranteed () -> ()partial apply;
  v0[60] = v13;
  v0[55] = MEMORY[0x1E69E9820];
  v0[56] = 1107296256;
  v0[57] = thunk for @escaping @callee_guaranteed () -> ();
  v0[58] = &block_descriptor_29_0;
  v14 = _Block_copy(v0 + 55);
  v15 = v0[60];

  dispatch_sync(v12, v14);
  _Block_release(v14);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_15:
  outlined destroy of BodyTrackingComponent?((v0 + 2), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  v37 = v0[1];

  return v37();
}

{
  v2 = *v1;
  v3 = *(*v1 + 816);
  v4 = *v1;
  *(*v1 + 824) = v0;

  v5 = *(v2 + 752);
  if (v0)
  {
    v6 = Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:);
  }

  else
  {
    v6 = Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = swift_task_alloc();
  *(v0 + 832) = v1;
  *v1 = v0;
  v1[1] = Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:);
  v2 = *(v0 + 752);

  return Entity.ConfigurationCatalog.USDConfigurationReader.stagedEntity(atPathString:)(47, 0xE100000000000000);
}

{
  v0[107] = v0[103];
  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:), v0[94], 0);
}

{
  if (v0[96])
  {
    v1 = v0[106];
    v2 = v0[94];
    Entity.ConfigurationCatalog.USDConfigurationReader.clearSpecification(_:)(v0[96]);
    if (v1)
    {
      v3 = v0[105];
      v4 = v0[101];
      v5 = v0[100];
      v6 = v0[99];
      v7 = v0[94];

      RIOPxrUsdStageSetEditTarget();

      v8 = *(v7 + 264);
      v9 = *(v8 + 24);
      v10 = swift_allocObject();
      *(v10 + 16) = closure #1 in Entity.ConfigurationCatalog.USDConfigurationReader.CriticalSequencer.end()partial apply;
      *(v10 + 24) = v8;
      v0[89] = thunk for @callee_guaranteed () -> ()partial apply;
      v0[90] = v10;
      v0[85] = MEMORY[0x1E69E9820];
      v0[86] = 1107296256;
      v0[87] = thunk for @escaping @callee_guaranteed () -> ();
      v0[88] = &block_descriptor_74;
      v11 = _Block_copy(v0 + 85);
      v12 = v0[90];

      dispatch_sync(v9, v11);
      _Block_release(v11);
      LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

      if (v11)
      {
        __break(1u);
      }

      else
      {
        outlined destroy of BodyTrackingComponent?((v0 + 2), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
        v14 = v0[1];

        return v14();
      }

      return result;
    }
  }

  v0[44] = 0;
  v0[45] = 0;
  v0[46] = 0;
  v0[47] = 1;
  *(v0 + 24) = 0u;
  *(v0 + 25) = 0u;
  *(v0 + 26) = 0u;
  v0[54] = 0;
  v15 = swift_task_alloc();
  v0[108] = v15;
  *v15 = v0;
  v15[1] = Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:);
  v16 = v0[105];

  return specialized static Entity.finishUSDLoad(forEntity:withOptions:)(v16, (v0 + 44));
}

{
  v1 = v0[107];
  v2 = v0[96];
  if (v2)
  {
    v3 = v0[94];
    Entity.ConfigurationCatalog.USDConfigurationReader.clearSpecification(_:)(v2);
    v4 = v0[96];
  }

  v5 = v0[101];
  v6 = v0[100];
  v7 = v0[99];
  v8 = v0[94];
  swift_willThrow();
  RIOPxrUsdStageSetEditTarget();

  v9 = *(v8 + 264);
  v10 = *(v9 + 24);
  v11 = swift_allocObject();
  *(v11 + 16) = closure #1 in Entity.ConfigurationCatalog.USDConfigurationReader.CriticalSequencer.end()partial apply;
  *(v11 + 24) = v9;
  v0[65] = thunk for @callee_guaranteed () -> ()partial apply;
  v0[66] = v11;
  v0[61] = MEMORY[0x1E69E9820];
  v0[62] = 1107296256;
  v0[63] = thunk for @escaping @callee_guaranteed () -> ();
  v0[64] = &block_descriptor_39_1;
  v12 = _Block_copy(v0 + 61);
  v13 = v0[66];

  dispatch_sync(v10, v12);
  _Block_release(v12);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?((v0 + 2), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
    v15 = v0[1];

    return v15();
  }

  return result;
}

{
  v2 = *v1;
  v3 = *(*v1 + 864);
  v4 = *v1;
  *(v2 + 872) = v0;

  v5 = *(v2 + 752);
  outlined destroy of BodyTrackingComponent?(v2 + 352, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
  if (v0)
  {
    v6 = Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:);
  }

  else
  {
    v6 = Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  type metadata accessor for MainActor();
  *(v0 + 880) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:), v2, v1);
}

{
  v1 = v0[110];
  v2 = v0[105];
  v3 = v0[94];
  v4 = v0[91];

  Entity.copy(to:recursive:)(v4, 1);

  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:), v3, 0);
}

{
  v1 = v0[105];
  v2 = v0[101];
  v3 = v0[100];
  v4 = v0[99];
  v5 = v0[94];

  RIOPxrUsdStageSetEditTarget();

  v6 = *(v5 + 264);
  v7 = *(v6 + 24);
  v8 = swift_allocObject();
  *(v8 + 16) = closure #1 in Entity.ConfigurationCatalog.USDConfigurationReader.CriticalSequencer.end()partial apply;
  *(v8 + 24) = v6;
  v0[83] = thunk for @callee_guaranteed () -> ()partial apply;
  v0[84] = v8;
  v0[79] = MEMORY[0x1E69E9820];
  v0[80] = 1107296256;
  v0[81] = thunk for @escaping @callee_guaranteed () -> ();
  v0[82] = &block_descriptor_65;
  v9 = _Block_copy(v0 + 79);
  v10 = v0[84];

  dispatch_sync(v7, v9);
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?((v0 + 2), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
    v12 = v0[1];

    return v12();
  }

  return result;
}

{
  v1 = v0[105];
  v2 = v0[101];
  v3 = v0[100];
  v4 = v0[99];
  v5 = v0[94];

  RIOPxrUsdStageSetEditTarget();

  v6 = *(v5 + 264);
  v7 = *(v6 + 24);
  v8 = swift_allocObject();
  *(v8 + 16) = closure #1 in Entity.ConfigurationCatalog.USDConfigurationReader.CriticalSequencer.end()partial apply;
  *(v8 + 24) = v6;
  v0[77] = thunk for @callee_guaranteed () -> ()partial apply;
  v0[78] = v8;
  v0[73] = MEMORY[0x1E69E9820];
  v0[74] = 1107296256;
  v0[75] = thunk for @escaping @callee_guaranteed () -> ();
  v0[76] = &block_descriptor_57;
  v9 = _Block_copy(v0 + 73);
  v10 = v0[78];

  dispatch_sync(v7, v9);
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?((v0 + 2), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
    v12 = v0[109];
    v13 = v0[1];

    return v13();
  }

  return result;
}

uint64_t Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 832);
  v5 = *v2;
  v3[105] = a1;
  v3[106] = v1;

  if (v1)
  {
    v3[107] = v1;
    v6 = v3[94];
    v7 = Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:);
  }

  else
  {
    v6 = v3[94];
    v7 = Entity.ConfigurationCatalog.USDConfigurationReader.loadEntity(into:withConfigurations:loadOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

void Entity.ConfigurationCatalog.USDConfigurationReader.validateSpecification(_:)(uint64_t a1)
{
  v2 = v1;
  v33 = *(a1 + 16);
  if (v33)
  {
    v3 = 0;
    v4 = a1 + 32;
    while (1)
    {
      v5 = (v4 + 24 * v3);
      v7 = *v5;
      v6 = v5[1];
      v8 = v5[2];
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v9 = Entity.ConfigurationCatalog.USDConfigurationReader.getPrimWithVariants(atPathString:)(v7, v6);
      if (v2)
      {
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        return;
      }

      v34 = v3;
      v35 = v6;
      v42 = 0;
      v36 = v9;
      v10 = RIOPxrUsdPrimCopyVariantSets();
      v11 = v10;
      v39 = *(v8 + 16);
      if (v39)
      {
        break;
      }

LABEL_3:
      v3 = v34 + 1;
      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();
      v2 = v42;
      v4 = v32;
      if (v3 == v33)
      {
        return;
      }
    }

    v31 = v7;
    v12 = 0;
    v13 = (v8 + 56);
    v38 = v10;
    v40 = v8;
    while (v12 < *(v8 + 16))
    {
      v14 = *(v13 - 3);
      v15 = *(v13 - 2);
      v16 = *(v13 - 1);
      v17 = *v13;
      String.utf8CString.getter();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      HasVariantSet = RIOPxrUsdVariantSetsHasVariantSet();

      if (!HasVariantSet)
      {
        swift_bridgeObjectRelease_n();
        v26 = v35;

        swift_bridgeObjectRelease_n();
        type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError();
        _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.USDConfigurationReaderError and conformance Entity.ConfigurationCatalog.USDConfigurationReaderError, 255, type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError);
        swift_allocError();
        *v27 = v31;
        v27[1] = v26;
        v27[2] = v14;
        v27[3] = v15;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        return;
      }

      v37 = v14;
      String.utf8CString.getter();
      v19 = RIOPxrUsdVariantSetsCopyVariantSet();

      v20 = RIOPxrUsdVariantSetCopyVariantNames();
      if (!v20)
      {
        goto LABEL_19;
      }

      v21 = v20;

      objc_opt_self();
      swift_dynamicCastObjCClassUnconditional();
      v41[0] = 0;
      static Array._forceBridgeFromObjectiveC(_:result:)();
      v22 = v41[0];
      if (!v41[0])
      {
        goto LABEL_20;
      }

      v41[0] = v16;
      v41[1] = v17;
      MEMORY[0x1EEE9AC00](v23);
      v30[2] = v41;
      v24 = v42;
      v25 = specialized Sequence.contains(where:)(_sSlsSQ7ElementRpzrlE5split9separator9maxSplits25omittingEmptySubsequencesSay11SubSequenceQzGAB_SiSbtFSbABXEfU_SS_TG5TA_0, v30, v22);
      v42 = v24;

      if ((v25 & 1) == 0)
      {
        swift_bridgeObjectRelease_n();
        v28 = v35;

        type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError();
        _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.USDConfigurationReaderError and conformance Entity.ConfigurationCatalog.USDConfigurationReaderError, 255, type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError);
        swift_allocError();
        *v29 = v31;
        v29[1] = v28;
        v29[2] = v37;
        v29[3] = v15;
        v29[4] = v16;
        v29[5] = v17;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        return;
      }

      ++v12;

      v13 += 4;
      v11 = v38;
      v8 = v40;
      if (v39 == v12)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }
}

void Entity.ConfigurationCatalog.USDConfigurationReader.setSpecification(_:)(uint64_t a1)
{
  v21 = *(a1 + 16);
  if (v21)
  {
    v1 = 0;
    v22 = a1 + 32;
    while (1)
    {
      v2 = (v22 + 24 * v1);
      v4 = *v2;
      v3 = v2[1];
      v5 = v2[2];
      v6 = *(v23 + 128);

      v7 = RIOImportSessionGetStage();
      if (!v7)
      {
        type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError();
        _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.USDConfigurationReaderError and conformance Entity.ConfigurationCatalog.USDConfigurationReaderError, 255, type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        return;
      }

      v8 = v7;
      String.utf8CString.getter();
      v9 = RIOPxrSdfPathCreateFromCString();

      if ((RIOPxrUsdStageHasPrimAtPrimPath() & 1) == 0)
      {
        type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError();
        _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.USDConfigurationReaderError and conformance Entity.ConfigurationCatalog.USDConfigurationReaderError, 255, type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError);
        swift_allocError();
        *v19 = v4;
        v19[1] = v3;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        return;
      }

      v10 = RIOPxrTfTokenEmpty();
      PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

      if ((RIOPxrUsdPrimHasVariantSets() & 1) == 0)
      {
        break;
      }

      v12 = RIOPxrUsdPrimCopyVariantSets();
      v13 = *(v5 + 16);
      if (v13)
      {
        v14 = (v5 + 56);
        do
        {
          v15 = *(v14 - 3);
          v16 = *(v14 - 2);
          v17 = *(v14 - 1);
          v18 = *v14;
          String.utf8CString.getter();
          String.utf8CString.getter();
          RIOPxrUsdVariantSetsSetSelection();

          v14 += 4;
          --v13;
        }

        while (v13);
      }

      ++v1;

      if (v1 == v21)
      {
        return;
      }
    }

    type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError();
    _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.USDConfigurationReaderError and conformance Entity.ConfigurationCatalog.USDConfigurationReaderError, 255, type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReaderError);
    swift_allocError();
    *v20 = v4;
    v20[1] = v3;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}