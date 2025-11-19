uint64_t key path setter for __RKChangeSceneAction.rootEntity : __RKChangeSceneAction(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_rootEntity;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t __RKChangeSceneAction.rootEntity.getter()
{
  v1 = OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_rootEntity;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t __RKChangeSceneAction.rootEntity.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_rootEntity;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t __RKChangeSceneAction.__allocating_init(rootEntity:targetSceneIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  v7 = specialized __RKChangeSceneAction.init(rootEntity:targetSceneIdentifier:)(a1, a2);

  return v7;
}

uint64_t __RKChangeSceneAction.init(rootEntity:targetSceneIdentifier:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized __RKChangeSceneAction.init(rootEntity:targetSceneIdentifier:)(a1, a2);

  return v2;
}

unint64_t implicit closure #1 in __RKChangeSceneAction.init(rootEntity:targetSceneIdentifier:)()
{
  _StringGuts.grow(_:)(24);

  type metadata accessor for UUID();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v0);

  return 0xD000000000000016;
}

uint64_t __RKChangeSceneAction.perform(with:)()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v85 = *(v2 - 8);
  v3 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v83 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for DispatchQoS();
  v82 = *(v84 - 8);
  v5 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v81 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for DispatchTime();
  v80 = *(v87 - 8);
  v7 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v86 = &v74 - v11;
  v12 = type metadata accessor for UUID();
  v88 = *(v12 - 8);
  v13 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = StaticString.description.getter();
  v90 = v16;
  MEMORY[0x1C68F3410](8250, 0xE200000000000000);
  v18 = aBlock;
  v17 = v90;
  v19 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v19, &aBlock);
  swift_beginAccess();
  v20 = *(v0 + 96);
  v21 = *(v0 + 104);
  *(v0 + 96) = 1;
  *(v0 + 104) = 1;
  aBlock = v20;
  LOBYTE(v90) = v21;
  __RKEntityAction.state.didset(&aBlock);
  v22 = OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_rootEntity;
  swift_beginAccess();
  v23 = *(v1 + v22);
  if (v23)
  {
    v24 = *(v23 + 16);

    SceneNullable = REEntityGetSceneNullable();
    if (SceneNullable)
    {
      v26 = SceneNullable;
      v27 = RESceneGetSwiftObject();
      type metadata accessor for Scene();
      v77 = v9;
      if (v27)
      {
        v28 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        swift_allocObject();
        v28 = Scene.init(coreScene:)(v26);
      }

      v35 = v28;
      v36 = Scene.__interactionService.getter();
      type metadata accessor for __RKEntityInteractionManager();
      v37 = swift_dynamicCastClass();
      if (v37)
      {
        v38 = v37;
        v78 = v36;
        v79 = v35;
        v76 = v2;
        v39 = v88;
        v40 = *(v88 + 16);
        v74 = OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_targetSceneIdentifier;
        v75 = v40;
        v40(v15, v1 + OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_targetSceneIdentifier, v12);
        if (one-time initialization token for noTargetSceneIdentifier != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v12, static __RKChangeSceneAction.noTargetSceneIdentifier);
        v41 = static UUID.== infix(_:_:)();
        (*(v39 + 8))(v15, v12);
        if (v41)
        {
          aBlock = v18;
          v90 = v17;
          v42 = static os_log_type_t.error.getter();
          specialized InteractionsLogger.log(_:_:)(v42, &aBlock);

          v43 = *(v1 + 96);
          v44 = *(v1 + 104);
          *(v1 + 96) = 4;
          *(v1 + 104) = 1;
          aBlock = v43;
          LOBYTE(v90) = v44;
          __RKEntityAction.state.didset(&aBlock);
        }

        else
        {
          swift_beginAccess();
          v48 = *(v38 + 48);
          swift_beginAccess();
          if (*(v48 + 32) == 1)
          {
            aBlock = v18;
            v90 = v17;
            v49 = static os_log_type_t.info.getter();
            specialized InteractionsLogger.log(_:_:)(v49, &aBlock);
            v75(v15, v1 + v74, v12);
            v50 = type metadata accessor for RKChangeSceneActionSimulationTechnique();
            v51 = *(v50 + 48);
            v52 = *(v50 + 52);
            v53 = swift_allocObject();
          }

          else
          {
            aBlock = v18;
            v90 = v17;
            v54 = static os_log_type_t.info.getter();
            specialized InteractionsLogger.log(_:_:)(v54, &aBlock);
            v75(v15, v1 + v74, v12);
            v55 = type metadata accessor for RKChangeSceneActionRuntimeTechnique();
            v56 = *(v55 + 48);
            v57 = *(v55 + 52);
            v53 = swift_allocObject();
            *(v53 + OBJC_IVAR____TtC17RealityFoundation35RKChangeSceneActionRuntimeTechnique_sceneSwitchEntity) = 0;
            *(v53 + OBJC_IVAR____TtC17RealityFoundation35RKChangeSceneActionRuntimeTechnique_subcomponent) = 0;
          }

          *(v53 + 16) = v23;
          (*(v39 + 32))(v53 + OBJC_IVAR____TtC17RealityFoundation33RKChangeSceneActionBasicTechnique_targetSceneIdentifier, v15, v12);
          swift_getObjectType();
          v58 = off_1F41123A8[0];

          swift_unknownObjectRetain();
          v59 = v58();
          swift_unknownObjectRelease();
          v60 = v76;
          if (v59)
          {
            type metadata accessor for OS_dispatch_queue();
            v75 = static OS_dispatch_queue.main.getter();
            v61 = v77;
            static DispatchTime.now()();
            + infix(_:_:)();
            v88 = *(v80 + 8);
            (v88)(v61, v87);
            v62 = swift_allocObject();
            swift_weakInit();
            v63 = swift_allocObject();
            v63[2] = v62;
            v63[3] = v18;
            v63[4] = v17;
            v93 = partial apply for closure #1 in __RKChangeSceneAction.perform(with:);
            v94 = v63;
            aBlock = MEMORY[0x1E69E9820];
            v90 = 1107296256;
            v91 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
            v92 = &block_descriptor_17;
            v64 = _Block_copy(&aBlock);

            v65 = v81;
            static DispatchQoS.unspecified.getter();
            aBlock = MEMORY[0x1E69E7CC0];
            _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
            lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
            v80 = v53;
            v66 = v83;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v67 = v86;
            v68 = v75;
            MEMORY[0x1C68F3C60](v86, v65, v66, v64);
            _Block_release(v64);

            (*(v85 + 8))(v66, v60);
            (*(v82 + 8))(v65, v84);
            (v88)(v67, v87);
            aBlock = v18;
            v90 = v17;
            v69 = static os_log_type_t.info.getter();
            specialized InteractionsLogger.log(_:_:)(v69, &aBlock);

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            return 1;
          }

          aBlock = v18;
          v90 = v17;
          v71 = static os_log_type_t.error.getter();
          specialized InteractionsLogger.log(_:_:)(v71, &aBlock);

          v72 = *(v1 + 96);
          v73 = *(v1 + 104);
          *(v1 + 96) = 4;
          *(v1 + 104) = 1;
          aBlock = v72;
          LOBYTE(v90) = v73;
          __RKEntityAction.state.didset(&aBlock);

          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        aBlock = v18;
        v90 = v17;
        v45 = static os_log_type_t.error.getter();
        specialized InteractionsLogger.log(_:_:)(v45, &aBlock);

        v46 = *(v1 + 96);
        v47 = *(v1 + 104);
        *(v1 + 96) = 4;
        *(v1 + 104) = 1;
        aBlock = v46;
        LOBYTE(v90) = v47;
        __RKEntityAction.state.didset(&aBlock);
      }
    }

    else
    {
      aBlock = v18;
      v90 = v17;
      v32 = static os_log_type_t.error.getter();
      specialized InteractionsLogger.log(_:_:)(v32, &aBlock);

      v33 = *(v1 + 96);
      v34 = *(v1 + 104);
      *(v1 + 96) = 4;
      *(v1 + 104) = 1;
      aBlock = v33;
      LOBYTE(v90) = v34;
      __RKEntityAction.state.didset(&aBlock);
    }
  }

  else
  {
    aBlock = v18;
    v90 = v17;
    v29 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v29, &aBlock);

    v30 = *(v1 + 96);
    v31 = *(v1 + 104);
    *(v1 + 96) = 4;
    *(v1 + 104) = 1;
    aBlock = v30;
    LOBYTE(v90) = v31;
    __RKEntityAction.state.didset(&aBlock);
  }

  return 0;
}

uint64_t closure #1 in __RKChangeSceneAction.perform(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v12[0] = a2;
    v12[1] = a3;
    v7 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v7, v12);
    swift_beginAccess();
    v8 = *(v6 + 96);
    v9 = *(v6 + 104);
    *(v6 + 96) = 2;
    *(v6 + 104) = 1;
    v10 = v8;
    v11 = v9;

    __RKEntityAction.state.didset(&v10);
  }

  return result;
}

uint64_t __RKChangeSceneAction.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_rootEntity;
  swift_beginAccess();
  v9 = *(v1 + v8);
  (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_targetSceneIdentifier, v3);
  v10 = type metadata accessor for __RKChangeSceneAction();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  v14 = specialized __RKChangeSceneAction.init(rootEntity:targetSceneIdentifier:)(v13, v7);

  a1[3] = v10;
  *a1 = v14;
  return result;
}

uint64_t __RKChangeSceneAction.__ivar_destroyer()
{
  v1 = OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_targetSceneIdentifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_rootEntity);
}

uint64_t __RKChangeSceneAction.deinit()
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
  v6 = OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_targetSceneIdentifier;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(v0 + OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_rootEntity);

  return v0;
}

uint64_t __RKChangeSceneAction.__deallocating_deinit()
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
  v6 = OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_targetSceneIdentifier;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);

  v8(v0 + v6, v7);
  v9 = *(v0 + OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_rootEntity);

  v10 = *(*v0 + 48);
  v11 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t specialized __RKChangeSceneAction.init(rootEntity:targetSceneIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_rootEntity;
  *(v2 + OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_rootEntity) = 0;
  v23 = 91;
  v24 = 0xE100000000000000;
  if (a1)
  {
    v21 = 0;
    v22 = 0xE000000000000000;
    v20[4] = a1;

    _print_unlocked<A, B>(_:_:)();
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  else
  {
    v8 = 0xE300000000000000;
    v7 = 7104878;
  }

  MEMORY[0x1C68F3410](v7, v8);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v9 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v9);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v11 = v23;
  v10 = v24;
  swift_beginAccess();
  v12 = *(v3 + v6);
  *(v3 + v6) = a1;

  MEMORY[0x1EEE9AC00](v13);
  v20[2] = a2;
  v21 = v11;
  v22 = v10;
  v14 = static os_log_type_t.debug.getter();
  specialized InteractionsLogger.log(_:_:)(v14, &v21, partial apply for implicit closure #1 in __RKChangeSceneAction.init(rootEntity:targetSceneIdentifier:), v20);

  v15 = OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_targetSceneIdentifier;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v3 + v15, a2, v16);
  v18 = __RKEntityAction.init(targetEntity:)(0);
  (*(v17 + 8))(a2, v16);
  return v18;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for __RKChangeSceneAction()
{
  result = type metadata singleton initialization cache for __RKChangeSceneAction;
  if (!type metadata singleton initialization cache for __RKChangeSceneAction)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for __RKChangeSceneAction()
{
  result = type metadata accessor for UUID();
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static __AssetRef.__fromCore(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  return static __AssetRef.__fromCore(_:)(a1, a2);
}

{
  outlined init with copy of Any(a1, v5);
  result = swift_dynamicCast();
  *a2 = v4;
  return result;
}

uint64_t static RemoteVideoPlayer.fromCore(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  outlined init with copy of Any(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19RERemoteVideoPlayer_pMd, &_sSo19RERemoteVideoPlayer_pMR);
  result = swift_dynamicCast();
  *a2 = v4;
  return result;
}

uint64_t __ComponentTypeRef.__as<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = *v3;
  a3(0);
  return swift_dynamicCast();
}

uint64_t static __ComponentTypeRef.__fromCore(_:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, _DWORD *a3@<X8>)
{
  outlined init with copy of Any(a1, v7);
  a2(0);
  result = swift_dynamicCast();
  *a3 = v6;
  return result;
}

uint64_t __EngineServiceMaskRef.__as<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = *v3;
  a3(0);
  return swift_dynamicCast();
}

uint64_t static __EngineServiceMaskRef.__fromCore(_:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, _DWORD *a3@<X8>)
{
  outlined init with copy of Any(a1, v7);
  a2(0);
  result = swift_dynamicCast();
  *a3 = v6;
  return result;
}

uint64_t __AABBRef.__as<A>(_:)()
{
  v2 = *v0;
  v3 = v0[1];
  type metadata accessor for REAABB(0);
  return swift_dynamicCast();
}

uint64_t __SRTRef.__as<A>(_:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  type metadata accessor for RESRT(0);
  return swift_dynamicCast();
}

double static __SRTRef.__fromCore(_:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  outlined init with copy of Any(a1, v7);
  type metadata accessor for RESRT(0);
  swift_dynamicCast();
  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t RemoteVideoPlayer.__as<A>(_:)()
{
  v2 = *v0;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19RERemoteVideoPlayer_pMd, &_sSo19RERemoteVideoPlayer_pMR);
  return swift_dynamicCast();
}

uint64_t storeEnumTagSinglePayload for CoreComponentType.OriginType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

void *destructiveInjectEnumTag for CoreComponentType.OriginType(void *result, unsigned int a2)
{
  if (a2 > 1)
  {
    v2 = a2 - 2;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = 0;
  }

  *result = v2;
  return result;
}

Swift::Int32 __swiftcall log2RoundUp(_:)(Swift::Int32 a1)
{
  v2 = ceil(log2(a1));
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -2147483650.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 2147483650.0)
  {
    return v2;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t WorldComponent.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WorldComponent.CoreWorldRoot();
  v2 = swift_allocObject();
  result = RECreateWorldRoot();
  *(v2 + 16) = result;
  *a1 = v2;
  return result;
}

uint64_t protocol witness for static Component.__fromCore(_:) in conformance WorldComponent@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = REWorldRootComponentCopyWorldRoot();
  type metadata accessor for WorldComponent.CoreWorldRoot();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  RERetain();
  *a2 = v5;

  return RERelease();
}

uint64_t static WorldComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = REWorldRootComponentCopyWorldRoot();
  type metadata accessor for WorldComponent.CoreWorldRoot();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  RERetain();
  *a2 = v5;

  return RERelease();
}

uint64_t protocol witness for Component.__toCore(_:) in conformance WorldComponent(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*v1 + 16);
  REWorldRootComponentSetWorldRoot();
  RELinkedOnOrAfterFall2025OSVersions();
  REWorldRootComponentUseLegacyIBL();

  return RENetworkMarkComponentDirty();
}

uint64_t WorldComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*v1 + 16);
  REWorldRootComponentSetWorldRoot();
  RELinkedOnOrAfterFall2025OSVersions();
  REWorldRootComponentUseLegacyIBL();

  return RENetworkMarkComponentDirty();
}

uint64_t WorldComponent.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v12 - v8;
  v12[1] = *v0;
  v12[0] = MEMORY[0x1E69E7CC0];
  v10 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E75D8], v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSg5label_yp5valuetGMd, &_sSaySSSg5label_yp5valuetGMR);
  lazy protocol witness table accessor for type [(label: String?, value: Any)] and conformance [A]();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t protocol witness for CustomReflectable.customMirror.getter in conformance WorldComponent()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v12 - v8;
  v12[1] = *v0;
  v12[0] = MEMORY[0x1E69E7CC0];
  v10 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E75D8], v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSg5label_yp5valuetGMd, &_sSaySSSg5label_yp5valuetGMR);
  lazy protocol witness table accessor for type [(label: String?, value: Any)] and conformance [A]();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

id RERenderManager.device.getter()
{
  v1 = *(v0 + 16);
  RenderDevice = RERenderManagerGetRenderDevice();

  return RenderDevice;
}

id RERenderManager.commandQueue.getter()
{
  v1 = *(v0 + 16);
  RenderCommandQueue = RERenderManagerGetRenderCommandQueue();

  return RenderCommandQueue;
}

uint64_t RERenderManager.createRenderFrameSettings()(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = a1(*(v2 + 16));
  a2(0);
  result = swift_allocObject();
  *(result + 16) = v4;
  return result;
}

id protocol witness for __RenderService.device.getter in conformance RERenderManager()
{
  v1 = *(*v0 + 16);
  RenderDevice = RERenderManagerGetRenderDevice();

  return RenderDevice;
}

id protocol witness for __RenderService.commandQueue.getter in conformance RERenderManager()
{
  v1 = *(*v0 + 16);
  RenderCommandQueue = RERenderManagerGetRenderCommandQueue();

  return RenderCommandQueue;
}

uint64_t HasTransform.setTransformMatrix(_:relativeTo:)(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v24 = *MEMORY[0x1E69E9840];
  type metadata accessor for Entity();
  *v7.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix16fromLocalSpaceOf08toParentiJ0So13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v5);
  v23 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7, a2.f32[0]), v8, *a2.f32, 1), v9, a2, 2), v10, a2, 3);
  v21 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7, a3.f32[0]), v8, *a3.f32, 1), v9, a3, 2), v10, a3, 3);
  v19 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7, a4.f32[0]), v8, *a4.f32, 1), v9, a4, 2), v10, a4, 3);
  v17 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7, a5.f32[0]), v8, *a5.f32, 1), v9, a5, 2), v10, a5, 3);
  HasTransform.transform.getter();
  v11 = v17;
  v11.n128_u32[3] = 0;
  v15 = v11;
  REDecomposeMatrix();
  v12.n128_u64[0] = simd_float4x4.scale.getter(v23, v21, v19);
  result = HasTransform.transform.setter(v12, 0, v15);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

double HasTransform.transform.getter()
{
  (*(*v0 + 96))(&v3);
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v3, &v4);
  v1 = v4;

  if ((v5 & 1) == 0)
  {
    return v1;
  }

  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  return *&static Transform.identity;
}

__n128 HasTransform.convert(transform:from:)(uint64_t a1, float a2, float32x4_t a3, double a4)
{
  type metadata accessor for Entity();
  static HasTransform.conversionMatrix<A, B>(from:to:)(a1, v4);
  specialized simd_float4x4.init(translation:rotation:scale:)(a4, a3, a2);
  REMakeSRTFromMatrix();
  if (one-time initialization token for identity != -1)
  {
    v10 = result;
    swift_once();
    return v10;
  }

  return result;
}

double HasTransform.orientation(relativeTo:)(uint64_t a1)
{
  if (one-time initialization token for identity != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  HasTransform.convert(transform:to:)(a1, *&static Transform.identity, xmmword_1EBEB2BB0, *&xmmword_1EBEB2BC0);
  return v1;
}

__n128 HasTransform.scale(relativeTo:)(uint64_t a1)
{
  type metadata accessor for Entity();
  static HasTransform.conversionMatrix<A, B>(from:to:)(v1, a1);
  REMakeSRTFromMatrix();
  if (one-time initialization token for identity != -1)
  {
    v4 = result;
    swift_once();
    return v4;
  }

  return result;
}

double static HasTransform.conversionMatrix<A, B>(from:to:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a1 == a2)
    {
      *&result = 1065353216;
      return result;
    }

    v5 = *(a1 + 16);

    v6 = MEMORY[0x1C69004D0](v5);
    v7 = *(a1 + 16);
    if (v6)
    {
      v8 = *(a1 + 16);
      RETransformServiceGetWorldMatrix4x4F();
    }

    else
    {
      RETransformComponentGetComponentType();
      if (!REEntityGetComponentByClass())
      {
        v24 = HasHierarchy.parent.getter();
        if (!v24)
        {

          v30 = *zmmword_1C1887630;
          if (a2)
          {
LABEL_12:
            v10 = *(a2 + 16);

            v11 = MEMORY[0x1C69004D0](v10);
            v12 = *(a2 + 16);
            if (v11)
            {
              v13 = *(a2 + 16);
              RETransformServiceGetWorldMatrix4x4F();
            }

            else
            {
              RETransformComponentGetComponentType();
              if (!REEntityGetComponentByClass())
              {
                v19 = HasHierarchy.parent.getter();
                if (!v19)
                {

                  v18 = *zmmword_1C1887630;
                  goto LABEL_25;
                }

                *v20.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v19, 0);
                v28 = v21;
                v29 = v20;
                v26 = v23;
                v27 = v22;

LABEL_17:

                v18.columns[1] = v28;
                v18.columns[0] = v29;
                v18.columns[3] = v26;
                v18.columns[2] = v27;
LABEL_25:
                v31 = __invert_f4(v18);
                *&result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31.columns[0], v30.f32[0]), v31.columns[1], *v30.f32, 1), v31.columns[2], v30, 2), v31.columns[3], v30, 3).u64[0];
                return result;
              }

              RETransformComponentGetWorldMatrix4x4F();
            }

            v28 = v15;
            v29 = v14;
            v26 = v17;
            v27 = v16;
            goto LABEL_17;
          }

LABEL_24:
          v18 = *zmmword_1C1887630;
          goto LABEL_25;
        }

        *v25.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v24, 0);
        v30 = v25;

LABEL_11:

        if (a2)
        {
          goto LABEL_12;
        }

        goto LABEL_24;
      }

      RETransformComponentGetWorldMatrix4x4F();
    }

    v30 = v9;
    goto LABEL_11;
  }

  *&result = 1065353216;
  v30 = *zmmword_1C1887630;
  if (a2)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t HasTransform.transform.setter(__n128 a1, __n128 a2, __n128 a3)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v8 = 0;
  v4 = (*(*v3 + 112))(v6);
  _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA9TransformV_Tt0g5(v7);
  return v4(v6, 0);
}

void (*HasTransform.transform.modify(void *a1, uint64_t a2, uint64_t a3))(__n128 **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x48uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[7] = a3;
  v7[8] = v3;
  v7[6] = a2;
  *&v9 = HasTransform.transform.getter();
  *v8 = v9;
  v8[1] = v10;
  v8[2] = v11;
  return HasTransform.transform.modify;
}

void HasTransform.transform.modify(__n128 **a1)
{
  v1 = *a1;
  v2 = (*a1)[4].n128_u64[0];
  HasTransform.transform.setter(**a1, (*a1)[1], (*a1)[2]);

  free(v1);
}

uint64_t HasTransform.scale.setter(__n128 a1)
{
  HasTransform.transform.getter();

  return HasTransform.transform.setter(a1, v1, v2);
}

void (*HasTransform.scale.modify(void *a1, uint64_t a2, uint64_t a3))(__n128 **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[7] = a3;
  v7[8] = v3;
  v7[6] = a2;
  *&v9 = HasTransform.transform.getter();
  v8[1] = v10;
  v8[2] = v11;
  *v8 = v9;
  return HasTransform.scale.modify;
}

void HasTransform.scale.modify(__n128 **a1)
{
  v1 = *a1;
  v2 = (*a1)[4].n128_u64[0];
  HasTransform.transform.setter(**a1, (*a1)[1], (*a1)[2]);

  free(v1);
}

uint64_t HasTransform.setScale(_:relativeTo:)(uint64_t a1, float32x4_t a2)
{
  type metadata accessor for Entity();
  *v4.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix16fromLocalSpaceOf08toParentiJ0So13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v2);
  v8 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v4, a2.f32[0]), 0, v5), 0, v6), 0, v7);
  v9 = vmulq_f32(v4, 0);
  v10.n128_u64[0] = simd_float4x4.scale.getter(v8, vmlaq_f32(vmlaq_f32(vmlaq_lane_f32(v9, v5, *a2.f32, 1), 0, v6), 0, v7), vmlaq_f32(vmlaq_laneq_f32(vmlaq_f32(v9, 0, v5), v6, a2, 2), 0, v7));
  v15 = v10;
  HasTransform.transform.getter();

  return HasTransform.transform.setter(v15, v11, v12);
}

uint64_t HasTransform.position.setter(__n128 a1)
{
  v1.n128_f64[0] = HasTransform.transform.getter();

  return HasTransform.transform.setter(v1, v2, a1);
}

void (*HasTransform.position.modify(void *a1, uint64_t a2, uint64_t a3))(__n128 **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[7] = a3;
  v7[8] = v3;
  v7[6] = a2;
  *&v9 = HasTransform.transform.getter();
  v8[1] = v9;
  v8[2] = v10;
  *v8 = v11;
  return HasTransform.position.modify;
}

void HasTransform.position.modify(__n128 **a1)
{
  v1 = *a1;
  v2 = (*a1)[4].n128_u64[0];
  HasTransform.transform.setter((*a1)[1], (*a1)[2], **a1);

  free(v1);
}

double HasTransform.position(relativeTo:)(uint64_t a1)
{
  type metadata accessor for Entity();
  *v3.i64 = static HasTransform.conversionMatrix<A, B>(from:to:)(v1, a1);

  return simd_float4x4.transform(position:)(0, v3, v4, v5, v6);
}

uint64_t HasTransform.setPosition(_:relativeTo:)(uint64_t a1, float32x4_t a2)
{
  type metadata accessor for Entity();
  *v4.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix16fromLocalSpaceOf08toParentiJ0So13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v2);
  v8.n128_f64[0] = simd_float4x4.transform(position:)(a2, v4, v5, v6, v7);
  v13 = v8;
  v9.n128_f64[0] = HasTransform.transform.getter();

  return HasTransform.transform.setter(v9, v10, v13);
}

