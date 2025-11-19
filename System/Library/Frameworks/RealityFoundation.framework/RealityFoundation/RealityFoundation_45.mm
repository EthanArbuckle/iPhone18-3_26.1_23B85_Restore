unint64_t implicit closure #1 in RKChangeSceneActionRuntimeTechnique.findSceneRootWithRootEntitySubTechnique()(void *a1)
{
  _StringGuts.grow(_:)(28);

  if (*a1)
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

  return 0xD00000000000001ALL;
}

unint64_t implicit closure #4 in RKChangeSceneActionRuntimeTechnique.findSceneRootWithRootEntitySubTechnique()(void *a1)
{
  _StringGuts.grow(_:)(26);

  if (*a1)
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

  return 0xD000000000000018;
}

unint64_t implicit closure #5 in RKChangeSceneActionRuntimeTechnique.findSceneRootWithRootEntitySubTechnique()(void *a1)
{
  _StringGuts.grow(_:)(41);

  if (*a1)
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

  return 0xD000000000000027;
}

unint64_t implicit closure #7 in RKChangeSceneActionRuntimeTechnique.findSceneRootWithRootEntitySubTechnique()(void *a1)
{
  _StringGuts.grow(_:)(35);

  if (*a1)
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

  return 0xD000000000000021;
}

uint64_t RKChangeSceneActionRuntimeTechnique.unloadScene()()
{
  v1 = *(v0 + OBJC_IVAR____TtC17RealityFoundation35RKChangeSceneActionRuntimeTechnique_sceneSwitchEntity);
  if (!v1)
  {
    static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v15 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    return v1 != 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC17RealityFoundation35RKChangeSceneActionRuntimeTechnique_sceneSwitchEntity);
  swift_retain_n();
  v3 = *(v1 + 16);
  if (REEntityGetChildCount() < 1)
  {
LABEL_16:

    return v1 != 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = *(v1 + 16);
    result = REEntityGetChildCount();
    if (v4 >= result)
    {
      break;
    }

    v7 = *(v1 + 16);
    result = REEntityGetChild();
    if (!result)
    {
      goto LABEL_22;
    }

    v8 = result;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v9 = swift_dynamicCastClassUnconditional();
LABEL_8:
      v10 = v9;
      goto LABEL_12;
    }

    result = REEntityIsBeingDestroyed();
    if (result)
    {
      goto LABEL_21;
    }

    v11 = specialized static Entity.entityInfoType(_:)();
    if (!v11)
    {
      v9 = makeEntity(for:)(v8);
      goto LABEL_8;
    }

    v10 = (*(v11 + 232))();
    v12 = *(v10 + 16);

    MEMORY[0x1C68F9740](v12, 0);
    *(v10 + 16) = v8;
    MEMORY[0x1C68F9740](v8, v10);

LABEL_12:
    v13 = *(v1 + 16);
    result = REEntityGetChildCount();
    if (v4 >= result)
    {
      goto LABEL_20;
    }

    ++v4;
    MEMORY[0x1C68F96F0](*(v10 + 16));

    v14 = *(v1 + 16);
    if (v4 >= REEntityGetChildCount())
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t RKChangeSceneActionRuntimeTechnique.loadNextScene()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18AnchoringComponentV6TargetOSgMd, &_s10RealityKit18AnchoringComponentV6TargetOSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - v6;
  if (one-time initialization token for noTargetSceneIdentifier != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for UUID();
  __swift_project_value_buffer(v8, static __RKChangeSceneAction.noTargetSceneIdentifier);
  if (static UUID.== infix(_:_:)())
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    specialized __RKActiveSceneManager.activeScene.setter(0);
    v9 = *(v0 + OBJC_IVAR____TtC17RealityFoundation35RKChangeSceneActionRuntimeTechnique_sceneSwitchEntity);
    if (!v9)
    {
      return 1;
    }

    v10 = *(v9 + 16);

    SceneNullable = REEntityGetSceneNullable();
    if (SceneNullable)
    {
      v12 = SceneNullable;
      v13 = RESceneGetSwiftObject();
      type metadata accessor for Scene();
      if (v13)
      {
        swift_dynamicCastClassUnconditional();
      }

      else
      {
        swift_allocObject();
        Scene.init(coreScene:)(v12);
      }

      Scene.__interactionService.getter();

      type metadata accessor for __RKEntityInteractionManager();
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        v20 = v19;
        swift_beginAccess();
        v21 = *(v20 + 56);

        swift_unknownObjectRelease();
        v22 = type metadata accessor for AnchoringComponent.Target(0);
        v23 = *(v22 - 8);
        v24 = *(v23 + 56);
        v37 = v23 + 56;
        v24(v7, 1, 1, v22);
        swift_beginAccess();
        v25 = *(v21 + 16);
        v26 = *(v25 + 16);
        if (v26)
        {
          v36 = v24;
          v27 = v25 + 32;

          do
          {
            outlined init with copy of __RKRuntimeSceneCoordinator.WeakObserver(v27, v40);
            if (swift_unknownObjectWeakLoadStrong())
            {
              v28 = v41;
              ObjectType = swift_getObjectType();
              (*(v28 + 8))(v21, v9, 0, v7, ObjectType, v28);
              swift_unknownObjectRelease();
            }

            outlined destroy of __RKRuntimeSceneCoordinator.WeakObserver(v40);
            v27 += 16;
            --v26;
          }

          while (v26);

          v24 = v36;
        }

        outlined destroy of BodyTrackingComponent?(v7, &_s10RealityKit18AnchoringComponentV6TargetOSgMd, &_s10RealityKit18AnchoringComponentV6TargetOSgMR);
        specialized HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
        if (v21)
        {
          v24(v4, 1, 1, v22);
          swift_beginAccess();
          v30 = *(v21 + 16);
          v31 = *(v30 + 16);
          if (v31)
          {
            v32 = v30 + 32;

            do
            {
              outlined init with copy of __RKRuntimeSceneCoordinator.WeakObserver(v32, v38);
              if (swift_unknownObjectWeakLoadStrong())
              {
                v33 = v39;
                v34 = swift_getObjectType();
                (*(v33 + 16))(v21, v9, 0, v4, v34, v33);
                swift_unknownObjectRelease();
              }

              outlined destroy of __RKRuntimeSceneCoordinator.WeakObserver(v38);
              v32 += 16;
              --v31;
            }

            while (v31);
          }

          else
          {
          }

          outlined destroy of BodyTrackingComponent?(v4, &_s10RealityKit18AnchoringComponentV6TargetOSgMd, &_s10RealityKit18AnchoringComponentV6TargetOSgMR);
          return 1;
        }

LABEL_31:

        return 1;
      }

      swift_unknownObjectRelease();
    }

    specialized HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
    goto LABEL_31;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = *(static __RKSceneAssetLookupTable.shared + 2);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v16 = [v14 objectForKey_];

  if (!v16)
  {
    return 0;
  }

  v17 = RKChangeSceneActionRuntimeTechnique.loadScene(_:)(v16);

  return v17 & 1;
}

uint64_t RKChangeSceneActionRuntimeTechnique.loadScene(_:)(uint64_t a1)
{
  v133 = type metadata accessor for DispatchPredicate();
  v132 = *(v133 - 8);
  v3 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v131 = (&v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18AnchoringComponentVSgMd, &_s10RealityKit18AnchoringComponentVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v125 - v7;
  v9 = type metadata accessor for AnchoringComponent(0);
  v134 = *(v9 - 1);
  v10 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18AnchoringComponentV6TargetOSgMd, &_s10RealityKit18AnchoringComponentV6TargetOSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v136 = &v125 - v15;
  v16 = OBJC_IVAR____TtC17RealityFoundation35RKChangeSceneActionRuntimeTechnique_sceneSwitchEntity;
  v17 = *(v1 + OBJC_IVAR____TtC17RealityFoundation35RKChangeSceneActionRuntimeTechnique_sceneSwitchEntity);
  *&v144 = 91;
  *(&v144 + 1) = 0xE100000000000000;
  if (v17)
  {
    *&v142 = 0;
    *(&v142 + 1) = 0xE000000000000000;
    v139 = v17;

    _print_unlocked<A, B>(_:_:)();
    v19 = *(&v142 + 1);
    v18 = v142;
  }

  else
  {
    v19 = 0xE300000000000000;
    v18 = 7104878;
  }

  MEMORY[0x1C68F3410](v18, v19);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v20 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v20);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v21 = *(&v144 + 1);
  v22 = *(v1 + v16);
  if (!v22)
  {
    v33 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v33, &v144);
LABEL_9:

    return 0;
  }

  v129 = v1;
  v138 = v144;

  Entity.__fetchLoadContext()();
  v24 = *(&v144 + 1);
  v23 = v144;
  v25 = *(a1 + 16);
  RERetain();
  type metadata accessor for __SceneResource();
  inited = swift_initStackObject();
  *(inited + 16) = v25;
  v27 = v22[2];
  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
    v135 = 0;
    if (v24)
    {
      goto LABEL_17;
    }

LABEL_11:
    *&v144 = v138;
    *(&v144 + 1) = v21;
    v34 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v34, &v144);
    swift_setDeallocating();
    RERelease();

    return 0;
  }

  v137 = v9;
  v29 = v12;
  v30 = v23;
  v31 = SceneNullable;
  v32 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v32)
  {
    swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    Scene.init(coreScene:)(v31);
  }

  Scene.__interactionService.getter();

  type metadata accessor for __RKEntityInteractionManager();
  v35 = swift_dynamicCastClass();
  if (v35)
  {
    v36 = v35;
    swift_beginAccess();
    v135 = *(v36 + 56);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v135 = 0;
  }

  v23 = v30;
  v12 = v29;
  v9 = v137;
  if (!v24)
  {
    goto LABEL_11;
  }

LABEL_17:
  v130 = v22;
  v38 = __SceneResource.makeAnchorEntity(fileName:)(v23, v24);
  v128 = inited;
  v126 = v21;
  v125 = v23;
  *&v144 = v23;
  *(&v144 + 1) = v24;
  swift_bridgeObjectRetain_n();
  v39 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  swift_beginAccess();
  objc_setAssociatedObject(v38, &static __SceneResourceLoadResultLoadContext.loadContextForEntityKey, v39, 0x301);
  swift_endAccess();
  v127 = v24;

  swift_unknownObjectRelease();
  v40 = type metadata accessor for AnchoringComponent.Target(0);
  v41 = *(*(v40 - 8) + 56);
  v42 = v136;
  v41(v136, 1, 1, v40);

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA09AnchoringD0V_Tt0B5(v38, v8);
  v137 = v38;

  v43 = (*(v134 + 48))(v8, 1, v9);
  if (v43 == 1)
  {
    outlined destroy of BodyTrackingComponent?(v8, &_s10RealityKit18AnchoringComponentVSgMd, &_s10RealityKit18AnchoringComponentVSgMR);
    v44 = v126;
    *&v144 = v138;
    *(&v144 + 1) = v126;
    v45 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v45, &v144);
  }

  else
  {
    outlined init with take of AnchoringComponent(v8, v12, type metadata accessor for AnchoringComponent);
    v46 = v126;
    *&v144 = v138;
    *(&v144 + 1) = v126;
    v47 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v47, &v144);
    outlined destroy of BodyTrackingComponent?(v42, &_s10RealityKit18AnchoringComponentV6TargetOSgMd, &_s10RealityKit18AnchoringComponentV6TargetOSgMR);
    outlined init with take of AnchoringComponent(v12, v42, type metadata accessor for AnchoringComponent.Target);
    v48 = v42;
    v44 = v46;
    v41(v48, 0, 1, v40);
  }

  v49 = v130;
  v50 = specialized HasHierarchy.parent.getter();
  v51 = v125;
  if (v50)
  {

    *&v144 = v138;
    *(&v144 + 1) = v44;
    v52 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v52, &v144);
    v53 = __SceneResource.makeRootEntity(withAnchoringComponent:hasAnchoringComponent:preferAnchorEntity:)(0, &v144, 0);
    *&v144 = v51;
    *(&v144 + 1) = v127;
    swift_bridgeObjectRetain_n();
    v54 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    swift_beginAccess();
    objc_setAssociatedObject(v53, &static __SceneResourceLoadResultLoadContext.loadContextForEntityKey, v54, 0x301);
    swift_endAccess();

    swift_unknownObjectRelease();
    v55 = v53;
  }

  else
  {
    v55 = v137;
  }

  v56 = type metadata accessor for Entity();
  v57 = v55[2];
  RENetworkComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  specialized static Entity.enumerateCore(entity:recursive:block:)(v55, 1, v56);
  static UuidRemapHelper.remapIdentifiersAndInteractions(root:)(v55);
  if (REShadowsGetEnableDefaultShadows())
  {
    MEMORY[0x1C68FCEC0](v55[2], 1);
  }

  Entity.generateCollisionShapes(recursive:static:)(1, 0);
  RKChangeSceneActionRuntimeTechnique.stopAnimations(rootEntity:)(v55);
  v58 = specialized HasHierarchy.parent.getter();
  v137 = v55;
  if (!v58)
  {

    type metadata accessor for AnchorEntity();
    v68 = swift_dynamicCastClass();
    v69 = v136;
    v70 = v135;
    if (!v68)
    {
LABEL_38:
      *&v144 = v138;
      *(&v144 + 1) = v44;
      v72 = static os_log_type_t.error.getter();
      specialized InteractionsLogger.log(_:_:)(v72, &v144);
      v73 = v128;
      swift_setDeallocating();
      v74 = *(v73 + 16);
      RERelease();

      outlined destroy of BodyTrackingComponent?(v69, &_s10RealityKit18AnchoringComponentV6TargetOSgMd, &_s10RealityKit18AnchoringComponentV6TargetOSgMR);
      goto LABEL_9;
    }

    v71 = v68;

    if (specialized HasHierarchy.parent.getter())
    {
      goto LABEL_36;
    }

    v97 = swift_dynamicCastClass();
    if (!v97)
    {
      goto LABEL_37;
    }

    v98 = v97;
    v99 = v49[2];

    v100 = REEntityGetSceneNullable();
    if (!v100)
    {
LABEL_36:

LABEL_37:

      goto LABEL_38;
    }

    v101 = v100;
    v102 = RESceneGetSwiftObject();
    v134 = type metadata accessor for Scene();
    if (v102)
    {
      v103 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      v103 = Scene.init(coreScene:)(v101);
    }

    v104 = v103;
    *&v144 = v138;
    *(&v144 + 1) = v44;
    v105 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v105, &v144);
    if (v70)
    {
      swift_beginAccess();
      v106 = *(v70 + 16);
      v107 = *(v106 + 16);
      if (v107)
      {
        v108 = v106 + 32;

        do
        {
          outlined init with copy of __RKRuntimeSceneCoordinator.WeakObserver(v108, &v144);
          if (swift_unknownObjectWeakLoadStrong())
          {
            v109 = *(&v144 + 1);
            ObjectType = swift_getObjectType();
            (*(v109 + 8))(v135, v49, v137, v136, ObjectType, v109);
            swift_unknownObjectRelease();
          }

          outlined destroy of __RKRuntimeSceneCoordinator.WeakObserver(&v144);
          v108 += 16;
          --v107;
        }

        while (v107);

        v44 = v126;
      }
    }

    v111 = *(v104 + 16);
    v112 = v71[2];
    RESceneRemoveEntity();

    specialized Scene.AnchorCollection.append(_:)(v98, v104);

    if (objc_getAssociatedObject(v71, "RealityKit.SceneResourceCacheEntry"))
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v142 = 0u;
      v143 = 0u;
    }

    v62 = v135;
    v144 = v142;
    v145 = v143;
    v61 = v136;
    if (*(&v143 + 1))
    {
      type metadata accessor for __SceneResourceCache.Entry();
      if (swift_dynamicCast())
      {
        v135 = v140;
        v113 = specialized static __ServiceLocator.shared.getter();
        swift_beginAccess();
        v114 = *(v113 + 24);
        swift_unownedRetainStrong();
        v115 = *(v114 + 32);

        v116 = v115;

        v117 = v131;
        *v131 = v116;
        v118 = v132;
        v119 = v133;
        (*(v132 + 104))(v117, *MEMORY[0x1E69E8020], v133);
        LOBYTE(v114) = _dispatchPreconditionTest(_:)();
        result = (*(v118 + 8))(v117, v119);
        if ((v114 & 1) == 0)
        {
LABEL_94:
          __break(1u);
          return result;
        }

        v120 = v135;
        __SceneResourceCache.Entry.registerWithSceneLookupTable()();
        objc_setAssociatedObject(v98, "RealityKit.SceneResourceCacheEntry", v120, 0x301);

        v44 = v126;
LABEL_88:
        v122 = v98[2];

        v123 = REEntityGetSceneNullable();
        if (!v123)
        {

          v87 = 0;
          goto LABEL_55;
        }

        v124 = v123;
        if (!RESceneGetSwiftObject())
        {
          swift_allocObject();
          v87 = Scene.init(coreScene:)(v124);

          goto LABEL_55;
        }

        goto LABEL_52;
      }
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v144, &_sypSgMd, &_sypSgMR);
    }

    *&v144 = v138;
    *(&v144 + 1) = v44;
    v121 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v121, &v144);
    goto LABEL_88;
  }

  v59 = v58;
  *&v144 = v138;
  *(&v144 + 1) = v44;
  v60 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v60, &v144);
  v61 = v136;
  v62 = v135;
  if (v135)
  {
    swift_beginAccess();
    v63 = *(v62 + 16);
    v64 = *(v63 + 16);
    if (v64)
    {
      v65 = v63 + 32;

      do
      {
        outlined init with copy of __RKRuntimeSceneCoordinator.WeakObserver(v65, &v144);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v66 = *(&v144 + 1);
          v67 = swift_getObjectType();
          (*(v66 + 8))(v62, v49, v137, v61, v67, v66);
          swift_unknownObjectRelease();
        }

        outlined destroy of __RKRuntimeSceneCoordinator.WeakObserver(&v144);
        v65 += 16;
        --v64;
      }

      while (v64);

      v55 = v137;
    }
  }

  specialized HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
  *&v144 = v59;

  Entity.ChildCollection.doAppend(_:preservingWorldTransform:)(v55, 0);

  if (objc_getAssociatedObject(v49, "RealityKit.SceneResourceCacheEntry"))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v142 = 0u;
    v143 = 0u;
  }

  v144 = v142;
  v145 = v143;
  if (!*(&v143 + 1))
  {
    outlined destroy of BodyTrackingComponent?(&v144, &_sypSgMd, &_sypSgMR);
    goto LABEL_48;
  }

  type metadata accessor for __SceneResourceCache.Entry();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_48:
    *&v144 = v138;
    *(&v144 + 1) = v44;
    v83 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v83, &v144);

    goto LABEL_49;
  }

  v75 = v140;
  v76 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v77 = *(v76 + 24);
  swift_unownedRetainStrong();
  v78 = *(v77 + 32);

  v79 = v78;

  v80 = v131;
  *v131 = v79;
  v81 = v132;
  v82 = v133;
  (*(v132 + 104))(v80, *MEMORY[0x1E69E8020], v133);
  LOBYTE(v77) = _dispatchPreconditionTest(_:)();
  result = (*(v81 + 8))(v80, v82);
  if ((v77 & 1) == 0)
  {
    __break(1u);
    goto LABEL_94;
  }

  __SceneResourceCache.Entry.registerWithSceneLookupTable()();
  v55 = v137;
  objc_setAssociatedObject(v137, "RealityKit.SceneResourceCacheEntry", v75, 0x301);

  v44 = v126;
LABEL_49:
  v84 = v55[2];
  v85 = REEntityGetSceneNullable();
  if (!v85)
  {

    v87 = 0;
    goto LABEL_55;
  }

  v86 = v85;
  if (!RESceneGetSwiftObject())
  {
    type metadata accessor for Scene();
    swift_allocObject();
    v87 = Scene.init(coreScene:)(v86);

    goto LABEL_55;
  }

  type metadata accessor for Scene();
LABEL_52:
  v87 = swift_dynamicCastClassUnconditional();
LABEL_55:
  v88 = one-time initialization token for shared;

  if (v88 != -1)
  {
    swift_once();
  }

  specialized __RKActiveSceneManager.activeScene.setter(v87);

  if (v62)
  {
    swift_beginAccess();
    v89 = *(v62 + 16);
    v90 = *(v89 + 16);
    if (v90)
    {
      v91 = v89 + 32;

      do
      {
        outlined init with copy of __RKRuntimeSceneCoordinator.WeakObserver(v91, &v140);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v92 = v141;
          v93 = swift_getObjectType();
          (*(v92 + 16))(v62, v49, v137, v61, v93, v92);
          swift_unknownObjectRelease();
        }

        outlined destroy of __RKRuntimeSceneCoordinator.WeakObserver(&v140);
        v91 += 16;
        --v90;
      }

      while (v90);
    }
  }

  v140 = v138;
  v141 = v44;
  v94 = static os_log_type_t.debug.getter();
  specialized InteractionsLogger.log(_:_:)(v94, &v140);

  v95 = v128;
  swift_setDeallocating();
  v96 = *(v95 + 16);
  RERelease();

  outlined destroy of BodyTrackingComponent?(v61, &_s10RealityKit18AnchoringComponentV6TargetOSgMd, &_s10RealityKit18AnchoringComponentV6TargetOSgMR);

  return 1;
}

unint64_t implicit closure #3 in RKChangeSceneActionRuntimeTechnique.loadScene(_:)()
{
  _StringGuts.grow(_:)(40);

  swift_getErrorValue();
  v0 = Error.localizedDescription.getter();
  MEMORY[0x1C68F3410](v0);

  return 0xD000000000000026;
}