uint64_t HasTransform.orientation.setter(__n128 a1)
{
  v1.n128_f64[0] = HasTransform.transform.getter();

  return HasTransform.transform.setter(v1, a1, v2);
}

void (*HasTransform.orientation.modify(void *a1, uint64_t a2, uint64_t a3))(__n128 **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[7] = a3;
  v7[8] = v3;
  v7[6] = a2;
  *&v9 = HasTransform.transform.getter();
  v8[1] = v9;
  v8[2] = v10;
  *v8 = v11;
  return HasTransform.orientation.modify;
}

void HasTransform.orientation.modify(__n128 **a1)
{
  v1 = *a1;
  v2 = (*a1)[4].n128_u64[0];
  HasTransform.transform.setter((*a1)[1], **a1, (*a1)[2]);

  free(v1);
}

__n128 HasTransform.convert(transform:to:)(uint64_t a1, float a2, float32x4_t a3, double a4)
{
  type metadata accessor for Entity();
  static HasTransform.conversionMatrix<A, B>(from:to:)(v4, a1);
  specialized simd_float4x4.init(translation:rotation:scale:)(a4, a3, a2);
  REMakeSRTFromMatrix();
  if (one-time initialization token for identity != -1)
  {
    v10 = result;
    swift_once();
    return v10;
  }

  return result;
}

uint64_t HasTransform.setOrientation(_:relativeTo:)(uint64_t a1, float32x4_t a2)
{
  type metadata accessor for Entity();
  _s10RealityKit12HasTransformPAAE16conversionMatrix16fromLocalSpaceOf08toParentiJ0So13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v2);
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  specialized simd_float4x4.init(translation:rotation:scale:)(0.0, a2, 1.0);
  REMakeSRTFromMatrix();
  v9 = v4;
  v5.n128_f64[0] = HasTransform.transform.getter();

  return HasTransform.transform.setter(v5, v9, v6);
}

uint64_t HasTransform.convert(normal:from:)(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(__n128, __n128, __n128, __n128, __n128))
{
  type metadata accessor for Entity();
  v7.n128_f64[0] = static HasTransform.conversionMatrix<A, B>(from:to:)(a1, v5);

  return a5(a2, v7, v8, v9, v10);
}

double HasTransform.convert(direction:from:)(uint64_t a1, float32x4_t a2)
{
  type metadata accessor for Entity();
  *v4.i64 = static HasTransform.conversionMatrix<A, B>(from:to:)(a1, v2);
  *&result = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, a2.f32[0]), v5, *a2.f32, 1), v6, a2, 2).u64[0];
  return result;
}

double HasTransform.convert(direction:to:)(uint64_t a1, float32x4_t a2)
{
  type metadata accessor for Entity();
  *v4.i64 = static HasTransform.conversionMatrix<A, B>(from:to:)(v2, a1);
  *&result = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, a2.f32[0]), v5, *a2.f32, 1), v6, a2, 2).u64[0];
  return result;
}

uint64_t HasTransform.convert(position:to:)(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(__n128, __n128, __n128, __n128, __n128))
{
  type metadata accessor for Entity();
  v7.n128_f64[0] = static HasTransform.conversionMatrix<A, B>(from:to:)(v5, a1);

  return a5(a2, v7, v8, v9, v10);
}

BOOL HasTransform.isMinusZForward.getter()
{
  v1 = *(v0 + 16);
  REMeshComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    return 0;
  }

  REAmbientLightComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    return 1;
  }

  REAREnvironmentProbeComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    return 1;
  }

  RECustomMatrixCameraComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    return 1;
  }

  REDirectionalLightComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    return 1;
  }

  REImageBasedLightComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    return 1;
  }

  RELightComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    return 1;
  }

  REListenerComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    return 1;
  }

  REOrthographicCameraComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    return 1;
  }

  REPerspectiveCameraComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    return 1;
  }

  REPointLightComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    return 1;
  }

  RERectAreaLightComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    return 1;
  }

  REShadowMapComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    return 1;
  }

  RESpotLightComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    return 1;
  }

  REAudioPlayerComponentGetComponentType();
  return REEntityGetComponentByClass() != 0;
}

uint64_t HasTransform.look(at:from:upVector:relativeTo:forward:)(uint64_t a1, char *a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v7 = *a2;
  v8.n128_f64[0] = HasTransform.transform.getter();
  v46 = v8;
  type metadata accessor for Entity();
  *v9.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix16fromLocalSpaceOf08toParentiJ0So13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v5);
  v51 = v9;
  v53 = v10;
  v56 = v11;
  v47 = v12;
  *v13.i64 = simd_float4x4.transform(position:)(a3, v9, v10, v11, v12);
  v49 = v13;
  *v14.i64 = simd_float4x4.transform(position:)(a4, v51, v53, v56, v47);
  v15 = v14;
  v16 = vsubq_f32(v49, v14);
  v17 = vmulq_f32(v16, v16);
  v18 = v17.f32[2] + vaddv_f32(*v17.f32);
  if (v18 >= 1.0e-10)
  {
    v22 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v51, a5.f32[0]), v53, *a5.f32, 1), v56, a5, 2);
    v23 = v18;
    v24 = vrsqrte_f32(LODWORD(v18));
    v25 = vmul_f32(v24, vrsqrts_f32(LODWORD(v23), vmul_f32(v24, v24)));
    v26 = vmulq_n_f32(v16, vmul_f32(v25, vrsqrts_f32(LODWORD(v23), vmul_f32(v25, v25))).f32[0]);
    if ((v7 & 1) == 0)
    {
      *v26.f32 = vsub_f32(0, *v26.f32);
      v26.f32[2] = 0.0 - v26.f32[2];
      v26.i32[3] = 0;
    }

    v27 = vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL);
    v28 = vmlaq_f32(vmulq_f32(v27, vnegq_f32(v22)), v26, vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL));
    v29 = vmulq_f32(v28, v28);
    if ((v29.f32[1] + (v29.f32[2] + v29.f32[0])) < 1.0e-10)
    {
      v54 = v26;
      v52 = v27;
      HasTransform.transform.getter();
      v31 = v30;
      v32 = vmulq_f32(v30, xmmword_1C1899C90);
      v33 = vnegq_f32(v32);
      v34 = vtrn2q_s32(v32, vtrn1q_s32(v32, v33));
      v35 = vrev64q_s32(v32);
      v35.i32[0] = v33.i32[1];
      v35.i32[3] = v33.i32[2];
      v36 = vmlaq_f32(vmlaq_f32(vextq_s8(v32, v33, 8uLL), 0, vextq_s8(v34, v34, 8uLL)), 0, v35);
      v37 = vnegq_f32(v36);
      v38 = vtrn2q_s32(v36, vtrn1q_s32(v36, v37));
      v39 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v36, v37, 8uLL), *v31.f32, 1), vextq_s8(v38, v38, 8uLL), v31.f32[0]);
      v40 = vrev64q_s32(v36);
      v40.i32[0] = v37.i32[1];
      v40.i32[3] = v37.i32[2];
      v41 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v36, v31, 3), v40, v31, 2), v39);
      v42 = vmlaq_f32(vmulq_f32(v52, vnegq_f32(v41)), v54, vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL));
      v43 = vmulq_f32(v42, v42);
      if ((v43.f32[1] + (v43.f32[2] + v43.f32[0])) < 1.0e-10)
      {
        HasTransform.isMinusZForward.getter();
      }
    }

    REMakeSRTFromMatrix();
    if (one-time initialization token for identity != -1)
    {
      v55 = v21;
      v58 = v20;
      swift_once();
      v21 = v55;
      v20 = v58;
    }

    v19 = v46;
  }

  else
  {
    v57 = v15;
    v19.n128_f64[0] = HasTransform.transform.getter();
    v21 = v57;
  }

  return HasTransform.transform.setter(v19, v20, v21);
}

uint64_t HasTransform.move(to:relativeTo:)(uint64_t a1, float a2, float32x4_t a3, double a4)
{
  specialized simd_float4x4.init(translation:rotation:scale:)(a4, a3, a2);

  return HasTransform.move(to:relativeTo:)(a1);
}

uint64_t HasTransform.move(to:relativeTo:)(uint64_t a1)
{
  type metadata accessor for Entity();
  _s10RealityKit12HasTransformPAAE16conversionMatrix16fromLocalSpaceOf08toParentiJ0So13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v1);
  REMakeSRTFromMatrix();
  if (one-time initialization token for identity != -1)
  {
    v9 = v3;
    v7 = v5;
    v8 = v4;
    swift_once();
    v5 = v7;
    v4 = v8;
    v3 = v9;
  }

  return HasTransform.transform.setter(v3, v4, v5);
}

uint64_t HasTransform.move(to:relativeTo:duration:timingFunction:)(uint64_t a1, uint64_t a2, float a3, float32x4_t a4, double a5)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 20);
  *v10.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(a5, a4, a3);
  v15[0] = v6;
  v15[1] = v7;
  v16 = v8;
  v17 = v9;
  return HasTransform.move(to:relativeTo:duration:timingFunction:)(a1, v15, v10, v11, v12, v13);
}

uint64_t HasTransform.move(to:relativeTo:duration:timingFunction:)(uint64_t a1, uint64_t *a2, float32x4_t a3, int32x4_t a4, int8x16_t a5, double a6)
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 4);
  v11 = *(a2 + 20);
  *v12.i8 = simd_float4x4.scale.getter(a3, a4, a5);
  v33 = v12;
  v37 = 0u;
  REDecomposeMatrix();
  v15 = 0u;
  if (one-time initialization token for identity != -1)
  {
    swift_once();
    v15 = 0u;
  }

  v13.f32[0] = fabsf(*v33.i32);
  v14.i64[0] = 0x3400000034000000;
  v16 = vdupq_lane_s32(*&vcgtq_f32(v14, v13), 0);
  v17 = v33;
  v17.i32[0] = 872415232;
  v18 = vbslq_s8(v16, v17, v33);
  v17.f32[0] = fabsf(*&v18.i32[1]);
  v19 = vdupq_lane_s32(*&vcgtq_f32(v14, v17), 0);
  v20 = v18;
  v20.i32[1] = 872415232;
  v21 = vbslq_s8(v19, v20, v18);
  v19.f32[0] = fabsf(*&v21.i32[2]);
  v22 = v21;
  v22.i32[2] = 872415232;
  specialized simd_float4x4.init(translation:rotation:scale:)(a6, v15, *vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v14, v19), 0), v22, v21).i32);
  type metadata accessor for Entity();
  _s10RealityKit12HasTransformPAAE16conversionMatrix16fromLocalSpaceOf08toParentiJ0So13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v6);
  REMakeSRTFromMatrix();
  v34 = v24;
  v36 = v23;
  v32 = v25;
  v26 = *(v6 + 16);
  RETransformComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RETransformComponentGetLocalUnanimatedSRT();
  *&v37 = v8;
  *(&v37 + 1) = v9;
  v38 = v10;
  v39 = v11;
  result = HasTransform.animateTransform(from:to:duration:timingFunction:)(&v37, v27, v28, v29, v36, v34, v32);
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HasTransform.animateTransform(from:to:duration:timingFunction:)(uint64_t a1, float a2, float32x4_t a3, double a4, __n128 a5, __n128 a6, __n128 a7)
{
  v8 = v7;
  v38 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 20);
  if ((*(*v7 + 120))())
  {

    HasTransform.transform.getter();
    HasTransform.transform.setter(a5, a6, a7);
    v13 = v7[2];
    String.utf8CString.getter();
    REBindPointCreateReferenceForEntityAnimatedValuesSRT();

    REBindPointSetOverrideEnabled();
    REBindPointSetSRT();
    *v39.columns[0].i64 = specialized simd_float4x4.init(translation:rotation:scale:)(a7.n128_f64[0], a6, a5.n128_f32[0]);
    __invert_f4(v39);
    specialized simd_float4x4.init(translation:rotation:scale:)(a4, a3, a2);
    REMakeSRTFromMatrix();
    RESRTIdentity();
    RETimelineDefinitionCreateFromToBySRTAnimation();
    RETimelineDefinitionSetSRTFromValue();
    RETimelineDefinitionSetSRTToValue();
    RETimelineDefinitionSetDuration();
    String.utf8CString.getter();
    RETimelineDefinitionSetTargetPath();

    RETimelineDefinitionSetFillMode();
    RETimelineDefinitionSetAdditive();
    v33 = v9;
    v34 = v10;
    LODWORD(v35) = v11;
    BYTE4(v35) = v12;
    AnimationTimingFunction.coreEasingFunction.getter();
    if (*(v14 + 16))
    {
      RETimelineDefinitionSetEasingFunctionEx();
    }

    v15 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v15 + 120, &v33);
    v16 = v36;
    v17 = v37;
    __swift_project_boxed_opaque_existential_1(&v33, v36);
    (*(v17 + 32))(v16, v17);
    TimelineAsset = RETimelineDefinitionCreateTimelineAsset();
    __swift_destroy_boxed_opaque_existential_1(&v33);
    v19 = v8[2];
    REAnimationComponentGetComponentType();
    result = REEntityGetOrAddComponentByClass();
    if (TimelineAsset)
    {
      v33 = 2;
      LODWORD(v34) = 4352;
      v35 = "SRTFROMTO";
      LOBYTE(v36) = 0;
      v21 = REAnimationComponentPlay();
      type metadata accessor for AnimationPlaybackController();
      swift_allocObject();

      v23 = AnimationPlaybackController.init(entity:identifier:withObservation:)(v22, v21, 1);
      RERelease();

      RERelease();
      REBindPointDestroy();
      v24 = *MEMORY[0x1E69E9840];
      return v23;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    type metadata accessor for AnimationPlaybackController();
    swift_allocObject();

    result = AnimationPlaybackController.init(entity:identifier:withObservation:)(v25, 0, 1);
    v26 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t HasTransform.visualBounds(recursive:relativeTo:excludeInactive:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Entity();
  static HasTransform.conversionMatrix<A, B>(from:to:)(v2, a2);
  v4 = *(v2 + 16);
  return REEntityComputeMeshBounds();
}

RealityFoundation::ReferenceObjectAR_optional __swiftcall __RealityFileARReferenceProvidingPlugin.fetchReferenceObject(group:name:)(Swift::String group, Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v5 = group._object;
  v6 = group._countAndFlagsBits;
  v7 = v2;
  v8 = __RealityFileARReferenceProvidingPlugin.arReferenceRawData(group:name:)(group._countAndFlagsBits, group._object, name._countAndFlagsBits, name._object);
  if (v9 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v11 = v8;
    v12 = v9;
    v21 = v7;
    v13 = objc_allocWithZone(MEMORY[0x1E69864C8]);
    outlined copy of Data._Representation(v11, v12);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v15 = MEMORY[0x1C68F3280](countAndFlagsBits, object);
    v10 = [v13 initWithArchiveData:isa name:v15 error:0];

    outlined consume of Data?(v11, v12);
    v16._countAndFlagsBits = 47;
    v16._object = 0xE100000000000000;
    if (String.hasSuffix(_:)(v16) || (v17 = 47, v18 = 0xE100000000000000, v19._countAndFlagsBits = 47, v19._object = 0xE100000000000000, String.hasPrefix(_:)(v19)))
    {
      v17 = 0;
      v18 = 0xE000000000000000;
    }

    MEMORY[0x1C68F3410](v17, v18);

    MEMORY[0x1C68F3410](countAndFlagsBits, object);

    v20 = MEMORY[0x1C68F3280](v6, v5);

    [v10 setName_];
    outlined consume of Data?(v11, v12);

    v7 = v21;
  }

  *v7 = v10;
  result.is_nil = v9;
  result.value.object.super.isa = v8;
  return result;
}

void __RealityFileARReferenceProvidingPlugin.fetchReferenceImage(group:name:physicalWidth:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>, double a6@<D0>)
{
  if (a6 <= 0.0)
  {
    goto LABEL_9;
  }

  v12 = __RealityFileARReferenceProvidingPlugin.arReferenceRawData(group:name:)(a1, a2, a3, a4);
  if (v13 >> 60 == 15)
  {
    goto LABEL_9;
  }

  v22 = v12;
  v23 = v13;
  v14 = specialized static CGImageRef.image(with:)(v12, v13);
  if (!v14)
  {
    outlined consume of Data?(v22, v23);
LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

  v15 = v14;
  v16 = [objc_allocWithZone(MEMORY[0x1E69864C0]) initWithCGImage:v14 orientation:1 physicalWidth:a6];
  v17._countAndFlagsBits = 47;
  v17._object = 0xE100000000000000;
  if (String.hasSuffix(_:)(v17) || (v18 = 47, v19 = 0xE100000000000000, v20._countAndFlagsBits = 47, v20._object = 0xE100000000000000, String.hasPrefix(_:)(v20)))
  {
    v18 = 0;
    v19 = 0xE000000000000000;
  }

  MEMORY[0x1C68F3410](v18, v19);

  MEMORY[0x1C68F3410](a3, a4);

  v21 = MEMORY[0x1C68F3280](a1, a2);

  [v16 setName_];
  outlined consume of Data?(v22, v23);

LABEL_10:
  *a5 = v16;
}

uint64_t __RealityFileARReferenceProvidingPlugin.arReferenceRawData(group:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10._countAndFlagsBits = 47;
  v10._object = 0xE100000000000000;
  if (String.hasSuffix(_:)(v10) || (v11 = 47, v12 = 0xE100000000000000, v13._countAndFlagsBits = 47, v13._object = 0xE100000000000000, String.hasPrefix(_:)(v13)))
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  MEMORY[0x1C68F3410](v11, v12);

  MEMORY[0x1C68F3410](a3, a4);

  v14 = a2;
  swift_beginAccess();
  v15 = *(v5 + 72);
  if (*(v15 + 16) && (v16 = *(v5 + 72), , v17 = specialized __RawDictionaryStorage.find<A>(_:)(a1, v14), v19 = v18, , (v19 & 1) != 0))
  {
    v20 = *(v15 + 56) + 16 * v17;
    v21 = *v20;
    outlined copy of Data._Representation(*v20, *(v20 + 8));

    return v21;
  }

  else
  {

    return 0;
  }
}

uint64_t __RealityFileARReferenceProvidingPlugin.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[8];

  v2 = v0[9];

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ARReferenceProvidingPlugin.schemePrefix.getter in conformance __RealityFileARReferenceProvidingPlugin()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 64);

  return v1;
}

uint64_t ActionEvent.animationState.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(result + 76);
  v5 = v2 + *(result + 72);
  if (*(v5 + 8))
  {
    v6 = -1.0;
  }

  else
  {
    v6 = *v5;
  }

  if (*(v2 + v4 + 8))
  {
    v7 = -1.0;
  }

  else
  {
    v7 = *(v2 + v4);
  }

  v8 = v2 + *(result + 68);
  if (*(v8 + 8))
  {
    v9 = -1.0;
  }

  else
  {
    v9 = *v8;
  }

  v10 = *(v2 + *(result + 64));
  if (!v10)
  {
    goto LABEL_25;
  }

  result = RETimelineEventGetAnimatedType();
  if (result <= 3u)
  {
    if (result <= 1u)
    {
      if (result)
      {
        v11 = &_s17RealityFoundation14AnimationStateVySdGMd;
        v12 = &_s17RealityFoundation14AnimationStateVySdGMR;
        *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySdGMd, &_s17RealityFoundation14AnimationStateVySdGMR);
        v13 = &lazy protocol witness table cache variable for type AnimationState<Double> and conformance AnimationState<A>;
      }

      else
      {
        v11 = &_s17RealityFoundation14AnimationStateVySfGMd;
        v12 = &_s17RealityFoundation14AnimationStateVySfGMR;
        *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySfGMd, &_s17RealityFoundation14AnimationStateVySfGMR);
        v13 = &lazy protocol witness table cache variable for type AnimationState<Float> and conformance AnimationState<A>;
      }

      goto LABEL_30;
    }

    if (result == 2)
    {
      v11 = &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd;
      v12 = &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR;
      *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR);
      v13 = &lazy protocol witness table cache variable for type AnimationState<SIMD2<Float>> and conformance AnimationState<A>;
      goto LABEL_30;
    }

    if (result == 3)
    {
      v11 = &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd;
      v12 = &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR;
      *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR);
      v13 = &lazy protocol witness table cache variable for type AnimationState<SIMD3<Float>> and conformance AnimationState<A>;
      goto LABEL_30;
    }

LABEL_25:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  if (result > 5u)
  {
    if (result == 6)
    {
      v11 = &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd;
      v12 = &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR;
      *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd, &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR);
      v13 = &lazy protocol witness table cache variable for type AnimationState<Transform> and conformance AnimationState<A>;
      goto LABEL_30;
    }

    if (result == 7)
    {
      v11 = &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd;
      v12 = &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR;
      *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd, &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR);
      v13 = &lazy protocol witness table cache variable for type AnimationState<JointTransforms> and conformance AnimationState<A>;
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  if (result == 4)
  {
    v11 = &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd;
    v12 = &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR;
    *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR);
    v13 = &lazy protocol witness table cache variable for type AnimationState<SIMD4<Float>> and conformance AnimationState<A>;
    goto LABEL_30;
  }

  if (result != 5)
  {
    goto LABEL_25;
  }

  v11 = &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd;
  v12 = &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR;
  *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd, &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR);
  v13 = &lazy protocol witness table cache variable for type AnimationState<simd_quatf> and conformance AnimationState<A>;
LABEL_30:
  *(a2 + 32) = lazy protocol witness table accessor for type AnimationState<JointTransforms> and conformance AnimationState<A>(v13, v11, v12);
  result = swift_allocObject();
  *a2 = result;
  *(result + 16) = v9;
  *(result + 24) = v6;
  *(result + 32) = v7;
  *(result + 40) = v10;
  return result;
}

uint64_t ActionHandlerProtocol.actionUpdated(event:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return ActionHandlerProtocol.actionEnded(event:)(a1, a2, a3, 2);
}

{
  return ActionHandlerProtocol.actionUpdated(event:)(a1, a2, a3);
}

uint64_t static ActionHandlerProtocol<>.__register(engine:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static EntityAction.__register()(AssociatedTypeWitness, AssociatedConformanceWitness);
  static EntityAction<>.__registerCodable()(AssociatedTypeWitness, AssociatedConformanceWitness, a6, a7, a8, a9);
  return static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5);
}

uint64_t ActionHandlerProtocol.actionEnded(event:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  v8 = a4;
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for ActionEvent();
  return static EntityAction.__unsubscribe(from:_:)(&v8, *(a1 + *(v6 + 60)));
}

uint64_t ActionEventData.parameter<A>(type:)@<X0>(uint64_t a1@<X8>)
{
  if (v1[1])
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v4 = *(*(AssociatedTypeWitness - 8) + 56);

    return v4(a1, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v6 = *v1;
    if (v1[3])
    {
      v8 = v1[7];
      v7 = v1[8];
      v9 = v1[4];
      v23 = v1[2];
      v24 = v7;
      v10 = swift_getAssociatedTypeWitness();
      v25 = &v22;
      v22 = type metadata accessor for Optional();
      v11 = *(v22 - 8);
      v12 = *(v11 + 64);
      MEMORY[0x1EEE9AC00](v22);
      v14 = &v22 - v13;
      static EntityAction<>.loadParameter<A>(_:parameterType:eventID:)(v23, v8, 0, v8, &v22 - v13, v21, v24);
      v15 = *(v10 - 8);
      if ((*(v15 + 48))(v14, 1, v10) == 1)
      {
        (*(v11 + 8))(v14, v22);
        v26 = 0u;
        v27 = 0u;
      }

      else
      {
        *(&v27 + 1) = v10;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v26);
        (*(v15 + 32))(boxed_opaque_existential_1, v14, v10);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
      v19 = swift_getAssociatedTypeWitness();
      v20 = swift_dynamicCast();
      return (*(*(v19 - 8) + 56))(a1, v20 ^ 1u, 1, v19);
    }

    else
    {
      v16 = v1[2];
      v17 = *v1;
      return static EntityAction.loadParameter(_:eventID:)(0, a1);
    }
  }
}

uint64_t static EntityAction<>.loadParameter<A>(_:parameterType:eventID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W3>, uint64_t a4@<X5>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7)
{
  v41 = a1;
  v42 = a7;
  v11 = type metadata accessor for Data.Deallocator();
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a4;
  v16 = *(*(a4 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v17);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = AssociatedTypeWitness;
  if (a3)
  {
    v20 = *(*(AssociatedTypeWitness - 8) + 56);
    v21 = a5;
LABEL_5:

    return v20(v21, 1, 1, v19);
  }

  if (AssociatedTypeWitness != a2)
  {
    v20 = *(*(AssociatedTypeWitness - 8) + 56);
    v21 = a5;
    goto LABEL_5;
  }

  v23 = AssociatedTypeWitness;
  ParameterDataSize = RETimelineEventGetParameterDataSize();
  if (ParameterDataSize >= 1 && (v25 = ParameterDataSize, (ParameterData = RETimelineEventGetParameterData()) != 0))
  {
    v27 = ParameterData;
    v28 = type metadata accessor for JSONDecoder();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    (*(v40 + 104))(v15, *MEMORY[0x1E6969010], v11);
    v31 = specialized Data.init(bytesNoCopy:count:deallocator:)(v27, v25, v15);
    v33 = v32;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data._Representation(v31, v33);
  }

  else
  {
    v34 = type metadata accessor for JSONDecoder();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  }

  if (swift_dynamicCast())
  {
    v37 = a5;
    v38 = 0;
  }

  else
  {
    v37 = a5;
    v38 = 1;
  }

  return (*(*(v23 - 8) + 56))(v37, v38, 1, v23);
}

uint64_t static EntityAction.loadParameter(_:eventID:)@<X0>(char a1@<W2>, uint64_t a2@<X8>)
{
  if ((a1 & 1) == 0 && RETimelineEventGetSwiftParameter())
  {
    type metadata accessor for EntityActionParameterWrapper();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(*v3 + 96);
      v5 = v3;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v13 = *(AssociatedTypeWitness - 8);
      (*(v13 + 16))(a2, v5 + v4, AssociatedTypeWitness);
      swift_unknownObjectRelease();
      v7 = *(v13 + 56);
      v8 = a2;
      v9 = 0;
      v10 = AssociatedTypeWitness;
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v11 = swift_getAssociatedTypeWitness();
  v7 = *(*(v11 - 8) + 56);
  v10 = v11;
  v8 = a2;
  v9 = 1;
LABEL_6:

  return v7(v8, v9, 1, v10);
}

uint64_t ActionEventData.action<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    v6 = *(v2 + 32);
    v18 = *(v2 + 40);
    v7 = *(v2 + 16);
    v8 = type metadata accessor for Optional();
    v9 = *(v8 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x1EEE9AC00](v8);
    v12 = &v18 - v11;
    static EntityAction<>.load(_:)(v7, v5, MEMORY[0x1E6998DB0], MEMORY[0x1E6998DA8], &v18 - v11);
    v13 = *(v5 - 8);
    if ((*(v13 + 48))(v12, 1, v5) == 1)
    {
      (*(v9 + 8))(v12, v8);
      v20 = 0u;
      memset(v21, 0, 24);
      v19 = 0u;
    }

    else
    {
      *(&v20 + 1) = v5;
      *&v21[0] = v6;
      *(v21 + 8) = v18;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
      (*(v13 + 32))(boxed_opaque_existential_1, v12, v5);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpSgMd, &_s17RealityFoundation12EntityAction_SeSEpSgMR);
    v17 = swift_dynamicCast();
    return (*(*(a1 - 8) + 56))(a2, v17 ^ 1u, 1, a1);
  }

  else
  {
    v14 = *(v2 + 16);
    return static EntityAction.load(_:)(a1, MEMORY[0x1E6998DD8], a2);
  }
}

uint64_t EntityActionWrapper.__allocating_init(action:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 80) - 8) + 32))(v5 + *(*v5 + 96), a1);
  return v5;
}

uint64_t EntityActionWrapper.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t EntityActionParameterWrapper.__allocating_init(parameter:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  EntityActionParameterWrapper.init(parameter:)(a1);
  return v5;
}

uint64_t EntityActionParameterWrapper.init(parameter:)(uint64_t a1)
{
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v1 + v3, a1, AssociatedTypeWitness);
  return v1;
}

uint64_t EntityActionParameterWrapper.deinit()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  return v0;
}

uint64_t EntityActionParameterWrapper.__deallocating_deinit()
{
  EntityActionParameterWrapper.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

__n128 ActionEvent.init(playbackController:action:parameter:targetEntity:reversed:startTime:duration:engine:coreAnimationState:deltaTime:evaluationTime:normalizedTime:eventData:instanceID:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, double a10@<D0>, double a11@<D1>, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *a9 = a1;
  v26 = type metadata accessor for ActionEvent();
  (*(*(a19 - 8) + 32))(&a9[v26[9]], a2, a19);
  v27 = v26[10];
  swift_getAssociatedTypeWitness();
  v28 = type metadata accessor for Optional();
  (*(*(v28 - 8) + 32))(&a9[v27], a3, v28);
  *&a9[v26[11]] = a4;
  a9[v26[12]] = a5;
  *&a9[v26[13]] = a10;
  *&a9[v26[14]] = a11;
  *&a9[v26[15]] = a6;
  *&a9[v26[16]] = a7;
  v29 = &a9[v26[17]];
  *v29 = a8;
  v29[8] = a12 & 1;
  v30 = &a9[v26[18]];
  *v30 = a13;
  v30[8] = a14 & 1;
  v31 = &a9[v26[19]];
  *v31 = a15;
  v31[8] = a16 & 1;
  v32 = &a9[v26[20]];
  v33 = *(a17 + 48);
  *(v32 + 2) = *(a17 + 32);
  *(v32 + 3) = v33;
  *(v32 + 4) = *(a17 + 64);
  result = *(a17 + 16);
  *v32 = *a17;
  *(v32 + 1) = result;
  *&a9[v26[21]] = a18;
  return result;
}

uint64_t static EntityAction.__unsubscribe(from:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static AnimationResource.actionSubscriptions;
  if (!*(static AnimationResource.actionSubscriptions + 16))
  {
    return swift_endAccess();
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
  if ((v8 & 1) == 0)
  {
    return swift_endAccess();
  }

  v9 = *(*(v6 + 56) + 8 * v7);
  swift_endAccess();
  if (!*(v9 + 16) || (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v11 & 1) == 0))
  {

    if (!*(v9 + 16))
    {
      goto LABEL_8;
    }

LABEL_11:
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, v3, isUniquelyReferenced_nonNull_native);
    static AnimationResource.actionSubscriptions = v18;
    swift_endAccess();
  }

  v12 = (*(v9 + 56) + 16 * v10);
  v13 = *v12;
  v14 = v12[1];

  v15 = static EntityAction.eventBus(_:)(a2);
  MEMORY[0x1C68F9800](v15, v13, v14);
  specialized Dictionary._Variant.removeValue(forKey:)(v5);
  if (*(v9 + 16))
  {
    goto LABEL_11;
  }

LABEL_8:
  swift_beginAccess();
  specialized Dictionary._Variant.removeValue(forKey:)(v3);
  swift_endAccess();
}

uint64_t static ActionHandlerProtocol.__register(engine:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static EntityAction.__register()(AssociatedTypeWitness, AssociatedConformanceWitness);
  return static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5);
}

uint64_t static ActionHandlerProtocol.__registerCommon(engine:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  static ActionHandlerProtocol.subscribe(_:)(a1, a4, a5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static AnimationResource.actionHandlerCreators + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(AssociatedTypeWitness), (v10 & 1) != 0))
  {
    swift_endAccess();
    _StringGuts.grow(_:)(34);

    strcpy(v26, "Handler for ");
    BYTE5(v26[1]) = 0;
    HIWORD(v26[1]) = -5120;
    swift_getMetatypeMetadata();
    v11 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v11);

    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E4510);
    v12 = v26[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static AnimationLogger.logger);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v23 = v26[0];
      v16 = swift_slowAlloc();
      v24 = a2;
      v17 = swift_slowAlloc();
      v26[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v12, v26);
      _os_log_impl(&dword_1C1358000, v14, v15, "%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v18 = v17;
      a2 = v24;
      MEMORY[0x1C6902A30](v18, -1, -1);
      MEMORY[0x1C6902A30](v16, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a2;
  v19[5] = a3;
  v20 = swift_allocObject();
  *(v20 + 16) = partial apply for creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:);
  *(v20 + 24) = v19;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = static AnimationResource.actionHandlerCreators;
  static AnimationResource.actionHandlerCreators = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_s10RealityKit27AnimationPlaybackControllerC0A10Foundation15ActionEventDataVSbS2dAA8__EngineCSVAA6EntityCSgAD0G15HandlerProtocol_pSgIeggyyyygygr_AcFSbS2dAHSVAkMIegnnnnnnnnr_TRTA_0, v20, AssociatedTypeWitness, isUniquelyReferenced_nonNull_native);
  static AnimationResource.actionHandlerCreators = v25;
  return swift_endAccess();
}

uint64_t static ActionHandlerProtocol.subscribe(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = 1;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static EntityAction.__subscribe(to:_:_:)(&v19, a1, partial apply for closure #1 in static ActionHandlerProtocol.subscribe(_:), v9, AssociatedTypeWitness, AssociatedConformanceWitness);

  v19 = 2;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = v4;
  static EntityAction.__subscribe(to:_:_:)(&v19, a1, partial apply for closure #2 in static ActionHandlerProtocol.subscribe(_:), v11, AssociatedTypeWitness, AssociatedConformanceWitness);

  v19 = 4;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v4;
  static EntityAction.__subscribe(to:_:_:)(&v19, a1, partial apply for closure #3 in static ActionHandlerProtocol.subscribe(_:), v12, AssociatedTypeWitness, AssociatedConformanceWitness);

  v19 = 8;
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = v4;
  static EntityAction.__subscribe(to:_:_:)(&v19, a1, partial apply for closure #4 in static ActionHandlerProtocol.subscribe(_:), v13, AssociatedTypeWitness, AssociatedConformanceWitness);

  v19 = 16;
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v4;
  static EntityAction.__subscribe(to:_:_:)(&v19, a1, partial apply for closure #5 in static ActionHandlerProtocol.subscribe(_:), v14, AssociatedTypeWitness, AssociatedConformanceWitness);

  v19 = 32;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v4;
  static EntityAction.__subscribe(to:_:_:)(&v19, a1, partial apply for closure #6 in static ActionHandlerProtocol.subscribe(_:), v15, AssociatedTypeWitness, AssociatedConformanceWitness);

  v19 = 64;
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = v4;
  static EntityAction.__subscribe(to:_:_:)(&v19, a1, partial apply for closure #7 in static ActionHandlerProtocol.subscribe(_:), v16, AssociatedTypeWitness, AssociatedConformanceWitness);

  v19 = 128;
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = v4;
  static EntityAction.__subscribe(to:_:_:)(&v19, a1, partial apply for closure #8 in static ActionHandlerProtocol.subscribe(_:), v17, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(char *)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>)
{
  v48 = a8;
  v49 = a7;
  v46 = a6;
  v47 = a4;
  v44 = a5;
  v45 = a1;
  v43 = a3;
  v50 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for Optional();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v40 = &v39 - v17;
  v18 = type metadata accessor for ActionEvent();
  v41 = *(v18 - 8);
  v42 = v18;
  v19 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v39 - v20;
  v22 = type metadata accessor for Optional();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v39 - v25;
  v27 = *(AssociatedTypeWitness - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v39 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v39 - v33;
  ActionEventData.action<A>()(AssociatedTypeWitness, v26);
  if ((*(v27 + 48))(v26, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v23 + 8))(v26, v22);
    v36 = v50;
    *(v50 + 32) = 0;
    *v36 = 0u;
    v36[1] = 0u;
  }

  else
  {
    (*(v27 + 32))(v34, v26, AssociatedTypeWitness);
    (*(v27 + 16))(v31, v34, AssociatedTypeWitness);
    v37 = v45;

    v38 = v40;
    ActionEventData.parameter<A>(type:)(v40);
    ActionEvent.init(playbackController:action:parameter:targetEntity:reversed:startTime:duration:engine:coreAnimationState:deltaTime:evaluationTime:normalizedTime:eventData:instanceID:)(v37, v31, v38, v46, v43 & 1, v47, 0, 0, v21, a10, a11, 1, 0, 1, 0, 1, a2, v44, AssociatedTypeWitness);

    v49(v21);
    (*(v41 + 8))(v21, v42);
    return (*(v27 + 8))(v34, AssociatedTypeWitness);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed AnimationPlaybackController, @unowned ActionEventData, @unowned Bool, @unowned Double, @unowned Double, @guaranteed __Engine, @unowned UnsafeRawPointer, @guaranteed Entity?) -> (@out ActionHandlerProtocol?)(uint64_t *a1, _OWORD *a2, unsigned __int8 *a3, double *a4, double *a5, void *a6, void *a7, void *a8, uint64_t (*a9)(uint64_t, _OWORD *, void, void, void, void, double, double))
{
  v9 = *a1;
  v10 = a2[3];
  v13[2] = a2[2];
  v13[3] = v10;
  v13[4] = a2[4];
  v11 = a2[1];
  v13[0] = *a2;
  v13[1] = v11;
  return a9(v9, v13, *a3, *a6, *a7, *a8, *a4, *a5);
}

uint64_t static ActionHandlerProtocol.actionHandler(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for ActionEvent();
  v8 = *(a1 + v7[21]);
  swift_beginAccess();
  v9 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8), (v11 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v9 + 56) + 40 * v10, &v43);
  }

  else
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
  }

  swift_endAccess();
  outlined init with copy of ActionHandlerProtocol?(&v43, &v35);
  v12 = *(&v36 + 1);
  outlined destroy of ActionHandlerProtocol?(&v35);
  if (v12)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = static AnimationResource.actionHandlerCreators;
  if (*(static AnimationResource.actionHandlerCreators + 16))
  {
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(AssociatedTypeWitness);
    if (v17)
    {
      v18 = *(v15 + 56) + 16 * v16;
      v20 = *v18;
      v19 = *(v18 + 8);
      swift_endAccess();
      v21 = *(a1 + v7[13]);
      v22 = *(a1 + v7[12]);
      v23 = *(a1 + v7[14]);
      v24 = *(a1 + v7[15]);
      v25 = *(a1 + v7[11]);
      v26 = (a1 + v7[20]);
      v40 = *a1;
      v27 = v26[3];
      v37 = v26[2];
      v38 = v27;
      v39 = v26[4];
      v28 = v26[1];
      v35 = *v26;
      v36 = v28;
      v34 = v22;
      v32 = v23;
      v33 = v21;
      v30 = v8;
      v31 = v24;
      v29 = v25;

      v20(v41, &v40, &v35, &v34, &v33, &v32, &v31, &v30, &v29);

      outlined destroy of ActionHandlerProtocol?(&v43);
      v43 = v41[0];
      v44 = v41[1];
      v45 = v42;
LABEL_8:
      v35 = v43;
      v36 = v44;
      *&v37 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      v13 = swift_dynamicCast();
      return (*(*(a2 - 8) + 56))(a3, v13 ^ 1u, 1, a2);
    }
  }

  swift_endAccess();
  outlined destroy of ActionHandlerProtocol?(&v43);
  return (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
}

uint64_t closure #1 in static ActionHandlerProtocol.subscribe(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20[-v10];
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static ActionHandlerProtocol.actionHandler(_:)(a1, a3, v11);
  if ((*(v12 + 48))(v11, 1, a3) == 1)
  {
    return (*(v8 + 8))(v11, v7);
  }

  (*(v12 + 32))(v16, v11, a3);
  (*(a4 + 24))(a1, a3, a4);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v18 = *(a1 + *(type metadata accessor for ActionEvent() + 84));
  v21[3] = a3;
  v21[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(v12 + 16))(boxed_opaque_existential_1, v16, a3);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v21, v18);
  swift_endAccess();
  return (*(v12 + 8))(v16, a3);
}

uint64_t static EntityAction.__subscribe(to:_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = *a1;
  if (!a2)
  {
    v14 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    v15 = *(v14 + 24);
    swift_unownedRetainStrong();
  }

  v16 = swift_allocObject();
  swift_weakInit();

  _typeName(_:qualified:)();
  if (v13 > 15)
  {
    if (v13 > 63)
    {
      if (v13 == 64)
      {
        v37 = a5;
        v38 = a4;
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
        goto LABEL_22;
      }

      if (v13 == 128)
      {
        v37 = a5;
        v38 = a4;
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
        goto LABEL_22;
      }
    }

    else
    {
      if (v13 == 16)
      {
        v37 = a5;
        v38 = a4;
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
        goto LABEL_22;
      }

      if (v13 == 32)
      {
        v37 = a5;
        v38 = a4;
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
        goto LABEL_22;
      }
    }

LABEL_32:
  }

  if (v13 > 3)
  {
    if (v13 == 4)
    {
      v37 = a5;
      v38 = a4;
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
      goto LABEL_22;
    }

    if (v13 == 8)
    {
      v37 = a5;
      v38 = a4;
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
      goto LABEL_22;
    }

    goto LABEL_32;
  }

  if (v13 == 1)
  {
    v37 = a5;
    v38 = a4;
    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
    goto LABEL_22;
  }

  if (v13 != 2)
  {
    goto LABEL_32;
  }

  v37 = a5;
  v38 = a4;
  _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
LABEL_22:
  v17 = a3;
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v20 & 1) != 0))
  {
    v21 = *(*(v18 + 56) + 8 * v19);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v39 = v7;
  if (*(v21 + 16))
  {
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
    if (v23)
    {
      v24 = (*(v21 + 56) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = static EntityAction.eventBus(_:)(a2);
      MEMORY[0x1C68F9800](v27, v25, v26);
    }
  }

  static EntityAction.eventBus(_:)(a2);
  v28 = swift_allocObject();
  v28[2] = v37;
  v28[3] = a6;
  v28[4] = v16;
  v28[5] = v13;
  v28[6] = v17;
  v28[7] = v38;
  aBlock[4] = partial apply for dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
  aBlock[3] = &block_descriptor_18;
  v29 = _Block_copy(aBlock);

  String.utf8CString.getter();

  RETimelineEventFilter();

  v30 = REEventBusSubscribeWithMatch();
  v32 = v31;
  _Block_release(v29);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v21;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, v32, v13, isUniquelyReferenced_nonNull_native);
  v34 = aBlock[0];
  swift_beginAccess();

  v35 = swift_isUniquelyReferenced_nonNull_native();
  v40 = static AnimationResource.actionSubscriptions;
  static AnimationResource.actionSubscriptions = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v39, v35);
  static AnimationResource.actionSubscriptions = v40;
  swift_endAccess();
}

uint64_t closure #2 in static ActionHandlerProtocol.subscribe(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20[-v10];
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static ActionHandlerProtocol.actionHandler(_:)(a1, a3, v11);
  if ((*(v12 + 48))(v11, 1, a3) == 1)
  {
    return (*(v8 + 8))(v11, v7);
  }

  (*(v12 + 32))(v16, v11, a3);
  (*(a4 + 32))(a1, a3, a4);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v18 = *(a1 + *(type metadata accessor for ActionEvent() + 84));
  v21[3] = a3;
  v21[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(v12 + 16))(boxed_opaque_existential_1, v16, a3);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v21, v18);
  swift_endAccess();
  return (*(v12 + 8))(v16, a3);
}

uint64_t closure #3 in static ActionHandlerProtocol.subscribe(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20[-v10];
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static ActionHandlerProtocol.actionHandler(_:)(a1, a3, v11);
  if ((*(v12 + 48))(v11, 1, a3) == 1)
  {
    return (*(v8 + 8))(v11, v7);
  }

  (*(v12 + 32))(v16, v11, a3);
  (*(a4 + 40))(a1, a3, a4);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v18 = *(a1 + *(type metadata accessor for ActionEvent() + 84));
  v21[3] = a3;
  v21[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(v12 + 16))(boxed_opaque_existential_1, v16, a3);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v21, v18);
  swift_endAccess();
  return (*(v12 + 8))(v16, a3);
}

uint64_t closure #4 in static ActionHandlerProtocol.subscribe(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20[-v10];
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static ActionHandlerProtocol.actionHandler(_:)(a1, a3, v11);
  if ((*(v12 + 48))(v11, 1, a3) == 1)
  {
    return (*(v8 + 8))(v11, v7);
  }

  (*(v12 + 32))(v16, v11, a3);
  (*(a4 + 48))(a1, a3, a4);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v18 = *(a1 + *(type metadata accessor for ActionEvent() + 84));
  v21[3] = a3;
  v21[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(v12 + 16))(boxed_opaque_existential_1, v16, a3);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v21, v18);
  swift_endAccess();
  return (*(v12 + 8))(v16, a3);
}

uint64_t closure #5 in static ActionHandlerProtocol.subscribe(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20[-v10];
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static ActionHandlerProtocol.actionHandler(_:)(a1, a3, v11);
  if ((*(v12 + 48))(v11, 1, a3) == 1)
  {
    return (*(v8 + 8))(v11, v7);
  }

  (*(v12 + 32))(v16, v11, a3);
  (*(a4 + 56))(a1, a3, a4);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v18 = *(a1 + *(type metadata accessor for ActionEvent() + 84));
  v21[3] = a3;
  v21[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(v12 + 16))(boxed_opaque_existential_1, v16, a3);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v21, v18);
  swift_endAccess();
  return (*(v12 + 8))(v16, a3);
}

uint64_t closure #6 in static ActionHandlerProtocol.subscribe(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20[-v10];
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static ActionHandlerProtocol.actionHandler(_:)(a1, a3, v11);
  if ((*(v12 + 48))(v11, 1, a3) == 1)
  {
    return (*(v8 + 8))(v11, v7);
  }

  (*(v12 + 32))(v16, v11, a3);
  (*(a4 + 64))(a1, a3, a4);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v18 = *(a1 + *(type metadata accessor for ActionEvent() + 84));
  v21[3] = a3;
  v21[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(v12 + 16))(boxed_opaque_existential_1, v16, a3);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v21, v18);
  swift_endAccess();
  return (*(v12 + 8))(v16, a3);
}

uint64_t closure #7 in static ActionHandlerProtocol.subscribe(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v20 - v10 + 16;
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  static ActionHandlerProtocol.actionHandler(_:)(a1, a3, v11);
  if ((*(v12 + 48))(v11, 1, a3) == 1)
  {
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    (*(v12 + 32))(v16, v11, a3);
    (*(a4 + 72))(a1, a3, a4);
    (*(v12 + 8))(v16, a3);
  }

  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = *(a1 + *(type metadata accessor for ActionEvent() + 84));
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v20, v17);
  return swift_endAccess();
}

uint64_t closure #8 in static ActionHandlerProtocol.subscribe(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = *(a1 + *(type metadata accessor for ActionEvent() + 84));
  static ActionHandlerProtocol.actionHandler(_:)(a1, a3, v11);
  v13 = *(a3 - 8);
  if ((*(v13 + 48))(v11, 1, a3) == 1)
  {
    (*(v8 + 8))(v11, v7);
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
  }

  else
  {
    *(&v18 + 1) = a3;
    v19 = a4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
    (*(v13 + 32))(boxed_opaque_existential_1, v11, a3);
  }

  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v17, v12);
  return swift_endAccess();
}

uint64_t static EntityAction.__register()(uint64_t a1, uint64_t a2)
{
  v4 = _typeName(_:qualified:)();
  v6 = v5;
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v6), (v9 & 1) != 0))
  {
    v13 = *(*(v7 + 56) + 16 * v8);
    swift_endAccess();
    if (v13 == a1)
    {
    }

    else
    {
      _StringGuts.grow(_:)(50);

      MEMORY[0x1C68F3410](v4, v6);
      MEMORY[0x1C68F3410](0xD00000000000001DLL, 0x80000001C18E6740);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v12 = String.init<A>(describing:)();
      MEMORY[0x1C68F3410](v12);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {
    swift_endAccess();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = static AnimationResource.actionTypeMap;
    static AnimationResource.actionTypeMap = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, v4, v6, isUniquelyReferenced_nonNull_native);

    static AnimationResource.actionTypeMap = v14;
    return swift_endAccess();
  }

  return result;
}

uint64_t static EntityAction.subscribe(to:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  static EntityAction.__register()(a4, a5);
  v11 = v9;
  return static EntityAction.__subscribe(to:_:_:)(&v11, 0, a2, a3, a4, a5);
}

uint64_t static EntityAction.unsubscribeAll()()
{
  v1 = v0;
  if (one-time initialization token for actionSubscriptions != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    swift_beginAccess();
    v2 = static AnimationResource.actionSubscriptions;
    if (!*(static AnimationResource.actionSubscriptions + 16))
    {
      return swift_endAccess();
    }

    v3 = specialized __RawDictionaryStorage.find<A>(_:)(v1);
    if ((v4 & 1) == 0)
    {
      return swift_endAccess();
    }

    v5 = *(*(v2 + 56) + 8 * v3);
    swift_endAccess();

    v6 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    result = MEMORY[0x1C68FE250](*(v6 + 16));
    if (!result)
    {
      break;
    }

    v8 = result;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = v9;
LABEL_13:
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v16 = (*(v5 + 56) + ((v14 << 10) | (16 * v15)));
      MEMORY[0x1C68F9800](v8, *v16, v16[1]);
    }

    while (1)
    {
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v14 >= v13)
      {

        swift_beginAccess();
        specialized Dictionary.subscript.setter(0, v1);
        return swift_endAccess();
      }

      v12 = *(v5 + 64 + 8 * v14);
      ++v9;
      if (v12)
      {
        v9 = v14;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_19:
    swift_once();
  }

  __break(1u);
  return result;
}