uint64_t RKChangeSceneActionRuntimeTechnique.stopAnimations(rootEntity:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  REAnimationComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (ComponentByClass)
  {
    v4 = ComponentByClass;
    result = REAnimationComponentGetEntryCount();
    if (result < 0)
    {
      goto LABEL_27;
    }

    v6 = result;
    if (result)
    {
      v7 = 0;
      do
      {
        v8 = v7 + 1;
        MEMORY[0x1C68F6130](v4);
        v7 = v8;
      }

      while (v6 != v8);
    }

    REAnimationComponentStopAllAnimations();
    RENetworkMarkComponentDirty();
  }

  v9 = *(a1 + 16);
  if (REEntityGetChildCount() < 1)
  {
LABEL_21:
  }

  v10 = 0;
  while (1)
  {
    v11 = *(a1 + 16);
    result = REEntityGetChildCount();
    if (v10 >= result)
    {
      break;
    }

    v12 = *(a1 + 16);
    result = REEntityGetChild();
    if (!result)
    {
      goto LABEL_28;
    }

    v13 = result;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v14 = swift_dynamicCastClassUnconditional();
LABEL_13:
      v15 = v14;
      goto LABEL_17;
    }

    result = REEntityIsBeingDestroyed();
    if (result)
    {
      goto LABEL_26;
    }

    v16 = specialized static Entity.entityInfoType(_:)();
    if (!v16)
    {
      v14 = makeEntity(for:)(v13);
      goto LABEL_13;
    }

    v15 = (*(v16 + 232))();
    v17 = *(v15 + 16);

    MEMORY[0x1C68F9740](v17, 0);
    *(v15 + 16) = v13;
    MEMORY[0x1C68F9740](v13, v15);

LABEL_17:
    v18 = *(a1 + 16);
    result = REEntityGetChildCount();
    if (v10 >= result)
    {
      goto LABEL_25;
    }

    ++v10;
    RKChangeSceneActionRuntimeTechnique.stopAnimations(rootEntity:)(v15);

    v19 = *(a1 + 16);
    if (v10 >= REEntityGetChildCount())
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t RKChangeSceneActionRuntimeTechnique.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC17RealityFoundation33RKChangeSceneActionBasicTechnique_targetSceneIdentifier;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtC17RealityFoundation35RKChangeSceneActionRuntimeTechnique_sceneSwitchEntity];

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RKChangeSceneActionRuntimeTechnique()
{
  result = type metadata singleton initialization cache for RKChangeSceneActionRuntimeTechnique;
  if (!type metadata singleton initialization cache for RKChangeSceneActionRuntimeTechnique)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of AnchoringComponent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SceneComponentCollection.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = RESceneDereferenceComponentCollectionPosition();
  if (result)
  {
    v7 = *(v3 + 16);
    v8 = __OFADD__(v7, 1);
    v9 = v7 + 1;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      *(v3 + 16) = v9;
      v10 = *(a1 + 16);
      v14[3] = MEMORY[0x1E69E6B70];
      v14[0] = result;
      outlined init with copy of Any(v14, v13);
      swift_dynamicCast();
      __swift_destroy_boxed_opaque_existential_1(v14);
      (*(*(a1 + 24) + 64))(v12, v10);
      return (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
    }
  }

  else
  {
    *(v3 + 16) = *(v3 + 8);
    v11 = *(*(*(a1 + 16) - 8) + 56);

    return v11(a2, 1, 1);
  }

  return result;
}

uint64_t SceneComponentCollection.subscript.getter(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = *v2;
  if (a1 < 0)
  {
    __break(1u);
  }

  v12 = a1;
  v4 = RESceneDereferenceComponentCollectionPosition();
  if (v4)
  {
    v5 = *(a2 + 16);
    v10[3] = MEMORY[0x1E69E6B70];
    v10[0] = v4;
    outlined init with copy of Any(v10, v9);
    swift_dynamicCast();
    __swift_destroy_boxed_opaque_existential_1(v10);
    result = (*(*(a2 + 24) + 64))(v8, v5);
    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

Swift::UInt __swiftcall SceneComponentCollection.index(after:)(Swift::UInt after)
{
  v1 = __CFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Collection.startIndex.getter in conformance SceneComponentCollection<A>@<X0>(uint64_t *a1@<X8>)
{
  result = SceneComponentCollection.startIndex.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance SceneComponentCollection<A>@<X0>(uint64_t *a1@<X8>)
{
  result = SceneComponentCollection.endIndex.getter();
  *a1 = result;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance SceneComponentCollection<A>(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = SceneComponentCollection.subscript.read(v6, *a2, a3);
  return protocol witness for Collection.subscript.read in conformance SceneComponentCollection<A>;
}

void protocol witness for Collection.subscript.read in conformance SceneComponentCollection<A>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*SceneComponentCollection.subscript.read(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = *(a3 + 16);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  a1[2] = v9;
  SceneComponentCollection.subscript.getter(a2, a3);
  return SceneComponentCollection.subscript.read;
}

void SceneComponentCollection.subscript.read(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance SceneComponentCollection<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, MEMORY[0x1E69E66A8], MEMORY[0x1E69E5F48]);
}

{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, MEMORY[0x1E69E5F90], MEMORY[0x1E69E5F58]);
}

void *protocol witness for Collection.index(after:) in conformance SceneComponentCollection<A>@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result == -1)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance SceneComponentCollection<A>(void *result)
{
  if (*result == -1)
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance SceneComponentCollection<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  v8 = v5[1];
  v9 = *(v5 + 4);
  return MEMORY[0x1C68F3530](a1, a2, a3, a4, a5);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance SceneComponentCollection<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance SceneComponentCollection<A>()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  swift_getWitnessTable();
  return specialized Collection._copyToContiguousArray()();
}

uint64_t protocol witness for Sequence._copyContents(initializing:) in conformance SceneComponentCollection<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  v8 = v5[1];
  v9 = *(v5 + 4);
  return MEMORY[0x1C68F3550](a1, a2, a3, a4, a5);
}

uint64_t Scene.SceneComponentTypeTable.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t Scene.SceneComponentTypeTable.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t Scene.components.getter()
{
  type metadata accessor for Scene.SceneComponentTypeTable();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;

  return v1;
}

uint64_t type metadata instantiation function for SceneComponentCollection()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for SceneComponentCollection(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SceneComponentCollection(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(type metadata accessor for Range() + 36);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t MXIComponent.splitMode.getter@<X0>(_BYTE *a1@<X8>)
{
  outlined init with copy of Any?(v1 + 16, &v7);
  v3 = v8;
  result = outlined destroy of Any?(&v7);
  if (v3)
  {
    result = outlined init with copy of Any?(v1 + 16, &v5);
    if (v6)
    {
      outlined init with take of Any(&v5, &v7);
      return swift_dynamicCast();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t MXIComponent.splitMode.setter(char *a1)
{
  v2 = *a1;
  v5 = &type metadata for MXIComponent.MXISplitMode;
  v4[0] = v2;
  return outlined assign with take of Any?(v4, v1 + 16);
}

void (*MXIComponent.splitMode.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  outlined init with copy of Any?(v1 + 16, v3);
  v5 = *(v4 + 24);
  outlined destroy of Any?(v4);
  if (!v5)
  {
    *(v4 + 72) = 0;
    return MXIComponent.splitMode.modify;
  }

  result = outlined init with copy of Any?(v1 + 16, v4 + 32);
  if (*(v4 + 56))
  {
    outlined init with take of Any((v4 + 32), v4);
    swift_dynamicCast();
    return MXIComponent.splitMode.modify;
  }

  __break(1u);
  return result;
}

void MXIComponent.splitMode.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 64);
  v1[3] = &type metadata for MXIComponent.MXISplitMode;
  *v1 = v2;
  outlined assign with take of Any?(v1, v3 + 16);

  free(v1);
}

float (*MXIComponent.splitDepth.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 48);
  return MXIComponent.splitDepth.modify;
}

float MXIComponent.splitDepth.modify(float *a1)
{
  result = a1[2];
  *(*a1 + 48) = result;
  return result;
}

_BYTE *(*MXIComponent.performSRGBConversion.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 52);
  return MXIComponent.performSRGBConversion.modify;
}

void (*MXIComponent.foregroundRect.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x18uLL);
  }

  *a1 = v3;
  *(v3 + 16) = v1;
  *v3 = *(v1 + 64);
  return GeometricPin.offsetOrientation.modify;
}

_BYTE *(*MXIComponent.enableCroppedForegroundTexture.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 80);
  return __REAssetManager.syncLoadsShouldWaitForResourceSharing.modify;
}

float (*MXIComponent.alphaThreshold.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 84);
  return MXIComponent.alphaThreshold.modify;
}

float MXIComponent.alphaThreshold.modify(float *a1)
{
  result = a1[2];
  *(*a1 + 84) = result;
  return result;
}

__n128 MXIComponent.cameraMatrixDriver.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  *(a1 + 96) = *(v1 + 192);
  *(a1 + 112) = v2;
  *(a1 + 128) = *(v1 + 224);
  v3 = *(v1 + 144);
  *(a1 + 32) = *(v1 + 128);
  *(a1 + 48) = v3;
  v4 = *(v1 + 176);
  *(a1 + 64) = *(v1 + 160);
  *(a1 + 80) = v4;
  result = *(v1 + 112);
  *a1 = *(v1 + 96);
  *(a1 + 16) = result;
  return result;
}

__n128 MXIComponent.cameraMatrixDriver.setter(uint64_t a1)
{
  v2 = *(a1 + 112);
  *(v1 + 192) = *(a1 + 96);
  *(v1 + 208) = v2;
  *(v1 + 224) = *(a1 + 128);
  v3 = *(a1 + 48);
  *(v1 + 128) = *(a1 + 32);
  *(v1 + 144) = v3;
  v4 = *(a1 + 80);
  *(v1 + 160) = *(a1 + 64);
  *(v1 + 176) = v4;
  result = *(a1 + 16);
  *(v1 + 96) = *a1;
  *(v1 + 112) = result;
  return result;
}

double MXIComponent.ProxyConfiguration.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1C18C2750;
  *&result = 0x5A0000002DLL;
  *(a1 + 16) = 0x5A0000002DLL;
  return result;
}

double MXIComponent.ProxyConfiguration.init(width:height:distance:cornerRadius:)@<D0>(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 12) = a5;
  *&result = 0x5A0000002DLL;
  *(a1 + 16) = 0x5A0000002DLL;
  return result;
}

uint64_t MXIComponent.ProxyConfiguration.init(width:height:distance:cornerRadius:widthSegmentCount:heightSegmentCount:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>, float a6@<S2>, float a7@<S3>)
{
  *a3 = a4;
  *(a3 + 4) = a5;
  *(a3 + 8) = a6;
  *(a3 + 12) = a7;
  *(a3 + 16) = result;
  *(a3 + 20) = a2;
  return result;
}

double MXIComponent.proxyConfiguration.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 228);
  result = *(v1 + 244);
  *(a1 + 16) = result;
  return result;
}

double MXIComponent.proxyConfiguration.setter(uint64_t a1)
{
  *(v1 + 228) = *a1;
  result = *(a1 + 16);
  *(v1 + 244) = result;
  return result;
}

uint64_t static MXIComponent.TwoPassOffscreenOptions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 4) == *(a2 + 4))
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MXIComponent.TwoPassOffscreenOptions(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 4) == *(a2 + 4))
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

float MXIComponent.twoPassOffscreenOptions.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 252);
  v3 = *(v1 + 256);
  v4 = *(v1 + 260);
  *a1 = result;
  *(a1 + 4) = v3;
  *(a1 + 8) = v4;
  return result;
}

float MXIComponent.twoPassOffscreenOptions.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 8);
  *(v1 + 252) = *a1;
  *(v1 + 256) = v3;
  *(v1 + 260) = v4;
  return result;
}

double MXIComponent.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 45) = 0;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of MXIComponent.init());
  *(a1 + 64) = v2;
  *(a1 + 80) = 0;
  *(a1 + 84) = 0;
  _s17RealityFoundation12MXIComponentV18CameraMatrixDriverOWOi0_(v8);
  v3 = v8[7];
  *(a1 + 192) = v8[6];
  *(a1 + 208) = v3;
  *(a1 + 224) = v9;
  v4 = v8[3];
  *(a1 + 128) = v8[2];
  *(a1 + 144) = v4;
  v5 = v8[5];
  *(a1 + 160) = v8[4];
  *(a1 + 176) = v5;
  v6 = v8[1];
  *(a1 + 96) = v8[0];
  *(a1 + 112) = v6;
  *(a1 + 228) = xmmword_1C18C2750;
  *&result = 0x5A0000002DLL;
  *(a1 + 244) = 0x5A0000002DLL;
  *(a1 + 252) = 0x53F333333;
  *(a1 + 260) = 1;
  return result;
}

uint64_t MXIComponent.init(meshResource:textureResource:renderTwoPass:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 45) = 0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of MXIComponent.init(meshResource:textureResource:renderTwoPass:));
  *(a4 + 64) = v8;
  *(a4 + 80) = 0;
  *(a4 + 84) = 0;
  _s17RealityFoundation12MXIComponentV18CameraMatrixDriverOWOi0_(v29);
  v9 = v29[7];
  *(a4 + 192) = v29[6];
  *(a4 + 208) = v9;
  *(a4 + 224) = v30;
  v10 = v29[3];
  *(a4 + 128) = v29[2];
  *(a4 + 144) = v10;
  v11 = v29[5];
  *(a4 + 160) = v29[4];
  *(a4 + 176) = v11;
  v12 = v29[1];
  *(a4 + 96) = v29[0];
  *(a4 + 112) = v12;
  *(a4 + 228) = xmmword_1C18C2750;
  *(a4 + 244) = 0x5A0000002DLL;
  *(a4 + 252) = 0x53F333333;
  *(a4 + 260) = 1;
  v13 = *(a1 + 16);
  if (!v13)
  {

    v16 = 0;
LABEL_8:
    *a4 = v16;
    *(a4 + 8) = a3 & 1;
    return result;
  }

  v14 = *(a2 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (!(MEMORY[0x1E69E7CC0] >> 62))
  {
LABEL_3:
    type metadata accessor for MXISceneResource();
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 20) = xmmword_1C18C2760;
    *(v16 + 36) = 0x80000000010;
    *(v16 + 44) = 2048;
    *(v16 + 48) = 1;
    RERetain();
    *(v16 + 56) = v13;
    RERetain();
    *(v16 + 64) = v14;
    v17 = v15[2];
    if (v17)
    {
      v18 = v15 + 4;
      do
      {
        v19 = *v18++;
        RERetain();
        --v17;
      }

      while (v17);
    }

    *(v16 + 72) = v15;

    *(v16 + 80) = 0;
    swift_beginAccess();
    *(v16 + 16) = 0;
    swift_beginAccess();
    *(v16 + 20) = 1070141402;
    swift_beginAccess();
    *(v16 + 24) = 1065353216;
    swift_beginAccess();
    *(v16 + 28) = 0x40000000;
    swift_beginAccess();
    *(v16 + 32) = 1101004800;
    swift_beginAccess();
    *(v16 + 36) = 64;
    swift_beginAccess();
    *(v16 + 40) = 2048;
    swift_beginAccess();
    *(v16 + 44) = 2048;
    result = swift_beginAccess();
    *(v16 + 48) = 1;
    goto LABEL_8;
  }

  v28 = *(a2 + 16);
  v21 = __CocoaSet.count.getter();
  if (!v21)
  {
LABEL_15:
    v14 = v28;
    goto LABEL_3;
  }

  v22 = v21;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21 & ~(v21 >> 63), 0);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    v24 = MEMORY[0x1E69E7CC0];
    do
    {
      v25 = *(MEMORY[0x1C68F41F0](v23, v24) + 16);
      swift_unknownObjectRelease();
      v27 = v15[2];
      v26 = v15[3];
      if (v27 >= v26 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
      }

      ++v23;
      v15[2] = v27 + 1;
      v15[v27 + 4] = v25;
    }

    while (v22 != v23);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

double MXIComponent.init(mxiSceneResource:renderTwoPass:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 45) = 0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of MXIComponent.init(mxiSceneResource:renderTwoPass:));
  *(a3 + 64) = v6;
  *(a3 + 80) = 0;
  *(a3 + 84) = 0;
  _s17RealityFoundation12MXIComponentV18CameraMatrixDriverOWOi0_(v12);
  v7 = v12[7];
  *(a3 + 192) = v12[6];
  *(a3 + 208) = v7;
  *(a3 + 224) = v13;
  v8 = v12[3];
  *(a3 + 128) = v12[2];
  *(a3 + 144) = v8;
  v9 = v12[5];
  *(a3 + 160) = v12[4];
  *(a3 + 176) = v9;
  v10 = v12[1];
  *(a3 + 96) = v12[0];
  *(a3 + 112) = v10;
  *(a3 + 228) = xmmword_1C18C2750;
  *&result = 0x5A0000002DLL;
  *(a3 + 244) = 0x5A0000002DLL;
  *(a3 + 252) = 0x53F333333;
  *(a3 + 260) = 1;
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

void MXIComponent.init(mxiSceneResource:optimizationMode:)(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 45) = 0;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of MXIComponent.init(mxiSceneResource:optimizationMode:));
  *(a3 + 64) = v6;
  *(a3 + 80) = 0;
  *(a3 + 84) = 0;
  _s17RealityFoundation12MXIComponentV18CameraMatrixDriverOWOi0_(v15);
  v7 = v15[7];
  *(a3 + 192) = v15[6];
  *(a3 + 208) = v7;
  *(a3 + 224) = v16;
  v8 = v15[3];
  *(a3 + 128) = v15[2];
  *(a3 + 144) = v8;
  v9 = v15[5];
  *(a3 + 160) = v15[4];
  *(a3 + 176) = v9;
  v10 = v15[1];
  *(a3 + 96) = v15[0];
  *(a3 + 112) = v10;
  *(a3 + 228) = xmmword_1C18C2750;
  *a3 = a1;
  if (v5)
  {
    v11 = 5;
  }

  else
  {
    v11 = 1;
  }

  v12 = 0.7;
  if (v5)
  {
    v13 = 45;
  }

  else
  {
    v12 = 1.0;
    v13 = 1;
  }

  if (v5)
  {
    v14 = 90;
  }

  else
  {
    v14 = 1;
  }

  *(a3 + 8) = v5;
  *(a3 + 260) = v5;
  *(a3 + 256) = v11;
  *(a3 + 252) = v12;
  *(a3 + 244) = v13;
  *(a3 + 248) = v14;
}

void static MXIComponent.__fromCore(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  SceneType = REMXIComponentGetSceneType();
  REMXIComponentGetVerticalFoV();
  v5 = v4;
  REMXIComponentGetAspectRatio();
  v7 = v6;
  REMXIComponentGetNearDistance();
  v9 = v8;
  REMXIComponentGetFarDistance();
  v11 = v10;
  LayerCount = REMXIComponentGetLayerCount();
  ResolutionWidth = REMXIComponentGetResolutionWidth();
  ResolutionHeight = REMXIComponentGetResolutionHeight();
  PremultipliedAlpha = REMXIComponentGetPremultipliedAlpha();
  RenderTwoPass = REMXIComponentGetRenderTwoPass();
  SplitMode = REMXIComponentGetSplitMode();
  REMXIComponentGetSplitDepth();
  v18 = v17;
  PerformSRGBConversion = REMXIComponentGetPerformSRGBConversion();
  EnableCroppedForegroundTexture = REMXIComponentGetEnableCroppedForegroundTexture();
  Mesh = REMXIComponentGetMesh();
  if (Mesh)
  {
    v22 = Mesh;
    v53 = ResolutionWidth;
    v54 = ResolutionHeight;
    v58 = SplitMode;
    __dst = a2;
    Texture = REMXIComponentGetTexture();
    v24 = REMXIComponentGetTextures();
    if (v24)
    {
      v25 = v24;
      v26 = specialized static MXISceneResource.fromCFArray(_:)(v25);

      type metadata accessor for MXISceneResource();
      v27 = swift_allocObject();
      *(v27 + 16) = 0;
      *(v27 + 20) = xmmword_1C18C2760;
      *(v27 + 36) = 0x80000000010;
      *(v27 + 44) = 2048;
      *(v27 + 48) = 1;
      RERetain();
      *(v27 + 56) = v22;
      if (Texture)
      {
        RERetain();
      }

      *(v27 + 64) = Texture;
      v28 = *(v26 + 2);
      if (v28)
      {
        v29 = (v26 + 32);
        do
        {
          v30 = *v29++;
          RERetain();
          --v28;
        }

        while (v28);
      }

      *(v27 + 72) = v26;
      *(v27 + 80) = 0;
      swift_beginAccess();
      *(v27 + 16) = SceneType == 1;
      swift_beginAccess();
      *(v27 + 20) = v5;
      swift_beginAccess();
      *(v27 + 24) = v7;
      swift_beginAccess();
      *(v27 + 28) = v9;
      swift_beginAccess();
      *(v27 + 32) = v11;
      swift_beginAccess();
      *(v27 + 36) = LayerCount;
      swift_beginAccess();
      *(v27 + 40) = v53;
      swift_beginAccess();
      *(v27 + 44) = v54;
      swift_beginAccess();
      *(v27 + 48) = PremultipliedAlpha;
      memset(&__src[16], 0, 37);
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of MXIComponent.init(mxiSceneResource:renderTwoPass:));
      *&__src[64] = v31;
      __src[80] = 0;
      *&__src[84] = 0;
      _s17RealityFoundation12MXIComponentV18CameraMatrixDriverOWOi0_(&v77);
      *&__src[192] = v83;
      *&__src[208] = v84;
      __src[224] = v85;
      *&__src[128] = v79;
      *&__src[144] = v80;
      *&__src[160] = v81;
      *&__src[176] = v82;
      *&__src[96] = v77;
      *&__src[112] = v78;
      *&__src[228] = xmmword_1C18C2750;
      *&__src[244] = 0x5A0000002DLL;
      *&__src[252] = 0x53F333333;
      __src[260] = 1;
      *__src = v27;
      __src[8] = RenderTwoPass;

      if (RenderTwoPass)
      {
        REMXIComponentGetProxyWidth();
        v33 = v32;
        REMXIComponentGetProxyHeight();
        v35 = v34;
        REMXIComponentGetProxyDistance();
        v37 = v36;
        REMXIComponentGetProxyCornerRadius();
        *&__src[228] = v33;
        *&__src[232] = v35;
        *&__src[236] = v37;
        *&__src[240] = v38;
        *&__src[244] = REMXIComponentGetProxyWidthSegmentCount();
        *&__src[248] = REMXIComponentGetProxyHeightSegmentCount();
        REMXIComponentGetTwoPassOptionsResolutionScale();
        *&__src[252] = v39;
        *&__src[256] = REMXIComponentGetTwoPassOptionsFramesPerRender();
        __src[260] = REMXIComponentGetTwoPassOptionsDoReprojection();
      }

      v40 = v58;
      if (v58 >= 4)
      {
        v40 = 0;
      }

      *(&v68 + 1) = &type metadata for MXIComponent.MXISplitMode;
      LOBYTE(v67) = v40;
      outlined assign with take of Any?(&v67, &__src[16]);
      *&__src[48] = v18;
      __src[52] = PerformSRGBConversion;
      REMXIComponentGetAlphaThreshold();
      *&__src[84] = v41;
      REMXIComponentGetForegroundRect();
      *&__src[64] = v42;
      __src[80] = EnableCroppedForegroundTexture;
      if (REMXIComponentGetUseCustomMatrices())
      {
        REMXIComponentGetCustomViewMatrix();
        v64 = v44;
        v66 = v43;
        v60 = v46;
        v61 = v45;
        REMXIComponentGetCustomProjectionMatrix();
        v57 = v48;
        v59 = v47;
        v55 = v50;
        v56 = v49;

        v67 = v66;
        v68 = v64;
        v69 = v61;
        v70 = v60;
        v71 = v59;
        v72 = v57;
        v73 = v56;
        v74 = v55;
        _s17RealityFoundation12MXIComponentV18CameraMatrixDriverOWOi_(&v67);
        *&__src[192] = v73;
        *&__src[208] = v74;
        __src[224] = v75;
        *&__src[128] = v69;
        *&__src[144] = v70;
        *&__src[160] = v71;
        *&__src[176] = v72;
        v52 = v67;
        v51 = v68;
      }

      else
      {

        *&__src[192] = v83;
        *&__src[208] = v84;
        __src[224] = v85;
        *&__src[128] = v79;
        *&__src[144] = v80;
        *&__src[160] = v81;
        *&__src[176] = v82;
        v52 = v77;
        v51 = v78;
      }

      *&__src[96] = v52;
      *&__src[112] = v51;
      memcpy(__dst, __src, 0x105uLL);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    MXIComponent.init()(a2);
  }
}