uint64_t static EntityAction<>.__registerCodable()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = _typeName(_:qualified:)();
  v14 = v13;
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v14), (v17 & 1) != 0))
  {
    v18 = *(v15 + 56) + 56 * v16;
    v25 = *(v18 + 16);
    v26 = *v18;
    v24 = *(v18 + 32);
    v19 = *(v18 + 48);
    swift_endAccess();
    if (v26 == a1)
    {
    }

    else
    {
      _StringGuts.grow(_:)(50);

      MEMORY[0x1C68F3410](v12, v14);
      MEMORY[0x1C68F3410](0xD00000000000001DLL, 0x80000001C18E6740);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v23 = String.init<A>(describing:)();
      MEMORY[0x1C68F3410](v23);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {
    swift_endAccess();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = static AnimationResource.codableActionTypeMap;
    static AnimationResource.codableActionTypeMap = 0x8000000000000000;
    v28[0] = a1;
    v28[1] = a2;
    v28[2] = a3;
    v28[3] = a4;
    v28[4] = AssociatedTypeWitness;
    v28[5] = a5;
    v28[6] = a6;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, v12, v14, isUniquelyReferenced_nonNull_native);

    static AnimationResource.codableActionTypeMap = v27;
    return swift_endAccess();
  }

  return result;
}

uint64_t static EntityAction<>.subscribe(to:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = *a1;
  static EntityAction.__register()(a4, a5);
  static EntityAction<>.__registerCodable()(a4, a5, a6, a7, a8, a9);
  v18 = v16;
  return static EntityAction.__subscribe(to:_:_:)(&v18, 0, a2, a3, a4, a5);
}

uint64_t static EntityAction<>.load(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X5>, uint64_t (*a4)(uint64_t)@<X6>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Data.Deallocator();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a3(a1);
  if (v15 >= 1 && (v16 = v15, (v17 = a4(a1)) != 0))
  {
    v18 = v17;
    v19 = type metadata accessor for JSONDecoder();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    (*(v11 + 104))(v14, *MEMORY[0x1E6969010], v10);
    v22 = specialized Data.init(bytesNoCopy:count:deallocator:)(v18, v16, v14);
    v24 = v23;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data._Representation(v22, v24);

    return (*(*(a2 - 8) + 56))(a5, 0, 1, a2);
  }

  else
  {
    v25 = type metadata accessor for JSONDecoder();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v28 = *(*(a2 - 8) + 56);

    return v28(a5, 0, 1, a2);
  }
}

uint64_t static EntityAction<>.loadParameterFromTimeline<A>(_:parameterType:eventID:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X5>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7)
{
  v41 = a2;
  v42 = a7;
  v11 = type metadata accessor for Data.Deallocator();
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a4;
  v16 = *(*(a4 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v17);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = AssociatedTypeWitness;
  if (a3)
  {
    v20 = *(*(AssociatedTypeWitness - 8) + 56);
    v21 = a5;
LABEL_5:

    return v20(v21, 1, 1, v19);
  }

  if (AssociatedTypeWitness != a1)
  {
    v20 = *(*(AssociatedTypeWitness - 8) + 56);
    v21 = a5;
    goto LABEL_5;
  }

  v23 = AssociatedTypeWitness;
  EventParameterDataSize = RETimelineDefinitionEventTimelineGetEventParameterDataSize();
  if (EventParameterDataSize >= 1 && (v25 = EventParameterDataSize, (EventParameterData = RETimelineDefinitionEventTimelineGetEventParameterData()) != 0))
  {
    v27 = EventParameterData;
    v28 = type metadata accessor for JSONDecoder();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    (*(v40 + 104))(v15, *MEMORY[0x1E6969010], v11);
    v31 = specialized Data.init(bytesNoCopy:count:deallocator:)(v27, v25, v15);
    v33 = v32;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data._Representation(v31, v33);
  }

  else
  {
    v34 = type metadata accessor for JSONDecoder();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  }

  if (swift_dynamicCast())
  {
    v37 = a5;
    v38 = 0;
  }

  else
  {
    v37 = a5;
    v38 = 1;
  }

  return (*(*(v23 - 8) + 56))(v37, v38, 1, v23);
}

uint64_t static EntityAction.makeActionAnimation(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return ActionAnimation.init(_:)(v4, a1, a2);
}

uint64_t ActionAnimation.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ActionDefinition();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v34 - v10;
  v39 = a2;
  v12 = *(type metadata accessor for ActionAnimation() + 40);
  v13 = *(v6 - 8);
  v37 = *(v13 + 56);
  v38 = v12;
  v36 = v13 + 56;
  v37(a3 + v12, 1, 1, v6);
  type metadata accessor for TimelineDefinition();
  v14 = swift_allocObject();
  v15 = *(a1 + 16);
  swift_retain_n();
  v16 = REAssetHandleAssetType();
  if (v16 != 11)
  {
    if (v16 == 5)
    {

      goto LABEL_5;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  RootTimeline = REAnimationSceneAssetGetRootTimeline();

  if (!RootTimeline)
  {
    goto LABEL_22;
  }

LABEL_5:
  v19 = RETimelineDefinitionCreateFromTimeline();

  *(v14 + 16) = v19;
  v35 = v8;
  if (!v19)
  {
LABEL_11:
    v47 = 1;
    v46 = 1;
    v45 = 1;
    v44 = 1;
    v43 = 1;
    v42 = 1;

    if (v19)
    {
      RETimelineDefinitionGetName();
      v19 = String.init(cString:)();
      v24 = v23;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    outlined consume of BindTarget?(0, 0, 0xFFu);
    v41 = 0;
    v40 = 0;
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    v26 = v41;
    v27 = v40;
    v28 = v47;
    v29 = v46;
    v30 = v45;
    v31 = v44;
    v32 = v43;
    v33 = v42;
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 9) = v28;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 25) = v29;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    *(a3 + 41) = v30;
    *(a3 + 48) = 0;
    *(a3 + 56) = v31;
    *(a3 + 64) = 0;
    *(a3 + 72) = v32;
    *(a3 + 76) = 0;
    *(a3 + 80) = v33;
    *(a3 + 81) = 4;
    *(a3 + 88) = v14;
    *(a3 + 96) = v19;
    *(a3 + 112) = 0;
    *(a3 + 120) = 0;
    *(a3 + 104) = v24;
    *(a3 + 128) = -1;
    *(a3 + 132) = 0;
    *(a3 + 136) = v26;
    *(a3 + 138) = v27;
    *(a3 + 144) = v25;
    v22 = v14;
    v21 = *(v14 + 16);
    goto LABEL_16;
  }

  if (RETimelineDefinitionGetTimelineType() != 2)
  {
    v19 = *(v14 + 16);
    goto LABEL_11;
  }

  v47 = 1;
  v46 = 1;
  v45 = 1;
  v44 = 1;
  v43 = 1;
  v42 = 1;
  v41 = 1;
  *a3 = 0;
  *(a3 + 8) = 256;
  *(a3 + 16) = 0;
  *(a3 + 24) = 256;
  *(a3 + 32) = 0;
  *(a3 + 40) = 256;
  *(a3 + 48) = 0;
  *(a3 + 56) = 1;
  *(a3 + 64) = 0;
  *(a3 + 72) = 1;
  *(a3 + 76) = 0;
  *(a3 + 80) = 1025;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0;
  *(a3 + 128) = -1;
  *(a3 + 132) = 0;
  *(a3 + 136) = 1;
  *(a3 + 137) = 256;
  *(a3 + 139) = 2;
  *(a3 + 144) = v14;

  if (*(v14 + 16) && (ClipSourceRef = RETimelineDefinitionCreateClipSourceRef()) != 0)
  {
    v21 = ClipSourceRef;
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    RERetain();
    RERelease();
  }

  else
  {
    v22 = swift_allocObject();
    v21 = 0;
    *(v22 + 16) = 0;
  }

LABEL_16:
  v47 = 1;
  v46 = 1;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 184) = -1;
  *(a3 + 188) = 0x201000100000000;
  *(a3 + 200) = v22;
  if (v21)
  {

    ActionDefinition.init(fromCore:)(v21, v39, v11);

    v37(v11, 0, 1, v6);
    return (*(v35 + 40))(a3 + v38, v11, v7);
  }

  else
  {
  }
}

uint64_t static EntityAction.load(_:)@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  if (a2())
  {
    type metadata accessor for EntityActionWrapper();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v10 = *(a1 - 8);
      (*(v10 + 16))(a3, v5 + *(*v5 + 96), a1);
      swift_unknownObjectRelease();
      v6 = v10;
      v7 = 0;
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v6 = *(a1 - 8);
  v7 = 1;
LABEL_6:
  v8 = *(v6 + 56);

  return v8(a3, v7, 1, a1);
}

uint64_t static EntityAction.loadParameterFromTimeline(_:eventID:)@<X0>(char a1@<W2>, uint64_t a2@<X8>)
{
  if ((a1 & 1) == 0 && RETimelineDefinitionEventTimelineGetEventSwiftParameter())
  {
    type metadata accessor for EntityActionParameterWrapper();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(*v3 + 96);
      v5 = v3;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v13 = *(AssociatedTypeWitness - 8);
      (*(v13 + 16))(a2, v5 + v4, AssociatedTypeWitness);
      swift_unknownObjectRelease();
      v7 = *(v13 + 56);
      v8 = a2;
      v9 = 0;
      v10 = AssociatedTypeWitness;
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v11 = swift_getAssociatedTypeWitness();
  v7 = *(*(v11 - 8) + 56);
  v10 = v11;
  v8 = a2;
  v9 = 1;
LABEL_6:

  return v7(v8, v9, 1, v10);
}

uint64_t dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v308 = a6;
  v309 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v307 = &v292 - v14;
  v313 = a8;
  v311 = type metadata accessor for ActionEvent();
  v312 = *(v311 - 8);
  v15 = *(v312 + 64);
  MEMORY[0x1EEE9AC00](v311);
  v310 = &v292 - v16;
  v304 = type metadata accessor for Optional();
  v305 = *(v304 - 8);
  v17 = *(v305 + 64);
  MEMORY[0x1EEE9AC00](v304);
  v19 = &v292 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v292 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v297 = &v292 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v292 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v296 = &v292 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v292 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v292 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v292 - v37;
  v315 = a7;
  v314 = *(a7 - 8);
  v39 = *(v314 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v293 = &v292 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v301 = &v292 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v300 = &v292 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v299 = &v292 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v298 = &v292 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v295 = &v292 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v294 = &v292 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v306 = &v292 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v292 - v57;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            v302 = Strong;
            v61 = *a2;
            v60 = *(a2 + 8);
            v62 = *(a2 + 24);
            v63 = *(a2 + 32);
            v64 = *(a2 + 40);
            v301 = *(a2 + 48);
            v65 = *(a2 + 56);
            v66 = *(a2 + 72);
            v300 = *(a2 + 64);
            v67 = *(a2 + 88);
            v299 = *(a2 + 80);
            v68 = *(a2 + 96);
            v69 = *(a2 + 100);
            v70 = *(a2 + 104);
            v71 = REEntityGetSwiftObject();
            LODWORD(AssociatedTypeWitness) = v70;
            if (v71)
            {
              type metadata accessor for Entity();
              v72 = swift_dynamicCastClassUnconditional();
              goto LABEL_8;
            }

            result = REEntityIsBeingDestroyed();
            if ((result & 1) == 0)
            {
              v186 = specialized static Entity.entityInfoType(_:)();
              if (v186)
              {
                v73 = (*(v186 + 232))();
                v187 = *(v73 + 16);

                MEMORY[0x1C68F9740](v187, 0);
                *(v73 + 16) = v61;
                MEMORY[0x1C68F9740](v61, v73);

                goto LABEL_71;
              }

              v72 = makeEntity(for:)(v61);
LABEL_8:
              v73 = v72;
LABEL_71:
              type metadata accessor for AnimationPlaybackController();
              v188 = swift_allocObject();
              *(v188 + 40) = 0;
              swift_weakInit();
              *(v188 + 16) = v60;
              swift_weakAssign();
              v189 = *(v73 + 16);

              *(v188 + 32) = REEntityGetLocalId();
              Hasher.init(_seed:)();
              MEMORY[0x1C68F4C10](*(v73 + 16));
              *(v188 + 24) = Hasher._finalize()();

              v190 = String.init(cString:)();
              specialized ActionEventData.init(eventID:coreData:typeName:)(v63, 0, v64, v190, v191, v316);

              v298 = v66;
              if (!v67)
              {
                v196 = 0;
                v193 = v315;
                goto LABEL_127;
              }

              v192 = REBindPointBoundComponent();
              v193 = v315;
              if (!v192)
              {
                v196 = 0;
                goto LABEL_127;
              }

              Entity = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v195 = swift_dynamicCastClassUnconditional();
LABEL_75:
                v196 = v195;
                goto LABEL_127;
              }

              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                v240 = specialized static Entity.entityInfoType(_:)();
                if (!v240)
                {
                  v195 = makeEntity(for:)(Entity);
                  goto LABEL_75;
                }

                v196 = (*(v240 + 232))();
                v241 = *(v196 + 16);

                MEMORY[0x1C68F9740](v241, 0);
                *(v196 + 16) = Entity;
                MEMORY[0x1C68F9740](Entity, v196);

LABEL_127:
                ActionEventData.action<A>()(v193, v35);
                v242 = v314;
                if ((*(v314 + 48))(v35, 1, v193) == 1)
                {

                  (*(v305 + 8))(v35, v304);
                }

                else
                {
                  v243 = v294;
                  (*(v242 + 32))(v294, v35, v193);
                  v244 = v306;
                  (*(v242 + 16))(v306, v243, v193);

                  v245 = v307;
                  ActionEventData.parameter<A>(type:)(v307);
                  v246 = v310;
                  ActionEvent.init(playbackController:action:parameter:targetEntity:reversed:startTime:duration:engine:coreAnimationState:deltaTime:evaluationTime:normalizedTime:eventData:instanceID:)(v188, v244, v245, v196, AssociatedTypeWitness, v302, v298, COERCE__INT64(v65), v310, v68, v69, 0, v301, 0, v300, 0, v316, v299, v193);

                  v309(v246);

                  (*(v312 + 8))(v246, v311);
                  (*(v242 + 8))(v294, v193);
                }

                return 0;
              }

              goto LABEL_193;
            }

            goto LABEL_185;
          }

          goto LABEL_40;
        }

        v302 = Strong;
        v111 = *a2;
        v110 = *(a2 + 8);
        v113 = *(a2 + 24);
        v112 = *(a2 + 32);
        v114 = *(a2 + 40);
        v300 = *(a2 + 48);
        v115 = *(a2 + 56);
        v116 = *(a2 + 64);
        v117 = *(a2 + 72);
        v118 = *(a2 + 76);
        LODWORD(v301) = *(a2 + 80);
        v119 = *(a2 + 96);
        v299 = *(a2 + 88);
        v298 = v119;
        v120 = REEntityGetSwiftObject();
        AssociatedTypeWitness = v115;
        if (v120)
        {
          type metadata accessor for Entity();
          v121 = swift_dynamicCastClassUnconditional();
          goto LABEL_31;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          v153 = specialized static Entity.entityInfoType(_:)();
          if (v153)
          {
            v122 = (*(v153 + 232))();
            v154 = *(v122 + 16);

            MEMORY[0x1C68F9740](v154, 0);
            *(v122 + 16) = v111;
            MEMORY[0x1C68F9740](v111, v122);

LABEL_44:
            type metadata accessor for AnimationPlaybackController();
            v155 = swift_allocObject();
            *(v155 + 40) = 0;
            swift_weakInit();
            *(v155 + 16) = v110;
            swift_weakAssign();
            v156 = *(v122 + 16);

            *(v155 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v122 + 16));
            *(v155 + 24) = Hasher._finalize()();

            v157 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v112, 0, v114, v157, v158, v316);

            if (v116)
            {
              v159 = REBindPointBoundComponent();
              v160 = v315;
              if (v159)
              {
                v161 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v162 = swift_dynamicCastClassUnconditional();
LABEL_48:
                  v163 = v162;
                  goto LABEL_109;
                }

                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_189:
                  __break(1u);
                  goto LABEL_190;
                }

                v218 = specialized static Entity.entityInfoType(_:)();
                if (!v218)
                {
                  v162 = makeEntity(for:)(v161);
                  goto LABEL_48;
                }

                v163 = (*(v218 + 232))();
                v219 = *(v163 + 16);

                MEMORY[0x1C68F9740](v219, 0);
                *(v163 + 16) = v161;
                MEMORY[0x1C68F9740](v161, v163);
              }

              else
              {
                v163 = 0;
              }
            }

            else
            {
              v163 = 0;
              v160 = v315;
            }

LABEL_109:
            ActionEventData.action<A>()(v160, v38);
            v220 = v314;
            if ((*(v314 + 48))(v38, 1, v160) == 1)
            {

              (*(v305 + 8))(v38, v304);
            }

            else
            {
              (*(v220 + 32))(v58, v38, v160);
              v221 = v306;
              (*(v220 + 16))(v306, v58, v160);

              v222 = v307;
              ActionEventData.parameter<A>(type:)(v307);
              v223 = v310;
              ActionEvent.init(playbackController:action:parameter:targetEntity:reversed:startTime:duration:engine:coreAnimationState:deltaTime:evaluationTime:normalizedTime:eventData:instanceID:)(v155, v221, v222, v163, v301, v302, AssociatedTypeWitness, 0xBFF0000000000000, v310, v117, v118, 0, v299, 0, v298, 0, v316, v300, v160);

              v309(v223);

              (*(v312 + 8))(v223, v311);
              (*(v220 + 8))(v58, v160);
            }

            return 0;
          }

          v121 = makeEntity(for:)(v111);
LABEL_31:
          v122 = v121;
          goto LABEL_44;
        }

        __break(1u);
        goto LABEL_182;
      }

      if (a4 != 4)
      {
        if (a4 == 8)
        {
          v302 = Strong;
          v89 = *a2;
          v88 = *(a2 + 8);
          v91 = *(a2 + 24);
          v90 = *(a2 + 32);
          v93 = *(a2 + 40);
          v92 = *(a2 + 48);
          v94 = *(a2 + 56);
          v95 = *(a2 + 64);
          v96 = *(a2 + 68);
          LODWORD(v300) = *(a2 + 72);
          v97 = *(a2 + 80);
          v301 = *(a2 + 88);
          v98 = REEntityGetSwiftObject();
          AssociatedTypeWitness = v92;
          if (v98)
          {
            type metadata accessor for Entity();
            v99 = swift_dynamicCastClassUnconditional();
          }

          else
          {
            result = REEntityIsBeingDestroyed();
            if (result)
            {
LABEL_187:
              __break(1u);
              goto LABEL_188;
            }

            v205 = specialized static Entity.entityInfoType(_:)();
            if (v205)
            {
              v100 = (*(v205 + 232))();
              v206 = *(v100 + 16);

              MEMORY[0x1C68F9740](v206, 0);
              *(v100 + 16) = v89;
              MEMORY[0x1C68F9740](v89, v100);

LABEL_87:
              type metadata accessor for AnimationPlaybackController();
              v207 = swift_allocObject();
              *(v207 + 40) = 0;
              swift_weakInit();
              *(v207 + 16) = v88;
              swift_weakAssign();
              v208 = *(v100 + 16);

              *(v207 + 32) = REEntityGetLocalId();
              Hasher.init(_seed:)();
              MEMORY[0x1C68F4C10](*(v100 + 16));
              *(v207 + 24) = Hasher._finalize()();

              v209 = String.init(cString:)();
              specialized ActionEventData.init(eventID:coreData:typeName:)(v90, 0, v93, v209, v210, v316);

              if (v94)
              {
                v211 = REBindPointBoundComponent();
                v212 = v315;
                if (v211)
                {
                  v213 = REComponentGetEntity();
                  if (REEntityGetSwiftObject())
                  {
                    type metadata accessor for Entity();
                    v214 = swift_dynamicCastClassUnconditional();
LABEL_91:
                    v215 = v214;
                    goto LABEL_139;
                  }

                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_195:
                    __break(1u);
                    goto LABEL_196;
                  }

                  v256 = specialized static Entity.entityInfoType(_:)();
                  if (!v256)
                  {
                    v214 = makeEntity(for:)(v213);
                    goto LABEL_91;
                  }

                  v215 = (*(v256 + 232))();
                  v257 = *(v215 + 16);

                  MEMORY[0x1C68F9740](v257, 0);
                  *(v215 + 16) = v213;
                  MEMORY[0x1C68F9740](v213, v215);
                }

                else
                {
                  v215 = 0;
                }
              }

              else
              {
                v215 = 0;
                v212 = v315;
              }

LABEL_139:
              v22 = v296;
              ActionEventData.action<A>()(v212, v296);
              v258 = v314;
              if ((*(v314 + 48))(v22, 1, v212) != 1)
              {
                v259 = v298;
                (*(v258 + 32))(v298, v22, v212);
                v260 = v306;
                (*(v258 + 16))(v306, v259, v212);

                v261 = v97;
                v262 = v307;
                ActionEventData.parameter<A>(type:)(v307);
                v291 = v261;
                v263 = v310;
                ActionEvent.init(playbackController:action:parameter:targetEntity:reversed:startTime:duration:engine:coreAnimationState:deltaTime:evaluationTime:normalizedTime:eventData:instanceID:)(v207, v260, v262, v215, v300, v302, 0, 0, v310, v95, v96, 1, v291, 0, v301, 0, v316, AssociatedTypeWitness, v212);

                v309(v263);

                (*(v312 + 8))(v263, v311);
                (*(v258 + 8))(v298, v212);
                return 0;
              }

LABEL_170:

              (*(v305 + 8))(v22, v304);
              return 0;
            }

            v99 = makeEntity(for:)(v89);
          }

          v100 = v99;
          goto LABEL_87;
        }

LABEL_40:

        return 0;
      }

      v302 = Strong;
      v133 = *a2;
      v132 = *(a2 + 8);
      v134 = *(a2 + 24);
      v135 = *(a2 + 32);
      v136 = *(a2 + 40);
      v301 = *(a2 + 48);
      v137 = *(a2 + 56);
      v138 = *(a2 + 64);
      v139 = *(a2 + 72);
      v140 = *(a2 + 76);
      v141 = *(a2 + 80);
      v142 = REEntityGetSwiftObject();
      LODWORD(AssociatedTypeWitness) = v141;
      if (v142)
      {
        type metadata accessor for Entity();
        v143 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_183:
          __break(1u);
          goto LABEL_184;
        }

        v174 = specialized static Entity.entityInfoType(_:)();
        if (v174)
        {
          v144 = (*(v174 + 232))();
          v175 = *(v144 + 16);

          MEMORY[0x1C68F9740](v175, 0);
          *(v144 + 16) = v133;
          MEMORY[0x1C68F9740](v133, v144);

LABEL_60:
          type metadata accessor for AnimationPlaybackController();
          v176 = swift_allocObject();
          *(v176 + 40) = 0;
          swift_weakInit();
          *(v176 + 16) = v132;
          swift_weakAssign();
          v177 = *(v144 + 16);

          *(v176 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v144 + 16));
          *(v176 + 24) = Hasher._finalize()();

          v178 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(v135, 0, v136, v178, v179, v316);

          if (v138)
          {
            v180 = REBindPointBoundComponent();
            v181 = v315;
            if (v180)
            {
              v182 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v183 = swift_dynamicCastClassUnconditional();
LABEL_64:
                v138 = v183;
                goto LABEL_121;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_191:
                __break(1u);
                goto LABEL_192;
              }

              v232 = specialized static Entity.entityInfoType(_:)();
              if (!v232)
              {
                v183 = makeEntity(for:)(v182);
                goto LABEL_64;
              }

              v138 = (*(v232 + 232))();
              v233 = *(v138 + 16);

              MEMORY[0x1C68F9740](v233, 0);
              *(v138 + 16) = v182;
              MEMORY[0x1C68F9740](v182, v138);
            }

            else
            {
              v138 = 0;
            }
          }

          else
          {
            v181 = v315;
          }

LABEL_121:
          ActionEventData.action<A>()(v181, v32);
          v234 = v314;
          if ((*(v314 + 48))(v32, 1, v181) == 1)
          {

            (*(v305 + 8))(v32, v304);
          }

          else
          {
            v235 = v295;
            (*(v234 + 32))(v295, v32, v181);
            v236 = *(v234 + 16);
            v315 = v137;
            v237 = v306;
            v236(v306, v235, v181);

            v238 = v307;
            ActionEventData.parameter<A>(type:)(v307);
            v239 = v310;
            ActionEvent.init(playbackController:action:parameter:targetEntity:reversed:startTime:duration:engine:coreAnimationState:deltaTime:evaluationTime:normalizedTime:eventData:instanceID:)(v176, v237, v238, v138, AssociatedTypeWitness, v302, v315, 0xBFF0000000000000, v310, v139, v140, 0, 0xBFF0000000000000, 0, 0xBFF0000000000000, 0, v316, v301, v181);

            v309(v239);

            (*(v312 + 8))(v239, v311);
            (*(v234 + 8))(v295, v181);
          }

          return 0;
        }

        v143 = makeEntity(for:)(v133);
      }

      v144 = v143;
      goto LABEL_60;
    }

    if (a4 <= 63)
    {
      if (a4 != 16)
      {
        if (a4 != 32)
        {
          goto LABEL_40;
        }

        v302 = Strong;
        v80 = *a2;
        v81 = *(a2 + 8);
        v82 = *(a2 + 24);
        v301 = *(a2 + 32);
        v84 = *(a2 + 40);
        v83 = *(a2 + 48);
        v85 = *(a2 + 56);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v86 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_186:
            __break(1u);
            goto LABEL_187;
          }

          v197 = specialized static Entity.entityInfoType(_:)();
          if (v197)
          {
            v87 = (*(v197 + 232))();
            v198 = *(v87 + 16);

            MEMORY[0x1C68F9740](v198, 0);
            *(v87 + 16) = v80;
            MEMORY[0x1C68F9740](v80, v87);

LABEL_79:
            type metadata accessor for AnimationPlaybackController();
            v199 = swift_allocObject();
            *(v199 + 40) = 0;
            swift_weakInit();
            *(v199 + 16) = v81;
            swift_weakAssign();
            v200 = *(v87 + 16);

            *(v199 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v87 + 16));
            *(v199 + 24) = Hasher._finalize()();

            v201 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v84, v201, v202, v316);

            v299 = v83;
            if (!v85)
            {
              goto LABEL_133;
            }

            if (REBindPointBoundComponent())
            {
              v203 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v204 = swift_dynamicCastClassUnconditional();
LABEL_83:
                v85 = v204;
                goto LABEL_133;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_194:
                __break(1u);
                goto LABEL_195;
              }

              v247 = specialized static Entity.entityInfoType(_:)();
              if (!v247)
              {
                v204 = makeEntity(for:)(v203);
                goto LABEL_83;
              }

              v85 = (*(v247 + 232))();
              v248 = *(v85 + 16);

              MEMORY[0x1C68F9740](v248, 0);
              *(v85 + 16) = v203;
              MEMORY[0x1C68F9740](v203, v85);
            }

            else
            {
              v85 = 0;
            }