uint64_t MXIComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  if (*v1)
  {
    v4 = *(v3 + 56);
    v5 = *v1;

    REMXIComponentSetMesh();
    if (*(v3 + 64))
    {
      REMXIComponentSetTexture();
    }

    v6 = *(v3 + 72);

    v8 = specialized static MXISceneResource.toCFArray(_:)(v7);

    REMXIComponentSetTextures();

    swift_beginAccess();
    v9 = *(v3 + 16);
    REMXIComponentSetSceneType();
    swift_beginAccess();
    v10 = *(v3 + 20);
    REMXIComponentSetVerticalFoV();
    swift_beginAccess();
    v11 = *(v3 + 24);
    REMXIComponentSetAspectRatio();
    swift_beginAccess();
    v12 = *(v3 + 28);
    REMXIComponentSetNearDistance();
    swift_beginAccess();
    v13 = *(v3 + 32);
    REMXIComponentSetFarDistance();
    swift_beginAccess();
    if (*(v3 + 36))
    {
      REMXIComponentSetLayerCount();
    }

    swift_beginAccess();
    if (*(v3 + 40))
    {
      REMXIComponentSetResolutionWidth();
    }

    swift_beginAccess();
    if (*(v3 + 44))
    {
      REMXIComponentSetResolutionHeight();
    }

    swift_beginAccess();
    v14 = *(v3 + 48);
    REMXIComponentSetPremultipliedAlpha();
  }

  v15 = *(v1 + 8);
  REMXIComponentSetRenderTwoPass();
  if (v15 == 1)
  {
    v16 = *(v1 + 57);
    REMXIComponentSetProxyWidth();
    v17 = *(v1 + 58);
    REMXIComponentSetProxyHeight();
    v18 = *(v1 + 59);
    REMXIComponentSetProxyDistance();
    v19 = *(v1 + 60);
    REMXIComponentSetProxyCornerRadius();
    v20 = *(v1 + 61);
    REMXIComponentSetProxyWidthSegmentCount();
    v21 = *(v1 + 62);
    REMXIComponentSetProxyHeightSegmentCount();
    v22 = *(v1 + 63);
    REMXIComponentSetTwoPassOptionsResolutionScale();
    v23 = *(v1 + 64);
    REMXIComponentSetTwoPassOptionsFramesPerRender();
    v24 = *(v1 + 260);
    REMXIComponentSetTwoPassOptionsDoReprojection();
    REMXIComponentSetTwoPassOptionsUseProxyRendering();
  }

  outlined init with copy of Any?((v1 + 2), &v38);
  v25 = *(&v39 + 1);
  outlined destroy of Any?(&v38);
  if (v25)
  {
    result = outlined init with copy of Any?((v1 + 2), &v36);
    if (!v37)
    {
      __break(1u);
      return result;
    }

    outlined init with take of Any(&v36, &v38);
    swift_dynamicCast();
  }

  else
  {
    v47 = 0;
  }

  REMXIComponentSetSplitMode();
  v27 = *(v1 + 12);
  REMXIComponentSetSplitDepth();
  v28 = *(v1 + 52);
  REMXIComponentSetPerformSRGBConversion();
  v29 = *(v1 + 21);
  REMXIComponentSetAlphaThreshold();
  v30 = *(v1 + 4);
  REMXIComponentSetForegroundRect();
  v31 = *(v1 + 80);
  REMXIComponentSetEnableCroppedForegroundTexture();
  v32 = *(v1 + 13);
  v44 = *(v1 + 12);
  v45 = v32;
  v46 = *(v1 + 224);
  v33 = *(v1 + 9);
  v40 = *(v1 + 8);
  v41 = v33;
  v34 = *(v1 + 11);
  v42 = *(v1 + 10);
  v43 = v34;
  v35 = *(v1 + 7);
  v38 = *(v1 + 6);
  v39 = v35;
  if (_s17RealityFoundation12MXIComponentV18CameraMatrixDriverOWOg(&v38) == 1)
  {
    REMXIComponentSetUseCustomMatrices();
  }

  else
  {
    REMXIComponentSetUseCustomMatrices();
    REMXIComponentSetCustomProjectionMatrix();
    REMXIComponentSetCustomViewMatrix();
  }

  return RENetworkMarkComponentDirty();
}

Swift::Int MXIComponent.MXISplitMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

Swift::Int MXIComponent.MXIOptimizationMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

BOOL specialized static MXIComponent.ProxyConfiguration.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vceqq_f32(*a1, *a2))) & 1) != 0 && a1[1].i32[0] == a2[1].i32[0])
  {
    return a1[1].i32[1] == a2[1].i32[1];
  }

  return result;
}

double _s17RealityFoundation12MXIComponentV18CameraMatrixDriverOWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

uint64_t _s17RealityFoundation12MXIComponentV18CameraMatrixDriverOWOg(uint64_t a1)
{
  if (*(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type MXIComponent.MXISplitMode and conformance MXIComponent.MXISplitMode()
{
  result = lazy protocol witness table cache variable for type MXIComponent.MXISplitMode and conformance MXIComponent.MXISplitMode;
  if (!lazy protocol witness table cache variable for type MXIComponent.MXISplitMode and conformance MXIComponent.MXISplitMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MXIComponent.MXISplitMode and conformance MXIComponent.MXISplitMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MXIComponent.MXIOptimizationMode and conformance MXIComponent.MXIOptimizationMode()
{
  result = lazy protocol witness table cache variable for type MXIComponent.MXIOptimizationMode and conformance MXIComponent.MXIOptimizationMode;
  if (!lazy protocol witness table cache variable for type MXIComponent.MXIOptimizationMode and conformance MXIComponent.MXIOptimizationMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MXIComponent.MXIOptimizationMode and conformance MXIComponent.MXIOptimizationMode);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MXIComponent(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 261))
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

uint64_t storeEnumTagSinglePayload for MXIComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0;
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
    *(result + 260) = 0;
    *(result + 256) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 261) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 261) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy129_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MXIComponent.CameraMatrixDriver(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 129))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MXIComponent.CameraMatrixDriver(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 128) = 0;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
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

  *(result + 129) = v3;
  return result;
}

uint64_t destructiveInjectEnumTag for MXIComponent.CameraMatrixDriver(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    *(result + 128) = 1;
  }

  else
  {
    *(result + 128) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MXIComponent.TwoPassOffscreenOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MXIComponent.TwoPassOffscreenOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MXIComponent.TreatmentsControl(uint64_t a1, unsigned int a2)
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
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

Swift::Int __swiftcall UniqueIDManager.generateNextUnassignedID()()
{
  v1 = v0;
  v2 = *(v0 + 16);

  os_unfair_lock_lock(v2 + 4);

  result = swift_beginAccess();
  v4 = v1[3];
  for (i = v1[4]; *(v4 + 16); v4 = v1[3])
  {
    result = MEMORY[0x1C68F4BF0](*(v4 + 40), i);
    v6 = -1 << *(v4 + 32);
    v7 = result & ~v6;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      break;
    }

    v8 = ~v6;
    while (*(*(v4 + 48) + 8 * v7) != i)
    {
      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    if (__OFADD__(i++, 1))
    {
      goto LABEL_14;
    }

    v1[4] = i;
  }

LABEL_9:
  if (__OFADD__(i, 1))
  {
    __break(1u);
  }

  else
  {
    v1[4] = i + 1;
    result = specialized Set.contains(_:)(i, v4);
    if ((result & 1) == 0)
    {
      swift_beginAccess();
      specialized Set._Variant.insert(_:)(&v11, i);
      swift_endAccess();
      v10 = v1[2];

      os_unfair_lock_unlock(v10 + 4);

      return i;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t UniqueIDManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t HasCollision.collision.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = (*(*v1 + 112))(v8);
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA09CollisionD0V_TtB5(v2, v3, v4, 0, *v6);

  return v5(v8, 0);
}

uint64_t HasCollision.collision.getter@<X0>(void *a1@<X8>)
{
  (*(*v1 + 96))(&v4);
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA09CollisionD0V_Tt0B5(v4, a1);
}

uint64_t key path setter for HasCollision.collision : <A>A(__int128 *a1, uint64_t *a2)
{
  v2 = *(a1 + 2);
  v3 = *a2;
  v5 = *a1;
  v6 = v2;

  return HasCollision.collision.setter(&v5);
}

void (*HasCollision.collision.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  HasCollision.collision.getter(v7);
  return HasCollision.collision.modify;
}

void HasCollision.collision.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = (*a1)[5];
  v7[0] = **a1;
  v7[1] = v3;
  v7[2] = v4;
  if (a2)
  {

    HasCollision.collision.setter(v7);
    v6 = *v2;
  }

  else
  {
    HasCollision.collision.setter(v7);
  }

  free(v2);
}

uint64_t REAudioGeneratorConfigurationWrapper.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  REAudioGeneratorConfigurationDestroy();

  return swift_deallocClassInstance();
}

uint64_t QuerySelectors.ComponentQueryResult.__allocating_init(entity:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t QuerySelectors.ComponentQueryResult.entity.getter()
{
  specialized QuerySelectors.ComponentQueryResult.entity.getter();
}

uint64_t QuerySelectors.ComponentQueryResult.entity.setter(uint64_t a1)
{
  specialized QuerySelectors.ComponentQueryResult.entity.setter(a1);
}

uint64_t (*QuerySelectors.ComponentQueryResult.entity.modify(uint64_t (**a1)(uint64_t *a1)))(uint64_t *a1)
{
  a1[1] = v1;
  result = *(v1 + 16);
  if (result)
  {
    *a1 = result;

    return QuerySelectors.ComponentQueryResult.entity.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t QuerySelectors.ComponentQueryResult.entity.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
}

uint64_t QuerySelectors.ComponentQueryResult._entity.setter(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t QuerySelectors.ComponentQueryResult.component.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v12 - v7;
  result = v1[2];
  if (result)
  {
    v12[1] = v1[2];
    v10 = *(v3 + 88);

    Entity.ComponentSet.subscript.getter(v4, v10, v8);

    Description = v4[-1].Description;
    result = Description[6](v8, 1, v4);
    if (result != 1)
    {
      return Description[4](a1, v8, v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t QuerySelectors.ComponentQueryResult.component.setter(uint64_t a1)
{
  v3 = *v1;
  specialized QuerySelectors.ComponentQueryResult.component.setter(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*QuerySelectors.ComponentQueryResult.component.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  QuerySelectors.ComponentQueryResult.component.getter(v9);
  return QuerySelectors.ComponentQueryResult.component.modify;
}

void QuerySelectors.ComponentQueryResult.component.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[3], v4, v5);
    specialized QuerySelectors.ComponentQueryResult.component.setter(v3);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    specialized QuerySelectors.ComponentQueryResult.component.setter((*a1)[4]);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t QuerySelectors.ComponentQueryResult.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t QuerySelectors.ComponentQueryResult.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t specialized QuerySelectors.ComponentQueryResult.entity.getter()
{
  result = *(v0 + 16);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized QuerySelectors.ComponentQueryResult.entity.setter(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t specialized QuerySelectors.ComponentQueryResult.component.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x1EEE9AC00](v5);
  v10 = &v16 - v9;
  v11 = v1[2];
  if (v11)
  {
    v12 = *(v4 - 8);
    (*(v12 + 16))(v10, a1, v4);
    (*(v12 + 56))(v10, 0, 1, v4);
    v17 = v11;
    v13 = *(v3 + 88);
    swift_retain_n();
    specialized Entity.ComponentSet.subscript.setter(v10, v4, v4, v13);
    (*(v6 + 8))(v10, v5);
    v14 = *(v17 + 16);

    v15 = *(v11 + 16);

    if (v14 == v15)
    {
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static Component.__fromCore(_:) in conformance BillboardComponent@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  result = REBillboardComponentGetBlendFactor();
  *a2 = v5;
  return result;
}

uint64_t static BillboardComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  result = REBillboardComponentGetBlendFactor();
  *a2 = v5;
  return result;
}

uint64_t protocol witness for Component.__toCore(_:) in conformance BillboardComponent(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  REBillboardComponentSetBlendFactor();

  return RENetworkMarkComponentDirty();
}

uint64_t BillboardComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  REBillboardComponentSetBlendFactor();

  return RENetworkMarkComponentDirty();
}

void AudioFileResource.Configuration.init(from:)(uint64_t a1@<X8>)
{
  if ((REAssetHandleIsLoaded() & 1) == 0)
  {
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.audio);
    v11 = static os_log_type_t.error.getter();
    v12 = Logger.logObject.getter();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1C1358000, v12, v11, "In order to construct an AudioFileResource.Configuration, the underlying CoreRE AudioFileAsset\nmust be at least partially loaded. Initializing AudioFileResource.Configuration with default\nvalues instead.", v13, 2u);
      MEMORY[0x1C6902A30](v13, -1, -1);
    }

    v3 = 0;
    RandomizeStart = 0;
    v14 = 0;
    v7 = 0;
    v9 = 0;
    v15 = 1;
    v16 = -1;
    v17 = 0.0;
    v18 = -1;
    goto LABEL_25;
  }

  Streaming = REAudioFileAssetGetStreaming();
  v3 = REAudioFileAssetGetLoopCount() != 0;
  RandomizeStart = REAudioFileAssetGetRandomizeStart();
  v5 = REAudioFileAssetGetMixGroupName();
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v15 = Streaming ^ 1;
  NormalizationMode = REAudioFileAssetGetNormalizationMode();
  REAudioFileAssetGetTargetLUFS();
  if (NormalizationMode == 2)
  {
    v16 = 0;
  }

  else
  {
    v17 = 0.0;
    if (NormalizationMode != 1)
    {
      v16 = -1;
      goto LABEL_18;
    }

    if (v20 == *MEMORY[0x1E6998DF0])
    {
      v16 = 2;
      goto LABEL_18;
    }

    v16 = 1;
  }

  v17 = v20;
LABEL_18:
  CalibrationMode = REAudioFileAssetGetCalibrationMode();
  REAudioFileAssetGetCalibrationLevel();
  switch(CalibrationMode)
  {
    case 0:
      v14 = 0;
      v18 = -1;
LABEL_25:
      *a1 = v15;
      *(a1 + 1) = v3;
      *(a1 + 2) = RandomizeStart;
      *(a1 + 8) = v17;
      *(a1 + 16) = v16;
      *(a1 + 24) = v14;
      *(a1 + 32) = v18;
      *(a1 + 40) = v7;
      *(a1 + 48) = v9;
      *(a1 + 56) = 0;
      *(a1 + 60) = 1;
      return;
    case 1:
      v18 = 0;
LABEL_24:
      v14 = v22;
      goto LABEL_25;
    case 2:
      v18 = 1;
      goto LABEL_24;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

_BYTE *AudioFileResource.Configuration.init(loadingStrategy:shouldLoop:shouldRandomizeStartTime:normalization:calibration:mixGroupName:)@<X0>(_BYTE *result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a4;
  v9 = *(a4 + 8);
  v10 = *a5;
  v11 = *(a5 + 8);
  *a8 = *result;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 8) = v8;
  *(a8 + 16) = v9;
  *(a8 + 24) = v10;
  *(a8 + 32) = v11;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  *(a8 + 56) = 0;
  *(a8 + 60) = 1;
  return result;
}

void AudioFileResource.Configuration.normalization.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t AudioFileResource.Configuration.normalization.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

void AudioFileResource.Configuration.calibration.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t AudioFileResource.Configuration.calibration.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t AudioFileResource.Configuration.mixGroupName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t AudioFileResource.Configuration.mixGroupName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t AudioFileResource.Configuration.layoutTagOverride.setter(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 60) = BYTE4(result) & 1;
  return result;
}

void AudioFileResource.Configuration.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 48);
  v14 = *(v0 + 40);
  v13 = *(v0 + 56);
  v8 = *(v0 + 60);
  v9 = *v0 == 0;
  String.hash(into:)();

  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  if (v4 == 255)
  {
    Hasher._combine(_:)(0);
    if (v6 == 255)
    {
      goto LABEL_19;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    if (v4)
    {
      if (v4 != 1)
      {
        MEMORY[0x1C68F4C10](0);
        if (v6 == 255)
        {
          goto LABEL_19;
        }

        goto LABEL_12;
      }

      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    MEMORY[0x1C68F4C10](v10);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v3;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x1C68F4C50](v11);
    if (v6 == 255)
    {
LABEL_19:
      Hasher._combine(_:)(0);
      if (!v7)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }
  }

LABEL_12:
  Hasher._combine(_:)(1u);
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x1C68F4C10]((v6 & 1) != 0);
  MEMORY[0x1C68F4C50](v12);
  if (!v7)
  {
LABEL_20:
    Hasher._combine(_:)(0);
    if (!v8)
    {
      goto LABEL_21;
    }

LABEL_17:
    Hasher._combine(_:)(0);
    return;
  }

LABEL_16:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (v8)
  {
    goto LABEL_17;
  }

LABEL_21:
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v13);
}

Swift::Int AudioFileResource.Configuration.hashValue.getter()
{
  Hasher.init(_seed:)();
  AudioFileResource.Configuration.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AudioFileResource.Configuration()
{
  Hasher.init(_seed:)();
  AudioFileResource.Configuration.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AudioFileResource.Configuration()
{
  Hasher.init(_seed:)();
  AudioFileResource.Configuration.hash(into:)();
  return Hasher._finalize()();
}

BOOL specialized static AudioFileResource.Configuration.== infix(_:_:)(uint64_t a1, double *a2)
{
  v2 = *(a1 + 1);
  v28 = *(a1 + 8);
  v33 = *(a1 + 16);
  v3 = *(a1 + 24);
  v31 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 60);
  v8 = *a2;
  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  v30 = a2[1];
  v34 = *(a2 + 16);
  v35 = *(a1 + 2);
  v11 = a2[3];
  v12 = *a1 == 0;
  v32 = *(a2 + 32);
  if (*a1)
  {
    v13 = 0x64616F6C657270;
  }

  else
  {
    v13 = 0x6D6165727473;
  }

  v27 = *(a2 + 5);
  v29 = *(a2 + 6);
  if (v12)
  {
    v14 = 0xE600000000000000;
  }

  else
  {
    v14 = 0xE700000000000000;
  }

  v26 = *(a2 + 14);
  if (*a2)
  {
    v15 = 0x64616F6C657270;
  }

  else
  {
    v15 = 0x6D6165727473;
  }

  if (*a2)
  {
    v16 = 0xE700000000000000;
  }

  else
  {
    v16 = 0xE600000000000000;
  }

  v17 = *(a2 + 60);
  if (v13 == v15 && v14 == v16)
  {

    result = 0;
    if (v2 != v9 || ((v35 ^ v10) & 1) != 0)
    {
      return result;
    }

LABEL_21:
    if (v33 == 255)
    {
      if (v34 != 255)
      {
        return 0;
      }

      goto LABEL_34;
    }

    if (v34 == 255)
    {
      return 0;
    }

    if (v33)
    {
      if (v33 != 1)
      {
        result = 0;
        if (v34 != 2 || v30 != 0.0)
        {
          return result;
        }

        goto LABEL_34;
      }

      result = 0;
      if (v34 != 1)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (v34)
      {
        return result;
      }
    }

    if (v28 != v30)
    {
      return result;
    }

LABEL_34:
    if (v31 == 255)
    {
      if (v32 != 255)
      {
        return 0;
      }
    }

    else
    {
      if (v32 == 255)
      {
        return 0;
      }

      result = 0;
      if (v31)
      {
        if ((v32 & 1) == 0)
        {
          return result;
        }
      }

      else if (v32)
      {
        return result;
      }

      if (v3 != v11)
      {
        return result;
      }
    }

    if (v5)
    {
      if (!v29 || (v4 != v27 || v5 != v29) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v29)
    {
      return 0;
    }

    if ((v7 & 1) == 0)
    {
      if (v6 == v26)
      {
        v24 = v17;
      }

      else
      {
        v24 = 1;
      }

      return (v24 & 1) == 0;
    }

    return (v17 & 1) != 0;
  }

  v25 = *(a2 + 60);
  v19 = v5;
  v20 = v4;
  v21 = v7;
  v22 = v6;
  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if ((v23 & 1) != 0 && ((v2 ^ v9) & 1) == 0)
  {
    v6 = v22;
    v7 = v21;
    v4 = v20;
    v5 = v19;
    v17 = v25;
    if (((v35 ^ v10) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AudioFileResource.Configuration and conformance AudioFileResource.Configuration()
{
  result = lazy protocol witness table cache variable for type AudioFileResource.Configuration and conformance AudioFileResource.Configuration;
  if (!lazy protocol witness table cache variable for type AudioFileResource.Configuration and conformance AudioFileResource.Configuration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioFileResource.Configuration and conformance AudioFileResource.Configuration);
  }

  return result;
}

uint64_t protocol witness for static RegisterableComponent.register() in conformance __RKEntityInteractionsComponent(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t *a6)
{
  a3(0);
  swift_allocObject();
  result = a5();
  if (!v6)
  {
    v10 = result;
    swift_beginAccess();
    v11 = *a6;
    *a6 = v10;
  }

  return result;
}

uint64_t protocol witness for static RegisterableComponent.unregister() in conformance __RKEntityInteractionsComponent(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  v4 = *a3;
  *a3 = 0;
}

uint64_t static QuerySelector.project(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v8 + 16))(&v12 - v7, a1, AssociatedTypeWitness, v6);
  v9 = swift_getAssociatedTypeWitness();
  v10 = swift_dynamicCast();
  return (*(*(v9 - 8) + 56))(a2, v10 ^ 1u, 1, v9);
}

uint64_t static QuerySelectors.QueryTypeSelector.project(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  (*(*(a2 - 8) + 16))(a3, a1, a2);
  v5 = *(v7 + 56);

  return v5(a3, 0, 1, a2);
}

uint64_t static PhotogrammetryFileHelpers.requiredBytesCheckpointDir(maxNumImagesBytes:)(uint64_t a1)
{
  v1 = (a1 * 3) >> 64;
  result = 3 * a1;
  if (v1 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

id one-time initialization function for byteFormatter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
  [v0 setAllowedUnits_];
  [v0 setAdaptive_];
  [v0 setIncludesUnit_];
  result = [v0 setCountStyle_];
  static PhotogrammetryFileHelpers.byteFormatter = v0;
  return result;
}

id static PhotogrammetryFileHelpers.byteFormatter.getter()
{
  if (one-time initialization token for byteFormatter != -1)
  {
    swift_once();
  }

  v1 = static PhotogrammetryFileHelpers.byteFormatter;

  return v1;
}

uint64_t one-time initialization function for maxNumImagesForMobileReconstruction()
{
  type metadata accessor for ObjectCaptureSession();
  v0 = type metadata accessor for ObjectCaptureSession.HardwareSpecs();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ObjectCaptureSession.hardwareSpecs.getter();
  v5 = ObjectCaptureSession.HardwareSpecs.maxNumImages.getter();
  result = (*(v1 + 8))(v4, v0);
  static PhotogrammetryFileHelpers.maxNumImagesForMobileReconstruction = v5;
  return result;
}

uint64_t one-time initialization function for requiredBytesForImagesCaptureDirectory()
{
  if (one-time initialization token for maxNumImagesForMobileReconstruction != -1)
  {
    result = swift_once();
  }

  if ((static PhotogrammetryFileHelpers.maxNumImagesForMobileReconstruction * 5000000) >> 64 == (5000000 * static PhotogrammetryFileHelpers.maxNumImagesForMobileReconstruction) >> 63)
  {
    static PhotogrammetryFileHelpers.requiredBytesForImagesCaptureDirectory = 5000000 * static PhotogrammetryFileHelpers.maxNumImagesForMobileReconstruction;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static PhotogrammetryFileHelpers.requiredBytesForImagesCaptureDirectory.getter()
{
  if (one-time initialization token for requiredBytesForImagesCaptureDirectory != -1)
  {
    swift_once();
  }

  return static PhotogrammetryFileHelpers.requiredBytesForImagesCaptureDirectory;
}

void one-time initialization function for temporaryDirectory()
{
  v0 = type metadata accessor for URL();
  __swift_allocate_value_buffer(v0, static PhotogrammetryFileHelpers.temporaryDirectory);
  __swift_project_value_buffer(v0, static PhotogrammetryFileHelpers.temporaryDirectory);
  v1 = [objc_opt_self() defaultManager];
  v2 = [v1 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t static PhotogrammetryFileHelpers.temporaryDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for temporaryDirectory != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  v3 = __swift_project_value_buffer(v2, static PhotogrammetryFileHelpers.temporaryDirectory);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static PhotogrammetryFileHelpers.getAvailableStorage(ofDir:)(uint64_t a1)
{
  if (one-time initialization token for freeStorageProvider == -1)
  {
  }

  else
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  return specialized PhotogrammetryFileHelpers.SystemFreeStorageProvider.freeStorageBytes(forDir:)(a1);
}

uint64_t one-time initialization function for freeStorageProvider()
{
  v0 = type metadata accessor for PhotogrammetryFileHelpers.SystemFreeStorageProvider();
  result = swift_allocObject();
  qword_1EBEAF5A0 = v0;
  unk_1EBEAF5A8 = &protocol witness table for PhotogrammetryFileHelpers.SystemFreeStorageProvider;
  static PhotogrammetryFileHelpers.freeStorageProvider = result;
  return result;
}

uint64_t specialized static PhotogrammetryFileHelpers.ensureDirectoryExists(directory:)(uint64_t a1)
{
  v49[1] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0x1E696A000uLL;
  v9 = &property descriptor for UnlitMaterial.readsDepth;
  if (URL.isFileURL.getter())
  {
    v10 = v3;
    LOBYTE(v49[0]) = 0;
    v11 = [objc_opt_self() defaultManager];
    v12 = a1;
    v13 = URL.path.getter();
    v14 = MEMORY[0x1C68F3280](v13);

    v15 = [v11 fileExistsAtPath:v14 isDirectory:v49];

    if (v15 && (v49[0] & 1) != 0)
    {
      v16 = 1;
      goto LABEL_19;
    }

    a1 = v12;
    v8 = 0x1E696A000uLL;
    v3 = v10;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = __swift_project_value_buffer(v17, logger);
  (*(v4 + 16))(v7, a1, v3);
  v48[3] = v18;
  v19 = v7;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v48[2] = v1;
    v23 = v22;
    v24 = swift_slowAlloc();
    v49[0] = v24;
    *v23 = 141558274;
    *(v23 + 4) = 1752392040;
    *(v23 + 12) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL();
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v48[1] = a1;
    v27 = v26;
    v28 = *(v4 + 8);
    v16 = v4 + 8;
    v28(v19, v3);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v49);
    v9 = &property descriptor for UnlitMaterial.readsDepth;

    *(v23 + 14) = v29;
    _os_log_impl(&dword_1C1358000, v20, v21, "Creating directory: %{mask.hash}s...", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v30 = v24;
    v8 = 0x1E696A000;
    MEMORY[0x1C6902A30](v30, -1, -1);
    MEMORY[0x1C6902A30](v23, -1, -1);
  }

  else
  {

    v31 = *(v4 + 8);
    v16 = v4 + 8;
    v31(v19, v3);
  }

  v32 = *(v8 + 3080);
  v33 = [objc_opt_self() v9[414]];
  URL._bridgeToObjectiveC()(v34);
  v36 = v35;
  v49[0] = 0;
  v37 = [v33 createDirectoryAtURL:v35 withIntermediateDirectories:1 attributes:0 error:v49];

  if (v37)
  {
    v38 = v49[0];
    v16 = specialized static PhotogrammetryFileHelpers.doesDirectoryExist(directory:)();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v49[0] = v42;
      *v41 = 136315138;
      if (v16)
      {
        v43 = 0x2173736563637553;
      }

      else
      {
        v43 = 0x216572756C696146;
      }

      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, 0xE800000000000000, v49);

      *(v41 + 4) = v44;
      _os_log_impl(&dword_1C1358000, v39, v40, "... %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1C6902A30](v42, -1, -1);
      MEMORY[0x1C6902A30](v41, -1, -1);
    }
  }

  else
  {
    v45 = v49[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

LABEL_19:
  v46 = *MEMORY[0x1E69E9840];
  return v16 & 1;
}

uint64_t specialized PhotogrammetryFileHelpers.SystemFreeStorageProvider.freeStorageBytes(forDir:)(uint64_t a1)
{
  v2 = type metadata accessor for URLResourceValues();
  v67 = *(v2 - 8);
  v3 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v61 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v61 - v16;
  v18 = *(v7 + 16);
  v18(&v61 - v16, a1, v6, v15);
  if ((URL.isFileURL.getter() & 1) == 0)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, logger);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1C1358000, v23, v24, "Can't compute free storage of a non file URL!", v25, 2u);
      MEMORY[0x1C6902A30](v25, -1, -1);
    }

    (*(v7 + 8))(v17, v6);
    return 0;
  }

  v65 = v2;
  v66 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd, &_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v20 = *MEMORY[0x1E695DD50];
  *(inited + 32) = *MEMORY[0x1E695DD50];
  v21 = v20;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of NSURLResourceKey(inited + 32);
  URL.resourceValues(forKeys:)();

  v26 = URLResourceValues.volumeAvailableCapacityForImportantUsage.getter();
  if (v27)
  {
    v28 = v66;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, logger);
    (v18)(v10, v17, v28);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v68[0] = v33;
      *v32 = 141558274;
      *(v32 + 4) = 1752392040;
      *(v32 + 12) = 2080;
      lazy protocol witness table accessor for type URL and conformance URL();
      LODWORD(v64) = v31;
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v28;
      v37 = v36;
      v38 = *(v7 + 8);
      v39 = v10;
      v40 = v35;
      v38(v39, v35);
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v37, v68);

      *(v32 + 14) = v41;
      _os_log_impl(&dword_1C1358000, v30, v64, "Can't get storage capacity for %{mask.hash}s so assuming 0!", v32, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1C6902A30](v33, -1, -1);
      MEMORY[0x1C6902A30](v32, -1, -1);

      (*(v67 + 8))(v5, v65);
      v38(v17, v40);
    }

    else
    {

      v59 = *(v7 + 8);
      v59(v10, v28);
      (*(v67 + 8))(v5, v65);
      v59(v17, v28);
    }

    return 0;
  }

  v64 = v26;
  v43 = v66;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, logger);
  (v18)(v13, v17, v43);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v63 = v46;
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v68[0] = v48;
    *v47 = 141558530;
    *(v47 + 4) = 1752392040;
    *(v47 + 12) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL();
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v43;
    v52 = v51;
    v62 = *(v7 + 8);
    v62(v13, v50);
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v52, v68);

    *(v47 + 14) = v53;
    *(v47 + 22) = 2082;
    if (one-time initialization token for byteFormatter != -1)
    {
      swift_once();
    }

    v54 = [static PhotogrammetryFileHelpers.byteFormatter stringFromByteCount_];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, v68);

    *(v47 + 24) = v58;
    _os_log_impl(&dword_1C1358000, v45, v63, "Storage capacity for: %{mask.hash}s == %{public}s", v47, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C6902A30](v48, -1, -1);
    MEMORY[0x1C6902A30](v47, -1, -1);

    (*(v67 + 8))(v5, v65);
    v62(v17, v50);
    return v64;
  }

  else
  {

    v60 = *(v7 + 8);
    v60(v13, v43);
    (*(v67 + 8))(v5, v65);
    v60(v17, v43);
    return v64;
  }
}