LABEL_133:
            v249 = v297;
            v250 = v315;
            ActionEventData.action<A>()(v315, v297);
            v251 = v314;
            if ((*(v314 + 48))(v249, 1, v250) == 1)
            {

              (*(v305 + 8))(v249, v304);
            }

            else
            {
              v252 = v300;
              (*(v251 + 32))(v300, v249, v250);
              v253 = v306;
              (*(v251 + 16))(v306, v252, v250);
              v254 = v307;
              (*(*(AssociatedTypeWitness - 8) + 56))(v307, 1, 1);
              v255 = v310;
              ActionEvent.init(playbackController:action:parameter:targetEntity:reversed:startTime:duration:engine:coreAnimationState:deltaTime:evaluationTime:normalizedTime:eventData:instanceID:)(v199, v253, v254, v85, 0, v302, 0, 0, v310, 0.0, 0.0, 1, v301, 0, 0, 1, v316, v299, v250);

              v309(v255);

              (*(v312 + 8))(v255, v311);
              (*(v251 + 8))(v300, v250);
            }

            return 0;
          }

          v86 = makeEntity(for:)(v80);
        }

        v87 = v86;
        goto LABEL_79;
      }

      v302 = Strong;
      v123 = *a2;
      v124 = *(a2 + 8);
      v126 = *(a2 + 24);
      v125 = *(a2 + 32);
      v127 = *(a2 + 40);
      v128 = *(a2 + 48);
      v129 = *(a2 + 56);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v130 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_182:
          __break(1u);
          goto LABEL_183;
        }

        v164 = specialized static Entity.entityInfoType(_:)();
        if (v164)
        {
          v131 = (*(v164 + 232))();
          v165 = *(v131 + 16);

          MEMORY[0x1C68F9740](v165, 0);
          *(v131 + 16) = v123;
          MEMORY[0x1C68F9740](v123, v131);

LABEL_52:
          type metadata accessor for AnimationPlaybackController();
          v166 = swift_allocObject();
          *(v166 + 40) = 0;
          swift_weakInit();
          *(v166 + 16) = v124;
          swift_weakAssign();
          v167 = *(v131 + 16);

          *(v166 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v131 + 16));
          *(v166 + 24) = Hasher._finalize()();

          v168 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v127, v168, v169, v316);

          v301 = v128;
          if (v129)
          {
            v170 = REBindPointBoundComponent();
            v171 = v314;
            if (v170)
            {
              v172 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v173 = swift_dynamicCastClassUnconditional();
LABEL_56:
                v129 = v173;
                goto LABEL_115;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_190:
                __break(1u);
                goto LABEL_191;
              }

              v224 = specialized static Entity.entityInfoType(_:)();
              if (!v224)
              {
                v173 = makeEntity(for:)(v172);
                goto LABEL_56;
              }

              v129 = (*(v224 + 232))();
              v225 = *(v129 + 16);

              MEMORY[0x1C68F9740](v225, 0);
              *(v129 + 16) = v172;
              MEMORY[0x1C68F9740](v172, v129);
            }

            else
            {
              v129 = 0;
            }
          }

          else
          {
            v171 = v314;
          }

LABEL_115:
          v226 = v315;
          ActionEventData.action<A>()(v315, v27);
          if ((*(v171 + 48))(v27, 1, v226) == 1)
          {

            (*(v305 + 8))(v27, v304);
          }

          else
          {
            v227 = v299;
            (*(v171 + 32))(v299, v27, v226);
            v228 = v125;
            v229 = v306;
            (*(v171 + 16))(v306, v227, v226);
            v230 = v307;
            (*(*(AssociatedTypeWitness - 8) + 56))(v307, 1, 1);
            v290 = v228;
            v231 = v310;
            ActionEvent.init(playbackController:action:parameter:targetEntity:reversed:startTime:duration:engine:coreAnimationState:deltaTime:evaluationTime:normalizedTime:eventData:instanceID:)(v166, v229, v230, v129, 0, v302, 0, 0, v310, 0.0, 0.0, 1, v290, 0, 0, 1, v316, v301, v226);

            v309(v231);

            (*(v312 + 8))(v231, v311);
            (*(v171 + 8))(v299, v226);
          }

          return 0;
        }

        v130 = makeEntity(for:)(v123);
      }

      v131 = v130;
      goto LABEL_52;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_40;
      }

      v302 = Strong;
      v101 = *a2;
      v102 = *(a2 + 8);
      v103 = *(a2 + 16);
      v104 = *(a2 + 24);
      v105 = *(a2 + 32);
      v106 = *(a2 + 40);
      v107 = REEntityGetSwiftObject();
      v301 = v105;
      if (v107)
      {
        type metadata accessor for Entity();
        v108 = swift_dynamicCastClassUnconditional();
        v109 = v315;
        v22 = v19;
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        v109 = v315;
        if (result)
        {
LABEL_188:
          __break(1u);
          goto LABEL_189;
        }

        v22 = v19;
        v216 = specialized static Entity.entityInfoType(_:)();
        if (v216)
        {
          v108 = (*(v216 + 232))();
          v217 = *(v108 + 16);

          MEMORY[0x1C68F9740](v217, 0);
          *(v108 + 16) = v101;
          MEMORY[0x1C68F9740](v101, v108);
        }

        else
        {
          v108 = makeEntity(for:)(v101);
        }
      }

      type metadata accessor for AnimationPlaybackController();
      v277 = swift_allocObject();
      *(v277 + 40) = 0;
      swift_weakInit();
      *(v277 + 16) = v102;
      swift_weakAssign();
      v278 = *(v108 + 16);

      *(v277 + 32) = REEntityGetLocalId();
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](*(v108 + 16));
      *(v277 + 24) = Hasher._finalize()();

      if (v106)
      {
        if (REBindPointBoundComponent())
        {
          v279 = REComponentGetEntity();
          if (REEntityGetSwiftObject())
          {
            type metadata accessor for Entity();
            v280 = swift_dynamicCastClassUnconditional();
LABEL_164:
            v106 = v280;
            goto LABEL_169;
          }

          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_196:
            __break(1u);
            return result;
          }

          v281 = specialized static Entity.entityInfoType(_:)();
          if (!v281)
          {
            v280 = makeEntity(for:)(v279);
            goto LABEL_164;
          }

          v106 = (*(v281 + 232))();
          v282 = *(v106 + 16);

          MEMORY[0x1C68F9740](v282, 0);
          *(v106 + 16) = v279;
          MEMORY[0x1C68F9740](v279, v106);
        }

        else
        {
          v106 = 0;
        }
      }

LABEL_169:
      v283 = String.init(cString:)();
      specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v104, v283, v284, v316);

      ActionEventData.action<A>()(v109, v22);
      v285 = v314;
      if ((*(v314 + 48))(v22, 1, v109) != 1)
      {
        v286 = v293;
        (*(v285 + 32))(v293, v22, v109);
        v287 = v306;
        (*(v285 + 16))(v306, v286, v109);
        v288 = v307;
        (*(*(AssociatedTypeWitness - 8) + 56))(v307, 1, 1);
        v289 = v310;
        ActionEvent.init(playbackController:action:parameter:targetEntity:reversed:startTime:duration:engine:coreAnimationState:deltaTime:evaluationTime:normalizedTime:eventData:instanceID:)(v277, v287, v288, v106, 0, v302, 0, 0, v310, 0.0, 0.0, 1, 0, 1, 0, 1, v316, v301, v109);

        v309(v289);

        (*(v312 + 8))(v289, v311);
        (*(v285 + 8))(v286, v109);
        return 0;
      }

      goto LABEL_170;
    }

    v302 = Strong;
    v145 = *a2;
    v146 = *(a2 + 8);
    v148 = *(a2 + 16);
    v147 = *(a2 + 24);
    v150 = *(a2 + 32);
    v149 = *(a2 + 40);
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v151 = swift_dynamicCastClassUnconditional();
      v152 = v315;
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      v152 = v315;
      if (result)
      {
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
        goto LABEL_186;
      }

      v184 = specialized static Entity.entityInfoType(_:)();
      if (v184)
      {
        v151 = (*(v184 + 232))();
        v185 = *(v151 + 16);

        MEMORY[0x1C68F9740](v185, 0);
        *(v151 + 16) = v145;
        MEMORY[0x1C68F9740](v145, v151);
      }

      else
      {
        v151 = makeEntity(for:)(v145);
      }
    }

    type metadata accessor for AnimationPlaybackController();
    v264 = swift_allocObject();
    *(v264 + 40) = 0;
    swift_weakInit();
    *(v264 + 16) = v146;
    swift_weakAssign();
    v265 = *(v151 + 16);

    *(v264 + 32) = REEntityGetLocalId();
    Hasher.init(_seed:)();
    MEMORY[0x1C68F4C10](*(v151 + 16));
    *(v264 + 24) = Hasher._finalize()();

    if (v149)
    {
      if (REBindPointBoundComponent())
      {
        v266 = REComponentGetEntity();
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v267 = swift_dynamicCastClassUnconditional();
LABEL_149:
          v149 = v267;
          goto LABEL_154;
        }

        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
          goto LABEL_194;
        }

        v268 = specialized static Entity.entityInfoType(_:)();
        if (!v268)
        {
          v267 = makeEntity(for:)(v266);
          goto LABEL_149;
        }

        v149 = (*(v268 + 232))();
        v269 = *(v149 + 16);

        MEMORY[0x1C68F9740](v269, 0);
        *(v149 + 16) = v266;
        MEMORY[0x1C68F9740](v266, v149);
      }

      else
      {
        v149 = 0;
      }
    }

LABEL_154:
    v270 = String.init(cString:)();
    specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v147, v270, v271, v316);

    ActionEventData.action<A>()(v152, v22);
    v272 = v314;
    if ((*(v314 + 48))(v22, 1, v152) != 1)
    {
      v273 = v301;
      (*(v272 + 32))(v301, v22, v152);
      v274 = v306;
      (*(v272 + 16))(v306, v273, v152);
      v275 = v307;
      (*(*(AssociatedTypeWitness - 8) + 56))(v307, 1, 1);
      v276 = v310;
      ActionEvent.init(playbackController:action:parameter:targetEntity:reversed:startTime:duration:engine:coreAnimationState:deltaTime:evaluationTime:normalizedTime:eventData:instanceID:)(v264, v274, v275, v149, 0, v302, 0, 0, v310, 0.0, 0.0, 1, 0, 1, 0, 1, v316, v150, v152);

      v309(v276);

      (*(v312 + 8))(v276, v311);
      (*(v272 + 8))(v301, v152);
      return 0;
    }

    goto LABEL_170;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v74 = type metadata accessor for Logger();
  __swift_project_value_buffer(v74, static AnimationLogger.logger);
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v316[0] = v78;
    *v77 = 136315138;
    *(v77 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, v316);
    _os_log_impl(&dword_1C1358000, v75, v76, "%s", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v78);
    MEMORY[0x1C6902A30](v78, -1, -1);
    MEMORY[0x1C6902A30](v77, -1, -1);
  }

  return 1;
}

uint64_t static EntityAction.eventBus(_:)(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);

    return REEngineGetEventBus();
  }

  else
  {
    v4 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    result = MEMORY[0x1C68FE250](*(v4 + 16));
    if (!result)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ActionEventParameterUnused.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ActionEventParameterUnused.CodingKeys and conformance ActionEventParameterUnused.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ActionEventParameterUnused.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ActionEventParameterUnused.CodingKeys and conformance ActionEventParameterUnused.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActionEventParameterUnused.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation26ActionEventParameterUnusedV10CodingKeys33_ED6F0C93167BAC54376FF6D485ABA41BLLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation26ActionEventParameterUnusedV10CodingKeys33_ED6F0C93167BAC54376FF6D485ABA41BLLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ActionEventParameterUnused.CodingKeys and conformance ActionEventParameterUnused.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance ActionEventParameterUnused(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation26ActionEventParameterUnusedV10CodingKeys33_ED6F0C93167BAC54376FF6D485ABA41BLLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation26ActionEventParameterUnusedV10CodingKeys33_ED6F0C93167BAC54376FF6D485ABA41BLLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ActionEventParameterUnused.CodingKeys and conformance ActionEventParameterUnused.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t ActionEventDefinition.init(startTime:duration:parameter:)@<X0>(uint64_t a1@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = *(type metadata accessor for ActionEventDefinition() + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a2 + v8, 1, 1, AssociatedTypeWitness);
  *a2 = a3;
  a2[1] = a4;
  v10 = type metadata accessor for Optional();
  v11 = *(*(v10 - 8) + 40);

  return v11(a2 + v8, a1, v10);
}

uint64_t ActionEvent.parameter.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, v2 + v4, v7);
}

uint64_t ActionEventDefinition.parameter.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(*(v7 - 8) + 40);

  return v8(v2 + v4, a1, v7);
}

uint64_t (*ActionEventDefinition.parameter.modify(uint64_t a1, uint64_t a2))(void, void)
{
  result = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t ActionDefinition.init(action:events:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for ActionDefinition();
  v11 = *(v10 + 36);
  v16 = *(a3 - 8);
  v12 = *(v16 + 56);
  v12(&a5[v11], 1, 1, a3);
  v13 = type metadata accessor for Optional();
  (*(*(v13 - 8) + 8))(&a5[v11], v13);
  (*(v16 + 16))(&a5[v11], a1, a3);
  v12(&a5[v11], 0, 1, a3);
  *a5 = a2;
  *&a5[*(v10 + 40)] = 0;
  static EntityAction.__register()(a3, a4);
  v14 = *(v16 + 8);

  return v14(a1, a3);
}

uint64_t ActionDefinition.action.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, v2 + *(a1 + 36), v6);
  v11 = *(v5 - 8);
  v12 = *(v11 + 48);
  if (v12(v10, 1, v5) == 1)
  {
    ActionDefinition.actionFromCore.getter(a1, a2);
    result = v12(v10, 1, v5);
    if (result != 1)
    {
      return (*(v7 + 8))(v10, v6);
    }
  }

  else
  {
    (*(v11 + 32))(a2, v10, v5);
    return (*(v11 + 56))(a2, 0, 1, v5);
  }

  return result;
}

uint64_t ActionDefinition.actionFromCore.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 40);
  v6 = *(v2 + v5);
  if (v6)
  {
    v7 = *(v2 + v5);
    if (RETimelineDefinitionEventTimelineGetEventTypeName())
    {
      if (one-time initialization token for codableActionTypeMap != -1)
      {
        swift_once();
      }

      v8 = String.init(cString:)();
      v10 = v9;
      swift_beginAccess();
      v11 = static AnimationResource.codableActionTypeMap;
      if (*(static AnimationResource.codableActionTypeMap + 16))
      {
        v12 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v10);
        v14 = v13;

        if (v14)
        {
          v15 = (*(v11 + 56) + 56 * v12);
          v16 = *v15;
          v30 = v15[1];
          v31 = v16;
          swift_endAccess();
          v17 = v31;
          v18 = type metadata accessor for Optional();
          v19 = *(v18 - 8);
          v20 = *(v19 + 64);
          MEMORY[0x1EEE9AC00](v18);
          v22 = &v30 - v21;
          static EntityAction<>.load(_:)(v6, v31, MEMORY[0x1E6998CC0], MEMORY[0x1E6998CB8], &v30 - v21);
          v23 = *(v17 - 8);
          if ((*(v23 + 48))(v22, 1, v17) == 1)
          {
            (*(v19 + 8))(v22, v18);
            memset(v32, 0, 56);
          }

          else
          {
            *(&v32[1] + 8) = v31;
            *(&v32[2] + 8) = v30;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
            (*(v23 + 32))(boxed_opaque_existential_1, v22, v17);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpSgMd, &_s17RealityFoundation12EntityAction_SeSEpSgMR);
          v28 = *(a1 + 16);
          v29 = swift_dynamicCast();
          return (*(*(v28 - 8) + 56))(a2, v29 ^ 1u, 1, v28);
        }
      }

      else
      {
      }

      swift_endAccess();
      v26 = *(a1 + 24);
      return static EntityAction.load(_:)(*(a1 + 16), MEMORY[0x1E6998CC8], a2);
    }
  }

  v24 = *(*(*(a1 + 16) - 8) + 56);

  return v24(a2, 1, 1);
}

uint64_t ActionDefinition.eventDefinitions.getter(uint64_t a1)
{
  if (*v1)
  {
    v2 = *v1;
  }

  else
  {
    if (*(v1 + *(a1 + 40)))
    {
      ActionDefinition.eventDefinitionsFromCore.getter(a1);
    }

    else
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 24);
      type metadata accessor for ActionEventDefinition();
      v3 = static Array._allocateUninitialized(_:)();
    }

    v2 = v3;
  }

  return v2;
}

void ActionDefinition.eventDefinitionsFromCore.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = type metadata accessor for ActionEventDefinition();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v72 = (v69 - v7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v80 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v77 = v69 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v86 = v69 - v15;
  v16 = *(a1 + 40);
  v17 = *(v1 + v16);
  if (!v17 || (v18 = *(v1 + v16), (EventTypeName = RETimelineDefinitionEventTimelineGetEventTypeName()) == 0))
  {
    static Array._allocateUninitialized(_:)();
    return;
  }

  ParameterCount = RETimelineDefinitionEventTimelineGetParameterCount();
  v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, ParameterCount & ~(ParameterCount >> 63), 0, MEMORY[0x1E69E7CC0]);
  if (ParameterCount < 0)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    return;
  }

  v21 = v20;
  v85 = v17;
  v73 = ParameterCount;
  if (ParameterCount)
  {
    for (i = 0; i != ParameterCount; ++i)
    {
      if (RETimelineDefinitionEventTimelineGetParameterName())
      {
        v24 = String.init(cString:)();
        v27 = *(v21 + 2);
        v26 = *(v21 + 3);
        if (v27 >= v26 >> 1)
        {
          v87 = v24;
          v28 = v8;
          v29 = v25;
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v21);
          v25 = v29;
          v8 = v28;
          v21 = v30;
          v24 = v87;
        }

        *(v21 + 2) = v27 + 1;
        v23 = &v21[16 * v27];
        *(v23 + 4) = v24;
        *(v23 + 5) = v25;
        ParameterCount = v73;
      }
    }
  }

  EventCount = RETimelineDefinitionEventTimelineGetEventCount();
  v90 = static Array._allocateUninitialized(_:)();
  v71 = type metadata accessor for Array();
  Array.reserveCapacity(_:)(EventCount);
  if (EventCount < 0)
  {
    goto LABEL_31;
  }

  v32 = v86;
  v70 = EventCount;
  if (EventCount)
  {
    v33 = 0;
    v69[1] = AssociatedTypeWitness - 8;
    v34 = (v9 + 8);
    v83 = (v9 + 32);
    v69[0] = v9 + 16;
    v75 = v4;
    v76 = v3;
    v74 = v8;
    while (1)
    {
      RETimelineDefinitionEventTimelineGetEventStartTime();
      v36 = v35;
      v87 = v33;
      RETimelineDefinitionEventTimelineGetEventDuration();
      v38 = v37;
      v39 = *(AssociatedTypeWitness - 8);
      v40 = *(v39 + 56);
      v78 = v39 + 56;
      v79 = v40;
      (v40)(v32, 1, 1);
      v41 = v80;
      if (v73)
      {
        break;
      }

LABEL_15:
      v32 = v86;
      v33 = v87 + 1;
      (*v69[0])(v41, v86, v8);
      ActionEventDefinition.init(startTime:duration:parameter:)(v41, v72, v36, v38);
      Array.append(_:)();
      (*v34)(v32, v8);
      if (v33 == v70)
      {
        return;
      }
    }

    if (one-time initialization token for codableActionTypeMap != -1)
    {
      swift_once();
    }

    v42 = v73;
    while (1)
    {
      while (1)
      {
        v44 = String.init(cString:)();
        v46 = v45;
        swift_beginAccess();
        v47 = static AnimationResource.codableActionTypeMap;
        if (*(static AnimationResource.codableActionTypeMap + 16))
        {
          break;
        }

LABEL_21:
        swift_endAccess();
        static EntityAction.loadParameterFromTimeline(_:eventID:)(0, v41);
        v43 = v86;
        (*v34)(v86, v8);
        (*v83)(v43, v41, v8);
        if (!--v42)
        {
          goto LABEL_15;
        }
      }

      v48 = specialized __RawDictionaryStorage.find<A>(_:)(v44, v46);
      v50 = v49;

      if ((v50 & 1) == 0)
      {
        goto LABEL_21;
      }

      v51 = (*(v47 + 56) + 56 * v48);
      v52 = *v51;
      v53 = v51[1];
      v55 = v51[4];
      v54 = v51[5];
      swift_endAccess();
      v56 = swift_getAssociatedTypeWitness();
      v57 = type metadata accessor for Optional();
      v82 = v69;
      v58 = *(v57 - 8);
      v59 = *(v58 + 64);
      MEMORY[0x1EEE9AC00](v57);
      v61 = v69 - v60;
      static EntityAction<>.loadParameterFromTimeline<A>(_:parameterType:eventID:)(v55, v87, 0, v55, v69 - v60, v68, v54);
      v62 = *(v56 - 8);
      if ((*(v62 + 48))(v61, 1, v56) == 1)
      {
        v63 = v86;
        v8 = v74;
        (*v34)(v86, v74);
        (*(v58 + 8))(v61, v57);
        v88 = 0u;
        v89 = 0u;
      }

      else
      {
        *(&v89 + 1) = v56;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v88);
        (*(v62 + 32))(boxed_opaque_existential_1, v61, v56);
        v63 = v86;
        v8 = v74;
        (*v34)(v86, v74);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
      v65 = v77;
      v66 = AssociatedTypeWitness;
      v67 = swift_dynamicCast();
      v79(v65, v67 ^ 1u, 1, v66);
      (*v83)(v63, v65, v8);
      v41 = v80;
      if (!--v42)
      {
        goto LABEL_15;
      }
    }
  }
}

uint64_t ActionDefinition.init(fromCore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for ActionDefinition();
  v7 = *(v6 + 36);
  v10 = *(*(a2 - 8) + 56);
  v10(&a3[v7], 1, 1, a2);
  *&a3[*(v6 + 40)] = a1;
  *a3 = 0;
  v8 = type metadata accessor for Optional();
  (*(*(v8 - 8) + 8))(&a3[v7], v8);

  return (v10)(&a3[v7], 1, 1, a2);
}