BOOL specialized static PhotogrammetryFileHelpers.checkIfSufficientStorageSpace(requiredBytes:directory:)(uint64_t a1, uint64_t a2)
{
  v58 = a1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v53 - v9;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = __swift_project_value_buffer(v11, logger);
  v13 = v4[2];
  v13(v10, a2, v3);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v53[0] = v13;
    v53[1] = v12;
    v54 = a2;
    v55 = v7;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v59 = v17;
    *v16 = 141558530;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL();
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v56 = v4;
    v57 = v4[1];
    v57(v10, v3);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v59);

    *(v16 + 14) = v21;
    *(v16 + 22) = 2082;
    if (one-time initialization token for byteFormatter != -1)
    {
      swift_once();
    }

    v22 = [static PhotogrammetryFileHelpers.byteFormatter stringFromByteCount_];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v59);

    *(v16 + 24) = v26;
    _os_log_impl(&dword_1C1358000, v14, v15, "Checking for reconstruction storage space at url=%{mask.hash}s Required bytes=%{public}s...", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C6902A30](v17, -1, -1);
    MEMORY[0x1C6902A30](v16, -1, -1);

    v7 = v55;
    a2 = v54;
    v13 = v53[0];
  }

  else
  {

    v57 = v4[1];
    v57(v10, v3);
  }

  if (one-time initialization token for freeStorageProvider != -1)
  {
    swift_once();
  }

  v27 = specialized PhotogrammetryFileHelpers.SystemFreeStorageProvider.freeStorageBytes(forDir:)(a2);
  v28 = v58;
  if (v27 < v58)
  {
    v13(v7, a2, v3);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v59 = v41;
      *v40 = 141558530;
      *(v40 + 4) = 1752392040;
      *(v40 + 12) = 2080;
      lazy protocol witness table accessor for type URL and conformance URL();
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v7;
      v45 = v44;
      v57(v43, v3);
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v45, &v59);

      *(v40 + 14) = v46;
      *(v40 + 22) = 2082;
      if (one-time initialization token for byteFormatter != -1)
      {
        swift_once();
      }

      v47 = [static PhotogrammetryFileHelpers.byteFormatter stringFromByteCount_];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v59);

      *(v40 + 24) = v51;
      _os_log_impl(&dword_1C1358000, v38, v39, "... Failed!  Not enough storage in %{mask.hash}s.  Only have: %{public}s.", v40, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C6902A30](v41, -1, -1);
      MEMORY[0x1C6902A30](v40, -1, -1);
    }

    else
    {

      v57(v7, v3);
    }
  }

  else
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v59 = v32;
      *v31 = 136446210;
      if (one-time initialization token for byteFormatter != -1)
      {
        swift_once();
      }

      v33 = [static PhotogrammetryFileHelpers.byteFormatter stringFromByteCount_];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v59);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_1C1358000, v29, v30, "... Success.  Have storage space of %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1C6902A30](v32, -1, -1);
      MEMORY[0x1C6902A30](v31, -1, -1);
    }
  }

  return v27 >= v28;
}

BOOL specialized static PhotogrammetryFileHelpers.isEmptyDirectory(_:)()
{
  v17[1] = *MEMORY[0x1E69E9840];
  if ((URL.isFileURL.getter() & 1) == 0)
  {
    goto LABEL_7;
  }

  LOBYTE(v17[0]) = 0;
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  v2 = URL.path.getter();
  v3 = MEMORY[0x1C68F3280](v2);

  v4 = [v1 fileExistsAtPath:v3 isDirectory:v17];

  if (!v4 || (v17[0] & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = [v0 defaultManager];
  v6 = URL.path.getter();
  v7 = MEMORY[0x1C68F3280](v6);

  v17[0] = 0;
  v8 = [v5 contentsOfDirectoryAtPath:v7 error:v17];

  v9 = v17[0];
  if (!v8)
  {
    v14 = v17[0];
    v15 = _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v9;

  v12 = *(v10 + 16);

  result = v12 == 0;
LABEL_8:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized static PhotogrammetryFileHelpers.isExistingDirectory(_:)()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return specialized static PhotogrammetryFileHelpers.doesDirectoryExist(directory:)();
}

uint64_t specialized static PhotogrammetryFileHelpers.doesDirectoryExist(directory:)()
{
  v7 = *MEMORY[0x1E69E9840];
  if ((URL.isFileURL.getter() & 1) == 0)
  {
    goto LABEL_5;
  }

  v6 = 0;
  v0 = [objc_opt_self() defaultManager];
  v1 = URL.path.getter();
  v2 = MEMORY[0x1C68F3280](v1);

  v3 = [v0 fileExistsAtPath:v2 isDirectory:&v6];

  if (!v3)
  {
    goto LABEL_5;
  }

  if (v6 == 1)
  {
    result = 1;
  }

  else
  {
LABEL_5:
    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t outlined destroy of NSURLResourceKey(uint64_t a1)
{
  type metadata accessor for NSURLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

uint64_t specialized HasHierarchy.parent.getter()
{
  v1 = *(v0 + 16);
  result = REEntityGetParent();
  if (result)
  {
    v3 = result;
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
          *(v5 + 16) = v3;
          MEMORY[0x1C68F9740](v3, v5);

          return v5;
        }

        else
        {
          return makeEntity(for:)(v3);
        }
      }
    }
  }

  return result;
}

uint64_t Entity.anchor.getter()
{
  v1 = *v0;
  if (swift_conformsToProtocol2())
  {

    return v0;
  }

  v2 = v0[2];
  Parent = REEntityGetParent();
  if (!Parent)
  {
    return 0;
  }

  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    swift_dynamicCastClassUnconditional();
LABEL_10:
    v0 = Entity.anchor.getter();

    return v0;
  }

  result = REEntityIsBeingDestroyed();
  if ((result & 1) == 0)
  {
    v5 = specialized static Entity.entityInfoType(_:)();
    if (v5)
    {
      v6 = (*(v5 + 232))();
      v7 = *(v6 + 16);

      MEMORY[0x1C68F9740](v7, 0);
      *(v6 + 16) = Parent;
      MEMORY[0x1C68F9740](Parent, v6);
    }

    else
    {
      makeEntity(for:)(Parent);
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t HasAnchoring.anchoring.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  REAnchoringComponentGetComponentType();
  v7 = REEntityGetOrAddComponentByClass();
  AnchoringComponent.__toCore(_:)(&v7);
  v5 = *(v2 + 16);
  REAnchorComponentGetComponentType();
  REEntityRemoveComponentByClass();

  return outlined destroy of AnchoringComponent(a1);
}

uint64_t HasAnchoring.anchoring.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  REAnchoringComponentGetComponentType();
  REEntityGetOrAddComponentByClass();

  return AnchoringComponent.init(from:)(a1);
}

uint64_t key path setter for HasAnchoring.anchoring : <A>A(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for AnchoringComponent(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AnchoringComponent(a1, v7, type metadata accessor for AnchoringComponent);
  v8 = *a2;
  return HasAnchoring.anchoring.setter(v7);
}

void (*HasAnchoring.anchoring.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(*(type metadata accessor for AnchoringComponent(0) - 8) + 64);
  if (v7)
  {
    v9[3] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v9[3] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v9[4] = v11;
  v13 = *(v3 + 16);
  REAnchoringComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  AnchoringComponent.init(from:)(v12);
  return HasAnchoring.anchoring.modify;
}

void HasAnchoring.anchoring.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 16);
  if (a2)
  {
    outlined init with copy of AnchoringComponent(*(*a1 + 32), v3, type metadata accessor for AnchoringComponent);
    HasAnchoring.anchoring.setter(v3);
    outlined destroy of AnchoringComponent(v4);
  }

  else
  {
    HasAnchoring.anchoring.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t HasAnchoring.anchorIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  REAnchorComponentGetComponentType();
  if (REEntityGetComponentByClass() && (AnchorIdentifier = REAnchorComponentGetAnchorIdentifier(), !uuid_is_null(AnchorIdentifier)))
  {
    v6 = AnchorIdentifier[7];
    v7 = AnchorIdentifier[6];
    v8 = AnchorIdentifier[5];
    v9 = AnchorIdentifier[4];
    v10 = AnchorIdentifier[3];
    v11 = AnchorIdentifier[2];
    v12 = AnchorIdentifier[1];
    v13 = *AnchorIdentifier;
    v17 = *(AnchorIdentifier + 1);
    UUID.init(uuid:)();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v14 = type metadata accessor for UUID();
  v15 = *(*(v14 - 8) + 56);

  return v15(a1, v5, 1, v14);
}

void HasAnchoring.reanchor(_:preservingWorldTransform:)(uint64_t a1, char a2)
{
  v5 = type metadata accessor for AnchoringComponent(0);
  v6 = (v5 - 8);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23[-v11];
  outlined init with copy of AnchoringComponent(a1, &v23[-v11], type metadata accessor for AnchoringComponent.Target);
  *&v12[v6[7]] = 1;
  *&v12[v6[8]] = 1;
  v13 = &v12[v6[9]];
  v23[64] = 1;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 2) = 0u;
  *(v13 + 3) = 0u;
  v13[64] = 1;
  if (a2)
  {
    *&v14 = HasTransform.transformMatrix(relativeTo:)(0);
    v23[32] = 0;
    *v13 = v14;
    *(v13 + 1) = v15;
    *(v13 + 2) = v16;
    *(v13 + 3) = v17;
    v13[64] = 0;
  }

  outlined init with copy of AnchoringComponent(v12, v9, type metadata accessor for AnchoringComponent);
  HasAnchoring.anchoring.setter(v9);
  swift_beginAccess();
  v18 = static RealityFusionSession.sharedSession;
  if (static RealityFusionSession.sharedSession)
  {
    swift_beginAccess();
    if (v18[2])
    {
      v19 = RFServiceManagerGetAnchorManagementService();
      if (v19)
      {
        v20 = v19;
        v21 = (*(*v2 + 120))();
        if (!v21)
        {
          outlined destroy of AnchoringComponent(v12);

          return;
        }

        v22 = *(v21 + 16);
        RFAnchorManagementUpdateAnchoringInScene();
      }
    }
  }

  outlined destroy of AnchoringComponent(v12);
}

uint64_t outlined destroy of AnchoringComponent(uint64_t a1)
{
  v2 = type metadata accessor for AnchoringComponent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of AnchoringComponent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double AnimationView.init(source:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, int a5@<W4>, char *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, float a12@<S2>, char a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  *&v37 = a2;
  *(&v37 + 1) = a3;
  v22 = *(a4 + 16);
  v34 = *a6;
  v35 = *a7;
  if (v22 == 255)
  {
    v23 = 0;
  }

  else
  {
    v23 = *a4;
  }

  if (v22 == 255)
  {
    v24 = 0xE000000000000000;
  }

  else
  {
    v24 = a4[1];
  }

  if (v22 == 255)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(a4 + 16);
  }

  outlined consume of BindTarget?(0, 0, 0xFFu);
  v39[0] = 0;
  v40 = 0;
  type metadata accessor for TimelineDefinition();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  v27 = v39[0];
  v28 = v40;
  v39[0] = 0;
  v40 = 0;
  v39[61] = 0;
  v39[56] = 0;
  v39[48] = 0;
  v39[40] = 0;
  *&v41 = a8;
  WORD4(v41) = a13 & 1;
  *&v42 = a14;
  WORD4(v42) = a15 & 1;
  *&v43 = a16;
  WORD4(v43) = a17 & 1;
  *&v44 = a10;
  BYTE8(v44) = 0;
  *&v45 = a11;
  BYTE8(v45) = 0;
  *(&v45 + 3) = a12;
  LOBYTE(v46) = 0;
  BYTE1(v46) = v34;
  *(&v46 + 1) = 0;
  v47 = v37;
  *&v48 = v23;
  *(&v48 + 1) = v24;
  LOBYTE(v49) = v25;
  DWORD1(v49) = a5;
  BYTE8(v49) = v27;
  BYTE9(v49) = v35;
  WORD5(v49) = v28;
  v50 = v26;
  outlined init with copy of __REAssetService(a1, v39);
  AnimationView.source.setter(v39);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v29 = v48;
  *(a9 + 96) = v47;
  *(a9 + 112) = v29;
  *(a9 + 128) = v49;
  *(a9 + 144) = v50;
  v30 = v44;
  *(a9 + 32) = v43;
  *(a9 + 48) = v30;
  v31 = v46;
  *(a9 + 64) = v45;
  *(a9 + 80) = v31;
  result = *&v41;
  v33 = v42;
  *a9 = v41;
  *(a9 + 16) = v33;
  return result;
}

uint64_t AnimationView.createResource()()
{
  v1 = v0[7];
  v51 = v0[6];
  v52 = v1;
  v53 = v0[8];
  v54 = *(v0 + 18);
  v2 = v0[3];
  v47 = v0[2];
  v48 = v2;
  v3 = v0[5];
  v49 = v0[4];
  v50 = v3;
  v4 = v0[1];
  v45 = *v0;
  v46 = v4;
  if (BYTE9(v45) == 1 && BYTE9(v46) == 1 && BYTE9(v47) == 1 && BYTE8(v48) == 1 && BYTE8(v49) == 1 && v50 == 1 && BYTE1(v50) == 4 && __PAIR128__(*(&v51 + 1), *(&v50 + 1)) == 0 && v53 == 255 && BYTE8(v53) && BYTE10(v53) && BYTE11(v53) == 2)
  {
    if (*(v54 + 16))
    {
      v5 = specialized static __ServiceLocator.shared.getter();
      swift_beginAccess();
      outlined init with copy of __REAssetService(v5 + 120, &v35);
      v6 = *(&v36 + 1);
      v7 = v37;
      __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
      (*(v7 + 32))(v6, v7);
      __swift_destroy_boxed_opaque_existential_1(&v35);
      result = RETimelineDefinitionCreateTimelineAsset();
      if (result)
      {
        v9 = result;
        RETimelineDefinitionGetName();
        v10 = String.init(cString:)();
        v12 = v11;
        type metadata accessor for AnimationResource();
        v13 = swift_allocObject();
        v13[2] = v9;
        v13[3] = v10;
        v13[4] = v12;
        RERetain();
        REAssetSetSwiftObject();
        RERelease();
        return v13;
      }

      return result;
    }

    return 0;
  }

  v14 = *(&v50 + 1);
  if (*(&v50 + 1))
  {
    v15 = *(*(&v50 + 1) + 16) == 0;
  }

  else if (*(v54 + 16) && (ClipSourceRef = RETimelineDefinitionCreateClipSourceRef()) != 0)
  {
    v17 = ClipSourceRef;
    type metadata accessor for TimelineDefinition();
    *(swift_allocObject() + 16) = v17;
    RERetain();
    RERelease();
    v15 = 0;
  }

  else
  {
    type metadata accessor for TimelineDefinition();
    *(swift_allocObject() + 16) = 0;
    v15 = 1;
  }

  if (v15)
  {
    return 0;
  }

  v18 = v0[7];
  v41 = v0[6];
  v42 = v18;
  v43 = v0[8];
  v44 = *(v0 + 18);
  v19 = v0[3];
  v37 = v0[2];
  v38 = v19;
  v20 = v0[5];
  v39 = v0[4];
  v40 = v20;
  v21 = v0[1];
  v35 = *v0;
  v36 = v21;
  if (TimelineClipProperties.isClipped.getter())
  {
    v31 = v51;
    v32 = v52;
    v33 = v53;
    v34 = v54;
    v27 = v47;
    v28 = v48;
    v29 = v49;
    v30 = v50;
    v25 = v45;
    v26 = v46;
    outlined init with copy of TimelineClipProperties(&v45, &v35);
    v22 = TimelineClipProperties.createClip()();
    v41 = v31;
    v42 = v32;
    v43 = v33;
    v44 = v34;
    v37 = v27;
    v38 = v28;
    v39 = v29;
    v40 = v30;
    v35 = v25;
    v36 = v26;
    outlined destroy of TimelineClipProperties(&v35);
  }

  else
  {
    if (!v14)
    {
      if (*(v54 + 16) && (v23 = RETimelineDefinitionCreateClipSourceRef()) != 0)
      {
        v24 = v23;
        type metadata accessor for TimelineDefinition();
        *(swift_allocObject() + 16) = v24;
        RERetain();
        RERelease();
      }

      else
      {
        type metadata accessor for TimelineDefinition();
        *(swift_allocObject() + 16) = 0;
      }
    }

    v22 = TimelineDefinition.resource.getter();
  }

  return v22;
}

uint64_t AnimationView.name.getter()
{
  if (v0[13])
  {
    v1 = v0[12];
    v2 = v0[13];
  }

  else if (*(v0[18] + 16))
  {
    v3 = v0[13];
    RETimelineDefinitionGetName();
    v1 = String.init(cString:)();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t key path getter for AnimationView.name : AnimationView@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[13];
  if (v4)
  {
    *a2 = a1[12];
    a2[1] = v4;
  }

  else if (*(a1[18] + 16))
  {
    RETimelineDefinitionGetName();
    *a2 = String.init(cString:)();
    a2[1] = v7;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0xE000000000000000;
  }
}

uint64_t AnimationView.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t (*AnimationView.name.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = v1[13];
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    v4 = v1[12];
    v5 = v3;
  }

  else
  {
    v4 = *(v1[18] + 16);
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

  return AnimationView.name.modify;
}

uint64_t AnimationView.name.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a2)
  {
    v6 = a1[1];

    *(v5 + 96) = v3;
    *(v5 + 104) = v2;
  }

  else
  {
    v8 = a1[3];

    *(v5 + 96) = v3;
    *(v5 + 104) = v2;
  }

  return result;
}

uint64_t AnimationView.blendLayer.getter()
{
  if (*(v0 + 136) != 1)
  {
    return *(v0 + 132);
  }

  result = *(*(v0 + 144) + 16);
  if (result)
  {
    return RETimelineDefinitionGetAnimationLayer();
  }

  return result;
}

uint64_t AnimationView.blendLayer.setter(uint64_t result)
{
  *(v1 + 132) = result;
  *(v1 + 136) = 0;
  return result;
}

uint64_t *(*AnimationView.blendLayer.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 136) == 1)
  {
    v2 = *(*(v1 + 144) + 16);
    if (v2)
    {
      v3 = a1;
      v4 = *(*(v1 + 144) + 16);
      LODWORD(v2) = RETimelineDefinitionGetAnimationLayer();
      a1 = v3;
    }
  }

  else
  {
    LODWORD(v2) = *(v1 + 132);
  }

  *(a1 + 8) = v2;
  return OrbitAnimation.speed.modify;
}

uint64_t AnimationView.fillMode.getter@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 138))
  {
    result = *(*(v1 + 144) + 16);
    if (result)
    {
      v3 = a1;
      result = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    result = *(v1 + 137);
  }

  *a1 = result;
  return result;
}

unsigned __int8 *(*AnimationView.fillMode.modify(uint64_t a1))(unsigned __int8 *result)
{
  *a1 = v1;
  if (*(v1 + 138))
  {
    v2 = *(*(v1 + 144) + 16);
    if (v2)
    {
      v3 = a1;
      v4 = *(*(v1 + 144) + 16);
      LOBYTE(v2) = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    LOBYTE(v2) = *(v1 + 137);
  }

  *(a1 + 8) = v2;
  return AnimationView.fillMode.modify;
}

uint64_t AnimationView.bindTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = *(v1 + 128);
  v5 = v2;
  v6 = v3;
  v7 = *(v1 + 128);
  if (v4 == 255)
  {
    v5 = *(*(v1 + 144) + 16);
    if (v5)
    {
      v8 = *(v1 + 112);
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

uint64_t key path setter for AnimationView.bindTarget : AnimationView(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a2 + 112);
  v6 = *(a2 + 120);
  v7 = *(a1 + 16);
  v8 = *(a2 + 128);
  outlined copy of BindTarget(*a1, v4, v7);
  result = outlined consume of BindTarget?(v5, v6, v8);
  *(a2 + 112) = v3;
  *(a2 + 120) = v4;
  *(a2 + 128) = v7;
  return result;
}

uint64_t AnimationView.bindTarget.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of BindTarget?(*(v1 + 112), *(v1 + 120), *(v1 + 128));
  *(v1 + 112) = v2;
  *(v1 + 120) = v3;
  *(v1 + 128) = v4;
  return result;
}

uint64_t (*AnimationView.bindTarget.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  v6 = v3;
  v7 = v4;
  v8 = *(v1 + 128);
  if (v5 == 255)
  {
    v6 = *(*(v1 + 144) + 16);
    if (v6)
    {
      v9 = *(v1 + 112);
      v10 = *(*(v1 + 144) + 16);
      v11 = *(v1 + 120);
      v12 = *(v1 + 128);
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
  return AnimationView.bindTarget.modify;
}

uint64_t AnimationView.bindTarget.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(v2 + 112);
  v7 = *(v2 + 120);
  v8 = *(v2 + 128);
  if (a2)
  {
    outlined copy of BindTarget(*a1, v3, v5);
    outlined consume of BindTarget?(v6, v7, v8);
    *(v2 + 112) = v4;
    *(v2 + 120) = v3;
    *(v2 + 128) = v5;

    return outlined consume of BindTarget(v4, v3, v5);
  }

  else
  {
    result = outlined consume of BindTarget?(*(v2 + 112), *(v2 + 120), *(v2 + 128));
    *(v2 + 112) = v4;
    *(v2 + 120) = v3;
    *(v2 + 128) = v5;
  }

  return result;
}

uint64_t AnimationView.trimStart.getter()
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

uint64_t key path getter for AnimationView.trimStart : AnimationView@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 9))
  {
    result = *(*(result + 144) + 16);
    if (result)
    {
      v2 = a2;
      result = RETimelineDefinitionGetClipStart();
      if (result)
      {
        v3 = 0;
        v4 = *result;
      }

      else
      {
        v4 = 0;
        v3 = 1;
      }

      a2 = v2;
    }

    else
    {
      v4 = 0;
      v3 = 1;
    }
  }

  else
  {
    v4 = *result;
    v3 = *(result + 8);
  }

  *a2 = v4;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t AnimationView.trimStart.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  *(v2 + 9) = 0;
  return result;
}

uint64_t (*AnimationView.trimStart.modify(uint64_t a1))(uint64_t result)
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

uint64_t AnimationView.trimEnd.getter()
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

uint64_t key path getter for AnimationView.trimEnd : AnimationView@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 25))
  {
    result = *(*(result + 144) + 16);
    if (result)
    {
      v2 = a2;
      result = RETimelineDefinitionGetClipEnd();
      if (result)
      {
        v3 = 0;
        v4 = *result;
      }

      else
      {
        v4 = 0;
        v3 = 1;
      }

      a2 = v2;
    }

    else
    {
      v4 = 0;
      v3 = 1;
    }
  }

  else
  {
    v4 = *(result + 16);
    v3 = *(result + 24);
  }

  *a2 = v4;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t AnimationView.trimEnd.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  *(v2 + 25) = 0;
  return result;
}

uint64_t (*AnimationView.trimEnd.modify(uint64_t a1))(uint64_t result)
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

uint64_t AnimationView.trimDuration.getter()
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

uint64_t key path getter for AnimationView.trimDuration : AnimationView@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 41))
  {
    result = *(*(result + 144) + 16);
    if (result)
    {
      v2 = a2;
      result = RETimelineDefinitionGetClipDuration();
      if (result)
      {
        v3 = 0;
        v4 = *result;
      }

      else
      {
        v4 = 0;
        v3 = 1;
      }

      a2 = v2;
    }

    else
    {
      v4 = 0;
      v3 = 1;
    }
  }

  else
  {
    v4 = *(result + 32);
    v3 = *(result + 40);
  }

  *a2 = v4;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t AnimationView.trimDuration.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  *(v2 + 41) = 0;
  return result;
}

uint64_t (*AnimationView.trimDuration.modify(uint64_t a1))(uint64_t result)
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

double AnimationView.offset.getter()
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

uint64_t key path getter for AnimationView.offset : AnimationView@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 56))
  {
    v3 = *(result + 144);
    v4 = 0;
    if (*(v3 + 16))
    {
      v5 = *(v3 + 16);
      result = RETimelineDefinitionGetTimelineType();
      if (result == 2)
      {
        result = RETimelineDefinitionGetClipOffset();
        v4 = v6;
      }
    }
  }

  else
  {
    v4 = *(result + 48);
  }

  *a2 = v4;
  return result;
}

void *(*AnimationView.offset.modify(void *a1))(void *result)
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

double AnimationView.delay.getter()
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

uint64_t key path getter for AnimationView.delay : AnimationView@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 72))
  {
    v3 = *(result + 144);
    v4 = 0;
    if (*(v3 + 16))
    {
      v5 = *(v3 + 16);
      result = RETimelineDefinitionGetTimelineType();
      if (result == 2)
      {
        result = RETimelineDefinitionGetClipDelay();
        v4 = v6;
      }
    }
  }

  else
  {
    v4 = *(result + 64);
  }

  *a2 = v4;
  return result;
}

void *(*AnimationView.delay.modify(void *a1))(void *result)
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

float AnimationView.speed.getter()
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

uint64_t key path getter for AnimationView.speed : AnimationView@<X0>(uint64_t result@<X0>, float *a2@<X8>)
{
  if (*(result + 80))
  {
    v3 = *(result + 144);
    v4 = 1.0;
    if (*(v3 + 16))
    {
      v5 = *(v3 + 16);
      result = RETimelineDefinitionGetTimelineType();
      if (result == 2)
      {
        result = RETimelineDefinitionGetClipSpeed();
        v4 = v6;
      }
    }
  }

  else
  {
    v4 = *(result + 76);
  }

  *a2 = v4;
  return result;
}

uint64_t *(*AnimationView.speed.modify(uint64_t a1))(uint64_t *result)
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

uint64_t AnimationView.repeatMode.getter@<X0>(_BYTE *a1@<X8>)
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

_BYTE *(*AnimationView.repeatMode.modify(uint64_t a1))(_BYTE *result)
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

double AnimationView.source.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 88);
  if (v3)
  {
    v4 = *(v1 + 88);
    if (*(v3 + 16))
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (!*(*(v1 + 144) + 16) || (ClipSourceRef = RETimelineDefinitionCreateClipSourceRef()) == 0)
  {
    type metadata accessor for TimelineDefinition();
    *(swift_allocObject() + 16) = 0;
    goto LABEL_9;
  }

  v16 = ClipSourceRef;
  type metadata accessor for TimelineDefinition();
  *(swift_allocObject() + 16) = v16;
  RERetain();
  RERelease();
LABEL_3:

  v5 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v5 + 120, v17);
  v6 = v18;
  v7 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  (*(v7 + 32))(v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v17);
  TimelineAsset = RETimelineDefinitionCreateTimelineAsset();
  if (TimelineAsset)
  {
    v9 = TimelineAsset;
    RETimelineDefinitionGetName();
    v10 = String.init(cString:)();
    v12 = v11;
    type metadata accessor for AnimationResource();
    v13 = swift_allocObject();
    v13[2] = v9;
    v13[3] = v10;
    v13[4] = v12;
    RERetain();
    REAssetSetSwiftObject();
    RERelease();

    AnimationResource.definition.getter(a1);

    return result;
  }

LABEL_10:

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t AnimationView.source.setter(uint64_t a1)
{
  outlined init with copy of AnimationDefinition?(a1, v9);
  if (v10)
  {
    outlined init with take of BindableDataInternal(v9, v11);
    v3 = specialized static AnimationResource.generate(with:)(v11);
    v4 = specialized TimelineDefinition.__allocating_init(_:)(v3);
    outlined destroy of AnimationDefinition?(a1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    v5 = *(v1 + 88);

    *(v1 + 88) = v4;
  }

  else
  {
    outlined destroy of AnimationDefinition?(a1);
    outlined destroy of AnimationDefinition?(v9);
    type metadata accessor for TimelineDefinition();
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    v8 = *(v1 + 88);

    *(v1 + 88) = v7;
  }

  return result;
}

void (*AnimationView.source.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 80) = v1;
  v11 = v1[6];
  v12 = v1[7];
  v13 = v1[8];
  v14 = *(v1 + 18);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v5 = *v1;
  v6 = v1[1];
  AnimationView.source.getter(v3);
  return AnimationView.source.modify;
}

void AnimationView.source.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    outlined init with copy of AnimationDefinition?(*a1, v2 + 40);
    AnimationView.source.setter(v2 + 40);
    outlined destroy of AnimationDefinition?(v2);
  }

  else
  {
    AnimationView.source.setter(*a1);
  }

  free(v2);
}

void AnimationView.defaultDuration.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = v0[2];
  v5 = *(v0 + 24);
  v6 = *(v0 + 25);
  v7 = v0[18];
  v9 = (v0 + 10);
  v8 = *(v0 + 10);
  v10 = *(v0 + 106);
  v44 = *(v0 + 90);
  v45 = v10;
  *v46 = *(v0 + 122);
  v11 = *(v0 + 42);
  v40 = *(v0 + 26);
  v41 = v11;
  v12 = *(v0 + 74);
  v42 = *(v0 + 58);
  v32 = v1;
  v33 = v2;
  v34 = v3;
  v35 = v8;
  v36 = *(v0 + 7);
  v37 = v4;
  v38 = v5;
  v39 = v6;
  v13 = v0[17];
  v43 = v12;
  *&v46[14] = v13;
  v47 = v7;
  AnimationView.source.getter(v29);
  v14 = v30;
  outlined destroy of AnimationDefinition?(v29);
  if (v14)
  {
    if (!RELinkedOnOrAfterFall2025OSVersions())
    {
      goto LABEL_20;
    }

    v15 = *(v9 + 6);
    v44 = *(v9 + 5);
    v45 = v15;
    *v46 = *(v9 + 7);
    v16 = *(v9 + 2);
    v40 = *(v9 + 1);
    v41 = v16;
    v17 = *(v9 + 4);
    v42 = *(v9 + 3);
    v32 = v1;
    v33 = v2;
    v34 = v3;
    v35 = *v9;
    v36 = *(v9 + 2);
    v37 = v4;
    v38 = v5;
    v39 = v6;
    v18 = *(v9 + 126);
    v43 = v17;
    *&v46[14] = v18;
    v47 = v7;
    AnimationView.repeatMode.getter(v29);
    if (!LOBYTE(v29[0]))
    {
LABEL_20:
      if (v3)
      {
        if (*(v7 + 16))
        {
          ClipStart = RETimelineDefinitionGetClipStart();
          if (ClipStart)
          {
            v20 = *ClipStart;
          }
        }
      }

      if (v6)
      {
        if (*(v7 + 16))
        {
          ClipEnd = RETimelineDefinitionGetClipEnd();
          if (ClipEnd)
          {
            v22 = *ClipEnd;
            return;
          }
        }
      }

      else if ((v5 & 1) == 0)
      {
        return;
      }

      v32 = v1;
      v33 = v2;
      v34 = v3;
      v35 = *v9;
      v36 = *(v9 + 2);
      v37 = v4;
      v38 = v5;
      v39 = v6;
      v23 = *(v9 + 6);
      v44 = *(v9 + 5);
      v45 = v23;
      *v46 = *(v9 + 7);
      v24 = *(v9 + 126);
      v25 = *(v9 + 2);
      v40 = *(v9 + 1);
      v41 = v25;
      v26 = *(v9 + 4);
      v42 = *(v9 + 3);
      v43 = v26;
      *&v46[14] = v24;
      v47 = v7;
      AnimationView.source.getter(v29);
      v27 = v30;
      if (v30)
      {
        v28 = v31;
        __swift_project_boxed_opaque_existential_1(v29, v30);
        (*(v28 + 272))(v27, v28);
        __swift_destroy_boxed_opaque_existential_1(v29);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

double AnimationView.duration.getter()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 40);
  v3 = *(v0 + 8);
  v4 = *(v0 + 72);
  v5 = *(v0 + 19);
  v6 = *(v0 + 80);
  v7 = *(v0 + 18);
  if (*(v0 + 41))
  {
    if (*(v7 + 16))
    {
      ClipDuration = RETimelineDefinitionGetClipDuration();
      if (ClipDuration)
      {
        v1 = *ClipDuration;
        goto LABEL_7;
      }
    }
  }

  else if ((*(v0 + 40) & 1) == 0)
  {
    goto LABEL_7;
  }

  v17 = *v0;
  v18 = v0[1];
  *v19 = *(v0 + 42);
  *&v19[14] = *(v0 + 7);
  v20 = *(v0 + 73);
  v21 = *(v0 + 75);
  *&v24[15] = v0[8];
  *v24 = *(v0 + 113);
  v23 = *(v0 + 97);
  v22 = *(v0 + 81);
  AnimationView.defaultDuration.getter();
  v1 = v9;
LABEL_7:
  if (v4)
  {
    v10 = 0.0;
    if (*(v7 + 16))
    {
      v11 = *(v7 + 16);
      if (RETimelineDefinitionGetTimelineType() == 2)
      {
        RETimelineDefinitionGetClipDelay();
        v10 = v12;
      }
    }

    if (v6)
    {
      goto LABEL_12;
    }

LABEL_16:
    v13 = v5;
    return v10 + v1 / fabsf(v13);
  }

  v10 = v3;
  if ((v6 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  v13 = 1.0;
  if (*(v7 + 16))
  {
    v14 = *(v7 + 16);
    if (RETimelineDefinitionGetTimelineType() == 2)
    {
      RETimelineDefinitionGetClipSpeed();
      v13 = v15;
    }
  }

  return v10 + v1 / fabsf(v13);
}

uint64_t AnimationView.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

      v10 = v9;
      *(v4 + 16) = v9;
      if (v9)
      {
        if (RETimelineDefinitionGetTimelineType() == 2)
        {

          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 1;
          v15 = 2;
          v16 = 1;
LABEL_13:
          *a2 = 0;
          *(a2 + 8) = 0;
          *(a2 + 9) = 1;
          *(a2 + 10) = v29;
          *(a2 + 14) = v30;
          *(a2 + 16) = 0;
          *(a2 + 24) = 0;
          *(a2 + 25) = 1;
          *(a2 + 26) = v27;
          *(a2 + 30) = v28;
          *(a2 + 32) = 0;
          *(a2 + 40) = 0;
          *(a2 + 41) = 1;
          *(a2 + 46) = v26;
          *(a2 + 42) = v25;
          *(a2 + 48) = 0;
          *(a2 + 56) = 1;
          *(a2 + 57) = *v24;
          *(a2 + 60) = *&v24[3];
          *(a2 + 64) = 0;
          *(a2 + 72) = 1;
          *(a2 + 73) = v22;
          *(a2 + 75) = v23;
          *(a2 + 76) = 0;
          *(a2 + 80) = 1;
          *(a2 + 81) = 4;
          *(a2 + 86) = v21;
          *(a2 + 82) = v20;
          *(a2 + 88) = v11;
          *(a2 + 96) = v12;
          *(a2 + 104) = v13;
          *(a2 + 112) = 0;
          *(a2 + 120) = 0;
          *(a2 + 128) = -1;
          *(a2 + 131) = v19;
          *(a2 + 129) = v18;
          *(a2 + 132) = 0;
          *(a2 + 136) = v16;
          *(a2 + 137) = 0;
          *(a2 + 138) = v14;
          *(a2 + 139) = v15;
          *(a2 + 144) = v4;
          return result;
        }

        v10 = *(v4 + 16);
      }

      if (v10)
      {
        RETimelineDefinitionGetName();
        v12 = String.init(cString:)();
        v13 = v17;
      }

      else
      {

        v12 = 0;
        v13 = 0xE000000000000000;
      }

      outlined consume of BindTarget?(0, 0, 0xFFu);
      result = swift_allocObject();
      v15 = 0;
      v11 = v4;
      *(result + 16) = 0;
      v16 = 0;
      v14 = 0;
      v4 = result;
      goto LABEL_13;
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

uint64_t protocol witness for AnimationDefinition.name.getter in conformance AnimationView()
{
  if (v0[13])
  {
    v1 = v0[12];
    v2 = v0[13];
  }

  else if (*(v0[18] + 16))
  {
    v3 = v0[13];
    RETimelineDefinitionGetName();
    v1 = String.init(cString:)();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t protocol witness for AnimationDefinition.name.setter in conformance AnimationView(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.name.modify in conformance AnimationView(uint64_t **a1))()
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
  v2[4] = AnimationView.name.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for AnimationDefinition.blendLayer.getter in conformance AnimationView()
{
  if (*(v0 + 136) != 1)
  {
    return *(v0 + 132);
  }

  result = *(*(v0 + 144) + 16);
  if (result)
  {
    return RETimelineDefinitionGetAnimationLayer();
  }

  return result;
}

uint64_t protocol witness for AnimationDefinition.blendLayer.setter in conformance AnimationView(uint64_t result)
{
  *(v1 + 132) = result;
  *(v1 + 136) = 0;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.blendLayer.modify in conformance AnimationView(uint64_t *a1))()
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
  *(v2 + 32) = AnimationView.blendLayer.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for AnimationDefinition.fillMode.getter in conformance AnimationView@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 138))
  {
    result = *(*(v1 + 144) + 16);
    if (result)
    {
      v3 = a1;
      result = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    result = *(v1 + 137);
  }

  *a1 = result;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.fillMode.modify in conformance AnimationView(uint64_t *a1))()
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
  *(v2 + 32) = AnimationView.fillMode.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for AnimationDefinition.bindTarget.setter in conformance AnimationView(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of BindTarget?(*(v1 + 112), *(v1 + 120), *(v1 + 128));
  *(v1 + 112) = v2;
  *(v1 + 120) = v3;
  *(v1 + 128) = v4;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.bindTarget.modify in conformance AnimationView(uint64_t *a1))()
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
  *(v2 + 32) = AnimationView.bindTarget.modify(v2);
  return protocol witness for AnimationDefinition.bindTarget.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.trimStart.modify in conformance AnimationView(uint64_t *a1))()
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
  *(v2 + 32) = AnimationView.trimStart.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.trimEnd.modify in conformance AnimationView(uint64_t *a1))()
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
  *(v2 + 32) = AnimationView.trimEnd.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.trimDuration.modify in conformance AnimationView(uint64_t *a1))()
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
  *(v2 + 32) = AnimationView.trimDuration.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.offset.modify in conformance AnimationView(void *a1))()
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
  v2[4] = AnimationView.offset.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.delay.modify in conformance AnimationView(void *a1))()
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
  v2[4] = AnimationView.delay.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.speed.modify in conformance AnimationView(uint64_t *a1))()
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
  *(v2 + 32) = AnimationView.speed.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.repeatMode.modify in conformance AnimationView(uint64_t *a1))()
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
  *(v2 + 32) = AnimationView.repeatMode.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for AnimationDefinitionInternal.generate() in conformance AnimationView()
{
  result = AnimationView.createResource()();
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

uint64_t outlined init with copy of AnimationDefinition?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19AnimationDefinition_pSgMd, &_s17RealityFoundation19AnimationDefinition_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AnimationDefinition?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19AnimationDefinition_pSgMd, &_s17RealityFoundation19AnimationDefinition_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AnimationView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 144);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AnimationView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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
      *(result + 144) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v38 = *MEMORY[0x1E69E9840];
  v23[4] = a3;
  v23[5] = a4;
  v23[6] = a5;
  v23[7] = a6;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_12;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v23[0] = a1;
    v23[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v9 = 0uLL;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = v23;
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_12:
    _StringGuts._slowWithCString<A>(_:)();
    goto LABEL_11;
  }

  v9 = 0uLL;
  v36 = 0u;
  v37 = 0u;
  v10 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v27 = 0u;
  v28 = 0u;