uint64_t ActionDefinition.createTimelineDefinition(name:)(void (**a1)(char *, uint64_t), void (**a2)(char *, char *, uint64_t), uint64_t a3)
{
  v142 = a2;
  v141 = a1;
  v151 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v145 = type metadata accessor for Optional();
  v125 = *(v145 - 8);
  v7 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v145);
  v144 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  TypedEventTimeline = &v120 - v10;
  v146 = AssociatedTypeWitness;
  v132 = *(AssociatedTypeWitness - 8);
  v11 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v129 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v128 = &v120 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v139 = &v120 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v130 = (&v120 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v131 = &v120 - v21;
  v136 = v4;
  v22 = type metadata accessor for ActionEventDefinition();
  v148 = *(v22 - 8);
  v23 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v138 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v147 = &v120 - v26;
  v137 = 0;
  v27 = type metadata accessor for Optional();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v120 - v30;
  v32 = *(v5 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v134 = &v120 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v133 = (&v120 - v37);
  MEMORY[0x1EEE9AC00](v38);
  v140 = (&v120 - v39);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v120 - v41;
  ActionDefinition.action.getter(a3, v31);
  if ((*(v32 + 48))(v31, 1, v5) == 1)
  {
    (*(v28 + 8))(v31, v27);
LABEL_97:
    v60 = 0;
    goto LABEL_98;
  }

  (*(v32 + 32))(v42, v31, v5);
  ActionDefinition.eventDefinitions.getter(a3);
  v43 = MEMORY[0x1C68F3740]();

  if (v43 < 1)
  {
    (*(v32 + 8))(v42, v5);
    goto LABEL_97;
  }

  v121 = a3;
  v123 = v32;
  if ((*(v136 + 32))(v5))
  {
    v44 = swift_dynamicCastMetatype();
    v45 = TypedEventTimeline;
    if (!v44 && !swift_dynamicCastMetatype())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
      if (!swift_dynamicCastMetatype())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
        if (!swift_dynamicCastMetatype())
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
          if (!swift_dynamicCastMetatype())
          {
            type metadata accessor for simd_quatf(0);
            if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
            {
              swift_dynamicCastMetatype();
            }
          }
        }
      }
    }
  }

  else
  {
    v45 = TypedEventTimeline;
  }

  _typeName(_:qualified:)();
  String.utf8CString.getter();
  String.utf8CString.getter();

  TypedEventTimeline = RETimelineDefinitionCreateTypedEventTimeline();

  v46 = *(v123 + 16);
  v122 = v42;
  v141 = v46;
  v142 = (v123 + 16);
  (v46)(v140, v42, v5);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_SEpMd, &_sSe_SEpMR);
  v127 = v5;
  v126 = v47;
  LODWORD(v140) = swift_dynamicCast();
  if (v140)
  {
    __swift_destroy_boxed_opaque_existential_1(v149);
  }

  v48 = ActionDefinition.eventDefinitions.getter(v121);
  if (MEMORY[0x1C68F3760](v48, v22))
  {
    v49 = 0;
    v50 = (v148 + 16);
    v51 = (v125 + 32);
    v52 = (v132 + 48);
    v53 = (v125 + 8);
    v54 = v145;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v148 + 16))(v147, v48 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v49, v22);
        v56 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_28;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v124 != 8)
        {
          goto LABEL_108;
        }

        v149[0] = result;
        (*v50)(v147, v149, v22);
        swift_unknownObjectRelease();
        v56 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }
      }

      (*v51)(v45, &v147[*(v22 + 40)], v54);
      if ((*v52)(v45, 1, v146) != 1)
      {
        break;
      }

      (*v53)(v45, v54);
      ++v49;
      if (v56 == MEMORY[0x1C68F3760](v48, v22))
      {
        goto LABEL_29;
      }
    }

    v68 = v132;
    v69 = *(v132 + 32);
    v70 = v131;
    v71 = v45;
    v72 = v146;
    v69(v131, v71, v146);
    v59 = v127;
    v60 = TypedEventTimeline;
    if (v140)
    {
      v69(v130, v70, v72);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v149);
        v58 = 0;
LABEL_30:
        v61 = v122;
        (v141)(v133, v122, v59);
        swift_dynamicCast();
        __swift_project_boxed_opaque_existential_1(v149, v150);
        v62 = type metadata accessor for JSONEncoder();
        v63 = *(v62 + 48);
        v64 = *(v62 + 52);
        swift_allocObject();
        JSONEncoder.init()();
        v65 = v137;
        v66 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        if (v65)
        {

          (*(v123 + 8))(v61, v59);
LABEL_96:
          __swift_destroy_boxed_opaque_existential_1(v149);
          goto LABEL_97;
        }

        v75 = v66;
        v76 = v67;

        __swift_destroy_boxed_opaque_existential_1(v149);
        v77 = v76 >> 62;
        v137 = 0;
        if ((v76 >> 62) > 1)
        {
          if (v77 != 2)
          {
            memset(v149, 0, 14);
            RETimelineDefinitionEventTimelineSetConstantData();
            goto LABEL_56;
          }

          v78 = *(v75 + 16);
          v79 = *(v75 + 24);
          v80 = __DataStorage._bytes.getter();
          if (v80)
          {
            v81 = __DataStorage._offset.getter();
            if (__OFSUB__(v78, v81))
            {
LABEL_105:
              __break(1u);
LABEL_106:
              __break(1u);
            }

            v80 += v78 - v81;
          }

          if (!__OFSUB__(v79, v78))
          {
LABEL_52:
            MEMORY[0x1C68F2040]();
            if (v80)
            {
              RETimelineDefinitionEventTimelineSetConstantData();
            }

            goto LABEL_56;
          }

          __break(1u);
        }

        else if (!v77)
        {
          v149[0] = v75;
          LOWORD(v149[1]) = v76;
          BYTE2(v149[1]) = BYTE2(v76);
          BYTE3(v149[1]) = BYTE3(v76);
          BYTE4(v149[1]) = BYTE4(v76);
          BYTE5(v149[1]) = BYTE5(v76);
          RETimelineDefinitionEventTimelineSetConstantData();
LABEL_56:
          outlined consume of Data._Representation(v75, v76);
          LODWORD(v134) = 1;
          v73 = v136;
          goto LABEL_57;
        }

        if (v75 >> 32 < v75)
        {
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        v82 = __DataStorage._bytes.getter();
        if (!v82)
        {
          MEMORY[0x1C68F2040]();
          goto LABEL_56;
        }

        v83 = v82;
        v84 = __DataStorage._offset.getter();
        if (__OFSUB__(v75, v84))
        {
          goto LABEL_106;
        }

        v80 = v75 - v84 + v83;
        goto LABEL_52;
      }
    }

    else
    {
      (*(v68 + 8))(v70, v72);
    }

    v58 = 0;
  }

  else
  {
LABEL_29:

    v58 = 1;
    v59 = v127;
    v60 = TypedEventTimeline;
    if (v140)
    {
      goto LABEL_30;
    }
  }

  v73 = v136;
  type metadata accessor for EntityActionWrapper();
  v74 = v134;
  (v141)(v134, v122, v59);
  EntityActionWrapper.__allocating_init(action:)(v74);
  RETimelineDefinitionEventTimelineSetAndRetainSwiftConstantData();

  LODWORD(v134) = 0;
LABEL_57:
  (*(v73 + 16))(v59, v73);
  RETimelineDefinitionEventTimelineSetReversible();
  v85 = v146;
  v86 = v138;
  if ((v58 & 1) == 0)
  {
    RETimelineDefinitionEventTimelineAddParameter();
  }

  v87 = ActionDefinition.eventDefinitions.getter(v121);
  v88 = MEMORY[0x1C68F3760](v87, v22);
  v89 = v145;
  if (!v88)
  {
LABEL_94:

    (*(v123 + 8))(v122, v127);
LABEL_98:
    v119 = *MEMORY[0x1E69E9840];
    return v60;
  }

  v90 = 0;
  v147 = (v148 + 16);
  v143 = *(v22 + 40);
  v141 = (v148 + 8);
  v142 = (v125 + 16);
  v140 = (v132 + 48);
  v133 = (v132 + 32);
  v131 = (v132 + 16);
  v130 = (v132 + 8);
  v132 = v125 + 8;
  while (1)
  {
    v91 = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (v91)
    {
      (*(v148 + 16))(v86, v87 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v90, v22);
      goto LABEL_65;
    }

    result = _ArrayBuffer._getElementSlowPath(_:)();
    if (v124 != 8)
    {
      break;
    }

    v149[0] = result;
    (*v147)(v86, v149, v22);
    swift_unknownObjectRelease();
LABEL_65:
    v92 = v144;
    v93 = v90 + 1;
    if (__OFADD__(v90, 1))
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
      goto LABEL_104;
    }

    v94 = *v86;
    v95 = *(v86 + 1);
    RETimelineDefinitionEventTimelineAddEvent();
    (*v142)(v92, &v86[v143], v89);
    (*v141)(v86, v22);
    if ((*v140)(v92, 1, v85) != 1)
    {
      v96 = v139;
      (*v133)(v139, v92, v85);
      if (!v134)
      {
        v106 = type metadata accessor for EntityActionParameterWrapper();
        v107 = v129;
        (*v131)(v129, v96, v85);
        v108 = *(v106 + 48);
        v109 = *(v106 + 52);
        swift_allocObject();
        EntityActionParameterWrapper.init(parameter:)(v107);
        v110 = TypedEventTimeline;
        RETimelineDefinitionEventTimelineSetAndRetainSwiftParameter();

        v111 = v96;
        v60 = v110;
        (*v130)(v111, v85);
LABEL_89:
        v86 = v138;
        goto LABEL_62;
      }

      (*v131)(v128, v96, v85);
      swift_dynamicCast();
      __swift_project_boxed_opaque_existential_1(v149, v150);
      v97 = type metadata accessor for JSONEncoder();
      v98 = *(v97 + 48);
      v99 = *(v97 + 52);
      swift_allocObject();
      JSONEncoder.init()();
      v100 = v137;
      v101 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      if (v100)
      {

        (*v130)(v139, v146);
        (*(v123 + 8))(v122, v127);
        goto LABEL_96;
      }

      v103 = v101;
      v104 = v102;

      __swift_destroy_boxed_opaque_existential_1(v149);
      v105 = v104 >> 62;
      v137 = 0;
      if ((v104 >> 62) > 1)
      {
        if (v105 == 2)
        {
          v112 = *(v103 + 16);
          v125 = *(v103 + 24);
          v113 = __DataStorage._bytes.getter();
          if (v113)
          {
            v114 = __DataStorage._offset.getter();
            if (__OFSUB__(v112, v114))
            {
              goto LABEL_102;
            }

            v113 += v112 - v114;
          }

          if (__OFSUB__(v125, v112))
          {
            goto LABEL_101;
          }

          MEMORY[0x1C68F2040]();
          if (!v113)
          {
            outlined consume of Data._Representation(v103, v104);
            v60 = TypedEventTimeline;
            goto LABEL_88;
          }

          v60 = TypedEventTimeline;
        }

        else
        {
          memset(v149, 0, 14);
          v60 = TypedEventTimeline;
        }
      }

      else if (v105)
      {
        v125 = (v103 >> 32) - v103;
        if (v103 >> 32 < v103)
        {
          goto LABEL_100;
        }

        v115 = __DataStorage._bytes.getter();
        if (!v115)
        {
          MEMORY[0x1C68F2040]();
          v60 = TypedEventTimeline;
          goto LABEL_87;
        }

        v116 = v115;
        v117 = __DataStorage._offset.getter();
        if (__OFSUB__(v103, v117))
        {
          goto LABEL_103;
        }

        v118 = v103 - v117 + v116;
        MEMORY[0x1C68F2040]();
        v60 = TypedEventTimeline;
        if (!v118)
        {
          goto LABEL_87;
        }
      }

      else
      {
        v149[0] = v103;
        LOWORD(v149[1]) = v104;
        BYTE2(v149[1]) = BYTE2(v104);
        BYTE3(v149[1]) = BYTE3(v104);
        BYTE4(v149[1]) = BYTE4(v104);
        BYTE5(v149[1]) = BYTE5(v104);
        v60 = TypedEventTimeline;
      }

      RETimelineDefinitionEventTimelineSetParameterData();
LABEL_87:
      outlined consume of Data._Representation(v103, v104);
LABEL_88:
      v85 = v146;
      (*v130)(v139, v146);
      v89 = v145;
      goto LABEL_89;
    }

    (*v132)(v92, v89);
LABEL_62:
    ++v90;
    if (v93 == MEMORY[0x1C68F3760](v87, v22))
    {
      goto LABEL_94;
    }
  }

  __break(1u);
LABEL_108:
  __break(1u);
  return result;
}

uint64_t ActionDefinition.isModified.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v12 - v8;
  if (*v1)
  {
    return 1;
  }

  (*(v5 + 16))(v9, &v1[*(a1 + 36)], v4, v7);
  v10 = (*(*(v3 - 8) + 48))(v9, 1, v3) != 1;
  (*(v5 + 8))(v9, v4);
  return v10;
}

uint64_t ActionAnimation.name.getter()
{
  if (v0[20])
  {
    v1 = v0[19];
    v2 = v0[20];
  }

  else if (*(v0[25] + 16))
  {
    v3 = v0[20];
    RETimelineDefinitionGetName();
    v1 = String.init(cString:)();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t key path setter for ActionAnimation.name : <A>ActionAnimation<A>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return ActionAnimation.name.setter(v1, v2);
}

uint64_t ActionAnimation.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 160);

  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return result;
}

uint64_t (*ActionAnimation.name.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = ActionAnimation.name.getter();
  a1[1] = v3;
  return FromToByAnimation.name.modify;
}

uint64_t ActionAnimation.blendLayer.getter()
{
  if (*(v0 + 192) != 1)
  {
    return *(v0 + 188);
  }

  result = *(*(v0 + 200) + 16);
  if (result)
  {
    return RETimelineDefinitionGetAnimationLayer();
  }

  return result;
}

uint64_t ActionAnimation.blendLayer.setter(uint64_t result)
{
  *(v1 + 188) = result;
  *(v1 + 192) = 0;
  return result;
}

uint64_t *(*ActionAnimation.blendLayer.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 192) == 1)
  {
    v2 = *(*(v1 + 200) + 16);
    if (v2)
    {
      v3 = a1;
      v4 = *(*(v1 + 200) + 16);
      LODWORD(v2) = RETimelineDefinitionGetAnimationLayer();
      a1 = v3;
    }
  }

  else
  {
    LODWORD(v2) = *(v1 + 188);
  }

  *(a1 + 8) = v2;
  return FromToByAnimation.blendLayer.modify;
}

uint64_t ActionAnimation.bindTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  v3 = *(v1 + 176);
  v4 = *(v1 + 184);
  v5 = v2;
  v6 = v3;
  v7 = *(v1 + 184);
  if (v4 == 255)
  {
    v5 = *(*(v1 + 200) + 16);
    if (v5)
    {
      v8 = *(v1 + 168);
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

double key path getter for ActionAnimation.bindTarget : <A>ActionAnimation<A>@<D0>(uint64_t a1@<X8>)
{
  ActionAnimation.bindTarget.getter(&v4);
  v2 = v5;
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v2;
  return result;
}

uint64_t key path setter for ActionAnimation.bindTarget : <A>ActionAnimation<A>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = v2;
  outlined copy of BindTarget(v4[0], v1, v2);
  return ActionAnimation.bindTarget.setter(v4);
}

uint64_t ActionAnimation.bindTarget.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of BindTarget?(*(v1 + 168), *(v1 + 176), *(v1 + 184));
  *(v1 + 168) = v2;
  *(v1 + 176) = v3;
  *(v1 + 184) = v4;
  return result;
}

uint64_t (*ActionAnimation.bindTarget.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  ActionAnimation.bindTarget.getter(a1);
  return FromToByAnimation.bindTarget.modify;
}

uint64_t ActionAnimation.fillMode.getter@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 194))
  {
    result = *(*(v1 + 200) + 16);
    if (result)
    {
      v3 = a1;
      result = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    result = *(v1 + 193);
  }

  *a1 = result;
  return result;
}

unsigned __int8 *(*ActionAnimation.fillMode.modify(uint64_t a1))(unsigned __int8 *result)
{
  *a1 = v1;
  if (*(v1 + 194))
  {
    v2 = *(*(v1 + 200) + 16);
    if (v2)
    {
      v3 = a1;
      v4 = *(*(v1 + 200) + 16);
      LOBYTE(v2) = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    LOBYTE(v2) = *(v1 + 193);
  }

  *(a1 + 8) = v2;
  return FromToByAnimation.fillMode.modify;
}

uint64_t ActionAnimation.trimStart.getter()
{
  if (*(v0 + 9))
  {
    result = *(*(v0 + 144) + 16);
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
    result = *v0;
    v2 = *(v0 + 8);
  }

  return result;
}

uint64_t ActionAnimation.trimStart.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  *(v2 + 9) = 0;
  return result;
}

uint64_t (*ActionAnimation.trimStart.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *a1 = ActionAnimation.trimStart.getter();
  *(a1 + 8) = v3 & 1;
  return FromToByAnimation.trimStart.modify;
}

uint64_t ActionAnimation.trimEnd.getter()
{
  if (*(v0 + 25))
  {
    result = *(*(v0 + 144) + 16);
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
    result = *(v0 + 16);
    v2 = *(v0 + 24);
  }

  return result;
}

uint64_t ActionAnimation.trimEnd.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  *(v2 + 25) = 0;
  return result;
}

uint64_t (*ActionAnimation.trimEnd.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *a1 = ActionAnimation.trimEnd.getter();
  *(a1 + 8) = v3 & 1;
  return FromToByAnimation.trimEnd.modify;
}

uint64_t ActionAnimation.trimDuration.getter()
{
  if (*(v0 + 41))
  {
    result = *(*(v0 + 144) + 16);
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
    result = *(v0 + 32);
    v2 = *(v0 + 40);
  }

  return result;
}

uint64_t ActionAnimation.trimDuration.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  *(v2 + 41) = 0;
  return result;
}

uint64_t (*ActionAnimation.trimDuration.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *a1 = ActionAnimation.trimDuration.getter();
  *(a1 + 8) = v3 & 1;
  return FromToByAnimation.trimDuration.modify;
}

double ActionAnimation.offset.getter()
{
  if ((*(v0 + 56) & 1) == 0)
  {
    return *(v0 + 48);
  }

  v1 = *(v0 + 144);
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

double (*ActionAnimation.offset.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  *a1 = ActionAnimation.offset.getter();
  return FromToByAnimation.offset.modify;
}

double ActionAnimation.delay.getter()
{
  if ((*(v0 + 72) & 1) == 0)
  {
    return *(v0 + 64);
  }

  v1 = *(v0 + 144);
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

double (*ActionAnimation.delay.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  *a1 = ActionAnimation.delay.getter();
  return FromToByAnimation.delay.modify;
}

float ActionAnimation.speed.getter()
{
  if ((*(v0 + 80) & 1) == 0)
  {
    return *(v0 + 76);
  }

  v1 = *(v0 + 144);
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

float (*ActionAnimation.speed.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = ActionAnimation.speed.getter();
  return FromToByAnimation.speed.modify;
}

uint64_t ActionAnimation.repeatMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = *(v1 + 81);
  if (result == 4)
  {
    v3 = *(v1 + 144);
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

_BYTE *(*ActionAnimation.repeatMode.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  ActionAnimation.repeatMode.getter((a1 + 8));
  return FromToByAnimation.repeatMode.modify;
}

double ActionAnimation.duration.getter()
{
  if (!*(*(v0 + 200) + 16))
  {
    return 0.0;
  }

  RETimelineDefinitionGetDuration();
  return result;
}

uint64_t ActionAnimation.init(for:events:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, _BYTE *a7@<X6>, unsigned __int8 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, float a12@<S2>, uint64_t a13, unsigned __int8 a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, unsigned __int8 a18, uint64_t a19, uint64_t a20)
{
  v62 = a8;
  v63 = a1;
  v68 = a6;
  v69 = a2;
  v59 = a15;
  v57 = a13;
  v53 = a18;
  v52 = a16;
  v66 = *(a19 - 8);
  v28 = *(v66 + 64);
  v51 = a14;
  MEMORY[0x1EEE9AC00](a1);
  v64 = &v51 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ActionDefinition();
  v67 = type metadata accessor for Optional();
  v65 = *(v67 - 8);
  v31 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v33 = &v51 - v32;
  v34 = *(a5 + 8);
  v56 = *a5;
  v55 = v34;
  v54 = *(a5 + 16);
  LOBYTE(a5) = *a7;
  v58 = *v62;
  v62 = *(type metadata accessor for ActionAnimation() + 40);
  v35 = *(v30 - 8);
  v60 = *(v35 + 56);
  v61 = v35 + 56;
  v60(&v62[a9], 1, 1, v30);

  outlined consume of BindTarget?(0, 0, 0xFFu);
  v73 = 0;
  v72 = 0;
  type metadata accessor for TimelineDefinition();
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  v37 = v73;
  v38 = v72;
  v39 = v51 & 1;
  v78 = 0;
  v40 = v52 & 1;
  v41 = v53 & 1;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  *a9 = v57;
  *(a9 + 8) = v39;
  *(a9 + 9) = 0;
  *(a9 + 16) = v59;
  *(a9 + 24) = v40;
  *(a9 + 32) = a17;
  *(a9 + 40) = v41;
  *(a9 + 48) = a10;
  *(a9 + 56) = 0;
  *(a9 + 64) = a11;
  *(a9 + 72) = 0;
  *(a9 + 76) = a12;
  *(a9 + 80) = 0;
  *(a9 + 81) = a5;
  *(a9 + 88) = 0;
  *(a9 + 96) = a3;
  *(a9 + 104) = a4;
  v42 = a4;
  *(a9 + 112) = xmmword_1C1898800;
  *(a9 + 128) = 0;
  *(a9 + 132) = 0;
  *(a9 + 136) = v37;
  *(a9 + 137) = 0;
  *(a9 + 138) = v38;
  *(a9 + 139) = 0;
  *(a9 + 144) = v36;
  v43 = v63;
  LOBYTE(a5) = (*(a20 + 24))(a19, a20);
  outlined consume of BindTarget?(0, 0, 0xFFu);
  v71 = 0;
  v70 = 0;
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  v45 = v71;
  v46 = v70;
  *(a9 + 152) = a3;
  *(a9 + 160) = v42;
  v47 = v55;
  *(a9 + 168) = v56;
  *(a9 + 176) = v47;
  *(a9 + 184) = v54;
  *(a9 + 185) = v79;
  *(a9 + 187) = v80;
  *(a9 + 188) = v68;
  *(a9 + 192) = v45;
  *(a9 + 193) = v58;
  *(a9 + 194) = v46;
  *(a9 + 195) = a5 & 1;
  *(a9 + 200) = v44;
  v48 = v66;
  v49 = v64;
  (*(v66 + 16))(v64, v43, a19);
  ActionDefinition.init(action:events:)(v49, v69, a19, a20, v33);
  (*(v48 + 8))(v43, a19);
  v60(v33, 0, 1, v30);
  return (*(v65 + 40))(&v62[a9], v33, v67);
}

uint64_t ActionAnimation.action.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = type metadata accessor for ActionDefinition();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  (*(v9 + 16))(&v15 - v11, v2 + *(a1 + 40), v8);
  v13 = *(v7 - 8);
  if ((*(v13 + 48))(v12, 1, v7) == 1)
  {
    (*(v9 + 8))(v12, v8);
    return (*(*(v6 - 8) + 56))(a2, 1, 1, v6);
  }

  else
  {
    ActionDefinition.action.getter(v7, a2);
    return (*(v13 + 8))(v12, v7);
  }
}

uint64_t key path setter for ActionAnimation.action : <A>ActionAnimation<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = type metadata accessor for Optional();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v12 + 16))(&v15 - v10, a1, v9);
  v13 = type metadata accessor for ActionAnimation();
  return ActionAnimation.action.setter(v11, v13);
}

uint64_t ActionAnimation.action.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = type metadata accessor for Optional();
  v19 = *(v6 - 8);
  v7 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - v8;
  v10 = v2 + *(a2 + 40);
  v11 = *(a2 + 24);
  v12 = type metadata accessor for ActionDefinition();
  if ((*(*(v12 - 8) + 48))(v10, 1, v12))
  {
    v13 = *(v19 + 8);

    return v13(a1, v6);
  }

  else
  {
    (*(v19 + 16))(v9, a1, v6);
    v15 = *(v12 + 36);
    v16 = *(v12 + 16);
    v17 = type metadata accessor for Optional();
    (*(*(v17 - 8) + 40))(v10 + v15, v9, v17);
    return (*(v19 + 8))(a1, v6);
  }
}

void (*ActionAnimation.action.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
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
  v9 = type metadata accessor for Optional();
  v7[2] = v9;
  v10 = *(v9 - 8);
  v7[3] = v10;
  v11 = *(v10 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v7[5] = v12;
  ActionAnimation.action.getter(a2, v12);
  return ActionAnimation.action.modify;
}

void ActionAnimation.action.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))((*a1)[4], v4, v5);
    ActionAnimation.action.setter(v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v9 = v2[1];
    ActionAnimation.action.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t ActionAnimation.eventDefinitions.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = type metadata accessor for ActionDefinition();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, v1 + *(a1 + 40), v6);
  v11 = *(v5 - 8);
  if ((*(v11 + 48))(v10, 1, v5) == 1)
  {
    (*(v7 + 8))(v10, v6);
    type metadata accessor for ActionEventDefinition();
    return static Array._allocateUninitialized(_:)();
  }

  else
  {
    v13 = ActionDefinition.eventDefinitions.getter(v5);
    (*(v11 + 8))(v10, v5);
    return v13;
  }
}

uint64_t key path setter for ActionAnimation.eventDefinitions : <A>ActionAnimation<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  v7 = type metadata accessor for ActionAnimation();

  return ActionAnimation.eventDefinitions.setter(v8, v7);
}

uint64_t ActionAnimation.eventDefinitions.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = type metadata accessor for ActionDefinition();
  if ((*(*(v7 - 8) + 48))(v2 + v4, 1, v7))
  {
  }

  else
  {
    v9 = *(v2 + v4);

    *(v2 + v4) = a1;
  }

  return result;
}

uint64_t (*ActionAnimation.eventDefinitions.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[1] = a2;
  a1[2] = v2;
  *a1 = ActionAnimation.eventDefinitions.getter(a2);
  return ActionAnimation.eventDefinitions.modify;
}

uint64_t ActionAnimation.eventDefinitions.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if ((a2 & 1) == 0)
  {
    return ActionAnimation.eventDefinitions.setter(*a1, v2);
  }

  v5 = *a1;

  ActionAnimation.eventDefinitions.setter(v6, v2);
}