LABEL_6:
  v24[0] = a3;
  v24[1] = v10;
  v11 = *(a4 + 48);
  v25 = *(a4 + 64);
  v26 = v11;
  LOBYTE(v27) = *(a4 + 80);
  DWORD1(v27) = 65793;
  BYTE8(v27) = 1;
  HIDWORD(v27) = 1065353216;
  v12 = *(a4 + 112);
  v28 = *(a4 + 96);
  v29 = v12;
  v30 = 0uLL;
  LOBYTE(v31) = 0;
  BYTE12(v31) = 0;
  v33 = v9;
  v34 = v9;
  *(&v31 + 4) = 0;
  LODWORD(v37) = 1008981770;
  v13 = *(a4 + 128);
  v32 = v9;
  if ((v13 & 0xFF00000000) == 0x300000000)
  {
    BYTE1(v34) = 0;
    DWORD1(v34) = 1065353216;
    v35 = xmmword_1C18C2F70;
    v14 = xmmword_1C18C2F80;
  }

  else
  {
    v15 = *(a4 + 144);
    v16 = *(a4 + 160);
    LOWORD(v34) = 257;
    DWORD1(v34) = v13;
    DWORD2(v34) = BYTE4(v13);
    v17 = vdupq_n_s32(0x42652EE2u);
    *&v18 = vmulq_f32(v15, v17).u64[0];
    *(&v18 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(57.296, v15, 2));
    v35 = v18;
    *&v14 = vmulq_f32(v16, v17).u64[0];
    *(&v14 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(57.296, v16, 2));
  }

  v36 = v14;
  MEMORY[0x1C68F5390](a5, v24, a6, a2);
  v19 = *a6;
  if (v19)
  {
    MEMORY[0x1C68F5250](a5);
    type metadata accessor for CFErrorRef(0);
    lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
    swift_allocError();
    *v20 = v19;
    swift_willThrow();
  }

LABEL_11:
  result = outlined destroy of IKRig.Joint(a4);
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, uint64_t a6, uint64_t *a7)
{
  v45 = *MEMORY[0x1E69E9840];
  v36[4] = a3;
  v36[5] = a4;
  v36[6] = a5;
  v36[7] = a6;
  v36[8] = a7;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_47;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v10 = 0;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = a3;
      v38 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v11 = *(a4 + 80);
      if (v11 == 2)
      {
        v12 = 0;
        LODWORD(v13) = 0;
      }

      else
      {
        v24 = *(a4 + 96);
        v13 = *(a4 + 88);
        if (v13 >= 0x7FFFFFFF)
        {
          v13 = 0x7FFFFFFFLL;
        }

        if (v13 <= 0xFFFFFFFF80000000)
        {
          LODWORD(v13) = 0x80000000;
        }

        v41 = *(a4 + 96);
        v43 = xmmword_1C18C2F90;
        *a5 = fmaxf(fmaxf(*&v24, *(&v24 + 2)), *(&v24 + 1)) + *a5;
        v10 = 0x100010001;
        v12 = 1;
      }

      LOBYTE(v39) = v12;
      DWORD1(v39) = vuzp1_s8(v10, v10).u32[0];
      HIDWORD(v39) = v13;
      v18 = *(a4 + 128);
      if (v18 == 255)
      {
        v25 = 0;
        LODWORD(v26) = 0;
        v27 = 0;
      }

      else
      {
        v28 = *(a4 + 144);
        v26 = *(a4 + 136);
        if (v26 >= 0x7FFFFFFF)
        {
          v26 = 0x7FFFFFFFLL;
        }

        if (v26 <= 0xFFFFFFFF80000000)
        {
          LODWORD(v26) = 0x80000000;
        }

        v42 = *(a4 + 144);
        v44 = xmmword_1C18C2FA0;
        *a5 = fmaxf(fmaxf(*&v28, *(&v28 + 2)), *(&v28 + 1)) + *a5;
        v27 = 0x100010001;
        v25 = 1;
      }

      v29 = *(a4 + 112);
      BYTE1(v39) = v25;
      DWORD2(v39) = vuzp1_s8(v27, v27).u32[0];
      LODWORD(v40) = v26;
      goto LABEL_34;
    }

LABEL_47:
    _StringGuts._slowWithCString<A>(_:)();
    goto LABEL_46;
  }

  v36[0] = a1;
  v36[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  v14 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = a3;
  v38 = v36;
  v11 = *(a4 + 80);
  if (v11 == 2)
  {
    v15 = 0;
    LODWORD(v16) = 0;
  }

  else
  {
    v17 = *(a4 + 96);
    v16 = *(a4 + 88);
    if (v16 >= 0x7FFFFFFF)
    {
      v16 = 0x7FFFFFFFLL;
    }

    if (v16 <= 0xFFFFFFFF80000000)
    {
      LODWORD(v16) = 0x80000000;
    }

    v41 = *(a4 + 96);
    v43 = xmmword_1C18C2F90;
    *a5 = fmaxf(fmaxf(*&v17, *(&v17 + 2)), *(&v17 + 1)) + *a5;
    v14 = 0x100010001;
    v15 = 1;
  }

  LOBYTE(v39) = v15;
  DWORD1(v39) = vuzp1_s8(v14, v14).u32[0];
  HIDWORD(v39) = v16;
  v18 = *(a4 + 128);
  if (v18 == 255)
  {
    v19 = 0;
    LODWORD(v20) = 0;
    v21 = 0;
  }

  else
  {
    v22 = *(a4 + 144);
    v20 = *(a4 + 136);
    if (v20 >= 0x7FFFFFFF)
    {
      v20 = 0x7FFFFFFFLL;
    }

    if (v20 <= 0xFFFFFFFF80000000)
    {
      LODWORD(v20) = 0x80000000;
    }

    v42 = *(a4 + 144);
    v44 = xmmword_1C18C2FA0;
    *a5 = fmaxf(fmaxf(*&v22, *(&v22 + 2)), *(&v22 + 1)) + *a5;
    v21 = 0x100010001;
    v19 = 1;
  }

  v23 = *(a4 + 112);
  BYTE1(v39) = v19;
  DWORD2(v39) = vuzp1_s8(v21, v21).u32[0];
  LODWORD(v40) = v20;
LABEL_34:
  MEMORY[0x1C68F5380](a6, &v37, a7);
  v30 = *a7;
  if (!v30)
  {
    if (v11 != 2)
    {
      CoreIKRigConstraintSetPositionAsPoleEnabled();
    }

    if (v18 == 255)
    {
      goto LABEL_45;
    }

    if (v18)
    {
      if (v18 != 1)
      {
        CoreIKGenericSolverRigSetLookAtEnabled();
LABEL_45:
        v33 = *(a4 + 48);
        v32 = *(a4 + 64);
        CoreIKRigConstraintSetOffset();
        goto LABEL_46;
      }

      CoreIKGenericSolverRigSetLookAtEnabled();
      CoreIKGenericSolverRigSetUsesLocalSpaceLookAtAxis();
    }

    else
    {
      CoreIKGenericSolverRigSetLookAtEnabled();
      CoreIKGenericSolverRigSetUsesModelSpaceLookAtAxis();
    }

    CoreIKGenericSolverRigSetLookAtAxis();
    goto LABEL_45;
  }

  MEMORY[0x1C68F5250](a6);
  type metadata accessor for CFErrorRef(0);
  lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
  swift_allocError();
  *v31 = v30;
  swift_willThrow();
LABEL_46:
  result = outlined destroy of IKRig.Constraint(a4);
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IKResource.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  RERetain();
  REAssetSetSwiftObject();
  return v2;
}

uint64_t IKResource.init(_:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  RERetain();
  REAssetSetSwiftObject();
  return v1;
}

uint64_t IKResource.deinit()
{
  v1 = *(v0 + 16);
  REAssetSetSwiftObject();
  v2 = *(v0 + 16);
  RERelease();
  return v0;
}

uint64_t IKResource.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  REAssetSetSwiftObject();
  v2 = *(v0 + 16);
  RERelease();

  return swift_deallocClassInstance();
}

int64_t IKResource.solverDefinitions.getter()
{
  v1 = *(v0 + 16);
  result = REIkRigAssetGetDefinitionCount();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = MEMORY[0x1E69E7CC0];
    if (result)
    {
      v16 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, result, 0);
      v5 = 0;
      v4 = v16;
      do
      {
        IKSolverDefinition.init(asset:index:)(v14);
        v16 = v4;
        v7 = *(v4 + 16);
        v6 = *(v4 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v4 = v16;
        }

        ++v5;
        *(v4 + 16) = v7 + 1;
        v8 = v4 + 104 * v7;
        v9 = v14[0];
        v10 = v14[2];
        *(v8 + 48) = v14[1];
        *(v8 + 64) = v10;
        *(v8 + 32) = v9;
        v11 = v14[3];
        v12 = v14[4];
        v13 = v14[5];
        *(v8 + 128) = v15;
        *(v8 + 96) = v12;
        *(v8 + 112) = v13;
        *(v8 + 80) = v11;
      }

      while (v3 != v5);
    }

    return v4;
  }

  return result;
}

uint64_t IKResource.__allocating_init(rig:)(uint64_t *a1)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation18IKSolverDefinitionVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation18IKSolverDefinitionVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  lazy protocol witness table accessor for type String and conformance String();
  v5 = StringProtocol.hash.getter();
  *(inited + 88) = xmmword_1C1887610;
  *(inited + 112) = xmmword_1C1887610;
  *(inited + 48) = a1[1];
  v6 = *(a1 + 2);
  *(inited + 56) = *(a1 + 1);
  *(inited + 104) = 6;
  *(inited + 128) = 6;
  *(inited + 32) = v5;
  v7 = inited + 32;
  *(inited + 40) = v3;
  *(inited + 72) = v6;
  v8 = specialized static IKResource.createCoreAssetForDefinition(_:)(inited);
  swift_setDeallocating();
  outlined destroy of IKSolverDefinition(inited + 32);
  if (!v1)
  {
    type metadata accessor for IKResource();
    v7 = swift_allocObject();
    *(v7 + 16) = v8;
    RERetain();
    REAssetSetSwiftObject();
  }

  return v7;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static IKResource.createCoreAssetForDefinition(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v22 = 0u;
  v23 = 0u;
  v19[0] = a2;
  v19[1] = a1;
  v7 = *(a3 + 48);
  v20 = *(a3 + 64);
  v21 = v7;
  LOBYTE(v22) = *(a3 + 80);
  DWORD1(v22) = 65793;
  BYTE8(v22) = 1;
  HIDWORD(v22) = 1065353216;
  v8 = *(a3 + 112);
  v23 = *(a3 + 96);
  v24 = v8;
  v25 = 0uLL;
  BYTE12(v26) = 0;
  *(&v26 + 4) = 0;
  v28 = 0u;
  v29 = 0u;
  LODWORD(v32) = 1008981770;
  v9 = *(a3 + 128);
  v27 = 0u;
  if ((v9 & 0xFF00000000) == 0x300000000)
  {
    BYTE1(v29) = 0;
    DWORD1(v29) = 1065353216;
    v30 = xmmword_1C18C2F70;
    v10 = xmmword_1C18C2F80;
  }

  else
  {
    v11 = *(a3 + 144);
    v12 = *(a3 + 160);
    LOWORD(v29) = 257;
    DWORD1(v29) = v9;
    DWORD2(v29) = BYTE4(v9);
    v13 = vdupq_n_s32(0x42652EE2u);
    *&v14 = vmulq_f32(v11, v13).u64[0];
    *(&v14 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(57.296, v11, 2));
    v30 = v14;
    *&v10 = vmulq_f32(v12, v13).u64[0];
    *(&v10 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(57.296, v12, 2));
  }

  v31 = v10;
  result = MEMORY[0x1C68F5390](a4, v19, a5);
  v16 = *a5;
  if (v16)
  {
    MEMORY[0x1C68F5250](a4);
    type metadata accessor for CFErrorRef(0);
    lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
    swift_allocError();
    *v17 = v16;
    result = swift_willThrow();
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t closure #1 in closure #1 in closure #2 in closure #1 in static IKResource.createCoreAssetForDefinition(_:)(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, uint64_t a5, uint64_t *a6)
{
  v33 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26[0] = a2;
  v26[1] = a1;
  v10 = *(a3 + 80);
  if (v10 == 2)
  {
    v11 = 0;
    LODWORD(v12) = 0;
  }

  else
  {
    v13 = *(a3 + 96);
    v12 = *(a3 + 88);
    if (v12 >= 0x7FFFFFFF)
    {
      v12 = 0x7FFFFFFFLL;
    }

    if (v12 <= 0xFFFFFFFF80000000)
    {
      LODWORD(v12) = 0x80000000;
    }

    v29 = *(a3 + 96);
    v31 = xmmword_1C18C2F90;
    *a4 = fmaxf(fmaxf(*&v13, *(&v13 + 2)), *(&v13 + 1)) + *a4;
    v9 = 0x100010001;
    v11 = 1;
  }

  LOBYTE(v27) = v11;
  DWORD1(v27) = vuzp1_s8(v9, v9).u32[0];
  HIDWORD(v27) = v12;
  v14 = *(a3 + 128);
  if (v14 == 255)
  {
    v15 = 0;
    LODWORD(v16) = 0;
    v17 = 0;
  }

  else
  {
    v18 = *(a3 + 144);
    v16 = *(a3 + 136);
    if (v16 >= 0x7FFFFFFF)
    {
      v16 = 0x7FFFFFFFLL;
    }

    if (v16 <= 0xFFFFFFFF80000000)
    {
      LODWORD(v16) = 0x80000000;
    }

    v30 = *(a3 + 144);
    v32 = xmmword_1C18C2FA0;
    *a4 = fmaxf(fmaxf(*&v18, *(&v18 + 2)), *(&v18 + 1)) + *a4;
    v17 = 0x100010001;
    v15 = 1;
  }

  v25 = *(a3 + 112);
  BYTE1(v27) = v15;
  DWORD2(v27) = vuzp1_s8(v17, v17).u32[0];
  LODWORD(v28) = v16;
  MEMORY[0x1C68F5380](a5, v26, a6);
  v19 = *a6;
  if (!v19)
  {
    if (v10 != 2)
    {
      CoreIKRigConstraintSetPositionAsPoleEnabled();
    }

    if (v14 == 255)
    {
      goto LABEL_26;
    }

    if (v14)
    {
      if (v14 != 1)
      {
        CoreIKGenericSolverRigSetLookAtEnabled();
        goto LABEL_26;
      }

      CoreIKGenericSolverRigSetLookAtEnabled();
      CoreIKGenericSolverRigSetUsesLocalSpaceLookAtAxis();
    }

    else
    {
      CoreIKGenericSolverRigSetLookAtEnabled();
      CoreIKGenericSolverRigSetUsesModelSpaceLookAtAxis();
    }

    CoreIKGenericSolverRigSetLookAtAxis();
LABEL_26:
    v23 = *(a3 + 48);
    v22 = *(a3 + 64);
    result = CoreIKRigConstraintSetOffset();
    goto LABEL_27;
  }

  MEMORY[0x1C68F5250](a5);
  type metadata accessor for CFErrorRef(0);
  lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
  swift_allocError();
  *v20 = v19;
  result = swift_willThrow();
LABEL_27:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized static SIMD<>.random<A>(in:using:)(float a1, float a2)
{
  if (COERCE_INT(fabs(a2 - a1)) > 2139095039)
  {
    __break(1u);
  }

  else
  {
    v5[5] = v2;
    v5[6] = v3;
    v5[0] = 0;
    MEMORY[0x1C6902A50](v5, 8);
    while ((16777217 * LODWORD(v5[0])) < 0xFFFF01)
    {
      v5[0] = 0;
      MEMORY[0x1C6902A50](v5, 8);
    }

    do
    {
      v5[0] = 0;
      MEMORY[0x1C6902A50](v5, 8);
    }

    while ((16777217 * LODWORD(v5[0])) < 0xFFFF01);
    do
    {
      v5[0] = 0;
      result = MEMORY[0x1C6902A50](v5, 8);
    }

    while ((16777217 * LODWORD(v5[0])) < 0xFFFF01);
  }

  return result;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v36 = a4;
  v6 = *(a1 + 16);

  if (v6)
  {
    for (i = 32; ; i += 176)
    {
      v8 = *(a1 + i + 144);
      v33 = *(a1 + i + 128);
      v34 = v8;
      v35 = *(a1 + i + 160);
      v9 = *(a1 + i + 80);
      v29 = *(a1 + i + 64);
      v30 = v9;
      v10 = *(a1 + i + 112);
      v31 = *(a1 + i + 96);
      v32 = v10;
      v11 = *(a1 + i + 16);
      v25 = *(a1 + i);
      v26 = v11;
      v12 = *(a1 + i + 48);
      v27 = *(a1 + i + 32);
      v28 = v12;
      v13 = v25;
      v24 = v25;
      outlined init with copy of IKRig.Joint(&v25, &v22);
      lazy protocol witness table accessor for type String and conformance String();
      v14 = StringProtocol.hash.getter();
      if ((specialized Set._Variant.insert(_:)(&v22, v14) & 1) == 0)
      {
        break;
      }

      if ((BYTE8(v26) & 1) == 0 && (specialized Set.contains(_:)(v26, *a3) & 1) == 0)
      {
        *&v24 = *v36;
        v22 = dispatch thunk of CustomStringConvertible.description.getter();
        v23 = v15;
        MEMORY[0x1C68F3410](2108704, 0xE300000000000000);
        MEMORY[0x1C68F3410](v13, *(&v13 + 1));
        v16 = v22;
        v17 = v23;
        v18 = 5;
        goto LABEL_9;
      }

      outlined destroy of IKRig.Joint(&v25);
      if (!--v6)
      {
      }
    }

    *&v24 = *v36;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v19;
    MEMORY[0x1C68F3410](2108704, 0xE300000000000000);
    MEMORY[0x1C68F3410](v13, *(&v13 + 1));
    v16 = v22;
    v17 = v23;
    v18 = 1;
LABEL_9:
    lazy protocol witness table accessor for type IKResource.IKDefinitionError and conformance IKResource.IKDefinitionError();
    swift_allocError();
    *v20 = v16;
    *(v20 + 8) = v17;
    *(v20 + 16) = v18;
    swift_willThrow();
    outlined destroy of IKRig.Joint(&v25);
  }
}

uint64_t specialized Sequence.forEach(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  v38 = a1;

  if (!v5)
  {
  }

  for (i = 32; ; i += 160)
  {
    v7 = *(v38 + i + 112);
    v34 = *(v38 + i + 96);
    v35 = v7;
    v8 = *(v38 + i + 144);
    v36 = *(v38 + i + 128);
    v37 = v8;
    v9 = *(v38 + i + 48);
    v30 = *(v38 + i + 32);
    v31 = v9;
    v10 = *(v38 + i + 80);
    v32 = *(v38 + i + 64);
    v33 = v10;
    v11 = *(v38 + i + 16);
    v28 = *(v38 + i);
    v29 = v11;
    v12 = v28;
    v27 = v28;
    outlined init with copy of IKRig.Constraint(&v28, v26);
    lazy protocol witness table accessor for type String and conformance String();
    v13 = StringProtocol.hash.getter();
    if ((specialized Set._Variant.insert(_:)(v26, v13) & 1) == 0)
    {
      *&v27 = *a4;
      v26[0] = dispatch thunk of CustomStringConvertible.description.getter();
      v26[1] = v18;
      MEMORY[0x1C68F3410](2108704, 0xE300000000000000);
      MEMORY[0x1C68F3410](v12, *(&v12 + 1));
      v20 = v26[1];
      v19 = v26[0];
      v21 = 3;
      goto LABEL_9;
    }

    v14 = *a5;
    *v26 = v29;

    v15 = StringProtocol.hash.getter();
    v16 = specialized Set.contains(_:)(v15, v14);

    if ((v16 & 1) == 0)
    {
      break;
    }

    outlined destroy of IKRig.Constraint(&v28);
    if (!--v5)
    {
    }
  }

  *&v27 = *a4;
  v26[0] = dispatch thunk of CustomStringConvertible.description.getter();
  v26[1] = v22;
  MEMORY[0x1C68F3410](2108704, 0xE300000000000000);
  MEMORY[0x1C68F3410](v12, *(&v12 + 1));
  v20 = v26[1];
  v19 = v26[0];
  v21 = 4;
LABEL_9:
  lazy protocol witness table accessor for type IKResource.IKDefinitionError and conformance IKResource.IKDefinitionError();
  swift_allocError();
  *v23 = v19;
  *(v23 + 8) = v20;
  *(v23 + 16) = v21;
  swift_willThrow();
  outlined destroy of IKRig.Constraint(&v28);
}

uint64_t specialized static IKResource.validateSolver(_:)(__int128 *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *a1;
  v15 = a1[1];
  v16 = v2;
  v5 = a1[4];
  v6 = a1[5];
  v17 = v3;
  v18 = v5;
  v19 = v6;
  v20 = *(a1 + 96);
  v14 = v4;
  v7 = *(&v15 + 1);
  v9 = v16;
  v8 = v3;
  v12 = MEMORY[0x1E69E7CD0];
  v13 = MEMORY[0x1E69E7CD0];
  outlined init with copy of IKSolverDefinition(&v14, v11);
  specialized Sequence.forEach(_:)(v7, v9, &v13, &v14);
  outlined destroy of IKSolverDefinition(&v14);
  if (!v1)
  {
    outlined init with copy of IKSolverDefinition(&v14, v11);
    specialized Sequence.forEach(_:)(*(&v9 + 1), v8, &v12, &v14, &v13);
    outlined destroy of IKSolverDefinition(&v14);
  }
}

uint64_t specialized static IKResource.autotuneRig(_:)(uint64_t a1)
{
  v3 = CoreIKGenericSolverCreate();
  ConstraintCount = CoreIKGenericSolverGetConstraintCount();
  JointCount = CoreIKGenericSolverGetJointCount();
  if (JointCount < 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v7 = JointCount;
  if (JointCount)
  {
    v28 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, JointCount, 0);
    v8 = 0;
    v1 = v28;
    do
    {
      CoreIKGenericSolverGetTargetRestPose();
      v11 = v9;
      v13 = *(v28 + 16);
      v12 = *(v28 + 24);
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        v24 = v10;
        v25 = v9;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v10 = v24;
        v11 = v25;
      }

      v6 = v27;
      HIDWORD(v11) = HIDWORD(v27);
      ++v8;
      *(v28 + 16) = v14;
      v15 = v28 + 32 * v13;
      *(v15 + 32) = v11;
      *(v15 + 48) = v10;
      v27 = *(&v11 + 1);
    }

    while (v7 != v8);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
    v14 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v14)
    {
      goto LABEL_11;
    }
  }

  v16 = 0.0;
  v17 = 32;
  do
  {
    v18 = vmulq_f32(*(v1 + v17), *(v1 + v17));
    v16 = v16 + sqrtf(v18.f32[2] + vaddv_f32(*v18.f32));
    v17 += 32;
    --v14;
  }

  while (v14);
LABEL_11:
  while (1)
  {
    v26 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      break;
    }

    if ((ConstraintCount & 0x8000000000000000) != 0)
    {
      goto LABEL_31;
    }

LABEL_13:
    v20 = 0;
    v6 = v26;
    while (1)
    {
      v21 = 0;
      ++v20;
      if (ConstraintCount)
      {
        break;
      }

LABEL_21:
      v22 = CoreIKGenericSolverSolve();
      if (v20 == 15 || v22 == 2)
      {

        MEMORY[0x1C68F5300](v3);
        MEMORY[0x1C68F5420](a1);
        isUniquelyReferenced_nonNull_native = v3;

        return MEMORY[0x1EEDF9378](isUniquelyReferenced_nonNull_native);
      }
    }

    while (v21 < ConstraintCount)
    {
      if (__OFADD__(v21, 1))
      {
        goto LABEL_27;
      }

      MEMORY[0x1C68F52D0](v3, v21);
      MEMORY[0x1C68F5260]();
      CoreIKGetConstraintTarget();
      specialized static SIMD<>.random<A>(in:using:)(-1.0, 1.0);
      CoreIKGenericConstraintSetTargetParameters();
      if (CoreIKGenericConstraintHasLookAtEnabled())
      {
        CoreIKGenericConstraintGetLookAtTarget();
        specialized static SIMD<>.random<A>(in:using:)(-2.0, 2.0);
        CoreIKGenericConstraintSetLookAtTarget();
        if (ConstraintCount == ++v21)
        {
          goto LABEL_21;
        }
      }

      else if (ConstraintCount == ++v21)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
  }

LABEL_30:
  isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
  v1 = isUniquelyReferenced_nonNull_native;
  if ((ConstraintCount & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_31:
  __break(1u);
  return MEMORY[0x1EEDF9378](isUniquelyReferenced_nonNull_native);
}

uint64_t specialized closure #1 in static IKResource.createCoreAssetForDefinition(_:)(uint64_t a1)
{
  v116 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v79 = *(a1 + 24);
  v76 = *(a1 + 32);
  v75 = *(a1 + 40);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v73 = *(a1 + 56);
  v74 = *(a1 + 88);
  v9 = *(a1 + 96);
  if (specialized Set._Variant.insert(_:)(&v84, *a1))
  {
    *&v84 = v2;
    *(&v84 + 1) = v3;
    *&v85 = __PAIR64__(v5, v4);
    *(&v85 + 1) = v79;
    *v86 = v76;
    *&v86[8] = v75;
    *&v86[24] = v73;
    *&v87 = v6;
    BYTE8(v87) = v7;
    *(&v87 + 9) = *(a1 + 73);
    HIDWORD(v87) = *(a1 + 76);
    *&v88 = v8;
    *(&v88 + 1) = v74;
    LOBYTE(v89) = v9;
    result = specialized static IKResource.validateSolver(_:)(&v84);
    if (v77)
    {
      goto LABEL_8;
    }

    v72 = v9;
    v94 = 0;
    v12 = MEMORY[0x1C68F53C0](0, &v94);
    v13 = v94;
    if (v94)
    {
LABEL_6:
      type metadata accessor for CFErrorRef(0);
      lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
      swift_allocError();
      *v14 = v13;
      goto LABEL_7;
    }

    v16 = v12;
    v70 = v8;
    v17 = v79;
    v18 = *(v79 + 16);

    v78 = v16;
    v69 = v6;
    v68 = v7;
    v71 = v3;
    if (v18)
    {
      v20 = 0;
      v21 = 32;
      while (1)
      {
        if (v20 >= *(v17 + 16))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
        }

        v22 = *(v17 + v21);
        v23 = *(v17 + v21 + 32);
        v106 = *(v17 + v21 + 16);
        v107 = v23;
        v105 = v22;
        v24 = *(v17 + v21 + 48);
        v25 = *(v17 + v21 + 64);
        v26 = *(v17 + v21 + 96);
        v110 = *(v17 + v21 + 80);
        v111 = v26;
        v108 = v24;
        v109 = v25;
        v27 = *(v17 + v21 + 112);
        v28 = *(v17 + v21 + 128);
        v29 = *(v17 + v21 + 160);
        v114 = *(v17 + v21 + 144);
        v115 = v29;
        v112 = v27;
        v113 = v28;
        if (BYTE8(v106))
        {
          goto LABEL_18;
        }

        if (*(v76 + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(v106), (v30 & 1) != 0))
        {
          v31 = *(*(v76 + 56) + 8 * v19);
          if ((v31 & 0x8000000000000000) != 0)
          {
            goto LABEL_51;
          }

          if (v31 >= *(v17 + 16))
          {
            goto LABEL_52;
          }

          v32 = (v79 + 32 + 176 * v31);
          v33 = *v32;
          v34 = v32[2];
          v85 = v32[1];
          *v86 = v34;
          v84 = v33;
          v35 = v32[3];
          v36 = v32[4];
          v37 = v32[6];
          v88 = v32[5];
          v89 = v37;
          *&v86[16] = v35;
          v87 = v36;
          v38 = v32[7];
          v39 = v32[8];
          v40 = v32[10];
          v92 = v32[9];
          v93 = v40;
          v90 = v38;
          v91 = v39;
          v41 = *(&v84 + 1);
          v42 = v84;
          v19 = outlined init with copy of IKRig.Joint(&v84, &v81);
        }

        else
        {
LABEL_18:
          v42 = 0;
          v41 = 0xE000000000000000;
        }

        v43 = *(&v105 + 1);
        v44 = v105;
        MEMORY[0x1EEE9AC00](v19);
        if ((v43 & 0x1000000000000000) != 0)
        {
          break;
        }

        if ((v43 & 0x2000000000000000) != 0)
        {
          v81 = v44;
          v82 = v43 & 0xFFFFFFFFFFFFFFLL;
          outlined init with copy of IKRig.Joint(&v105, &v84);
          outlined init with copy of IKRig.Joint(&v105, &v84);
          outlined init with copy of IKRig.Joint(&v105, &v84);

          v45 = &v81;
        }

        else
        {
          if ((v44 & 0x1000000000000000) == 0)
          {
            break;
          }

          outlined init with copy of IKRig.Joint(&v105, &v84);
          outlined init with copy of IKRig.Joint(&v105, &v84);
          outlined init with copy of IKRig.Joint(&v105, &v84);

          v45 = ((v43 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        v16 = v78;
        specialized String.withCString<A>(_:)(v42, v41, v45, &v105, v78, &v94);

        outlined destroy of IKRig.Joint(&v105);
        outlined destroy of IKRig.Joint(&v105);

LABEL_25:
        v17 = v79;
        ++v20;
        v21 += 176;
        if (v18 == v20)
        {
          goto LABEL_28;
        }
      }

      outlined init with copy of IKRig.Joint(&v105, &v84);
      outlined init with copy of IKRig.Joint(&v105, &v84);

      _StringGuts._slowWithCString<A>(_:)();

      outlined destroy of IKRig.Joint(&v105);
      outlined destroy of IKRig.Joint(&v105);

      v16 = v78;
      goto LABEL_25;
    }

LABEL_28:

    v80 = 0.0;
    v46 = *(v75 + 16);

    if (!v46)
    {
LABEL_40:

      MEMORY[0x1C68F5410](&v84, v16);
      v86[2] = 1;
      v64 = 0.05;
      if (v80 <= 10.0)
      {
        v64 = 0.1;
      }

      v65 = 0x7FFFFFFFLL;
      if (v71 < 0x7FFFFFFF)
      {
        v65 = v71;
      }

      if (v65 <= 0xFFFFFFFF80000000)
      {
        LODWORD(v65) = 0x80000000;
      }

      *(&v84 + 2) = v64;
      *&v85 = __PAIR64__(v65, v4);
      HIDWORD(v85) = v5;
      CoreIKRigUpdateSettings();
      MEMORY[0x1C68F53D0](v16, &v94);
      v13 = v94;
      if (!v94)
      {
        specialized static IKResource.autotuneRig(_:)(v16);
        v66 = MEMORY[0x1C68F5240](v16);
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v81 = v73;
        v82 = v69;
        v83 = v68;
        specialized static InternalBindPath.pathFromTarget(_:_:)(&v81, 1);
        v81 = v70;
        v82 = v74;
        v83 = v72;
        specialized static InternalBindPath.pathFromTarget(_:_:)(&v81, 1);
        v81 = 11635;
        v82 = 0xE200000000000000;
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1C68F3410](v67);

        String.utf8CString.getter();

        String.utf8CString.getter();

        String.utf8CString.getter();

        String.utf8CString.getter();

        REIkRigAssetBuilderAddRig();

        goto LABEL_8;
      }

      MEMORY[0x1C68F5250](v16);
      goto LABEL_6;
    }

    v48 = 0;
    v49 = 32;
    while (1)
    {
      if (v48 >= *(v75 + 16))
      {
        goto LABEL_50;
      }

      v50 = *(v75 + v49 + 16);
      v95 = *(v75 + v49);
      v96 = v50;
      v51 = *(v75 + v49 + 32);
      v52 = *(v75 + v49 + 48);
      v53 = *(v75 + v49 + 80);
      v99 = *(v75 + v49 + 64);
      v100 = v53;
      v97 = v51;
      v98 = v52;
      v54 = *(v75 + v49 + 96);
      v55 = *(v75 + v49 + 112);
      v56 = *(v75 + v49 + 144);
      v103 = *(v75 + v49 + 128);
      v104 = v56;
      v101 = v54;
      v102 = v55;
      v57 = *(&v95 + 1);
      v58 = v95;
      MEMORY[0x1EEE9AC00](v47);
      if ((v57 & 0x1000000000000000) != 0)
      {
        break;
      }

      if ((v57 & 0x2000000000000000) != 0)
      {
        v81 = v58;
        v82 = v57 & 0xFFFFFFFFFFFFFFLL;
        v61 = *(&v96 + 1);
        v60 = v96;
        outlined init with copy of IKRig.Constraint(&v95, &v84);
        outlined init with copy of IKRig.Constraint(&v95, &v84);
        outlined init with copy of IKRig.Constraint(&v95, &v84);
        v62 = &v81;
      }

      else
      {
        if ((v58 & 0x1000000000000000) == 0)
        {
          break;
        }

        v59 = v57 & 0xFFFFFFFFFFFFFFFLL;
        v61 = *(&v96 + 1);
        v60 = v96;
        outlined init with copy of IKRig.Constraint(&v95, &v84);
        outlined init with copy of IKRig.Constraint(&v95, &v84);
        outlined init with copy of IKRig.Constraint(&v95, &v84);
        v62 = (v59 + 32);
      }

      v63 = v61;
      v16 = v78;
      specialized String.withCString<A>(_:)(v60, v63, v62, &v95, &v80, v78, &v94);
      outlined destroy of IKRig.Constraint(&v95);
      v47 = outlined destroy of IKRig.Constraint(&v95);
LABEL_37:
      ++v48;
      v49 += 160;
      if (v46 == v48)
      {
        goto LABEL_40;
      }
    }

    outlined init with copy of IKRig.Constraint(&v95, &v84);
    outlined init with copy of IKRig.Constraint(&v95, &v84);
    _StringGuts._slowWithCString<A>(_:)();
    outlined destroy of IKRig.Constraint(&v95);
    v47 = outlined destroy of IKRig.Constraint(&v95);
    v16 = v78;
    goto LABEL_37;
  }

  lazy protocol witness table accessor for type IKResource.IKDefinitionError and conformance IKResource.IKDefinitionError();
  swift_allocError();
  *v11 = v2;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
LABEL_7:
  result = swift_willThrow();
LABEL_8:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    for (i = result + 32; ; i += 104)
    {
      v4 = *(i + 48);
      v5 = *(i + 80);
      v28 = *(i + 64);
      v29 = v5;
      v6 = *(i + 16);
      v25[0] = *i;
      v25[1] = v6;
      v7 = *(i + 48);
      v9 = *i;
      v8 = *(i + 16);
      v26 = *(i + 32);
      v27 = v7;
      v10 = *(i + 80);
      v22 = v28;
      v23 = v10;
      v18 = v9;
      v19 = v8;
      v30 = *(i + 96);
      v24 = *(i + 96);
      v20 = v26;
      v21 = v4;
      outlined init with copy of IKSolverDefinition(v25, &v11);
      specialized closure #1 in static IKResource.createCoreAssetForDefinition(_:)(&v18);
      if (v1)
      {
        break;
      }

      v15 = v22;
      v16 = v23;
      v17 = v24;
      v11 = v18;
      v12 = v19;
      v13 = v20;
      v14 = v21;
      result = outlined destroy of IKSolverDefinition(&v11);
      if (!--v2)
      {
        return result;
      }
    }

    v15 = v22;
    v16 = v23;
    v17 = v24;
    v11 = v18;
    v12 = v19;
    v13 = v20;
    v14 = v21;
    return outlined destroy of IKSolverDefinition(&v11);
  }

  return result;
}

uint64_t specialized static IKResource.createCoreAssetForDefinition(_:)(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v3 + 120, v11);
  v4 = v12;
  v5 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v6 = (*(v5 + 32))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v11);
  v11[0] = 0;
  REIkRigAssetBuilderCreate();
  specialized Sequence.forEach(_:)(a1);
  if (v1)
  {
    goto LABEL_4;
  }

  result = REIkRigAssetCreate();
  v8 = v11[0];
  if (v11[0])
  {
    type metadata accessor for CFErrorRef(0);
    lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
    swift_allocError();
    *v9 = v8;
    swift_willThrow();
LABEL_4:
    RERelease();

    v10 = *MEMORY[0x1E69E9840];
    return v6;
  }

  v6 = result;
  if (result)
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type IKResource.IKDefinitionError and conformance IKResource.IKDefinitionError()
{
  result = lazy protocol witness table cache variable for type IKResource.IKDefinitionError and conformance IKResource.IKDefinitionError;
  if (!lazy protocol witness table cache variable for type IKResource.IKDefinitionError and conformance IKResource.IKDefinitionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IKResource.IKDefinitionError and conformance IKResource.IKDefinitionError);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static IKResource.createCoreAssetForDefinition(_:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  outlined init with copy of IKRig.Joint(v5, &v9);
  return specialized String.withCString<A>(_:)(v3, v4, a1, v5, v6, v7);
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in static IKResource.createCoreAssetForDefinition(_:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  outlined init with copy of IKRig.Constraint(v3, &v10);
  return specialized String.withCString<A>(_:)(v7, v8, a1, v3, v4, v6, v5);
}

uint64_t one-time initialization function for VideoLogger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, VideoLogger);
  __swift_project_value_buffer(v0, VideoLogger);
  if (one-time initialization token for VideoLog != -1)
  {
    swift_once();
  }

  v1 = VideoLog;
  return Logger.init(_:)();
}

uint64_t one-time initialization function for VideoLog()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  VideoLog = result;
  return result;
}

__n128 LowLevelTexture.descriptor.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v3 = *(v1 + 72);
  *(a1 + 32) = *(v1 + 56);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 88);
  *a1 = *(v1 + 24);
  *(a1 + 16) = result;
  return result;
}

uint64_t LowLevelTexture.Descriptor.init(textureType:pixelFormat:width:height:depth:mipmapLevelCount:arrayLength:textureUsage:swizzle:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  return result;
}

uint64_t LowLevelTexture.__allocating_init(descriptor:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  LowLevelTexture.init(descriptor:)(a1);
  return v2;
}

void LowLevelTexture.init(descriptor:)(uint64_t *a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v31 = *(a1 + 64);
  v30 = *(a1 + 65);
  v28 = a1[7];
  v29 = *(a1 + 66);
  v8 = *(a1 + 67);
  v9 = DRTextureDescriptorCreate();
  DRTextureDescriptorSetTextureType();
  v26 = v1;
  v10 = v4;
  DRTextureDescriptorSetPixelFormat();
  DRTextureDescriptorSetWidth();
  DRTextureDescriptorSetHeight();
  v25 = v5;
  DRTextureDescriptorSetDepth();
  v24 = v6;
  DRTextureDescriptorSetMipmapLevelCount();
  if (v7 < 0)
  {
    __break(1u);
  }

  DRTextureDescriptorSetArrayLength();
  v11 = v28;
  DRTextureDescriptorSetTextureUsage();
  DRTextureDescriptorSetSwizzle();
  v37 = 0;
  v12 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v13 = MEMORY[0x1C68FE220](*(v12 + 16));
  if (v13)
  {
    v14 = v13;
    Texture = DRContextCreateTexture();
  }

  else
  {
    v18 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __RenderService?(v18 + 40, &v32);
    if (!v33)
    {
      __break(1u);
      goto LABEL_12;
    }

    outlined init with take of ForceEffectBase(&v32, v34);
    v19 = v35;
    v20 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    (*(v20 + 24))(v19, v20);
    __swift_destroy_boxed_opaque_existential_1(v34);
    v21 = RERenderManagerGetRenderDevice();
    Texture = DRTextureCreateUnmanaged();
    swift_unknownObjectRelease();
    v11 = v28;
    v22 = v37;
    if (v37)
    {
      type metadata accessor for CFErrorRef(0);
      lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
      swift_allocError();
      *v16 = v22;
      swift_willThrow();
      v17 = v22;

      type metadata accessor for LowLevelTexture();
      swift_deallocPartialClassInstance();
LABEL_9:
      v23 = *MEMORY[0x1E69E9840];
      return;
    }
  }

  *(v27 + 24) = v2;
  *(v27 + 32) = v26;
  *(v27 + 40) = v10;
  *(v27 + 48) = v3;
  *(v27 + 56) = v25;
  *(v27 + 64) = v24;
  *(v27 + 72) = v7;
  *(v27 + 80) = v11;
  *(v27 + 88) = v31;
  *(v27 + 89) = v30;
  *(v27 + 90) = v29;
  *(v27 + 91) = v8;
  if (Texture)
  {

    *(v27 + 16) = Texture;
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
}

id LowLevelTexture.read()()
{
  v1 = *(v0 + 16);
  Texture = DRTextureReadTexture();

  return Texture;
}

id LowLevelTexture.replace(using:)()
{
  v1 = *(v0 + 16);
  v2 = DRTextureReplaceTexture();

  return v2;
}

id LowLevelTexture.tryReplace(using:)()
{
  v1 = *(v0 + 16);
  v2 = DRTextureTryReplaceTexture();

  return v2;
}

uint64_t LowLevelTexture.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t TextureResource.init(from:)(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  type metadata accessor for MainActor();
  v2[13] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[14] = v4;
  v2[15] = v3;

  return MEMORY[0x1EEE6DFA0](TextureResource.init(from:), v4, v3);
}

{
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, v10);
  v3 = v11;
  v4 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  (*(v4 + 32))(v3, v4);
  v5 = *(a1 + 16);
  TextureAssetWithDirectTexture = REAssetServiceCreateTextureAssetWithDirectTexture();
  __swift_destroy_boxed_opaque_existential_1(v10);
  type metadata accessor for TextureResource();
  v7 = swift_allocObject();
  *(v7 + 16) = TextureAssetWithDirectTexture;
  *(v7 + 24) = 0;
  RERetain();
  REAssetSetSwiftObject();
  RERelease();
  v10[0] = v7;
  RequestLoadable.enforceResourceSharingBeforeECSCommits()();
  if (v8)
  {
  }

  return v7;
}