uint64_t ActionAnimation.createResource()(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for ActionDefinition();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - v10;
  v12 = *(v6 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  if (ActionAnimation.isModified.getter(a1))
  {
    (*(v8 + 16))(v11, v1 + *(a1 + 40), v7);
    if ((*(v12 + 48))(v11, 1, v6) == 1)
    {
      (*(v8 + 8))(v11, v7);
      v17._rawValue = *(v1[25] + 16);
      return ActionAnimation.createResource(timelineDefinition:)(v17);
    }

    else
    {
      (*(v12 + 32))(v16, v11, v6);
      if (v1[20])
      {
        v20 = v1[19];
        v21 = v2[20];
      }

      else if (*(v1[25] + 16))
      {
        v22 = v1[20];
        v23 = *(v1[25] + 16);
        RETimelineDefinitionGetName();
        v20 = String.init(cString:)();
        v21 = v24;
      }

      else
      {
        v20 = 0;
        v21 = 0xE000000000000000;
      }

      v25 = ActionDefinition.createTimelineDefinition(name:)(v20, v21, v6);

      if (v25)
      {
        v26._rawValue = v25;
        v27 = ActionAnimation.createResource(timelineDefinition:)(v26);
        RERelease();
        (*(v12 + 8))(v16, v6);
        return v27;
      }

      else
      {
        (*(v12 + 8))(v16, v6);
        return 0;
      }
    }
  }

  else
  {
    v19._rawValue = 0;

    return ActionAnimation.createResource(timelineDefinition:)(v19);
  }
}

uint64_t ActionAnimation.isModified.getter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for ActionDefinition();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = *(v6 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - v16;
  (*(v8 + 16))(v11, v2 + *(a1 + 40), v7, v15);
  if ((*(v12 + 48))(v11, 1, v6) == 1)
  {
    (*(v8 + 8))(v11, v7);
    v18 = 0;
  }

  else
  {
    (*(v12 + 32))(v17, v11, v6);
    v18 = ActionDefinition.isModified.getter(v6);
    (*(v12 + 8))(v17, v6);
  }

  v20 = *(v2 + 184) == 0xFF && *(v2 + 160) == 0;
  return (*(v2 + 195) != 2 || (v20 & (*(v2 + 192) & *(v2 + 194)) & 1) == 0) | v18 & 1u;
}

uint64_t ActionAnimation.createResource(timelineDefinition:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  if (!a1._rawValue)
  {
    v19 = v1[7];
    v87 = v1[6];
    *v88 = v19;
    *&v88[16] = v1[8];
    *&v88[32] = *(v1 + 18);
    v20 = v1[3];
    v83 = v1[2];
    v84 = v20;
    v21 = v1[5];
    v85 = v1[4];
    v86 = v21;
    v22 = v1[1];
    v81 = *v1;
    v82 = v22;
    if (!TimelineClipProperties.isClipped.getter())
    {
      if (!*(*(v1 + 25) + 16))
      {
        return 0;
      }

      v37 = specialized static __ServiceLocator.shared.getter();
      swift_beginAccess();
      outlined init with copy of __REAssetService(v37 + 120, &v81);
      v38 = *(&v82 + 1);
      v39 = v83;
      __swift_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
      (*(v39 + 32))(v38, v39);
      __swift_destroy_boxed_opaque_existential_1(&v81);
      TimelineAsset = RETimelineDefinitionCreateTimelineAsset();
      if (!TimelineAsset)
      {
        return 0;
      }

      v41 = TimelineAsset;
      RETimelineDefinitionGetName();
      v42 = String.init(cString:)();
      v44 = v43;
      type metadata accessor for AnimationResource();
      v35 = swift_allocObject();
      v35[2] = v41;
      v35[3] = v42;
      v35[4] = v44;
      RERetain();
      REAssetSetSwiftObject();
      RERelease();
      return v35;
    }

    v23 = v1[7];
    v87 = v1[6];
    *v88 = v23;
    *&v88[16] = v1[8];
    v24 = v1[3];
    v83 = v1[2];
    v84 = v24;
    v25 = v1[5];
    v85 = v1[4];
    v86 = v25;
    v26 = v1[1];
    v81 = *v1;
    v82 = v26;
    *&v88[32] = *(v1 + 18);
    if ((TimelineClipProperties.isModified.getter() & 1) == 0)
    {
      return TimelineDefinition.resource.getter();
    }

    v27 = v1[7];
    v28 = v1[5];
    v77 = v1[6];
    v78 = v27;
    v29 = v1[7];
    v79 = v1[8];
    v30 = v1[3];
    v31 = v1[1];
    v73 = v1[2];
    v74 = v30;
    v32 = v1[3];
    v33 = v1[5];
    v75 = v1[4];
    v76 = v33;
    v34 = v1[1];
    v71 = *v1;
    v72 = v34;
    v69 = v77;
    *v70 = v29;
    *&v70[16] = v1[8];
    v65 = v73;
    v66 = v32;
    v67 = v75;
    v68 = v28;
    v80 = *(v1 + 18);
    *&v70[32] = *(v1 + 18);
    v63 = v71;
    v64 = v31;
    outlined init with copy of TimelineClipProperties(&v71, &v81);
    v35 = TimelineClipProperties.createClip()();
    v87 = v69;
    *v88 = *v70;
    *&v88[16] = *&v70[16];
    *&v88[32] = *&v70[32];
    v83 = v65;
    v84 = v66;
    v85 = v67;
    v86 = v68;
    v81 = v63;
    v82 = v64;
    v36 = &v81;
    goto LABEL_29;
  }

  v4 = *(v1 + 168);
  v59[0] = *(v1 + 152);
  v59[1] = v4;
  v59[2] = *(v1 + 184);
  v60 = *(v1 + 25);
  v5 = *(v1 + 168);
  v81 = *(v1 + 152);
  v82 = v5;
  v83 = *(v1 + 184);
  *&v84 = *(v1 + 25);
  outlined init with copy of TimelineBaseProperties(v59, &v71);
  TimelineBaseProperties.writeProperties(_:)(a1);
  v61[0] = v81;
  v61[1] = v82;
  v61[2] = v83;
  v62 = v84;
  outlined destroy of TimelineBaseProperties(v61);
  v6 = v1[7];
  v87 = v1[6];
  *v88 = v6;
  *&v88[16] = v1[8];
  *&v88[32] = *(v1 + 18);
  v7 = v1[3];
  v83 = v1[2];
  v84 = v7;
  v8 = v1[5];
  v85 = v1[4];
  v86 = v8;
  v9 = v1[1];
  v81 = *v1;
  v82 = v9;
  if (TimelineClipProperties.isClipped.getter())
  {
    v10 = v1[7];
    v11 = v1[5];
    v77 = v1[6];
    v78 = v10;
    v79 = v1[8];
    v12 = v1[3];
    v13 = v1[1];
    v73 = v1[2];
    v74 = v12;
    v14 = v1[3];
    v75 = v1[4];
    v76 = v11;
    v15 = v1[1];
    v71 = *v1;
    v72 = v15;
    v55 = v73;
    v56 = v14;
    v57 = v75;
    v80 = *(v1 + 18);
    v58 = *(v1 + 10);
    v53 = v71;
    v54 = v13;
    v51 = v77;
    *v52 = v1[7];
    *&v52[9] = *(v1 + 121);
    v16 = BYTE9(v79);
    v17 = BYTE10(v79);
    if (BYTE10(v79))
    {
      if (!*(v80 + 16))
      {
        outlined init with copy of TimelineClipProperties(&v71, &v81);
        goto LABEL_19;
      }

      outlined init with copy of TimelineClipProperties(&v71, &v81);
      FillMode = RETimelineDefinitionGetFillMode();
    }

    else
    {
      outlined init with copy of TimelineClipProperties(&v71, &v81);
      FillMode = v16;
    }

    if (FillMode)
    {
LABEL_25:
      type metadata accessor for TimelineDefinition();
      v46 = swift_allocObject();
      *(v46 + 16) = a1;
      RERetain();

      v47 = v2[3];
      v83 = v2[2];
      v84 = v47;
      v85 = v2[4];
      v48 = *(v2 + 10);
      v49 = v2[1];
      v81 = *v2;
      v82 = v49;
      *&v86 = v48;
      *(&v86 + 1) = v46;
      *&v88[9] = *(v2 + 121);
      v50 = v2[7];
      v87 = v2[6];
      *v88 = v50;
      v88[25] = v16;
      v88[26] = v17;
      *&v88[32] = *(v2 + 18);
      *&v88[27] = *(v2 + 139);
      outlined init with copy of TimelineClipProperties(&v81, &v63);
      if (*(v46 + 16))
      {

        closure #1 in TimelineClipProperties.createClip()(&v81, &v63);

        outlined destroy of TimelineClipProperties(&v81);
        v35 = v63;
      }

      else
      {
        outlined destroy of TimelineClipProperties(&v81);
        v35 = 0;
      }

      v65 = v55;
      v66 = v56;
      v67 = v57;
      v63 = v53;
      v64 = v54;
      *&v68 = v58;
      *(&v68 + 1) = v46;
      *&v70[9] = *&v52[9];
      v69 = v51;
      *v70 = *v52;
      v70[25] = v16;
      v70[26] = v17;
      *&v70[32] = *(v2 + 18);
      *&v70[27] = *(v2 + 139);
      v36 = &v63;
LABEL_29:
      outlined destroy of TimelineClipProperties(v36);
      return v35;
    }

LABEL_19:
    if (*(v2 + 194) == 1)
    {
      if (*(v60 + 16))
      {
        v16 = RETimelineDefinitionGetFillMode();
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = *(v2 + 193);
    }

    v17 = 0;
    goto LABEL_25;
  }

  type metadata accessor for TimelineDefinition();
  *(swift_allocObject() + 16) = a1;
  RERetain();
  v35 = TimelineDefinition.resource.getter();
  swift_setDeallocating();
  RERelease();
  swift_deallocClassInstance();
  return v35;
}

uint64_t ActionAnimation.generate()(uint64_t a1)
{
  result = ActionAnimation.createResource()(a1);
  if (!result)
  {
    lazy protocol witness table accessor for type AnimationError and conformance AnimationError();
    swift_allocError();
    *v2 = 0xD00000000000001CLL;
    *(v2 + 8) = 0x80000001C18DE2F0;
    *(v2 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t (*protocol witness for AnimationDefinition.name.modify in conformance ActionAnimation<A>(uint64_t **a1))()
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
  v2[4] = ActionAnimation.name.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.blendLayer.modify in conformance ActionAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = ActionAnimation.blendLayer.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.fillMode.modify in conformance ActionAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = ActionAnimation.fillMode.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.bindTarget.modify in conformance ActionAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = ActionAnimation.bindTarget.modify(v2);
  return protocol witness for AnimationDefinition.bindTarget.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.trimStart.modify in conformance ActionAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = ActionAnimation.trimStart.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.trimEnd.modify in conformance ActionAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = ActionAnimation.trimEnd.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.trimDuration.modify in conformance ActionAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = ActionAnimation.trimDuration.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.offset.modify in conformance ActionAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = ActionAnimation.offset.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.delay.modify in conformance ActionAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = ActionAnimation.delay.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.speed.modify in conformance ActionAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = ActionAnimation.speed.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.repeatMode.modify in conformance ActionAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = ActionAnimation.repeatMode.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t AnyActionAnimation.bindTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  v3 = *(v1 + 176);
  v4 = *(v1 + 184);
  v5 = v2;
  v6 = v3;
  v7 = *(v1 + 184);
  if (v4 == 255)
  {
    v5 = *(*(v1 + 200) + 16);
    if (v5)
    {
      v8 = *(v1 + 168);
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

uint64_t AnyActionAnimation.repeatMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = *(v1 + 81);
  if (result == 4)
  {
    v3 = *(v1 + 144);
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

uint64_t AnyActionAnimation.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for TimelineDefinition();
  v4 = swift_allocObject();
  v5 = *(a1 + 16);
  swift_retain_n();
  v6 = REAssetHandleAssetType();
  if (v6 == 11)
  {
    RootTimeline = REAnimationSceneAssetGetRootTimeline();

    if (RootTimeline)
    {
LABEL_5:
      v9 = RETimelineDefinitionCreateFromTimeline();

      *(v4 + 16) = v9;
      if (v9)
      {
        if (RETimelineDefinitionGetTimelineType() == 2)
        {
          v10 = 1;

          if (*(v4 + 16) && (ClipSourceRef = RETimelineDefinitionCreateClipSourceRef()) != 0)
          {
            v12 = ClipSourceRef;
            v16 = swift_allocObject();
            *(v16 + 16) = v12;
            RERetain();
            RERelease();
            v19 = 0;
            v20 = 0;
            v13 = 0;
          }

          else
          {
            v19 = 0;
            v20 = 0;
            v13 = 0;
            v16 = swift_allocObject();
            *(v16 + 16) = 0;
          }

          v18 = 2;
          v17 = v4;
          v15 = 1;
          goto LABEL_17;
        }

        v9 = *(v4 + 16);
      }

      if (v9)
      {
        RETimelineDefinitionGetName();
        v19 = String.init(cString:)();
        v20 = v14;
      }

      else
      {
        v19 = 0;
        v20 = 0xE000000000000000;
      }

      outlined consume of BindTarget?(0, 0, 0xFFu);
      v18 = 0;
      v16 = v4;
      v17 = swift_allocObject();
      *(v17 + 16) = 0;
      v15 = 0;
      v10 = 0;
      v13 = v4;
LABEL_17:

      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 9) = 1;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 25) = 1;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 41) = 1;
      *(a2 + 48) = 0;
      *(a2 + 56) = 1;
      *(a2 + 64) = 0;
      *(a2 + 72) = 1;
      *(a2 + 76) = 0;
      *(a2 + 80) = 1;
      *(a2 + 81) = 4;
      *(a2 + 88) = v13;
      *(a2 + 96) = v19;
      *(a2 + 112) = 0;
      *(a2 + 120) = 0;
      *(a2 + 104) = v20;
      *(a2 + 128) = -1;
      *(a2 + 132) = 0;
      *(a2 + 136) = v15;
      *(a2 + 137) = 0;
      *(a2 + 138) = v10;
      *(a2 + 139) = v18;
      *(a2 + 144) = v17;
      *(a2 + 168) = 0u;
      *(a2 + 152) = 0u;
      *(a2 + 184) = -1;
      *(a2 + 188) = 0x201000100000000;
      *(a2 + 200) = v16;
      return result;
    }
  }

  else
  {
    if (v6 == 5)
    {

      goto LABEL_5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AnyActionAnimation.createResource()()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 193);
  v3 = *(v0 + 194);
  v4 = *(v0 + 49);
  if (!*(v0 + 20) && *(v0 + 184) == 255 && (v0[12] & 1) != 0 && (*(v0 + 194) & 1) != 0 && *(v0 + 195) == 2)
  {
    v19 = v0[6];
    v21 = v0[7];
    v23 = v0[8];
    v25 = v0[9];
    v11 = v0[2];
    v13 = v0[3];
    v15 = v0[4];
    v17 = v0[5];
    v7 = *v0;
    v9 = v0[1];
    v28 = *(v0 + 168);
    LODWORD(v30) = *(v0 + 185);
    *(&v30 + 3) = *(v0 + 47);
    HIBYTE(v30) = *(v0 + 192);
    v32 = *(v0 + 193);
    v34 = *(v0 + 194);
    v36 = *(v0 + 49);
    v38 = *(v0 + 25);
    v5._rawValue = 0;
  }

  else
  {
    v20 = v0[6];
    v22 = v0[7];
    v24 = v0[8];
    v26 = v0[9];
    v12 = v0[2];
    v14 = v0[3];
    v16 = v0[4];
    v18 = v0[5];
    v8 = *v0;
    v10 = v0[1];
    v27 = *(v0 + 20);
    v29 = *(v0 + 168);
    LODWORD(v31) = *(v0 + 185);
    *(&v31 + 3) = *(v0 + 47);
    HIBYTE(v31) = *(v0 + 192);
    v33 = *(v0 + 193);
    v35 = *(v0 + 194);
    v37 = *(v0 + 49);
    v5._rawValue = *(*(v0 + 25) + 16);
  }

  return AnyActionAnimation.createResource(timelineDefinition:)(v5);
}

uint64_t AnyActionAnimation.createResource(timelineDefinition:)(Swift::OpaquePointer a1)
{
  v2 = v1[7];
  v61 = v1[6];
  *v62 = v2;
  *&v62[16] = v1[8];
  *&v62[32] = *(v1 + 18);
  v3 = v1[3];
  v57 = v1[2];
  v58 = v3;
  v4 = v1[5];
  v59 = v1[4];
  v60 = v4;
  v5 = v1[1];
  v55 = *v1;
  v56 = v5;
  v6 = *(v1 + 168);
  v63[0] = *(v1 + 152);
  v63[1] = v6;
  v64 = *(v1 + 184);
  v65 = *(v1 + 25);
  if (!a1._rawValue)
  {
    v12 = v1[7];
    v53 = v1[6];
    *v54 = v12;
    *&v54[16] = v1[8];
    *&v54[32] = *(v1 + 18);
    v13 = v1[3];
    v49 = v1[2];
    v50 = v13;
    v14 = v1[5];
    v51 = v1[4];
    v52 = v14;
    v15 = v1[1];
    v47 = *v1;
    v48 = v15;
    if (!TimelineClipProperties.isClipped.getter())
    {
      if (!*(v65 + 16))
      {
        return 0;
      }

      v18 = specialized static __ServiceLocator.shared.getter();
      swift_beginAccess();
      outlined init with copy of __REAssetService(v18 + 120, &v47);
      v19 = *(&v48 + 1);
      v20 = v49;
      __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
      (*(v20 + 32))(v19, v20);
      __swift_destroy_boxed_opaque_existential_1(&v47);
      TimelineAsset = RETimelineDefinitionCreateTimelineAsset();
      if (!TimelineAsset)
      {
        return 0;
      }

      v22 = TimelineAsset;
      RETimelineDefinitionGetName();
      v23 = String.init(cString:)();
      v25 = v24;
      type metadata accessor for AnimationResource();
      v16 = swift_allocObject();
      v16[2] = v22;
      v16[3] = v23;
      v16[4] = v25;
      RERetain();
      REAssetSetSwiftObject();
      RERelease();
      return v16;
    }

    v53 = v61;
    *v54 = *v62;
    *&v54[16] = *&v62[16];
    *&v54[32] = *&v62[32];
    v49 = v57;
    v50 = v58;
    v51 = v59;
    v52 = v60;
    v47 = v55;
    v48 = v56;
    if ((TimelineClipProperties.isModified.getter() & 1) == 0)
    {
      return TimelineDefinition.resource.getter();
    }

    v45 = v61;
    *v46 = *v62;
    *&v46[16] = *&v62[16];
    *&v46[32] = *&v62[32];
    v41 = v57;
    v42 = v58;
    v43 = v59;
    v44 = v60;
    v39 = v55;
    v40 = v56;
    outlined init with copy of TimelineClipProperties(&v55, &v47);
    v16 = TimelineClipProperties.createClip()();
    v53 = v45;
    *v54 = *v46;
    *&v54[16] = *&v46[16];
    *&v54[32] = *&v46[32];
    v49 = v41;
    v50 = v42;
    v51 = v43;
    v52 = v44;
    v47 = v39;
    v48 = v40;
    v17 = &v47;
    goto LABEL_29;
  }

  v8 = *(v1 + 168);
  v47 = *(v1 + 152);
  v48 = v8;
  v49 = *(v1 + 184);
  *&v50 = *(v1 + 25);
  outlined init with copy of TimelineBaseProperties(v63, &v39);
  TimelineBaseProperties.writeProperties(_:)(a1);
  v37[0] = v47;
  v37[1] = v48;
  v37[2] = v49;
  v38 = v50;
  outlined destroy of TimelineBaseProperties(v37);
  v53 = v61;
  *v54 = *v62;
  *&v54[16] = *&v62[16];
  *&v54[32] = *&v62[32];
  v49 = v57;
  v50 = v58;
  v51 = v59;
  v52 = v60;
  v47 = v55;
  v48 = v56;
  if (TimelineClipProperties.isClipped.getter())
  {
    v33 = v57;
    v34 = v58;
    v35 = v59;
    v36 = v60;
    v31 = v55;
    v32 = v56;
    *&v30[9] = *&v62[9];
    v29 = v61;
    *v30 = *v62;
    v9 = v62[25];
    v10 = v62[26];
    *&v28[5] = *&v62[32];
    *v28 = *&v62[27];
    if (v62[26])
    {
      if (!*(*&v62[32] + 16))
      {
        outlined init with copy of TimelineClipProperties(&v55, &v47);
        goto LABEL_19;
      }

      outlined init with copy of TimelineClipProperties(&v55, &v47);
      FillMode = RETimelineDefinitionGetFillMode();
    }

    else
    {
      outlined init with copy of TimelineClipProperties(&v55, &v47);
      FillMode = v9;
    }

    if (FillMode)
    {
LABEL_25:
      type metadata accessor for TimelineDefinition();
      v27 = swift_allocObject();
      *(v27 + 16) = a1;
      RERetain();

      v49 = v33;
      v50 = v34;
      v51 = v35;
      v47 = v31;
      v48 = v32;
      *&v52 = v36;
      *(&v52 + 1) = v27;
      *&v54[9] = *&v30[9];
      v53 = v29;
      *v54 = *v30;
      v54[25] = v9;
      v54[26] = v10;
      *&v54[32] = *&v28[5];
      *&v54[27] = *v28;
      outlined init with copy of TimelineClipProperties(&v47, &v39);
      if (*(v27 + 16))
      {

        closure #1 in TimelineClipProperties.createClip()(&v47, &v39);

        outlined destroy of TimelineClipProperties(&v47);
        v16 = v39;
      }

      else
      {
        outlined destroy of TimelineClipProperties(&v47);
        v16 = 0;
      }

      v41 = v33;
      v42 = v34;
      v43 = v35;
      v39 = v31;
      v40 = v32;
      *&v44 = v36;
      *(&v44 + 1) = v27;
      *&v46[9] = *&v30[9];
      v45 = v29;
      *v46 = *v30;
      v46[25] = v9;
      v46[26] = v10;
      *&v46[32] = *&v28[5];
      *&v46[27] = *v28;
      v17 = &v39;
LABEL_29:
      outlined destroy of TimelineClipProperties(v17);
      return v16;
    }

LABEL_19:
    if (BYTE10(v64) == 1)
    {
      if (*(v65 + 16))
      {
        v9 = RETimelineDefinitionGetFillMode();
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = BYTE9(v64);
    }

    v10 = 0;
    goto LABEL_25;
  }

  type metadata accessor for TimelineDefinition();
  *(swift_allocObject() + 16) = a1;
  RERetain();
  v16 = TimelineDefinition.resource.getter();
  swift_setDeallocating();
  RERelease();
  swift_deallocClassInstance();
  return v16;
}

uint64_t protocol witness for AnimationDefinition.name.getter in conformance AnyActionAnimation()
{
  if (v0[20])
  {
    v1 = v0[19];
    v2 = v0[20];
  }

  else if (*(v0[25] + 16))
  {
    v3 = v0[20];
    RETimelineDefinitionGetName();
    v1 = String.init(cString:)();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t protocol witness for AnimationDefinition.name.setter in conformance AnyActionAnimation(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 160);

  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.name.modify in conformance AnyActionAnimation(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = v1[20];
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    v4 = v1[19];
    v5 = v3;
  }

  else
  {
    v4 = *(v1[25] + 16);
    if (v4)
    {
      RETimelineDefinitionGetName();
      v4 = String.init(cString:)();
    }

    else
    {
      v5 = 0xE000000000000000;
    }
  }

  *a1 = v4;
  a1[1] = v5;

  return protocol witness for AnimationDefinition.name.modify in conformance AnyActionAnimation;
}

uint64_t protocol witness for AnimationDefinition.name.modify in conformance AnyActionAnimation(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a2)
  {
    v6 = a1[1];

    *(v5 + 152) = v3;
    *(v5 + 160) = v2;
  }

  else
  {
    v8 = a1[3];

    *(v5 + 152) = v3;
    *(v5 + 160) = v2;
  }

  return result;
}

uint64_t protocol witness for AnimationDefinition.blendLayer.getter in conformance AnyActionAnimation()
{
  if (*(v0 + 192) != 1)
  {
    return *(v0 + 188);
  }

  result = *(*(v0 + 200) + 16);
  if (result)
  {
    return RETimelineDefinitionGetAnimationLayer();
  }

  return result;
}

uint64_t protocol witness for AnimationDefinition.blendLayer.setter in conformance AnyActionAnimation(uint64_t result)
{
  *(v1 + 188) = result;
  *(v1 + 192) = 0;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.blendLayer.modify in conformance AnyActionAnimation(uint64_t a1))()
{
  *a1 = v1;
  if (*(v1 + 192) == 1)
  {
    v2 = *(*(v1 + 200) + 16);
    if (v2)
    {
      v3 = a1;
      v4 = *(*(v1 + 200) + 16);
      LODWORD(v2) = RETimelineDefinitionGetAnimationLayer();
      a1 = v3;
    }
  }

  else
  {
    LODWORD(v2) = *(v1 + 188);
  }

  *(a1 + 8) = v2;
  return protocol witness for AnimationDefinition.blendLayer.modify in conformance AnyActionAnimation;
}

uint64_t protocol witness for AnimationDefinition.fillMode.getter in conformance AnyActionAnimation@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 194))
  {
    result = *(*(v1 + 200) + 16);
    if (result)
    {
      v3 = a1;
      result = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    result = *(v1 + 193);
  }

  *a1 = result;
  return result;
}

unsigned __int8 *(*protocol witness for AnimationDefinition.fillMode.modify in conformance AnyActionAnimation(uint64_t a1))(unsigned __int8 *result)
{
  *a1 = v1;
  if (*(v1 + 194))
  {
    v2 = *(*(v1 + 200) + 16);
    if (v2)
    {
      v3 = a1;
      v4 = *(*(v1 + 200) + 16);
      LOBYTE(v2) = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    LOBYTE(v2) = *(v1 + 193);
  }

  *(a1 + 8) = v2;
  return FromToByAnimation.fillMode.modify;
}

uint64_t protocol witness for AnimationDefinition.bindTarget.setter in conformance AnyActionAnimation(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of BindTarget?(*(v1 + 168), *(v1 + 176), *(v1 + 184));
  *(v1 + 168) = v2;
  *(v1 + 176) = v3;
  *(v1 + 184) = v4;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.bindTarget.modify in conformance AnyActionAnimation(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  v3 = *(v1 + 168);
  v4 = *(v1 + 176);
  v5 = *(v1 + 184);
  v6 = v3;
  v7 = v4;
  v8 = *(v1 + 184);
  if (v5 == 255)
  {
    v6 = *(*(v1 + 200) + 16);
    if (v6)
    {
      v9 = *(v1 + 168);
      v10 = *(*(v1 + 200) + 16);
      v11 = *(v1 + 176);
      v12 = *(v1 + 184);
      RETimelineDefinitionGetTargetPath();
      v13 = String.init(cString:)();
      static InternalBindPath.targetFromPath(_:)(v13, v14, v16);

      LOBYTE(v5) = v12;
      v4 = v11;
      v3 = v9;
      v6 = v16[0];
      v7 = v16[1];
      v8 = v17;
    }

    else
    {
      v8 = 0;
      v7 = 0xE000000000000000;
    }
  }

  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  outlined copy of BindTarget?(v3, v4, v5);
  return protocol witness for AnimationDefinition.bindTarget.modify in conformance AnyActionAnimation;
}

uint64_t protocol witness for AnimationDefinition.bindTarget.modify in conformance AnyActionAnimation(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(v2 + 168);
  v7 = *(v2 + 176);
  v8 = *(v2 + 184);
  if (a2)
  {
    outlined copy of BindTarget(*a1, v3, v5);
    outlined consume of BindTarget?(v6, v7, v8);
    *(v2 + 168) = v4;
    *(v2 + 176) = v3;
    *(v2 + 184) = v5;

    return outlined consume of BindTarget(v4, v3, v5);
  }

  else
  {
    result = outlined consume of BindTarget?(*(v2 + 168), *(v2 + 176), *(v2 + 184));
    *(v2 + 168) = v4;
    *(v2 + 176) = v3;
    *(v2 + 184) = v5;
  }

  return result;
}

uint64_t protocol witness for AnimationDefinition.trimStart.getter in conformance AnyActionAnimation()
{
  if (*(v0 + 9))
  {
    result = *(*(v0 + 144) + 16);
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
    result = *v0;
    v2 = *(v0 + 8);
  }

  return result;
}

uint64_t protocol witness for AnimationDefinition.trimStart.setter in conformance AnyActionAnimation(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  *(v2 + 9) = 0;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.trimStart.modify in conformance AnyActionAnimation(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  if (*(v1 + 9))
  {
    if (*(v1[18] + 16) && (ClipStart = RETimelineDefinitionGetClipStart()) != 0)
    {
      v4 = 0;
      v5 = *ClipStart;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *v1;
    v4 = *(v1 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return FromToByAnimation.trimStart.modify;
}

uint64_t protocol witness for AnimationDefinition.trimEnd.getter in conformance AnyActionAnimation()
{
  if (*(v0 + 25))
  {
    result = *(*(v0 + 144) + 16);
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
    result = *(v0 + 16);
    v2 = *(v0 + 24);
  }

  return result;
}

uint64_t protocol witness for AnimationDefinition.trimEnd.setter in conformance AnyActionAnimation(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  *(v2 + 25) = 0;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.trimEnd.modify in conformance AnyActionAnimation(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  if (*(v1 + 25))
  {
    if (*(*(v1 + 144) + 16) && (ClipEnd = RETimelineDefinitionGetClipEnd()) != 0)
    {
      v4 = 0;
      v5 = *ClipEnd;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(v1 + 16);
    v4 = *(v1 + 24);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return FromToByAnimation.trimEnd.modify;
}

uint64_t protocol witness for AnimationDefinition.trimDuration.getter in conformance AnyActionAnimation()
{
  if (*(v0 + 41))
  {
    result = *(*(v0 + 144) + 16);
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
    result = *(v0 + 32);
    v2 = *(v0 + 40);
  }

  return result;
}

uint64_t protocol witness for AnimationDefinition.trimDuration.setter in conformance AnyActionAnimation(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  *(v2 + 41) = 0;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.trimDuration.modify in conformance AnyActionAnimation(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  if (*(v1 + 41))
  {
    if (*(*(v1 + 144) + 16) && (ClipDuration = RETimelineDefinitionGetClipDuration()) != 0)
    {
      v4 = 0;
      v5 = *ClipDuration;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(v1 + 32);
    v4 = *(v1 + 40);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return FromToByAnimation.trimDuration.modify;
}

double protocol witness for AnimationDefinition.offset.getter in conformance AnyActionAnimation()
{
  if ((*(v0 + 56) & 1) == 0)
  {
    return *(v0 + 48);
  }

  v1 = *(v0 + 144);
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

void *(*protocol witness for AnimationDefinition.offset.modify in conformance AnyActionAnimation(void *a1))(void *result)
{
  a1[1] = v1;
  if (*(v1 + 56))
  {
    v3 = *(v1 + 144);
    v4 = 0;
    if (*(v3 + 16))
    {
      v5 = *(v3 + 16);
      if (RETimelineDefinitionGetTimelineType() == 2)
      {
        RETimelineDefinitionGetClipOffset();
        v4 = v6;
      }
    }
  }

  else
  {
    v4 = *(v1 + 48);
  }

  *a1 = v4;
  return protocol witness for AnimationDefinition.offset.modify in conformance AnyActionAnimation;
}

void *protocol witness for AnimationDefinition.offset.modify in conformance AnyActionAnimation(void *result)
{
  v1 = result[1];
  *(v1 + 48) = *result;
  *(v1 + 56) = 0;
  return result;
}

double protocol witness for AnimationDefinition.delay.getter in conformance AnyActionAnimation()
{
  if ((*(v0 + 72) & 1) == 0)
  {
    return *(v0 + 64);
  }

  v1 = *(v0 + 144);
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

void *(*protocol witness for AnimationDefinition.delay.modify in conformance AnyActionAnimation(void *a1))(void *result)
{
  a1[1] = v1;
  if (*(v1 + 72))
  {
    v3 = *(v1 + 144);
    v4 = 0;
    if (*(v3 + 16))
    {
      v5 = *(v3 + 16);
      if (RETimelineDefinitionGetTimelineType() == 2)
      {
        RETimelineDefinitionGetClipDelay();
        v4 = v6;
      }
    }
  }

  else
  {
    v4 = *(v1 + 64);
  }

  *a1 = v4;
  return protocol witness for AnimationDefinition.delay.modify in conformance AnyActionAnimation;
}

void *protocol witness for AnimationDefinition.delay.modify in conformance AnyActionAnimation(void *result)
{
  v1 = result[1];
  *(v1 + 64) = *result;
  *(v1 + 72) = 0;
  return result;
}

float protocol witness for AnimationDefinition.speed.getter in conformance AnyActionAnimation()
{
  if ((*(v0 + 80) & 1) == 0)
  {
    return *(v0 + 76);
  }

  v1 = *(v0 + 144);
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

uint64_t *(*protocol witness for AnimationDefinition.speed.modify in conformance AnyActionAnimation(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 80))
  {
    v3 = *(v1 + 144);
    v4 = 1.0;
    if (*(v3 + 16))
    {
      v5 = *(v3 + 16);
      if (RETimelineDefinitionGetTimelineType() == 2)
      {
        RETimelineDefinitionGetClipSpeed();
        v4 = v6;
      }
    }
  }

  else
  {
    v4 = *(v1 + 76);
  }

  *(a1 + 8) = v4;
  return protocol witness for AnimationDefinition.speed.modify in conformance AnyActionAnimation;
}

uint64_t *protocol witness for AnimationDefinition.speed.modify in conformance AnyActionAnimation(uint64_t *result)
{
  v1 = *result;
  *(v1 + 76) = *(result + 2);
  *(v1 + 80) = 0;
  return result;
}

_BYTE *(*protocol witness for AnimationDefinition.repeatMode.modify in conformance AnyActionAnimation(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  v2 = *(v1 + 81);
  if (v2 == 4)
  {
    v3 = *(v1 + 144);
    if (*(v3 + 16))
    {
      v4 = a1;
      v5 = *(v3 + 16);
      if (RETimelineDefinitionGetTimelineType() != 2)
      {
        LOBYTE(v2) = 0;
        a1 = v4;
        goto LABEL_9;
      }

      ClipLoopBehavior = RETimelineDefinitionGetClipLoopBehavior();
      LOBYTE(v2) = ClipLoopBehavior;
      v7 = ClipLoopBehavior >= 4;
      a1 = v4;
      if (!v7)
      {
        goto LABEL_9;
      }

      a1 = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    LOBYTE(v2) = 0;
  }

LABEL_9:
  *(a1 + 8) = v2;
  return FromToByAnimation.repeatMode.modify;
}

double protocol witness for AnimationDefinition.duration.getter in conformance AnyActionAnimation()
{
  if (!*(*(v0 + 200) + 16))
  {
    return 0.0;
  }

  RETimelineDefinitionGetDuration();
  return result;
}

uint64_t protocol witness for AnimationDefinitionInternal.generate() in conformance AnyActionAnimation()
{
  result = AnyActionAnimation.createResource()();
  if (!result)
  {
    lazy protocol witness table accessor for type AnimationError and conformance AnimationError();
    swift_allocError();
    *v1 = 0xD00000000000001CLL;
    *(v1 + 8) = 0x80000001C18DE2F0;
    *(v1 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t protocol witness for static ActionHandlerProtocol.register(_:) in conformance FromToByActionHandler<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void, void))
{
  a5(255, *(a3 + 16), *(a3 + 24));
  WitnessTable = swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  v11 = MEMORY[0x1E69E7400];
  v12 = MEMORY[0x1E69E73E8];

  return static ActionHandlerProtocol<>.register(_:)(a1, a2, a3, a4, WitnessTable, v10, v11, v12);
}

uint64_t protocol witness for static ActionHandlerProtocol.register(_:) in conformance EmphasizeActionHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t), uint64_t (*a7)(void, uint64_t, uint64_t))
{
  v10 = a5();
  a6(v10);

  return a7(0, a1, a2);
}

unint64_t lazy protocol witness table accessor for type ActionEventParameterUnused.CodingKeys and conformance ActionEventParameterUnused.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ActionEventParameterUnused.CodingKeys and conformance ActionEventParameterUnused.CodingKeys;
  if (!lazy protocol witness table cache variable for type ActionEventParameterUnused.CodingKeys and conformance ActionEventParameterUnused.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionEventParameterUnused.CodingKeys and conformance ActionEventParameterUnused.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionEventParameterUnused.CodingKeys and conformance ActionEventParameterUnused.CodingKeys;
  if (!lazy protocol witness table cache variable for type ActionEventParameterUnused.CodingKeys and conformance ActionEventParameterUnused.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionEventParameterUnused.CodingKeys and conformance ActionEventParameterUnused.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionEventParameterUnused.CodingKeys and conformance ActionEventParameterUnused.CodingKeys;
  if (!lazy protocol witness table cache variable for type ActionEventParameterUnused.CodingKeys and conformance ActionEventParameterUnused.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionEventParameterUnused.CodingKeys and conformance ActionEventParameterUnused.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ActionEventType and conformance ActionEventType()
{
  result = lazy protocol witness table cache variable for type ActionEventType and conformance ActionEventType;
  if (!lazy protocol witness table cache variable for type ActionEventType and conformance ActionEventType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionEventType and conformance ActionEventType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionEventType and conformance ActionEventType;
  if (!lazy protocol witness table cache variable for type ActionEventType and conformance ActionEventType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionEventType and conformance ActionEventType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionEventType and conformance ActionEventType;
  if (!lazy protocol witness table cache variable for type ActionEventType and conformance ActionEventType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionEventType and conformance ActionEventType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionEventType and conformance ActionEventType;
  if (!lazy protocol witness table cache variable for type ActionEventType and conformance ActionEventType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionEventType and conformance ActionEventType);
  }

  return result;
}

uint64_t type metadata completion function for EntityActionWrapper(uint64_t a1)
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

uint64_t type metadata completion function for EntityActionParameterWrapper(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for ActionEvent(uint64_t a1)
{
  v2 = type metadata accessor for AnimationPlaybackController();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    v2 = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v6 = *(a1 + 24);
      swift_getAssociatedTypeWitness();
      v2 = type metadata accessor for Optional();
      if (v7 <= 0x3F)
      {
        type metadata accessor for Entity?();
        v2 = v8;
        if (v9 <= 0x3F)
        {
          v2 = type metadata accessor for __Engine();
          if (v10 <= 0x3F)
          {
            type metadata accessor for Double?(319, &lazy cache variable for type metadata for OpaquePointer?);
            v2 = v11;
            if (v12 <= 0x3F)
            {
              type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?);
              v2 = v13;
              if (v14 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for ActionEvent(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v7 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 80);
  v15 = *(v6 + 64);
  v16 = *(v8 + 80);
  v17 = *(v8 + 64);
  v18 = 23;
  if (!v10)
  {
    v18 = 24;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 < a2)
  {
    v19 = ((((((((((((v18 + v17 + ((v15 + v16 + ((v14 + 8) & ~v14)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 8;
    v20 = v19 & 0xFFFFFFF8;
    if ((v19 & 0xFFFFFFF8) != 0)
    {
      v21 = 2;
    }

    else
    {
      v21 = a2 - v13 + 1;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *(a1 + v19);
        if (v24)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v24 = *(a1 + v19);
        if (v24)
        {
          goto LABEL_27;
        }
      }
    }

    else if (v23)
    {
      v24 = *(a1 + v19);
      if (v24)
      {
LABEL_27:
        v25 = v24 - 1;
        if (v20)
        {
          v25 = 0;
          LODWORD(v20) = *a1;
        }

        return v13 + (v20 | v25) + 1;
      }
    }
  }

  if ((v12 & 0x80000000) == 0)
  {
    v27 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v27) = -1;
    }

    return (v27 + 1);
  }

  v28 = (a1 + v14 + 8) & ~v14;
  if (v7 != v13)
  {
    if (v10 >= 2)
    {
      v30 = (*(v9 + 48))((v28 + v15 + v16) & ~v16);
      if (v30 >= 2)
      {
        return v30 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v29 = *(v6 + 48);

  return v29(v28, v7, v5);
}

void storeEnumTagSinglePayload for ActionEvent(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v31 = v8;
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v8 + 80);
  v16 = *(v8 + 64);
  v17 = *(v11 + 80);
  v18 = *(v11 + 64);
  if (v9 <= v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = v9;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  if (!v13)
  {
    ++v18;
  }

  v21 = ((((((((((((v18 + ((v16 + v17 + ((v15 + 8) & ~v15)) & ~v17) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v20 < a3)
  {
    if (((((((((((((v18 + ((v16 + v17 + ((v15 + 8) & ~v15)) & ~v17) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 87) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v22 = a3 - v20 + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v10 = v23;
    }

    else
    {
      v10 = 0;
    }
  }

  if (a2 > v20)
  {
    if (v21)
    {
      v24 = 1;
    }

    else
    {
      v24 = a2 - v20;
    }

    if (v21)
    {
      v25 = ~v20 + a2;
      bzero(a1, v21);
      *a1 = v25;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        *(a1 + v21) = v24;
      }

      else
      {
        *(a1 + v21) = v24;
      }
    }

    else if (v10)
    {
      *(a1 + v21) = v24;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *(a1 + v21) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *(a1 + v21) = 0;
LABEL_41:
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!v10)
  {
    goto LABEL_41;
  }

  *(a1 + v21) = 0;
  if (!a2)
  {
    return;
  }

LABEL_42:
  if ((v19 & 0x80000000) != 0)
  {
    v27 = (a1 + v15 + 8) & ~v15;
    if (v9 == v20)
    {
      v28 = *(v31 + 56);

      v28(v27, a2, v9, v7);
    }

    else if (v13 >= 2)
    {
      v29 = *(v12 + 56);
      v30 = (v27 + v16 + v17) & ~v17;

      v29(v30, (a2 + 1));
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v26 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v26 = (a2 - 1);
    }

    *a1 = v26;
  }
}

void type metadata accessor for Entity?()
{
  if (!lazy cache variable for type metadata for Entity?)
  {
    type metadata accessor for Entity();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Entity?);
    }
  }
}

uint64_t type metadata completion function for ActionEventDefinition(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for Optional();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActionEventDefinition(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v12 = *(v9 + 80);
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v10)
  {
    ++v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v11)
  {
    v14 = v13 + ((v12 + 16) & ~v12);
    v15 = 8 * v14;
    if (v14 > 3)
    {
      goto LABEL_8;
    }

    v17 = ((a2 - v11 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (v16)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v17 <= 0xFF)
      {
        if (v17 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v16 = *(a1 + v14);
        if (!*(a1 + v14))
        {
          goto LABEL_28;
        }

LABEL_15:
        v18 = (v16 - 1) << v15;
        if (v14 > 3)
        {
          v18 = 0;
        }

        if (v14)
        {
          if (v14 <= 3)
          {
            v19 = v14;
          }

          else
          {
            v19 = 4;
          }

          if (v19 > 2)
          {
            if (v19 == 3)
            {
              v20 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v20 = *a1;
            }
          }

          else if (v19 == 1)
          {
            v20 = *a1;
          }

          else
          {
            v20 = *a1;
          }
        }

        else
        {
          v20 = 0;
        }

        return v11 + (v20 | v18) + 1;
      }

      v16 = *(a1 + v14);
      if (*(a1 + v14))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v10 < 2)
  {
    return 0;
  }

  v22 = (*(v9 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12);
  if (v22 >= 2)
  {
    return v22 - 1;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for ActionEventDefinition(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = 0;
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v10 + 80);
  v14 = *(v10 + 64);
  if (!v11)
  {
    ++v14;
  }

  v15 = v14 + ((v13 + 16) & ~v13);
  if (a3 <= v12)
  {
    goto LABEL_17;
  }

  if (v15 <= 3)
  {
    v16 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v16))
    {
      v9 = 4;
      if (v12 >= a2)
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

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
      v9 = v17;
    }

    else
    {
      v9 = 0;
    }

LABEL_17:
    if (v12 >= a2)
    {
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  v9 = 1;
  if (v12 >= a2)
  {
LABEL_27:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v15] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      *&a1[v15] = 0;
    }

    else if (v9)
    {
      a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    if (!a2)
    {
      return;
    }

LABEL_34:
    if (v11 >= 2)
    {
      v21 = *(v10 + 56);

      v21((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13, a2 + 1);
    }

    return;
  }

LABEL_18:
  v18 = ~v12 + a2;
  if (v15 >= 4)
  {
    bzero(a1, v15);
    *a1 = v18;
    v19 = 1;
    if (v9 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v18 >> (8 * v15)) + 1;
  if (!v15)
  {
LABEL_41:
    if (v9 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v18 & ~(-1 << (8 * v15));
  bzero(a1, v15);
  if (v15 == 3)
  {
    *a1 = v20;
    a1[2] = BYTE2(v20);
    goto LABEL_41;
  }

  if (v15 == 2)
  {
    *a1 = v20;
    if (v9 > 1)
    {
LABEL_45:
      if (v9 == 2)
      {
        *&a1[v15] = v19;
      }

      else
      {
        *&a1[v15] = v19;
      }

      return;
    }
  }

  else
  {
    *a1 = v18;
    if (v9 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v9)
  {
    a1[v15] = v19;
  }
}

uint64_t type metadata completion function for ActionAnimation(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for ActionDefinition();
  result = type metadata accessor for Optional();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActionAnimation(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8 - 1;
  if ((v8 - 1) <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v8 - 1;
  }

  v11 = *(v4 + 80);
  if (v6)
  {
    v12 = 7;
  }

  else
  {
    v12 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v11 | 7;
  v14 = v11 + 8;
  if (v10 >= a2)
  {
    goto LABEL_36;
  }

  v15 = ((v11 + 208) & ~v13) + ((v12 + *(*(*(a3 + 16) - 8) + 64) + (v14 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = a2 - v10;
  v17 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = v16 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = *(a1 + v15);
      if (!v21)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v21 = *(a1 + v15);
      if (!v21)
      {
        goto LABEL_36;
      }
    }
  }

  else if (!v20 || (v21 = *(a1 + v15)) == 0)
  {
LABEL_36:
    if (v9 < 0)
    {
      v25 = ((((a1 + 159) & 0xFFFFFFFFFFFFFFF8) + v13 + 56) & ~v13);
      if (v7 > 0x7FFFFFFE)
      {
        v27 = (*(v5 + 48))((v25 + v14) & ~v11);
        LODWORD(v26) = v27 - 1;
      }

      else
      {
        v26 = *v25;
        if (v26 >= 0xFFFFFFFF)
        {
          LODWORD(v26) = -1;
        }

        v27 = v26 + 1;
      }

      if (v27 < 2)
      {
        LODWORD(v26) = 0;
      }

      if (v26 >= 2)
      {
        return (v26 - 1);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v24 = *(a1 + 144);
      if (v24 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      return (v24 + 1);
    }
  }

  v23 = v21 - 1;
  if (v17)
  {
    v23 = 0;
    LODWORD(v17) = *a1;
  }

  return v10 + (v17 | v23) + 1;
}

void storeEnumTagSinglePayload for ActionAnimation(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v8;
  }

  v10 = v9 - 1;
  if ((v9 - 1) <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v9 - 1;
  }

  v12 = *(v5 + 80);
  v13 = v12 | 7;
  v14 = (v12 + 8) & ~v12;
  v15 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v15;
  }

  v16 = v14 + v15;
  v17 = ((v12 + 208) & ~(v12 | 7)) + ((v14 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v17)
  {
    v18 = 2;
  }

  else
  {
    v18 = a3 - v11 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v11 < a3)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (a2 > v11)
  {
    if (v17)
    {
      v22 = 1;
    }

    else
    {
      v22 = a2 - v11;
    }

    if (v17)
    {
      v23 = ~v11 + a2;
      v24 = a1;
      bzero(a1, v17);
      a1 = v24;
      *v24 = v23;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        *(a1 + v17) = v22;
      }

      else
      {
        *(a1 + v17) = v22;
      }
    }

    else if (v21)
    {
      *(a1 + v17) = v22;
    }

    return;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_43;
    }

    *(a1 + v17) = 0;
LABEL_42:
    if (!a2)
    {
      return;
    }

    goto LABEL_43;
  }

  if (!v21)
  {
    goto LABEL_42;
  }

  *(a1 + v17) = 0;
  if (!a2)
  {
    return;
  }

LABEL_43:
  if ((v10 & 0x80000000) != 0)
  {
    v25 = ((((a1 + 159) & 0xFFFFFFFFFFFFFFF8) + v13 + 56) & ~v13);
    if (v10 >= a2)
    {
      if (v8 > 0x7FFFFFFE)
      {
        v27 = ((v25 + v12 + 8) & ~v12);
        v28 = a2 - v8;
        if (a2 >= v8)
        {
          if (v15 <= 3)
          {
            v31 = ~(-1 << (8 * v15));
          }

          else
          {
            v31 = -1;
          }

          if (v15)
          {
            v32 = v31 & v28;
            if (v15 <= 3)
            {
              v33 = v15;
            }

            else
            {
              v33 = 4;
            }

            bzero(v27, v15);
            if (v33 > 2)
            {
              if (v33 == 3)
              {
                *v27 = v32;
                v27[2] = BYTE2(v32);
              }

              else
              {
                *v27 = v32;
              }
            }

            else if (v33 == 1)
            {
              *v27 = v32;
            }

            else
            {
              *v27 = v32;
            }
          }
        }

        else
        {
          v29 = *(v6 + 56);
          v30 = a2 + 2;

          v29(v27, v30);
        }
      }

      else if (a2 > 0x7FFFFFFD)
      {
        *v25 = 0;
        *v25 = a2 - 2147483646;
      }

      else
      {
        *v25 = a2 + 1;
      }
    }

    else if (((v16 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v26 = a2 - v9;
      bzero(((((a1 + 159) & 0xFFFFFFFFFFFFFFF8) + v13 + 56) & ~v13), ((v16 + 7) & 0xFFFFFFF8) + 8);
      *v25 = v26;
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 34) = 0u;
    *(a1 + 30) = 0u;
    *(a1 + 26) = 0u;
    *(a1 + 22) = 0u;
    *(a1 + 18) = 0u;
    *(a1 + 14) = 0u;
    *(a1 + 10) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 2) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 18) = a2 - 1;
  }
}