uint64_t TextureResource.init(from:)()
{
  v1 = v0[11];
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, (v0 + 2));
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  (*(v4 + 32))(v3, v4);
  v5 = *(v1 + 16);
  TextureAssetWithDirectTexture = REAssetServiceCreateTextureAssetWithDirectTexture();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  type metadata accessor for TextureResource();
  v7 = swift_allocObject();
  v0[16] = v7;
  *(v7 + 16) = TextureAssetWithDirectTexture;
  *(v7 + 24) = 0;
  RERetain();
  REAssetSetSwiftObject();
  RERelease();
  v0[10] = v7;
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = MeshResource.init(from:);
  v9 = v0[12];

  return RequestLoadable.awaitForResourceSharing()(v9, &protocol witness table for TextureResource);
}

uint64_t TextureResource.replace(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v4 + 120, v10);
  v5 = v11;
  v6 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  (*(v6 + 32))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v10);
  v7 = *(v2 + 16);
  v8 = *(a1 + 16);
  return RETextureAssetReplaceAllWithDirectTexture();
}

uint64_t static TextureResource.generate(from:)(uint64_t a1)
{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  type metadata accessor for TextureResource();

  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = static MeshResource.generate(from:);

  return TextureResource.init(from:)(a1);
}

uint64_t static TextureResource.generate(from:)()
{
  type metadata accessor for TextureResource();

  return TextureResource.init(from:)(v0);
}

__n128 __swift_memcpy68_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

RealityKit::__RKEntityAudioActionType_optional __swiftcall __RKEntityAudioActionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityAudioActionType.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t __RKEntityAudioActionType.rawValue.getter()
{
  v1 = 0x6573756170;
  if (*v0 != 1)
  {
    v1 = 1886352499;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 2036427888;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance __RKEntityAudioActionType(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6573756170;
  if (v2 != 1)
  {
    v4 = 1886352499;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 2036427888;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6573756170;
  if (*a2 != 1)
  {
    v8 = 1886352499;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 2036427888;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __RKEntityAudioActionType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance __RKEntityAudioActionType()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __RKEntityAudioActionType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance __RKEntityAudioActionType(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6573756170;
  if (v2 != 1)
  {
    v5 = 1886352499;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 2036427888;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

RealityKit::__RKAudioSpatialModeSelection_optional __swiftcall __RKAudioSpatialModeSelection.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKAudioSpatialModeSelection.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t __RKAudioSpatialModeSelection.rawValue.getter()
{
  v1 = 0x746E6569626D61;
  if (*v0 != 1)
  {
    v1 = 0x636973756DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F7320746E696F70;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance __RKAudioSpatialModeSelection(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x746E6569626D61;
  if (v2 != 1)
  {
    v4 = 0x636973756DLL;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6F7320746E696F70;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEC00000065637275;
  }

  v7 = 0xE700000000000000;
  v8 = 0x746E6569626D61;
  if (*a2 != 1)
  {
    v8 = 0x636973756DLL;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F7320746E696F70;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEC00000065637275;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __RKAudioSpatialModeSelection()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance __RKAudioSpatialModeSelection()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __RKAudioSpatialModeSelection()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance __RKAudioSpatialModeSelection(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000065637275;
  v4 = 0xE700000000000000;
  v5 = 0x746E6569626D61;
  if (v2 != 1)
  {
    v5 = 0x636973756DLL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F7320746E696F70;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t __RKEntityAudioAction.type.setter(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 120) = v2;
  return result;
}

uint64_t key path setter for __RKEntityAudioAction.path : __RKEntityAudioAction(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 136);
  *(v4 + 128) = v3;
  *(v4 + 136) = v2;
}

uint64_t __RKEntityAudioAction.path.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t __RKEntityAudioAction.path.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 136);
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
}

uint64_t __RKEntityAudioAction.volume.setter(double a1)
{
  result = swift_beginAccess();
  *(v1 + 144) = a1;
  return result;
}

uint64_t __RKEntityAudioAction.loops.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 152) = a1;
  return result;
}

uint64_t __RKEntityAudioAction.spatialMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 153);
  return result;
}

uint64_t __RKEntityAudioAction.spatialMode.setter(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 153) = v2;
  return result;
}

uint64_t __RKEntityAudioAction.__allocating_init(targetEntity:type:path:volume:loops:spatialMode:multiplePerformBehavior:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char a5, char *a6, _BYTE *a7, double a8)
{
  v16 = swift_allocObject();
  v17 = *a2;
  v18 = *a6;
  LOBYTE(a6) = *a7;
  *(v16 + 112) = 0x4024000000000000;
  *(v16 + 160) = 0;
  *(v16 + 168) = 1;
  *(v16 + 176) = 0;
  *(v16 + 120) = v17;
  *(v16 + 128) = a3;
  *(v16 + 136) = a4;
  *(v16 + 144) = a8;
  *(v16 + 152) = a5;
  *(v16 + 153) = v18;

  v20 = __RKEntityAction.init(targetEntity:)(v19);
  swift_beginAccess();
  *(v20 + 105) = a6;
  swift_beginAccess();
  v22 = *(v20 + 128);
  v21 = *(v20 + 136);
  swift_beginAccess();
  v23 = *(v20 + 16);
  if (!v23)
  {

    goto LABEL_15;
  }

  v24 = *(v23 + 16);

  if (!REEntityGetSceneNullable() || !RESceneGetECSManagerNullable() || (ServiceLocator = REECSManagerGetServiceLocator(), !MEMORY[0x1C68FE1F0](ServiceLocator)))
  {

LABEL_15:
    *(v20 + 176) = 0;
    goto LABEL_16;
  }

  String.utf8CString.getter();

  AssetHandle = REAssetManagerCreateAssetHandle();

  *(v20 + 176) = AssetHandle;
  if (!AssetHandle)
  {
LABEL_16:

    goto LABEL_17;
  }

  REAssetHandleLoadNow();
  if (a1)
  {
    v27 = *(a1 + 16);
    if (REEntityGetSceneNullable())
    {
      if (RESceneGetECSManagerNullable())
      {
        REECSManagerGetServiceLocator();
        if (REServiceLocatorGetAudioService())
        {
          REAudioServiceStartAudioEngine();
        }
      }
    }
  }

LABEL_17:

  return v20;
}

uint64_t __RKEntityAudioAction.init(targetEntity:type:path:volume:loops:spatialMode:multiplePerformBehavior:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char a5, char *a6, char *a7, double a8)
{
  v10 = *a2;
  v11 = *a6;
  v12 = *a7;
  *(v8 + 112) = 0x4024000000000000;
  *(v8 + 160) = 0;
  *(v8 + 168) = 1;
  *(v8 + 176) = 0;
  *(v8 + 120) = v10;
  *(v8 + 128) = a3;
  *(v8 + 136) = a4;
  *(v8 + 144) = a8;
  *(v8 + 152) = a5;
  *(v8 + 153) = v11;

  v14 = __RKEntityAction.init(targetEntity:)(v13);
  swift_beginAccess();
  *(v14 + 105) = v12;
  swift_beginAccess();
  v16 = *(v14 + 128);
  v15 = *(v14 + 136);
  swift_beginAccess();
  v17 = *(v14 + 16);
  if (!v17)
  {

    goto LABEL_15;
  }

  v18 = *(v17 + 16);

  if (!REEntityGetSceneNullable() || !RESceneGetECSManagerNullable() || (ServiceLocator = REECSManagerGetServiceLocator(), !MEMORY[0x1C68FE1F0](ServiceLocator)))
  {

LABEL_15:
    *(v14 + 176) = 0;
    goto LABEL_16;
  }

  String.utf8CString.getter();

  AssetHandle = REAssetManagerCreateAssetHandle();

  *(v14 + 176) = AssetHandle;
  if (!AssetHandle)
  {
LABEL_16:

    goto LABEL_17;
  }

  REAssetHandleLoadNow();
  if (a1)
  {
    v21 = *(a1 + 16);
    if (REEntityGetSceneNullable())
    {
      if (RESceneGetECSManagerNullable())
      {
        REECSManagerGetServiceLocator();
        if (REServiceLocatorGetAudioService())
        {
          REAudioServiceStartAudioEngine();
        }
      }
    }
  }

LABEL_17:

  return v14;
}

uint64_t __RKEntityAudioAction.deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (REEntityGetSceneNullable())
    {
      if (RESceneGetECSManagerNullable())
      {
        REECSManagerGetServiceLocator();
        if (REServiceLocatorGetAudioService())
        {
          REAudioServiceStopAudioEngine();
        }
      }
    }
  }

  if (*(v0 + 176))
  {
    RERelease();
  }

  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;
  v3 = *(v0 + 16);

  v4 = *(v0 + 40);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32));
  v5 = *(v0 + 56);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48));
  v6 = *(v0 + 64);

  v7 = *(v0 + 80);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72));
  v8 = *(v0 + 136);

  return v0;
}

uint64_t __RKEntityAudioAction.__deallocating_deinit()
{
  __RKEntityAudioAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t __RKEntityAudioAction.perform(with:)()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v1 - 8);
  v2 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v47 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DispatchQoS();
  v46 = *(v48 - 8);
  v4 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchTime();
  v51 = *(v50 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  swift_beginAccess();
  v13 = *(v0 + 16);
  aBlock = 91;
  v53 = 0xE100000000000000;
  if (v13)
  {
    v59 = 0;
    v60 = 0xE000000000000000;
    v58 = v13;

    _print_unlocked<A, B>(_:_:)();
    v14 = v59;
    v15 = v60;
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

  v17 = aBlock;
  v18 = v53;
  v19 = *(v0 + 16);
  if (!v19)
  {
    v26 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v26, &aBlock);
LABEL_20:

    return 0;
  }

  swift_beginAccess();
  if (*(v0 + 104) == 1 && *(v0 + 96) == 1)
  {
    swift_beginAccess();
    if (*(v0 + 105))
    {
      if (*(v0 + 105) != 1)
      {

        v20 = __RKEntityAudioAction.stop()();

        return v20;
      }

      goto LABEL_20;
    }
  }

  v44 = v1;
  if (!*(v0 + 176))
  {

    v27 = *(v0 + 96);
    v28 = *(v0 + 104);
    *(v0 + 96) = 4;
    *(v0 + 104) = 1;
    aBlock = v27;
    LOBYTE(v53) = v28;
    __RKEntityAction.state.didset(&aBlock);

    return 0;
  }

  v45 = v17;
  v21 = *(v19 + 16);
  v22 = *(v0 + 96);
  v23 = *(v0 + 104);
  *(v0 + 96) = 1;
  *(v0 + 104) = 1;
  aBlock = v22;
  LOBYTE(v53) = v23;

  __RKEntityAction.state.didset(&aBlock);
  REAudioPlayerComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (!ComponentByClass)
  {
    REAudioPlayerComponentGetComponentType();
    ComponentByClass = REEntityGetOrAddComponentByClass();
    REAudioPlayerComponentRegisterAsset();
    if ((*(v0 + 168) & 1) == 0)
    {
      if (*(v0 + 160))
      {
        swift_beginAccess();
        v25 = *(v0 + 144);
        REAudioPlayerComponentSetLinearGainForToken();
      }
    }
  }

  swift_beginAccess();
  if (*(v0 + 120))
  {
    if (*(v0 + 120) == 1)
    {
      if ((*(v0 + 168) & 1) == 0)
      {
        MEMORY[0x1C68F7230](ComponentByClass, *(v0 + 160));
      }
    }

    else if ((*(v0 + 168) & 1) == 0)
    {
      MEMORY[0x1C68F7360](ComponentByClass, *(v0 + 160));
    }

    goto LABEL_27;
  }

  *(v0 + 160) = REAudioPlayerComponentPrepareAsset();
  *(v0 + 168) = 0;
  swift_beginAccess();
  v29 = *(v0 + 144);
  result = REAudioPlayerComponentSetLinearGainForToken();
  if ((*(v0 + 168) & 1) == 0)
  {
    v31 = *(v0 + 160);
    REAudioPlayerComponentPlayToken();
    v32 = *(v0 + 96);
    v33 = *(v0 + 104);
    *(v0 + 96) = 1;
    *(v0 + 104) = 1;
    aBlock = v32;
    LOBYTE(v53) = v33;
    __RKEntityAction.state.didset(&aBlock);
    REAudioFileAssetGetLengthInSeconds();
    type metadata accessor for OS_dispatch_queue();
    v42 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v34 = *(v51 + 8);
    v51 += 8;
    v43 = v34;
    v34(v9, v50);
    v35 = swift_allocObject();
    swift_weakInit();
    v56 = partial apply for closure #1 in __RKEntityAudioAction.perform(with:);
    v57 = v35;
    aBlock = MEMORY[0x1E69E9820];
    v53 = 1107296256;
    v54 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v55 = &block_descriptor_35;
    v36 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v37 = v47;
    v38 = v44;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v39 = v42;
    MEMORY[0x1C68F3C60](v12, v6, v37, v36);
    _Block_release(v36);

    (*(v49 + 8))(v37, v38);
    (*(v46 + 8))(v6, v48);
    v43(v12, v50);
LABEL_27:
    RENetworkMarkComponentDirty();
    aBlock = v45;
    v53 = v18;
    v40 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v40, &aBlock);

    return 1;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in __RKEntityAudioAction.perform(with:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    v2 = *(v1 + 96);
    v3 = *(v1 + 104);
    *(v1 + 96) = 2;
    *(v1 + 104) = 1;
    v4 = v2;
    v5 = v3;

    __RKEntityAction.state.didset(&v4);
  }

  return result;
}

uint64_t __RKEntityAudioAction.reversed()()
{
  swift_beginAccess();
  if (*(v0 + 120))
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v1)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {

    v2 = 2;
  }

  swift_beginAccess();
  v3 = *(v0 + 16);
  swift_beginAccess();
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  swift_beginAccess();
  v6 = *(v0 + 144);
  swift_beginAccess();
  v7 = *(v0 + 152);
  swift_beginAccess();
  v8 = *(v0 + 153);
  type metadata accessor for __RKEntityAudioAction();
  v9 = swift_allocObject();
  *(v9 + 112) = 0x4024000000000000;
  *(v9 + 160) = 0;
  *(v9 + 168) = 1;
  *(v9 + 176) = 0;
  *(v9 + 120) = v2;
  *(v9 + 128) = v5;
  *(v9 + 136) = v4;
  *(v9 + 144) = v6;
  *(v9 + 152) = v7;
  *(v9 + 153) = v8;
  swift_retain_n();

  v10 = __RKEntityAction.init(targetEntity:)(v3);
  swift_beginAccess();
  *(v10 + 105) = 1;
  swift_beginAccess();
  v12 = *(v10 + 128);
  v11 = *(v10 + 136);
  swift_beginAccess();
  v13 = *(v10 + 16);
  if (!v13)
  {

    goto LABEL_20;
  }

  v14 = *(v13 + 16);

  if (!REEntityGetSceneNullable() || !RESceneGetECSManagerNullable() || (ServiceLocator = REECSManagerGetServiceLocator(), !MEMORY[0x1C68FE1F0](ServiceLocator)))
  {

LABEL_20:
    *(v10 + 176) = 0;
    goto LABEL_21;
  }

  String.utf8CString.getter();

  AssetHandle = REAssetManagerCreateAssetHandle();

  *(v10 + 176) = AssetHandle;
  if (!AssetHandle)
  {
LABEL_21:

    goto LABEL_22;
  }

  REAssetHandleLoadNow();
  if (v3)
  {
    v17 = *(v3 + 16);
    if (REEntityGetSceneNullable())
    {
      if (RESceneGetECSManagerNullable())
      {
        REECSManagerGetServiceLocator();
        if (REServiceLocatorGetAudioService())
        {
          REAudioServiceStartAudioEngine();
        }
      }
    }
  }

LABEL_22:

  return v10;
}

Swift::Bool __swiftcall __RKEntityAudioAction.stop()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 1;
  }

  v2 = *(v1 + 16);
  v3 = *(v0 + 16);

  REAudioPlayerComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    MEMORY[0x1C68F7350]();
    RENetworkMarkComponentDirty();
    v4 = 1;
    swift_beginAccess();
    v5 = *(v0 + 96);
    v6 = *(v0 + 104);
    *(v0 + 96) = 3;
    *(v0 + 104) = 1;
    v10 = v5;
    v11 = v6;
    __RKEntityAction.state.didset(&v10);
  }

  else
  {
    swift_beginAccess();
    v7 = *(v0 + 96);
    v8 = *(v0 + 104);
    *(v0 + 96) = 4;
    *(v0 + 104) = 1;
    v10 = v7;
    v11 = v8;
    __RKEntityAction.state.didset(&v10);

    return 0;
  }

  return v4;
}

Swift::Void __swiftcall __RKEntityAudioAction.preloadAssets()()
{
  swift_beginAccess();
  v2 = v0[16];
  v1 = v0[17];
  swift_beginAccess();
  v3 = v0[2];
  if (v3)
  {
    v4 = *(v3 + 16);

    if (REEntityGetSceneNullable() && RESceneGetECSManagerNullable() && (ServiceLocator = REECSManagerGetServiceLocator(), MEMORY[0x1C68FE1F0](ServiceLocator)))
    {
      String.utf8CString.getter();

      AssetHandle = REAssetManagerCreateAssetHandle();

      if (AssetHandle)
      {
        if ((REAssetHandleIsLoaded() & 1) == 0)
        {
          REAssetHandleLoadAsync();
        }
      }
    }

    else
    {
    }
  }
}

uint64_t __RKEntityAudioAction.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v1 + 120);
  swift_beginAccess();
  v6 = *(v1 + 128);
  v5 = *(v1 + 136);
  swift_beginAccess();
  v7 = *(v1 + 144);
  swift_beginAccess();
  v8 = *(v1 + 152);
  swift_beginAccess();
  v9 = *(v1 + 153);
  v10 = type metadata accessor for __RKEntityAudioAction();
  v11 = swift_allocObject();
  *(v11 + 112) = 0x4024000000000000;
  *(v11 + 160) = 0;
  *(v11 + 168) = 1;
  *(v11 + 176) = 0;
  *(v11 + 120) = v4;
  *(v11 + 128) = v6;
  *(v11 + 136) = v5;
  *(v11 + 144) = v7;
  *(v11 + 152) = v8;
  *(v11 + 153) = v9;
  swift_retain_n();

  v12 = __RKEntityAction.init(targetEntity:)(v3);
  swift_beginAccess();
  *(v12 + 105) = 1;
  swift_beginAccess();
  v14 = *(v12 + 128);
  v13 = *(v12 + 136);
  swift_beginAccess();
  v15 = *(v12 + 16);
  if (!v15)
  {

    goto LABEL_15;
  }

  v16 = *(v15 + 16);

  if (!REEntityGetSceneNullable() || !RESceneGetECSManagerNullable() || (ServiceLocator = REECSManagerGetServiceLocator(), !MEMORY[0x1C68FE1F0](ServiceLocator)))
  {

LABEL_15:
    *(v12 + 176) = 0;
    goto LABEL_16;
  }

  String.utf8CString.getter();

  AssetHandle = REAssetManagerCreateAssetHandle();

  *(v12 + 176) = AssetHandle;
  if (!AssetHandle)
  {
LABEL_16:

    goto LABEL_17;
  }

  REAssetHandleLoadNow();
  if (v3)
  {
    v19 = *(v3 + 16);
    if (REEntityGetSceneNullable())
    {
      if (RESceneGetECSManagerNullable())
      {
        REECSManagerGetServiceLocator();
        if (REServiceLocatorGetAudioService())
        {
          REAudioServiceStartAudioEngine();
        }
      }
    }
  }

LABEL_17:

  a1[3] = v10;
  *a1 = v12;
  return result;
}

uint64_t __RKEntityAudioAction.clone(matching:newEntity:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (v5 && *(a1 + 16) == *(v5 + 16))
  {
    swift_beginAccess();
    v7 = *(v2 + 120);
    swift_beginAccess();
    v9 = *(v2 + 128);
    v8 = *(v2 + 136);
    swift_beginAccess();
    v10 = *(v2 + 144);
    swift_beginAccess();
    v11 = *(v2 + 152);
    swift_beginAccess();
    v12 = *(v2 + 153);
    type metadata accessor for __RKEntityAudioAction();
    v13 = swift_allocObject();
    *(v13 + 112) = 0x4024000000000000;
    *(v13 + 160) = 0;
    *(v13 + 168) = 1;
    *(v13 + 176) = 0;
    *(v13 + 120) = v7;
    *(v13 + 128) = v9;
    *(v13 + 136) = v8;
    *(v13 + 144) = v10;
    *(v13 + 152) = v11;
    *(v13 + 153) = v12;

    v6 = __RKEntityAction.init(targetEntity:)(v14);
    swift_beginAccess();
    *(v6 + 105) = 1;
    swift_beginAccess();
    v16 = *(v6 + 128);
    v15 = *(v6 + 136);
    swift_beginAccess();
    v17 = *(v6 + 16);
    if (v17)
    {
      v18 = *(v17 + 16);

      if (REEntityGetSceneNullable())
      {
        if (RESceneGetECSManagerNullable())
        {
          ServiceLocator = REECSManagerGetServiceLocator();
          if (MEMORY[0x1C68FE1F0](ServiceLocator))
          {
            String.utf8CString.getter();

            AssetHandle = REAssetManagerCreateAssetHandle();

            *(v6 + 176) = AssetHandle;
            if (AssetHandle)
            {
              REAssetHandleLoadNow();
              v21 = *(a2 + 16);
              if (REEntityGetSceneNullable())
              {
                if (RESceneGetECSManagerNullable())
                {
                  REECSManagerGetServiceLocator();
                  if (REServiceLocatorGetAudioService())
                  {
                    REAudioServiceStartAudioEngine();
                  }
                }
              }
            }

            goto LABEL_18;
          }
        }
      }
    }

    else
    {
    }

    *(v6 + 176) = 0;
LABEL_18:

    return v6;
  }

  __RKEntityAudioAction.copy(with:)(v24);
  type metadata accessor for __RKEntityAction();
  if (swift_dynamicCast())
  {
    return v23;
  }

  else
  {
    return 0;
  }
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}