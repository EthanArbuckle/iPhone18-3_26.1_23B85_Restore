void specialized USDDecodableContext.forEachObjectPathInProperty(named:requestContext:block:)(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void **a8, uint64_t a9, uint64_t a10)
{
  v123 = a8;
  v128 = a7;
  v117 = a6;
  v122 = a10;
  v121 = a9;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v114 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v116 = &v113 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v129 = &v113 - v21;
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v115 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v120 = &v113 - v27;
  v28 = MEMORY[0x1C68F3280](a1, a2);
  v29 = [a4 property_];

  if (!v29)
  {
    v99 = 0xD000000000000012;
    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v100 = swift_allocObject();
    v101 = v100;
    *(v100 + 16) = xmmword_1C1897FD0;
    if (a3)
    {
      if (a3 == 1)
      {
        v102 = "ng: Unknown action type";
      }

      else
      {
        v102 = "imagesByFullSchemePath";
        v99 = 0xD000000000000013;
      }
    }

    else
    {
      v99 = 0xD000000000000014;
      v102 = "USD trigger loading";
    }

    v103 = v102 | 0x8000000000000000;
    v104 = MEMORY[0x1E69E6158];
    *(v100 + 56) = MEMORY[0x1E69E6158];
    v105 = lazy protocol witness table accessor for type String and conformance String();
    v101[4] = v99;
    v101[5] = v103;
    v101[12] = v104;
    v101[13] = v105;
    v101[8] = v105;
    v101[9] = a1;
    v101[10] = a2;

    v106 = [a4 path];
    v107 = [v106 stringValue];

    if (v107)
    {
      v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v110 = v109;

      v111 = v101 + 14;
      v101[17] = v104;
      v101[18] = v105;
      if (v110)
      {
        *v111 = v108;
LABEL_50:
        v101[15] = v110;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v137 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        v112 = v137;

        return;
      }
    }

    else
    {
      v111 = v101 + 14;
      v101[17] = v104;
      v101[18] = v105;
    }

    *v111 = 7104878;
    v110 = 0xE300000000000000;
    goto LABEL_50;
  }

  v30 = v29;
  v31 = [v30 objectPathArray];
  v135 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = v32;
  if (v32 >> 62)
  {
    v34 = __CocoaSet.count.getter();
    v33 = v32;
    v35 = v129;
    if (v34)
    {
      goto LABEL_4;
    }

LABEL_54:

LABEL_56:

    return;
  }

  v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v35 = v129;
  if (!v34)
  {
    goto LABEL_54;
  }

LABEL_4:
  if (v34 >= 1)
  {
    v134 = a3;
    v36 = 0;
    v137 = v33 & 0xC000000000000001;
    v131 = (v23 + 56);
    v119 = (v23 + 32);
    v130 = (v23 + 48);
    v118 = (v23 + 8);
    v133 = xmmword_1C1897FC0;
    v127 = "USD trigger loading";
    v126 = "ng: Unknown action type";
    v125 = "imagesByFullSchemePath";
    v136 = v33;
    v124 = a5;
    while (1)
    {
      v42 = v34;
      if (v137)
      {
        v43 = MEMORY[0x1C68F41F0](v36);
      }

      else
      {
        v43 = *(v33 + 8 * v36 + 32);
      }

      v44 = v43;
      v45 = [a5 objectAtPath_];
      if (!v45)
      {
        goto LABEL_28;
      }

      v46 = v45;
      objc_opt_self();
      v47 = swift_dynamicCastObjCClass();

      if (!v47)
      {
        goto LABEL_28;
      }

      v48 = [v44 stringValue];
      if (!v48)
      {
        goto LABEL_25;
      }

      v49 = v22;
      v50 = v48;
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      v142 = v51;
      v143 = v53;
      v132 = v53;
      v140 = 91;
      v141 = 0xE100000000000000;
      v138 = 0;
      v139 = 0xE000000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v142 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v143 = v54;
      v140 = 93;
      v141 = 0xE100000000000000;
      v138 = 0;
      v139 = 0xE000000000000000;
      v55 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v57 = v56;

      v58 = v128;
      if (!*(v128 + 16))
      {
        break;
      }

      v59 = specialized __RawDictionaryStorage.find<A>(_:)(v55, v57);
      v61 = v60;

      v22 = v49;
      if ((v61 & 1) == 0 || (v62 = (*(v58 + 56) + 16 * v59), v63 = *v62, v64 = v62[1], , v65 = specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v63, v64, v117, v58), , !v65))
      {
        a5 = v124;
        v35 = v129;
LABEL_25:
        (*v131)(v35, 1, 1, v22);
        goto LABEL_26;
      }

      v66 = *(v65 + 16);
      swift_beginAccess();
      a5 = v124;
      if (static __RKEntityUUIDComponent.registration && (v67 = *(static __RKEntityUUIDComponent.registration + 4), REEntityGetCustomComponent()) && (Object = RECustomComponentGetObject()) != 0)
      {
        v69 = *(Object + 1);
        v70 = Object[7];
        v71 = Object[6];
        v72 = Object[5];
        v73 = Object[4];
        v74 = Object[3];
        v75 = Object[2];
        v76 = Object[1];
        v77 = *Object;
        v78 = v116;
        UUID.init(uuid:)();
        v79 = *v131;
        (*v131)(v78, 0, 1, v49);
        outlined destroy of BodyTrackingComponent?(v78, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

      else
      {
        v79 = *v131;
        v84 = v116;
        (*v131)(v116, 1, 1, v49);
        outlined destroy of BodyTrackingComponent?(v84, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v85 = v114;
        UUID.init()();
        v79(v85, 0, 1, v49);
        Entity.__interactionIdentifier.setter(v85);
      }

      v35 = v129;
      if (!static __RKEntityUUIDComponent.registration)
      {
        goto LABEL_58;
      }

      v86 = *(v65 + 16);
      v87 = *(static __RKEntityUUIDComponent.registration + 4);
      if (!REEntityGetCustomComponent())
      {
        goto LABEL_58;
      }

      v88 = RECustomComponentGetObject();
      if (!v88)
      {
        goto LABEL_58;
      }

      v89 = *(v88 + 1);
      v90 = v88[7];
      v91 = v88[6];
      v92 = v88[5];
      v93 = v88[4];
      v94 = v88[3];
      v95 = v88[2];
      v96 = v88[1];
      v97 = *v88;
      v98 = v115;
      UUID.init(uuid:)();

      (*v119)(v35, v98, v49);
      v79(v35, 0, 1, v49);
LABEL_26:

      if ((*v130)(v35, 1, v22) == 1)
      {
        outlined destroy of BodyTrackingComponent?(v35, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_28:
        static os_log_type_t.debug.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v80 = swift_allocObject();
        v81 = v80;
        *(v80 + 16) = v133;
        if (v134)
        {
          if (v134 == 1)
          {
            v37 = 0xD000000000000012;
            v82 = &v145;
          }

          else
          {
            v37 = 0xD000000000000013;
            v82 = &v144;
          }

          v38 = *(v82 - 32);
        }

        else
        {
          v37 = 0xD000000000000014;
          v38 = v127;
        }

        v39 = v38 | 0x8000000000000000;
        *(v80 + 56) = MEMORY[0x1E69E6158];
        *(v80 + 64) = lazy protocol witness table accessor for type String and conformance String();
        v81[4] = v37;
        v81[5] = v39;
        v81[12] = v135;
        v81[13] = lazy protocol witness table accessor for type USKObjectPath and conformance NSObject();
        v81[9] = v44;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v40 = v44;
        v41 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        goto LABEL_8;
      }

      v83 = v120;
      (*v119)(v120, v35, v22);
      closure #1 in static __RKEntityActionSpecification.generateNotificationActionSpecifications(decodeContext:)(v83, v123, v121, v122);

      (*v118)(v83, v22);
LABEL_8:
      v33 = v136;
      ++v36;
      v34 = v42;
      if (v42 == v36)
      {
        goto LABEL_56;
      }
    }

    a5 = v124;
    v35 = v129;
    v22 = v49;
    goto LABEL_25;
  }

  __break(1u);
LABEL_58:
  __break(1u);
}

uint64_t _s10RealityKit29__RKEntityActionSpecificationOWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static SpatialTrackingManager.shared.setter(void *a1)
{
  swift_beginAccess();
  static SpatialTrackingManager.shared = a1;
}

uint64_t key path setter for static SpatialTrackingManager.shared : SpatialTrackingManager.Type(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  static SpatialTrackingManager.shared = v1;
}

uint64_t key path getter for SpatialTrackingManager.rfConfigureCallback : SpatialTrackingManager@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v4);
}

uint64_t key path setter for SpatialTrackingManager.rfConfigureCallback : SpatialTrackingManager(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sytIegr_Ieg_TRTA_0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 24);
  v9 = *(v7 + 32);
  *(v7 + 24) = v6;
  *(v7 + 32) = v5;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v3);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t SpatialTrackingManager.rfConfigureCallback.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v1);
  return v1;
}

uint64_t SpatialTrackingManager.rfConfigureCallback.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v6);
}

uint64_t key path setter for SpatialTrackingManager.currentAnchorCapabilities : SpatialTrackingManager(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

uint64_t SpatialTrackingManager.currentAnchorCapabilities.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t SpatialTrackingManager.currentAnchorCapabilities.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t key path setter for SpatialTrackingManager.currentConfiguration : SpatialTrackingManager(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of [String : String](a1, v5, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMd, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMR);
  v3 = *a2;
  swift_beginAccess();
  outlined assign with take of Any?(v5, v3 + 56, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMd, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMR);
  return swift_endAccess();
}

uint64_t SpatialTrackingManager.currentConfiguration.setter(uint64_t a1)
{
  swift_beginAccess();
  outlined assign with take of Any?(a1, v1 + 56, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMd, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMR);
  return swift_endAccess();
}

uint64_t SpatialTrackingManager.isRunningUserSession.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 144) = a1;
  return result;
}

uint64_t SpatialTrackingManager.__allocating_init(serviceManager:arkitRunnable:)(void *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  SpatialTrackingManager.init(serviceManager:arkitRunnable:)(a1, a2);
  return v4;
}

uint64_t SpatialTrackingManager.init(serviceManager:arkitRunnable:)(void *a1, uint64_t *a2)
{
  v3 = v2;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  v5 = MEMORY[0x1E69E7CD0];
  *(v3 + 144) = 0;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 81) = 0u;
  *(v3 + 40) = a1;
  *(v3 + 48) = v5;
  outlined init with copy of __REAssetService(a2, v3 + 104);
  v6 = swift_allocObject();
  swift_weakInit();
  v8 = *(v3 + 128);
  v7 = *(v3 + 136);
  __swift_project_boxed_opaque_existential_1((v3 + 104), v8);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = partial apply for closure #1 in SpatialTrackingManager.init(serviceManager:arkitRunnable:);
  v10[4] = v6;
  v11 = *(v7 + 8);
  v12 = a1;

  v11(v12, partial apply for closure #2 in SpatialTrackingManager.init(serviceManager:arkitRunnable:), v10, v8, v7);

  __swift_destroy_boxed_opaque_existential_1(a2);

  return v3;
}

uint64_t closure #1 in SpatialTrackingManager.init(serviceManager:arkitRunnable:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    outlined init with copy of [String : String]((v1 + 7), &v4, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMd, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMR);
    if (v4)
    {
      v6 = v4;
      v7[0] = v5[0];
      *(v7 + 9) = *(v5 + 9);
      v2 = v1[16];
      v3 = v1[17];
      __swift_project_boxed_opaque_existential_1(v1 + 13, v2);
      (*(v3 + 32))(&v6, v2, v3);

      return outlined destroy of SpatialTrackingSession.Configuration(&v6);
    }

    else
    {

      return outlined destroy of BodyTrackingComponent?(&v4, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMd, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMR);
    }
  }

  return result;
}

uint64_t closure #2 in SpatialTrackingManager.init(serviceManager:arkitRunnable:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = swift_beginAccess();
    if (*(v6 + 16))
    {
      swift_beginAccess();
      v8 = *(v6 + 24);
      v9 = *(v6 + 32);
      *(v6 + 24) = a2;
      *(v6 + 32) = a3;

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
    }

    else
    {
      a2(v7);
    }
  }

  return result;
}

uint64_t SpatialTrackingManager.run(spatialTrackingConfiguration:)(uint64_t a1, uint64_t a2)
{
  v3[108] = v2;
  v3[107] = a2;
  v3[106] = a1;
  return MEMORY[0x1EEE6DFA0](SpatialTrackingManager.run(spatialTrackingConfiguration:), 0, 0);
}

uint64_t SpatialTrackingManager.run(spatialTrackingConfiguration:)()
{
  *(v0 + 872) = type metadata accessor for MainActor();
  *(v0 + 880) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](SpatialTrackingManager.run(spatialTrackingConfiguration:), v2, v1);
}

{
  v1 = *(v0 + 880);
  v2 = *(v0 + 864);

  swift_beginAccess();
  *(v2 + 16) = 1;

  return MEMORY[0x1EEE6DFA0](SpatialTrackingManager.run(spatialTrackingConfiguration:), 0, 0);
}

{
  *(v0 + 32) = 0u;
  v1 = *(v0 + 864);
  v2 = *(v0 + 856);
  *(v0 + 16) = MEMORY[0x1E69E7CD0];
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 2;
  v3 = v1[16];
  v4 = v1[17];
  __swift_project_boxed_opaque_existential_1(v1 + 13, v3);
  (*(v4 + 16))(v2, v3, v4);
  v5 = *v2;
  v6 = *(v0 + 368);
  if (v6[2] <= *(v5 + 16) >> 3)
  {

    specialized Set._subtract<A>(_:)(v6);
    v7 = v5;
  }

  else
  {

    v7 = specialized _NativeSet.subtracting<A>(_:)(v6, v5);
  }

  v8 = *(v0 + 856);
  *(v0 + 24) = v7;
  outlined init with copy of [String : String](v8 + 8, v0 + 544, &_sypSgMd, &_sypSgMR);
  if (*(v0 + 568))
  {
    outlined init with take of Any((v0 + 544), (v0 + 512));
    outlined init with take of Any((v0 + 512), (v0 + 704));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    v9 = *(v0 + 840);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v0 + 544, &_sypSgMd, &_sypSgMR);
    v9 = MEMORY[0x1E69E7CD0];
  }

  outlined init with copy of [String : String](v0 + 376, v0 + 608, &_sypSgMd, &_sypSgMR);
  if (*(v0 + 632))
  {
    outlined init with take of Any((v0 + 608), (v0 + 576));
    outlined init with take of Any((v0 + 576), (v0 + 672));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    v10 = *(v0 + 832);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v0 + 608, &_sypSgMd, &_sypSgMR);
    v10 = MEMORY[0x1E69E7CD0];
  }

  if (v10[2] <= *(v9 + 16) >> 3)
  {
    specialized Set._subtract<A>(_:)(v10);
  }

  else
  {
    v9 = specialized _NativeSet.subtracting<A>(_:)(v10, v9);
  }

  *(v0 + 664) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
  *(v0 + 640) = v9;
  outlined assign with take of Any?(v0 + 640, v0 + 32, &_sypSgMd, &_sypSgMR);
  v11 = v1[16];
  v12 = v1[17];
  __swift_project_boxed_opaque_existential_1(v1 + 13, v11);
  v13 = *(v12 + 24);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v0 + 888) = v15;
  *v15 = v0;
  v15[1] = SpatialTrackingManager.run(spatialTrackingConfiguration:);

  return v17(v0 + 192, v0 + 368, v11, v12);
}

{
  v1 = *(*v0 + 888);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](SpatialTrackingManager.run(spatialTrackingConfiguration:), 0, 0);
}

{
  v1 = (v0 + 192);
  if (*(v0 + 192))
  {
    v2 = *(v0 + 240);
    *(v0 + 136) = *(v0 + 224);
    *(v0 + 152) = v2;
    *(v0 + 168) = *(v0 + 256);
    *(v0 + 184) = *(v0 + 272);
    v3 = *(v0 + 208);
    *(v0 + 104) = *v1;
    *(v0 + 120) = v3;
    SpatialTrackingSession.UnavailableCapabilities.union(_:)((v0 + 104), v0 + 280);
    outlined destroy of SpatialTrackingSession.UnavailableCapabilities(v0 + 104);
    outlined assign with take of SpatialTrackingSession.UnavailableCapabilities(v0 + 280, v0 + 16);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v1, &_s17RealityFoundation22SpatialTrackingSessionC23UnavailableCapabilitiesVSgMd, &_s17RealityFoundation22SpatialTrackingSessionC23UnavailableCapabilitiesVSgMR);
  }

  v4 = *(v0 + 872);
  v5 = *(v0 + 856);
  SpatialTrackingSession.Configuration.removing(unavailableCapabilities:)((v0 + 16), v0 + 416);
  *(v0 + 896) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](SpatialTrackingManager.run(spatialTrackingConfiguration:), v7, v6);
}

{
  v1 = v0[112];
  v2 = v0[108];

  v3 = v0[52];
  swift_beginAccess();
  v4 = *(v2 + 48);
  *(v2 + 48) = v3;

  outlined init with copy of SpatialTrackingSession.Configuration((v0 + 52), (v0 + 58));
  swift_beginAccess();
  outlined assign with take of Any?((v0 + 58), v2 + 56, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMd, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMR);
  swift_endAccess();
  v5 = *(v2 + 48);

  SpatialTrackingManager.configureRFAnchorManagement(with:)(v6);

  *(v2 + 16) = 0;
  swift_beginAccess();
  v7 = *(v2 + 24);
  if (v7)
  {
    v8 = *(v0[108] + 32);

    v7(v9);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v7, v8);
  }

  return MEMORY[0x1EEE6DFA0](SpatialTrackingManager.run(spatialTrackingConfiguration:), 0, 0);
}

{
  v1 = SpatialTrackingSession.UnavailableCapabilities.anyUnavailableCapabilities.getter();
  outlined destroy of SpatialTrackingSession.Configuration(v0 + 416);
  outlined destroy of SpatialTrackingSession.Configuration(v0 + 368);
  v2 = *(v0 + 848);
  if (v1)
  {
    outlined init with copy of SpatialTrackingSession.UnavailableCapabilities(v0 + 16, v2);
  }

  else
  {
    *(v2 + 80) = 0;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *v2 = 0u;
  }

  outlined destroy of SpatialTrackingSession.UnavailableCapabilities(v0 + 16);
  v3 = *(v0 + 8);

  return v3();
}

void SpatialTrackingManager.configureRFAnchorManagement(with:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = RFServiceManagerGetAnchorManagementService();
  if (v4)
  {
    v6 = v4;
    RFAnchorManagementSetNeedSpatialTracking();
    v5 = *(a1 + 16);
    RFAnchorManagementSetNeedClientAnchoring();
    specialized Set.contains(_:)(1, a1);
    RFAnchorManagementSetClientNeedWorldAnchoring();
    specialized Set.contains(_:)(2, a1);
    RFAnchorManagementSetClientNeedPlaneAnchoring();
    specialized Set.contains(_:)(4, a1);
    RFAnchorManagementSetClientNeedImageAnchoring();
    specialized Set.contains(_:)(8, a1);
    RFAnchorManagementSetClientNeedObjectAnchoring();
  }
}

uint64_t SpatialTrackingManager.stop()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](SpatialTrackingManager.stop(), 0, 0);
}

{
  v1 = *(v0 + 16);
  v2 = v1[16];
  v3 = v1[17];
  __swift_project_boxed_opaque_existential_1(v1 + 13, v2);
  v4 = *(v3 + 40);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = SpatialTrackingManager.stop();

  return v8(v2, v3);
}

{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](SpatialTrackingManager.stop(), 0, 0);
}

{
  type metadata accessor for MainActor();
  *(v0 + 32) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](SpatialTrackingManager.stop(), v2, v1);
}

{
  v1 = v0[4];
  v2 = v0[2];

  SpatialTrackingManager.configureRFAnchorManagement(with:)(MEMORY[0x1E69E7CD0]);
  v3 = v0[1];

  return v3();
}

uint64_t SpatialTrackingManager.deinit()
{
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 24), *(v0 + 32));

  v1 = *(v0 + 48);

  outlined destroy of BodyTrackingComponent?(v0 + 56, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMd, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  return v0;
}

uint64_t SpatialTrackingManager.__deallocating_deinit()
{
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 24), *(v0 + 32));

  v1 = *(v0 + 48);

  outlined destroy of BodyTrackingComponent?(v0 + 56, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMd, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  return swift_deallocClassInstance();
}

void SpatialTrackingManager.setTransformResolver(sceneTransformResolver:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned simd_float4x4);
  v5[3] = &block_descriptor_57;
  v4 = _Block_copy(v5);

  RFServiceManagerSetTransformResolver();
  _Block_release(v4);
}

__n128 thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned simd_float4x4)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  *&v5 = v4(a2);
  v7 = v5;

  return v7;
}

uint64_t block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t dispatch thunk of SpatialTrackingManager.run(spatialTrackingConfiguration:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 264);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of SpatialTrackingManager.stop()()
{
  v2 = *(*v0 + 272);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return v6();
}

uint64_t _sytIegr_Ieg_TRTA_0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

int64_t SkeletalPose.jointNames.getter()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[5];

    return v1;
  }

  if (!*v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = v0[1];
  if (v0[2])
  {
    v5 = *v0;
    v6 = v0[1];
    result = RESkeletalPoseComponentGetModelSpaceJointCount();
    if ((result & 0x8000000000000000) == 0)
    {
      v7 = result;
      v1 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        v27 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, result, 0);
        v8 = 0;
        v1 = v27;
        do
        {
          RESkeletalPoseComponentGetModelSpaceJointName();
          v9 = String.init(cString:)();
          v28 = v1;
          v12 = *(v1 + 16);
          v11 = *(v1 + 24);
          if (v12 >= v11 >> 1)
          {
            v14 = v9;
            v15 = v10;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
            v10 = v15;
            v9 = v14;
            v1 = v28;
          }

          ++v8;
          *(v1 + 16) = v12 + 1;
          v13 = v1 + 16 * v12;
          *(v13 + 32) = v9;
          *(v13 + 40) = v10;
        }

        while (v7 != v8);
      }

      return v1;
    }

    __break(1u);
  }

  else
  {
    v16 = *v0;
    v17 = v0[1];
    result = RESkeletalPoseComponentGetJointCount();
    if ((result & 0x8000000000000000) == 0)
    {
      v18 = result;
      v1 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        v29 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, result, 0);
        v19 = 0;
        v1 = v29;
        do
        {
          RESkeletalPoseComponentGetJointName();
          v20 = String.init(cString:)();
          v30 = v1;
          v23 = *(v1 + 16);
          v22 = *(v1 + 24);
          if (v23 >= v22 >> 1)
          {
            v25 = v20;
            v26 = v21;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
            v21 = v26;
            v20 = v25;
            v1 = v30;
          }

          ++v19;
          *(v1 + 16) = v23 + 1;
          v24 = v1 + 16 * v23;
          *(v24 + 32) = v20;
          *(v24 + 40) = v21;
        }

        while (v18 != v19);
      }

      return v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t SkeletalPose.id.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t SkeletalPose.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t SkeletalPose.jointNames.setter(uint64_t a1)
{
  v2 = v1;
  v4 = SkeletalPose.jointNames.getter();
  v5 = *(v2 + 48);

  v6 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_So5RESRTas12Zip2SequenceVySaySSGSayAFGGTt0g5Tf4g_n(v4, v5);

  v7 = *(v2 + 40);

  *(v2 + 40) = a1;
  v8 = *(a1 + 16);
  if (v8)
  {
    v33 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9 = v33;
    v10 = (a1 + 40);
    do
    {
      if (*(v6 + 16))
      {
        v11 = *(v10 - 1);
        v12 = *v10;

        v13 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v12);
        v14 = 0uLL;
        v15 = 0uLL;
        v16 = 0uLL;
        if (v17)
        {
          v18 = (*(v6 + 56) + 48 * v13);
          v14 = *v18;
          v15 = v18[1];
          v16 = v18[2];
        }

        v27 = v16;
        v29 = v15;
        v31 = v14;

        v20 = v27;
        v19 = v29;
        v21 = v31;
      }

      else
      {
        v21 = 0uLL;
        v19 = 0uLL;
        v20 = 0uLL;
      }

      v23 = *(v33 + 16);
      v22 = *(v33 + 24);
      if (v23 >= v22 >> 1)
      {
        v30 = v19;
        v32 = v21;
        v28 = v20;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        v20 = v28;
        v19 = v30;
        v21 = v32;
      }

      *(v33 + 16) = v23 + 1;
      v24 = (v33 + 48 * v23);
      v24[2] = v21;
      v24[3] = v19;
      v24[4] = v20;
      v10 += 2;
      --v8;
    }

    while (v8);
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  v25 = *(v2 + 48);

  *(v2 + 48) = v9;
  return result;
}

uint64_t (*SkeletalPose.jointNames.modify(int64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  *a1 = SkeletalPose.jointNames.getter();
  return SkeletalPose.jointNames.modify;
}

uint64_t SkeletalPose.jointNames.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return SkeletalPose.jointNames.setter(*a1);
  }

  v4 = *a1;

  SkeletalPose.jointNames.setter(v5);
}

uint64_t SkeletalPose.jointTransforms.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 48);

  *(v1 + 48) = v2;
  return result;
}

uint64_t SkeletalPose.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 6);
  v18 = *v3;
  v19 = *(v3 + 16);
  v20 = *(v3 + 24);
  v21 = *(v3 + 5);
  v8 = SkeletalPose.jointNames.getter();
  v9 = v8;
  v10 = *(v8 + 16);
  v11 = v10 == 0;
  if (v10)
  {
    v12 = 0;
    v13 = (v7 + 64);
    v14 = (v8 + 40);
    while (1)
    {
      v15 = *(v14 - 1) == a1 && *v14 == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v12;
      v13 += 6;
      v14 += 2;
      v11 = v10 == v12;
      if (v10 == v12)
      {
        goto LABEL_9;
      }
    }

    if (v12 >= *(v7 + 16))
    {
      __break(1u);
    }

    else
    {
      a2 = *(v13 - 4);
      v9 = *(v13 - 3);
      v7 = *(v13 - 2);
      a1 = *(v13 - 1);
      v17 = v13;
      v13 = *v13;
      v12 = v17[1];
      if (one-time initialization token for identity == -1)
      {
        goto LABEL_12;
      }
    }

    result = swift_once();
    goto LABEL_12;
  }

LABEL_9:

  a2 = 0;
  v9 = 0;
  v7 = 0;
  a1 = 0;
  v13 = 0;
  v12 = 0;
LABEL_12:
  *a3 = a2;
  *(a3 + 8) = v9;
  *(a3 + 16) = v7;
  *(a3 + 24) = a1;
  *(a3 + 32) = v13;
  *(a3 + 40) = v12;
  *(a3 + 48) = v11;
  return result;
}

double key path getter for SkeletalPose.subscript(_:) : SkeletalPose@<D0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 5);
  v10 = *(a1 + 6);
  SkeletalPose.subscript.getter(*a2, a2[1], v11);
  v4 = v11[1];
  *a3 = v11[0];
  *(a3 + 16) = v4;
  result = *&v12;
  *(a3 + 32) = v12;
  *(a3 + 48) = v13;
  return result;
}

uint64_t SkeletalPose.subscript.setter(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = SkeletalPose.jointNames.getter();
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = (v7 + 40);
    while (1)
    {
      v12 = *(v11 - 1) == a2 && *v11 == a3;
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v10;
      v9 += 48;
      v11 += 2;
      if (v8 == v10)
      {
        goto LABEL_9;
      }
    }

    if ((a1[3] & 1) == 0)
    {
      v17 = a1[1];
      v18 = *a1;
      v16 = a1[2];
      v14 = *(v3 + 48);
      result = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 48) = v14;
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
        v14 = result;
        *(v3 + 48) = result;
      }

      if (v10 >= *(v14 + 16))
      {
        __break(1u);
      }

      else
      {
        v15 = (v14 + v9);
        v15[2] = v18;
        v15[3] = v17;
        v15[4] = v16;
        *(v3 + 48) = v14;
      }
    }
  }

  else
  {
LABEL_9:
  }

  return result;
}

void (*SkeletalPose.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0xC0uLL);
  }

  *a1 = v7;
  v7[23] = v3;
  v7[15] = a3;
  v7[7] = a2;
  v9 = *v3;
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  v12 = *(v3 + 5);
  v13 = *(v3 + 6);
  SkeletalPose.subscript.getter(a2, a3, (v7 + 16));
  return SkeletalPose.subscript.modify;
}

void SkeletalPose.subscript.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 184);
  v4 = *(*a1 + 120);
  v5 = *(*a1 + 56);
  if (a2)
  {
    v6 = *a1;
  }

  else
  {
    v6 = *a1 + 64;
  }

  v7 = *(v2 + 144);
  *v6 = *(v2 + 128);
  *(v6 + 16) = v7;
  *(v6 + 32) = *(v2 + 160);
  *(v6 + 48) = *(v2 + 176);

  SkeletalPose.subscript.setter(v6, v5, v4);

  free(v2);
}

uint64_t SkeletalPose.init(id:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2;
  v6 = *(a3 + 8);
  v7 = *(a3 + 16);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v39 = *(a3 + 8);
    v43 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9 = v43;
    v10 = (v7 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v14 = *(v43 + 16);
      v13 = *(v43 + 24);

      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      }

      *(v43 + 16) = v14 + 1;
      v15 = v43 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      v10 += 18;
      --v8;
    }

    while (v8);
    v16 = *(v7 + 16);
    if (v16)
    {
      v44 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
      v17 = v44;
      v18 = *(v44 + 16);
      v19 = 48 * v18;
      v20 = (v7 + 160);
      do
      {
        v21 = *(v20 - 2);
        v22 = *(v20 - 1);
        v23 = *v20;
        v24 = *(v44 + 24);
        v25 = v18 + 1;
        if (v18 >= v24 >> 1)
        {
          v37 = *(v20 - 2);
          v34 = *v20;
          v35 = *(v20 - 1);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v18 + 1, 1);
          v23 = v34;
          v22 = v35;
          v21 = v37;
        }

        *(v44 + 16) = v25;
        v26 = (v44 + v19);
        v26[2] = v21;
        v26[3] = v22;
        v26[4] = v23;
        v19 += 48;
        v20 += 9;
        v18 = v25;
        --v16;
      }

      while (v16);

      v4 = a2;
      v27 = *(v44 + 16);
      if (!v27)
      {
        goto LABEL_12;
      }

      goto LABEL_16;
    }

    v4 = a2;
  }

  v17 = MEMORY[0x1E69E7CC0];
  v27 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v27)
  {
LABEL_12:
    v28 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

LABEL_16:
  v30 = (v17 + 64);
  v28 = MEMORY[0x1E69E7CC0];
  do
  {
    v40 = *(v30 - 1);
    v42 = *(v30 - 2);
    v38 = *v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
    }

    v32 = *(v28 + 2);
    v31 = *(v28 + 3);
    if (v32 >= v31 >> 1)
    {
      v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v28);
    }

    *(v28 + 2) = v32 + 1;
    v33 = &v28[48 * v32];
    *(v33 + 2) = v42;
    *(v33 + 3) = v40;
    *(v33 + 4) = v38;
    v30 += 3;
    --v27;
  }

  while (v27);
LABEL_13:

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = a1;
  *(a4 + 32) = v4;
  *(a4 + 40) = v9;
  *(a4 + 48) = v28;
  return result;
}

uint64_t SkeletalPose.init(id:joints:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a3 + 16);
  if (v6)
  {
    v43 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = v43;
    v40 = a3;
    v8 = (a3 + 40);
    v9 = v6;
    do
    {
      v11 = *(v8 - 1);
      v10 = *v8;
      v13 = *(v43 + 16);
      v12 = *(v43 + 24);

      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      }

      *(v43 + 16) = v13 + 1;
      v14 = v43 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      v8 += 8;
      --v9;
    }

    while (v9);
    v44 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v15 = v44;
    v16 = *(v44 + 16);
    v17 = 48 * v16;
    v18 = v40;
    v19 = (v40 + 80);
    do
    {
      v20 = *(v19 - 2);
      v21 = *(v19 - 1);
      v22 = *v19;
      v23 = *(v44 + 24);
      v24 = v16 + 1;
      if (v16 >= v23 >> 1)
      {
        v26 = v18;
        v38 = *(v19 - 1);
        v41 = *(v19 - 2);
        v36 = *v19;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v16 + 1, 1);
        v22 = v36;
        v21 = v38;
        v20 = v41;
        v18 = v26;
      }

      *(v44 + 16) = v24;
      v25 = (v44 + v17);
      v25[2] = v20;
      v25[3] = v21;
      v25[4] = v22;
      v17 += 48;
      v19 += 4;
      v16 = v24;
      --v6;
    }

    while (v6);
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
    v7 = MEMORY[0x1E69E7CC0];
  }

  v28 = *(v7 + 16);
  if (v28 == *(v15 + 16))
  {
    if (v28)
    {
      v29 = (v15 + 64);
      v30 = MEMORY[0x1E69E7CC0];
      do
      {
        v39 = *(v29 - 1);
        v42 = *(v29 - 2);
        v37 = *v29;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
        }

        v32 = *(v30 + 2);
        v31 = *(v30 + 3);
        if (v32 >= v31 >> 1)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v30);
        }

        *(v30 + 2) = v32 + 1;
        v33 = &v30[48 * v32];
        *(v33 + 2) = v42;
        *(v33 + 3) = v39;
        *(v33 + 4) = v37;
        v29 += 3;
        --v28;
      }

      while (v28);
    }

    else
    {
      v30 = MEMORY[0x1E69E7CC0];
    }

    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = a1;
    *(a4 + 32) = a2;
    *(a4 + 40) = v7;
    *(a4 + 48) = v30;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance SkeletalPose@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

uint64_t getEnumTagSinglePayload for SkeletalPose(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SkeletalPose(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t CustomMaterialResource.deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  REAssetSetSwiftObject();
  v2 = *(v0 + 16);
  RERelease();
  return v0;
}

uint64_t CustomMaterialResource.__deallocating_deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  REAssetSetSwiftObject();
  v2 = *(v0 + 16);
  RERelease();
  return swift_deallocClassInstance();
}

uint64_t _s17RealityFoundation17FromToByAnimationVyACyxG0A3Kit0F8ResourceCcfCSf_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
      *(a2 + 212) = 0;
      *(a2 + 208) = 0;
      *(a2 + 213) = 1;
      *(a2 + 220) = 0;
      *(a2 + 216) = 0;
      *(a2 + 221) = 1;
      *(a2 + 228) = 0;
      *(a2 + 224) = 0;
      *(a2 + 229) = 1;
      *(a2 + 232) = 0;
      *(a2 + 240) = 1;
      *(a2 + 256) = 0;
      *(a2 + 264) = 0;
      *(a2 + 272) = 0;
      *(a2 + 276) = 10;
      *(a2 + 280) = 0;
      *(a2 + 288) = 514;
      *(a2 + 290) = 2;
      *(a2 + 296) = 0;
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

uint64_t _s17RealityFoundation17FromToByAnimationVyACyxG0A3Kit0F8ResourceCcfCSd_Tt1g5Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
      *(a2 + 208) = 0;
      *(a2 + 216) = 0;
      *(a2 + 217) = 1;
      *(a2 + 224) = 0;
      *(a2 + 232) = 0;
      *(a2 + 233) = 1;
      *(a2 + 240) = 0;
      *(a2 + 248) = 0;
      *(a2 + 249) = 1;
      *(a2 + 256) = 0;
      *(a2 + 264) = 1;
      *(a2 + 272) = 0;
      *(a2 + 280) = 0;
      *(a2 + 288) = 0;
      *(a2 + 292) = 10;
      *(a2 + 296) = 0;
      *(a2 + 304) = 514;
      *(a2 + 306) = 2;
      *(a2 + 312) = 0;
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

uint64_t _s17RealityFoundation17FromToByAnimationVyACyxG0A3Kit0F8ResourceCcfCs5SIMD3VySfG_Tt1g5Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
            v17 = swift_allocObject();
            *(v17 + 16) = v12;
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
            v17 = swift_allocObject();
            *(v17 + 16) = 0;
          }

          v18 = 2;
          v16 = v4;
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
      v16 = swift_allocObject();
      v17 = v4;
      *(v16 + 16) = 0;
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
      *(a2 + 144) = v16;
      *(a2 + 168) = 0u;
      *(a2 + 152) = 0u;
      *(a2 + 184) = -1;
      *(a2 + 188) = 0x201000100000000;
      *(a2 + 208) = 0;
      *(a2 + 216) = 0;
      *(a2 + 200) = v17;
      *(a2 + 224) = 0;
      *(a2 + 225) = 1;
      *(a2 + 240) = 0;
      *(a2 + 248) = 0;
      *(a2 + 256) = 0;
      *(a2 + 257) = 1;
      *(a2 + 272) = 0;
      *(a2 + 280) = 0;
      *(a2 + 288) = 0;
      *(a2 + 289) = 1;
      *(a2 + 296) = 0;
      *(a2 + 304) = 1;
      *(a2 + 336) = 0;
      *(a2 + 320) = 0;
      *(a2 + 328) = 0;
      *(a2 + 340) = 10;
      *(a2 + 344) = 0;
      *(a2 + 352) = 514;
      *(a2 + 354) = 2;
      *(a2 + 360) = 0;
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

uint64_t _s17RealityFoundation17FromToByAnimationVyACyxG0A3Kit0F8ResourceCcfCAE9TransformV_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
      *(a2 + 256) = 0;
      *(a2 + 224) = 0u;
      *(a2 + 240) = 0u;
      *(a2 + 208) = 0u;
      *(a2 + 257) = 1;
      *(a2 + 272) = 0u;
      *(a2 + 288) = 0u;
      *(a2 + 304) = 0u;
      *(a2 + 320) = 0;
      *(a2 + 321) = 1;
      *(a2 + 336) = 0u;
      *(a2 + 352) = 0u;
      *(a2 + 368) = 0u;
      *(a2 + 384) = 0;
      *(a2 + 385) = 1;
      *(a2 + 392) = 0;
      *(a2 + 400) = 1;
      *(a2 + 432) = 0;
      *(a2 + 416) = 0;
      *(a2 + 424) = 0;
      *(a2 + 436) = 10;
      *(a2 + 440) = 0;
      *(a2 + 448) = 514;
      *(a2 + 450) = 2;
      *(a2 + 456) = 0;
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

uint64_t _s17RealityFoundation17FromToByAnimationVyACyxG0A3Kit0F8ResourceCcfCAA15JointTransformsV_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
      *(a2 + 208) = vdupq_n_s64(1uLL);
      *(a2 + 224) = xmmword_1C1887610;
      *(a2 + 240) = 1;
      *(a2 + 256) = 0;
      *(a2 + 264) = 0;
      *(a2 + 272) = 0;
      *(a2 + 276) = 10;
      *(a2 + 280) = 0;
      *(a2 + 288) = 514;
      *(a2 + 290) = 2;
      *(a2 + 296) = 0;
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

uint64_t AnimationResource.__allocating_init(_:name:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = swift_allocObject();
  AnimationResource.init(_:name:)(a1, a2, a3);
  return v6;
}

uint64_t AnimationResource.definition.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = REAssetHandleAssetType();
  if (result == 5 || result == 11 && (result = REAnimationSceneAssetGetRootTimeline()) != 0)
  {
    RETimelineDefinitionCreateFromTimeline();
    switch(RETimelineDefinitionGetTimelineType())
    {
      case 2u:
        a1[3] = &type metadata for AnimationView;
        a1[4] = &protocol witness table for AnimationView;
        v5 = swift_allocObject();
        *a1 = v5;

        AnimationView.init(_:)(v6, v5 + 16);
        goto LABEL_35;
      case 3u:
        a1[3] = &type metadata for AnimationGroup;
        a1[4] = &protocol witness table for AnimationGroup;
        v11 = swift_allocObject();
        *a1 = v11;

        AnimationGroup.init(_:)(v12, v11 + 16);
        goto LABEL_35;
      case 4u:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17FromToByAnimationVySfGMd, &_s17RealityFoundation17FromToByAnimationVySfGMR);
        a1[4] = &protocol witness table for FromToByAnimation<A>;
        v9 = swift_allocObject();
        *a1 = v9;

        _s17RealityFoundation17FromToByAnimationVyACyxG0A3Kit0F8ResourceCcfCSf_Tt1g5(v10, v9 + 16);
        goto LABEL_35;
      case 5u:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17FromToByAnimationVySdGMd, &_s17RealityFoundation17FromToByAnimationVySdGMR);
        a1[4] = &protocol witness table for FromToByAnimation<A>;
        goto LABEL_27;
      case 6u:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17FromToByAnimationVys5SIMD2VySfGGMd, &_s17RealityFoundation17FromToByAnimationVys5SIMD2VySfGGMR);
        a1[4] = &protocol witness table for FromToByAnimation<A>;
LABEL_27:
        v15 = swift_allocObject();
        *a1 = v15;

        _s17RealityFoundation17FromToByAnimationVyACyxG0A3Kit0F8ResourceCcfCSd_Tt1g5Tm(v16, v15 + 16);
        goto LABEL_35;
      case 7u:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17FromToByAnimationVys5SIMD3VySfGGMd, &_s17RealityFoundation17FromToByAnimationVys5SIMD3VySfGGMR);
        a1[4] = &protocol witness table for FromToByAnimation<A>;
        goto LABEL_22;
      case 8u:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17FromToByAnimationVys5SIMD4VySfGGMd, &_s17RealityFoundation17FromToByAnimationVys5SIMD4VySfGGMR);
        a1[4] = &protocol witness table for FromToByAnimation<A>;
        goto LABEL_22;
      case 9u:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17FromToByAnimationVySo10simd_quatfaGMd, &_s17RealityFoundation17FromToByAnimationVySo10simd_quatfaGMR);
        a1[4] = &protocol witness table for FromToByAnimation<A>;
LABEL_22:
        v13 = swift_allocObject();
        *a1 = v13;

        _s17RealityFoundation17FromToByAnimationVyACyxG0A3Kit0F8ResourceCcfCs5SIMD3VySfG_Tt1g5Tm(v14, v13 + 16);
        goto LABEL_35;
      case 0xAu:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17FromToByAnimationVy0A3Kit9TransformVGMd, &_s17RealityFoundation17FromToByAnimationVy0A3Kit9TransformVGMR);
        a1[4] = &protocol witness table for FromToByAnimation<A>;
        v19 = swift_allocObject();
        *a1 = v19;

        _s17RealityFoundation17FromToByAnimationVyACyxG0A3Kit0F8ResourceCcfCAE9TransformV_Tt1g5(v20, v19 + 16);
        goto LABEL_35;
      case 0xBu:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17FromToByAnimationVyAA15JointTransformsVGMd, &_s17RealityFoundation17FromToByAnimationVyAA15JointTransformsVGMR);
        a1[4] = &protocol witness table for FromToByAnimation<A>;
        v17 = swift_allocObject();
        *a1 = v17;

        _s17RealityFoundation17FromToByAnimationVyACyxG0A3Kit0F8ResourceCcfCAA15JointTransformsV_Tt1g5(v18, v17 + 16);
        goto LABEL_35;
      case 0xCu:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16SampledAnimationVySfGMd, &_s17RealityFoundation16SampledAnimationVySfGMR);
        a1[4] = &protocol witness table for SampledAnimation<A>;
        goto LABEL_32;
      case 0xDu:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16SampledAnimationVySdGMd, &_s17RealityFoundation16SampledAnimationVySdGMR);
        a1[4] = &protocol witness table for SampledAnimation<A>;
        goto LABEL_32;
      case 0xEu:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16SampledAnimationVys5SIMD2VySfGGMd, &_s17RealityFoundation16SampledAnimationVys5SIMD2VySfGGMR);
        a1[4] = &protocol witness table for SampledAnimation<A>;
        goto LABEL_32;
      case 0xFu:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16SampledAnimationVys5SIMD3VySfGGMd, &_s17RealityFoundation16SampledAnimationVys5SIMD3VySfGGMR);
        a1[4] = &protocol witness table for SampledAnimation<A>;
        goto LABEL_32;
      case 0x10u:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16SampledAnimationVys5SIMD4VySfGGMd, &_s17RealityFoundation16SampledAnimationVys5SIMD4VySfGGMR);
        a1[4] = &protocol witness table for SampledAnimation<A>;
        goto LABEL_32;
      case 0x12u:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16SampledAnimationVy0A3Kit9TransformVGMd, &_s17RealityFoundation16SampledAnimationVy0A3Kit9TransformVGMR);
        a1[4] = &protocol witness table for SampledAnimation<A>;
        goto LABEL_32;
      case 0x13u:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16SampledAnimationVyAA15JointTransformsVGMd, &_s17RealityFoundation16SampledAnimationVyAA15JointTransformsVGMR);
        a1[4] = &protocol witness table for SampledAnimation<A>;
LABEL_32:
        v21 = swift_allocObject();
        *a1 = v21;

        _s17RealityFoundation16SampledAnimationVyACyxG0A3Kit0D8ResourceCcfCSf_Tt1g5Tm(v22, v21 + 16);
        goto LABEL_35;
      case 0x14u:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18BlendTreeAnimationVySfGMd, &_s17RealityFoundation18BlendTreeAnimationVySfGMR);
        a1[4] = &protocol witness table for BlendTreeAnimation<A>;
        goto LABEL_34;
      case 0x15u:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18BlendTreeAnimationVySdGMd, &_s17RealityFoundation18BlendTreeAnimationVySdGMR);
        a1[4] = &protocol witness table for BlendTreeAnimation<A>;
        goto LABEL_34;
      case 0x16u:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18BlendTreeAnimationVys5SIMD2VySfGGMd, &_s17RealityFoundation18BlendTreeAnimationVys5SIMD2VySfGGMR);
        a1[4] = &protocol witness table for BlendTreeAnimation<A>;
        goto LABEL_34;
      case 0x17u:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18BlendTreeAnimationVys5SIMD3VySfGGMd, &_s17RealityFoundation18BlendTreeAnimationVys5SIMD3VySfGGMR);
        a1[4] = &protocol witness table for BlendTreeAnimation<A>;
        goto LABEL_34;
      case 0x18u:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18BlendTreeAnimationVys5SIMD4VySfGGMd, &_s17RealityFoundation18BlendTreeAnimationVys5SIMD4VySfGGMR);
        a1[4] = &protocol witness table for BlendTreeAnimation<A>;
        goto LABEL_34;
      case 0x19u:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18BlendTreeAnimationVySo10simd_quatfaGMd, &_s17RealityFoundation18BlendTreeAnimationVySo10simd_quatfaGMR);
        a1[4] = &protocol witness table for BlendTreeAnimation<A>;
        goto LABEL_34;
      case 0x1Au:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18BlendTreeAnimationVy0A3Kit9TransformVGMd, &_s17RealityFoundation18BlendTreeAnimationVy0A3Kit9TransformVGMR);
        a1[4] = &protocol witness table for BlendTreeAnimation<A>;
        goto LABEL_34;
      case 0x1Bu:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18BlendTreeAnimationVyAA15JointTransformsVGMd, &_s17RealityFoundation18BlendTreeAnimationVyAA15JointTransformsVGMR);
        a1[4] = &protocol witness table for BlendTreeAnimation<A>;
LABEL_34:
        v23 = swift_allocObject();
        *a1 = v23;

        _s17RealityFoundation18BlendTreeAnimationVyACyxG0A3Kit0E8ResourceCcfCSf_Tt1g5Tm(v24, v23 + 16);
        goto LABEL_35;
      case 0x1Cu:
        a1[3] = &type metadata for OrbitAnimation;
        a1[4] = &protocol witness table for OrbitAnimation;
        v7 = swift_allocObject();
        *a1 = v7;

        OrbitAnimation.init(_:)(v8, v7 + 16);
        goto LABEL_35;
      case 0x1Du:
        AnimationResource.eventTimelineDefinition.getter(&v28);
        if (v29)
        {
          outlined init with take of ForceEffectBase(&v28, a1);
        }

        else
        {
          a1[3] = &type metadata for AnyActionAnimation;
          a1[4] = &protocol witness table for AnyActionAnimation;
          v26 = swift_allocObject();
          *a1 = v26;

          AnyActionAnimation.init(_:)(v27, v26 + 16);
        }

        return RERelease();
      default:
        a1[3] = &type metadata for InvalidAnimationDefinition;
        a1[4] = &protocol witness table for InvalidAnimationDefinition;
        v25 = swift_allocObject();
        *a1 = v25;
        *(v25 + 16) = 0;
        *(v25 + 24) = 0xE000000000000000;
        *(v25 + 32) = 0;
        *(v25 + 36) = 0;
        *(v25 + 40) = xmmword_1C1898800;
        *(v25 + 56) = 0;
        *(v25 + 64) = 0;
        *(v25 + 72) = 1;
        *(v25 + 80) = 0;
        *(v25 + 88) = 1;
        *(v25 + 96) = 0;
        *(v25 + 104) = 1;
        *(v25 + 112) = 0;
        *(v25 + 120) = 0;
        *(v25 + 125) = 0;
LABEL_35:

        result = RERelease();
        break;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s17RealityFoundation18BlendTreeAnimationVyACyxG0A3Kit0E8ResourceCcfCSf_Tt1g5Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for TimelineDefinition();
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0;
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
          *(a2 + 56) = 0;
          *(a2 + 64) = 256;
          *(a2 + 72) = 0;
          *(a2 + 80) = 256;
          *(a2 + 88) = 0;
          *(a2 + 96) = 256;
          *(a2 + 104) = 0;
          *(a2 + 112) = 1;
          *(a2 + 120) = 0;
          *(a2 + 128) = 1;
          *(a2 + 132) = 0;
          *(a2 + 136) = 1025;
          *(a2 + 144) = 0u;
          *(a2 + 160) = 0u;
          *(a2 + 176) = 0;
          *(a2 + 184) = -1;
          *(a2 + 188) = 0;
          *(a2 + 192) = 1;
          *(a2 + 193) = 256;
          *(a2 + 195) = 2;
          *(a2 + 200) = v4;

          if (*(v4 + 16) && (ClipSourceRef = RETimelineDefinitionCreateClipSourceRef()) != 0)
          {
            v11 = ClipSourceRef;
            v12 = swift_allocObject();
            *(v12 + 16) = v11;
            RERetain();
            RERelease();
          }

          else
          {
            v12 = swift_allocObject();
            *(v12 + 16) = 0;
          }

LABEL_16:

          *a2 = 0u;
          *(a2 + 16) = 0u;
          *(a2 + 32) = -1;
          *(a2 + 36) = 0x201000100000000;
          *(a2 + 48) = v12;
          return result;
        }

        v9 = *(v4 + 16);
      }

      if (v9)
      {
        RETimelineDefinitionGetName();
        v13 = String.init(cString:)();
        v15 = v14;
      }

      else
      {
        v13 = 0;
        v15 = 0xE000000000000000;
      }

      outlined consume of BindTarget?(0, 0, 0xFFu);
      v16 = swift_allocObject();
      *(v16 + 16) = 0;
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *(a2 + 65) = 1;
      *(a2 + 72) = 0;
      *(a2 + 80) = 0;
      *(a2 + 81) = 1;
      *(a2 + 88) = 0;
      *(a2 + 96) = 0;
      *(a2 + 97) = 1;
      *(a2 + 104) = 0;
      *(a2 + 112) = 1;
      *(a2 + 120) = 0;
      *(a2 + 128) = 1;
      *(a2 + 132) = 0;
      *(a2 + 136) = 1;
      *(a2 + 137) = 4;
      *(a2 + 144) = v4;
      *(a2 + 152) = v13;
      *(a2 + 168) = 0;
      *(a2 + 176) = 0;
      *(a2 + 160) = v15;
      *(a2 + 184) = -1;
      *(a2 + 188) = 0;
      *(a2 + 192) = 0;
      *(a2 + 194) = 0;
      v12 = v4;
      *(a2 + 200) = v16;
      goto LABEL_16;
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

uint64_t _s17RealityFoundation16SampledAnimationVyACyxG0A3Kit0D8ResourceCcfCSf_Tt1g5Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
            v13 = swift_allocObject();
            *(v13 + 16) = v12;
            RERetain();
            RERelease();
            v19 = 0;
            v20 = 0;
            v14 = 0;
          }

          else
          {
            v13 = swift_allocObject();
            v19 = 0;
            v20 = 0;
            v14 = 0;
            *(v13 + 16) = 0;
          }

          v18 = 2;
          v17 = v4;
          v16 = 1;
          goto LABEL_17;
        }

        v9 = *(v4 + 16);
      }

      if (v9)
      {
        RETimelineDefinitionGetName();
        v19 = String.init(cString:)();
        v20 = v15;
      }

      else
      {
        v19 = 0;
        v20 = 0xE000000000000000;
      }

      outlined consume of BindTarget?(0, 0, 0xFFu);
      v18 = 0;
      v17 = swift_allocObject();
      *(v17 + 16) = 0;
      v10 = 0;
      v16 = 0;
      v14 = v4;
      v13 = v4;
LABEL_17:

      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = -1;
      *(a2 + 36) = 0x201000100000000;
      *(a2 + 48) = v13;
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *(a2 + 65) = 1;
      *(a2 + 72) = 0;
      *(a2 + 80) = 0;
      *(a2 + 81) = 1;
      *(a2 + 88) = 0;
      *(a2 + 96) = 0;
      *(a2 + 97) = 1;
      *(a2 + 104) = 0;
      *(a2 + 112) = 1;
      *(a2 + 120) = 0;
      *(a2 + 128) = 1;
      *(a2 + 132) = 0;
      *(a2 + 136) = 1;
      *(a2 + 137) = 4;
      *(a2 + 144) = v14;
      *(a2 + 152) = v19;
      *(a2 + 168) = 0;
      *(a2 + 176) = 0;
      *(a2 + 160) = v20;
      *(a2 + 184) = -1;
      *(a2 + 188) = 0;
      *(a2 + 192) = v16;
      *(a2 + 193) = 0;
      *(a2 + 194) = v10;
      *(a2 + 195) = v18;
      *(a2 + 200) = v17;
      *(a2 + 208) = 2;
      *(a2 + 212) = 0;
      *(a2 + 216) = 1;
      *(a2 + 224) = 0;
      *(a2 + 232) = 0;
      *(a2 + 240) = 1;
      *(a2 + 248) = 0;
      *(a2 + 256) = 1;
      *(a2 + 264) = 0;
      *(a2 + 272) = 514;
      *(a2 + 274) = 2;
      *(a2 + 280) = 0;
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

uint64_t AnimationResource.timelineAsset()()
{
  v1 = *(v0 + 16);
  v2 = REAssetHandleAssetType();
  if (v2 == 11)
  {
    return REAnimationSceneAssetGetRootTimeline();
  }

  if (v2 == 5)
  {
    return v1;
  }

  return 0;
}

uint64_t AnimationResource.name.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void *AnimationResource.init(_:name:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3[2] = a1;
  if (!a3)
  {
    if (REAssetHandleAssetType() == 11)
    {
      REAnimationSceneAssetGetRootTimeline();
    }

    if (REAnimationAssetGetName())
    {
      v4 = String.init(cString:)();
      a3 = v5;
      a2 = v4;
    }

    else
    {
      a2 = 0;
      a3 = 0xE000000000000000;
    }
  }

  v3[3] = a2;
  v3[4] = a3;
  RERetain();
  REAssetSetSwiftObject();
  return v3;
}

uint64_t AnimationResource.deinit()
{
  v1 = *(v0 + 16);
  REAssetSetSwiftObject();
  v2 = *(v0 + 16);
  RERelease();
  v3 = *(v0 + 32);

  return v0;
}

uint64_t AnimationResource.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  REAssetSetSwiftObject();
  v2 = *(v0 + 16);
  RERelease();
  v3 = *(v0 + 32);

  return swift_deallocClassInstance();
}

unint64_t one-time initialization function for actionHandlerCreators()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_17RealityFoundation21ActionHandlerProtocol_pSg0C3Kit27AnimationPlaybackControllerC_AC0E9EventDataVSbS2dAF8__EngineCSVAF6EntityCSgtcTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static AnimationResource.actionHandlerCreators = result;
  return result;
}

unint64_t one-time initialization function for actionHandlers()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSV_17RealityFoundation21ActionHandlerProtocol_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static AnimationResource.actionHandlers = result;
  return result;
}

unint64_t one-time initialization function for actionSubscriptions()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_SDy17RealityFoundation15ActionEventTypeVSo20RESubscriptionHandleaGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static AnimationResource.actionSubscriptions = result;
  return result;
}

unint64_t one-time initialization function for actionTypeMap()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17RealityFoundation12EntityAction_pXpTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static AnimationResource.actionTypeMap = result;
  return result;
}

unint64_t one-time initialization function for codableActionTypeMap()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static AnimationResource.codableActionTypeMap = result;
  return result;
}

Swift::Int AnimationRepeatMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t AnimationResource.repeat(duration:)(double a1)
{
  v2 = v1;
  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v4 + 120, v18);
  v5 = v19.i64[1];
  v6 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19.i64[1]);
  (*(v6 + 32))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v18);
  v7 = v2[2];
  v8 = REAssetHandleAssetType();
  if (v8 != 5 && (v8 != 11 || !REAnimationSceneAssetGetRootTimeline()))
  {
    __break(1u);
    goto LABEL_10;
  }

  v18[0] = 0;
  v18[1] = 0;
  v19 = vdupq_n_s64(0x7FF8000000000000uLL);
  v20 = 0;
  v21 = 0;
  v22 = a1;
  v23 = 0x13F800000;
  TimelineClip = REAssetManagerTimelineAssetCreateTimelineClipEx();
  if (!TimelineClip)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v10 = TimelineClip;
  if (REAssetHandleAssetType() == 11)
  {
    v11 = REAnimationSceneAssetCreateWithTimeline();
    v13 = v2[3];
    v12 = v2[4];
    type metadata accessor for AnimationResource();
    v14 = swift_allocObject();

    AnimationResource.init(_:name:)(v11, v13, v12);
    RERelease();
  }

  else
  {
    v16 = v2[3];
    v15 = v2[4];
    type metadata accessor for AnimationResource();
    v14 = swift_allocObject();

    AnimationResource.init(_:name:)(v10, v16, v15);
  }

  RERelease();
  return v14;
}

uint64_t AnimationResource.repeat(count:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = REAssetHandleAssetType();
  if (v5 != 5 && (v5 != 11 || !REAnimationSceneAssetGetRootTimeline()))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  REAnimationAssetGetTotalDuration();
  v7 = v6;
  v8 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v8 + 120, v21);
  v9 = v22.i64[1];
  v10 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22.i64[1]);
  (*(v10 + 32))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v21);
  v11 = REAssetHandleAssetType();
  if (v11 != 5 && (v11 != 11 || !REAnimationSceneAssetGetRootTimeline()))
  {
    goto LABEL_13;
  }

  v21[0] = 0;
  v21[1] = 0;
  v22 = vdupq_n_s64(0x7FF8000000000000uLL);
  v23 = 0;
  v24 = 0;
  v25 = v7 * a1;
  v26 = 0x13F800000;
  TimelineClip = REAssetManagerTimelineAssetCreateTimelineClipEx();
  if (!TimelineClip)
  {
LABEL_14:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v13 = TimelineClip;
  if (REAssetHandleAssetType() == 11)
  {
    v14 = REAnimationSceneAssetCreateWithTimeline();
    v16 = *(v2 + 24);
    v15 = *(v2 + 32);
    type metadata accessor for AnimationResource();
    v17 = swift_allocObject();

    AnimationResource.init(_:name:)(v14, v16, v15);
    RERelease();
  }

  else
  {
    v19 = *(v2 + 24);
    v18 = *(v2 + 32);
    type metadata accessor for AnimationResource();
    v17 = swift_allocObject();

    AnimationResource.init(_:name:)(v13, v19, v18);
  }

  RERelease();
  return v17;
}

uint64_t static AnimationResource.group(with:)(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10), 0, MEMORY[0x1E69E7CC0]);
    result = *(v2 + 16);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_14:
    v5 = 0;
LABEL_15:
    v42 = &type metadata for AnimationGroup;
    v43 = &protocol witness table for AnimationGroup;
    v24 = swift_allocObject();
    v41[0] = v24;
    outlined consume of BindTarget?(0, 0, 0xFFu);
    LOBYTE(v38[0]) = 0;
    HIBYTE(v37) = 0;
    type metadata accessor for TimelineDefinition();
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    v26 = v38[0];
    v27 = HIBYTE(v37);
    *(v24 + 176) = xmmword_1C18D6F70;
    *(v24 + 192) = 0;
    *(v24 + 200) = 0;
    *(v24 + 208) = -1;
    *(v24 + 212) = 0;
    *(v24 + 216) = v26;
    *(v24 + 217) = v5;
    *(v24 + 218) = v27;
    *(v24 + 224) = v25;
    outlined consume of BindTarget?(0, 0, 0xFFu);
    LOBYTE(v38[0]) = 0;
    HIBYTE(v37) = 0;
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    v29 = v38[0];
    v30 = HIBYTE(v37);
    LOBYTE(v38[0]) = 0;
    v37 = 0;
    v36 = 0;
    v35 = 0;
    *(v24 + 32) = 1;
    *(v24 + 40) = 0;
    *(v24 + 48) = 1;
    *(v24 + 56) = 0;
    *(v24 + 64) = 1;
    *(v24 + 72) = 0;
    *(v24 + 80) = 0;
    *(v24 + 88) = 0;
    *(v24 + 96) = 0;
    *(v24 + 100) = 1065353216;
    *(v24 + 104) = 0;
    *(v24 + 112) = xmmword_1C18D6F80;
    *(v24 + 128) = xmmword_1C18D6F90;
    *(v24 + 144) = 0xE000000000000000;
    *(v24 + 152) = 0;
    *(v24 + 155) = BYTE2(v38[0]);
    *(v24 + 153) = v38[0];
    *(v24 + 156) = 0;
    *(v24 + 160) = v29;
    *(v24 + 162) = v30;
    *(v24 + 168) = v28;
    *(v24 + 16) = v3;
    *(v24 + 24) = 0;
    v31 = specialized static AnimationResource.generate(with:)(v41);
    __swift_destroy_boxed_opaque_existential_1(v41);
    return v31;
  }

  v1 = a1;
  v23 = __CocoaSet.count.getter();
  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23 & ~(v23 >> 63), 0, MEMORY[0x1E69E7CC0]);
  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (result >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = v1;
    v33 = v1 & 0xC000000000000001;
    v34 = v1;
    do
    {
      v8 = result;
      if (v33)
      {
        MEMORY[0x1C68F41F0](v6, v7);
      }

      else
      {
        v9 = *(v7 + 8 * v6 + 32);
      }

      AnimationResource.definition.getter(v41);
      v10 = v42;
      v11 = v43;
      __swift_project_boxed_opaque_existential_1(v41, v42);
      (v11[7])(v38, v10, v11);
      v12 = v38[0];
      outlined init with copy of __REAssetService(v41, v38);
      v44 = v3;
      v14 = v3[2];
      v13 = v3[3];
      if (v14 >= v13 >> 1)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v3);

        v44 = v3;
      }

      else
      {
      }

      ++v6;
      v5 |= v12;
      v15 = v39;
      v16 = v40;
      v17 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
      v18 = *(*(v15 - 8) + 64);
      v19 = MEMORY[0x1EEE9AC00](v17);
      v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 16))(v21, v19);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v14, v21, &v44, v15, v16);
      __swift_destroy_boxed_opaque_existential_1(v38);
      __swift_destroy_boxed_opaque_existential_1(v41);
      result = v8;
      v7 = v34;
    }

    while (v8 != v6);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t static AnimationResource.sequence(with:)(unint64_t a1)
{
  v4 = v2;
  v5 = a1;
  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 > 0)
    {
      goto LABEL_3;
    }

LABEL_51:
    v35 = 0x80000001C18F0E20;
    lazy protocol witness table accessor for type AnimationError and conformance AnimationError();
    swift_allocError();
    *v76 = 0xD000000000000033;
    *(v76 + 8) = 0x80000001C18F0E20;
    *(v76 + 16) = 0;
    swift_willThrow();
    return v35;
  }

LABEL_50:
  v6 = __CocoaSet.count.getter();
  if (v6 <= 0)
  {
    goto LABEL_51;
  }

LABEL_3:
  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0, MEMORY[0x1E69E7CC0]);
  v82 = v5 & 0xC000000000000001;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1C68F41F0](0, v5);
  }

  else
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      __break(1u);
      goto LABEL_55;
    }

    v9 = *(v5 + 32);
  }

  v10 = *(v9 + 16);
  v11 = REAssetHandleAssetType();
  if (v11 == 11)
  {
    RootTimeline = REAnimationSceneAssetGetRootTimeline();

    if (RootTimeline)
    {
LABEL_10:
      REAnimationAssetGetTotalDuration();
      v3 = v14;
      if (v82)
      {
        MEMORY[0x1C68F41F0](0, v5);
      }

      else
      {
        v15 = *(v5 + 32);
      }

      AnimationResource.definition.getter(v101);

      v104[0] = v7;
      v1 = v7[2];
      v8 = v7[3];
      v77 = v4;
      if (v1 < v8 >> 1)
      {
        v81 = v7;
        goto LABEL_15;
      }

LABEL_55:
      v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v1 + 1, 1, v7);
      v104[0] = v81;
LABEL_15:
      v4 = v102;
      v16 = v103;
      v17 = __swift_mutable_project_boxed_opaque_existential_1(v101, v102);
      v18 = *(v4[-1].Description + 8);
      v19 = MEMORY[0x1EEE9AC00](v17);
      v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 16))(v21, v19);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v1, v21, v104, v4, v16);
      __swift_destroy_boxed_opaque_existential_1(v101);
      if (v6 != 1)
      {
        v78 = v5 & 0xFFFFFFFFFFFFFF8;
        v80 = 1 - v6;
        v44 = 0.0;
        v45 = 5;
        v79 = xmmword_1C1898800;
        while ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v82)
          {
            v46 = MEMORY[0x1C68F41F0](v45 - 4, v5);
          }

          else
          {
            if ((v45 - 4) >= *(v78 + 16))
            {
              __break(1u);
              goto LABEL_50;
            }

            v46 = *(v5 + 8 * v45);
          }

          v47 = *(v46 + 16);
          v48 = REAssetHandleAssetType();
          if (v48 == 11)
          {
            v49 = REAnimationSceneAssetGetRootTimeline();

            if (!v49)
            {
              goto LABEL_61;
            }
          }

          else
          {
            if (v48 != 5)
            {

              __break(1u);
LABEL_61:
              __break(1u);
              goto LABEL_62;
            }
          }

          REAnimationAssetGetTotalDuration();
          v51 = v50;
          if (v82)
          {
            MEMORY[0x1C68F41F0](v45 - 4, v5);
          }

          else
          {
            v52 = *(v5 + 8 * v45);
          }

          AnimationResource.definition.getter(v97);

          v101[0] = 0;
          v101[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(17);

          strcpy(v101, "sequence-anim(");
          HIBYTE(v101[1]) = -18;
          v94[0] = v45 - 4;
          v53 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x1C68F3410](v53);

          MEMORY[0x1C68F3410](41, 0xE100000000000000);
          v55 = v101[0];
          v54 = v101[1];
          if (v82)
          {
            MEMORY[0x1C68F41F0](v45 - 4, v5);
          }

          else
          {
            v56 = *(v5 + 8 * v45);
          }

          v44 = v44 + v3;
          AnimationResource.definition.getter(v94);

          v57 = v95;
          v58 = v96;
          __swift_project_boxed_opaque_existential_1(v94, v95);
          (*(v58 + 56))(&v92 + 9, v57, v58);
          v102 = &type metadata for AnimationView;
          v103 = &protocol witness table for AnimationView;
          v59 = swift_allocObject();
          v101[0] = v59;
          outlined consume of BindTarget?(0, 0, 0xFFu);
          v83[0] = 0;
          v100 = 0;
          type metadata accessor for TimelineDefinition();
          v60 = swift_allocObject();
          *(v60 + 16) = 0;
          v61 = v83[0];
          v62 = v100;
          v83[0] = 0;
          v100 = 0;
          v99 = 0;
          v98 = 0;
          v83[48] = 0;
          *&v84 = 0;
          WORD4(v84) = 1;
          *&v85 = 0;
          WORD4(v85) = 1;
          *&v86 = 0;
          WORD4(v86) = 1;
          *&v87 = 0;
          BYTE8(v87) = 0;
          *&v88 = v44;
          BYTE8(v88) = 0;
          HIDWORD(v88) = 1065353216;
          LOWORD(v89) = 0;
          *(&v89 + 1) = 0;
          *&v90 = v55;
          *(&v90 + 1) = v54;
          v91 = v79;
          LOBYTE(v92) = 0;
          DWORD1(v92) = 0;
          BYTE8(v92) = v61;
          WORD5(v92) = v62;
          v93 = v60;
          outlined init with copy of __REAssetService(v97, v83);
          AnimationView.source.setter(v83);
          __swift_destroy_boxed_opaque_existential_1(v97);
          v63 = v91;
          v64 = v92;
          v65 = v89;
          *(v59 + 112) = v90;
          *(v59 + 128) = v63;
          *(v59 + 144) = v64;
          *(v59 + 160) = v93;
          v66 = v87;
          *(v59 + 48) = v86;
          *(v59 + 64) = v66;
          *(v59 + 80) = v88;
          *(v59 + 96) = v65;
          v67 = v85;
          *(v59 + 16) = v84;
          *(v59 + 32) = v67;
          __swift_destroy_boxed_opaque_existential_1(v94);
          v104[0] = v81;
          v1 = v81[2];
          v68 = v81[3];
          if (v1 >= v68 >> 1)
          {
            v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v1 + 1, 1, v81);
            v104[0] = v81;
          }

          v4 = v102;
          v69 = v103;
          v70 = __swift_mutable_project_boxed_opaque_existential_1(v101, v102);
          v71 = *(v4[-1].Description + 8);
          v72 = MEMORY[0x1EEE9AC00](v70);
          v74 = &v77 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v75 + 16))(v74, v72);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v1, v74, v104, v4, v69);
          __swift_destroy_boxed_opaque_existential_1(v101);
          ++v45;
          v3 = v51;
          if (v80 + v45 == 5)
          {
            break;
          }
        }
      }

      v23 = v81;
      if (v81[2])
      {
        v5 = (v81 + 4);
        outlined init with copy of __REAssetService((v81 + 4), v101);
        v24 = v102;
        v25 = v103;
        __swift_project_boxed_opaque_existential_1(v101, v102);
        (v25[7])(v97, v24, v25);
        LODWORD(v1) = LOBYTE(v97[0]);
        __swift_destroy_boxed_opaque_existential_1(v101);
        if (one-time initialization token for backwards == -1)
        {
          goto LABEL_18;
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
LABEL_18:
      if ((static AnimationFillMode.backwards & ~v1) != 0)
      {
        v26 = 0;
      }

      else
      {
        v26 = static AnimationFillMode.backwards;
      }

      v27 = v23[2];
      if (v27)
      {
        outlined init with copy of __REAssetService(v5 + 40 * v27 - 40, v101);
        v28 = v102;
        v29 = v103;
        __swift_project_boxed_opaque_existential_1(v101, v102);
        v30 = v29[7];

        v30(v97, v28, v29);
        LODWORD(v1) = LOBYTE(v97[0]);
        if (one-time initialization token for forwards == -1)
        {
LABEL_23:
          v31 = static AnimationFillMode.forwards;
          __swift_destroy_boxed_opaque_existential_1(v101);
          if ((v31 & ~v1) != 0)
          {
            v32 = 0;
          }

          else
          {
            v32 = v31;
          }

          v33 = v32 | v26;
          v102 = &type metadata for AnimationGroup;
          v103 = &protocol witness table for AnimationGroup;
          v34 = swift_allocObject();
          v101[0] = v34;
          outlined consume of BindTarget?(0, 0, 0xFFu);
          LOBYTE(v94[0]) = 0;
          v83[0] = 0;
          v35 = type metadata accessor for TimelineDefinition();
          v36 = swift_allocObject();
          *(v36 + 16) = 0;
          v37 = v94[0];
          v38 = v83[0];
          *(v34 + 176) = xmmword_1C18D6FA0;
          *(v34 + 192) = 0;
          *(v34 + 200) = 0;
          *(v34 + 208) = -1;
          *(v34 + 212) = 0;
          *(v34 + 216) = v37;
          *(v34 + 217) = v33;
          *(v34 + 218) = v38;
          *(v34 + 224) = v36;
          outlined consume of BindTarget?(0, 0, 0xFFu);
          LOBYTE(v94[0]) = 0;
          v83[0] = 0;
          v39 = swift_allocObject();
          *(v39 + 16) = 0;
          v40 = v94[0];
          v41 = v83[0];
          LOBYTE(v94[0]) = 0;
          v83[0] = 0;
          v100 = 0;
          v99 = 0;
          v98 = 0;
          *(v34 + 32) = 1;
          *(v34 + 40) = 0;
          *(v34 + 48) = 1;
          *(v34 + 56) = 0;
          *(v34 + 64) = 1;
          *(v34 + 72) = 0;
          *(v34 + 80) = 0;
          *(v34 + 88) = 0;
          *(v34 + 96) = 0;
          *(v34 + 100) = 1065353216;
          *(v34 + 104) = 0;
          *(v34 + 112) = xmmword_1C18D6FB0;
          *(v34 + 128) = xmmword_1C18D6FC0;
          *(v34 + 144) = 0xE000000000000000;
          *(v34 + 152) = 0;
          *(v34 + 155) = BYTE2(v97[0]);
          *(v34 + 153) = v97[0];
          *(v34 + 156) = 0;
          *(v34 + 160) = v40;
          *(v34 + 162) = v41;
          *(v34 + 168) = v39;
          *(v34 + 16) = v23;
          *(v34 + 24) = 0;
          v42 = v77;
          v43 = specialized static AnimationResource.generate(with:)(v101);
          if (!v42)
          {
            v35 = v43;
          }

          __swift_destroy_boxed_opaque_existential_1(v101);

          return v35;
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
      goto LABEL_23;
    }
  }

  else
  {
    if (v11 == 5)
    {

      goto LABEL_10;
    }

LABEL_62:

    __break(1u);
  }

  __break(1u);
  return result;
}

void AnimationResource.store(in:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = REAssetHandleAssetType();
  if (v4 == 5 || v4 == 11 && REAnimationSceneAssetGetRootTimeline())
  {
    v5 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    v6 = *(v5 + 24);
    v7 = *(swift_unownedRetainStrong() + 24);

    ServiceLocator = REEngineGetServiceLocator();
    if (MEMORY[0x1C68FE1F0](ServiceLocator))
    {
      v9 = *(a1 + 16);
      REAnimationLibraryComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      if (REAnimationLibraryComponentGetAnimationLibraryAsset())
      {
        if (!REAnimationLibraryDefinitionCreateFromAnimationLibraryAsset())
        {
          static os_log_type_t.error.getter();
          type metadata accessor for OS_os_log();
          v10 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)();

          return;
        }
      }

      else
      {
        REAnimationLibraryDefinitionCreate();
      }

      REAnimationLibraryDefinitionAddEntryAsset();
      if (REAnimationLibraryDefinitionCreateAnimationLibraryAsset())
      {
        REAnimationLibraryComponentAssignAnimationLibraryAsset();
      }

      else
      {
        static os_log_type_t.error.getter();
        type metadata accessor for OS_os_log();
        v11 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();
      }

      RERelease();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v12 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }
}

uint64_t AnimationResource.eventTimelineDefinition.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = 1;
  v35 = 1;
  type metadata accessor for TimelineDefinition();
  inited = swift_initStackObject();
  v5 = *(v2 + 16);

  v6 = REAssetHandleAssetType();
  if (v6 != 5 && (v6 != 11 || !REAnimationSceneAssetGetRootTimeline()))
  {
    __break(1u);
LABEL_19:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v7 = RETimelineDefinitionCreateFromTimeline();

  *(inited + 16) = v7;
  memset(v25, 0, sizeof(v25));
  v26 = -1;
  v27 = v37;
  v28 = v38;
  v29 = 0;
  v30 = v36;
  v31 = 0;
  v32 = v35;
  v33 = 2;
  v34 = inited;
  if (!v7)
  {
    *(a1 + 32) = 0;
    *a1 = 0uLL;
    *(a1 + 16) = 0uLL;
    return outlined destroy of TimelineBaseProperties(v25);
  }

  if (!RETimelineDefinitionEventTimelineGetEventTypeName())
  {
    goto LABEL_19;
  }

  v8 = String.init(cString:)();
  v10 = v9;
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v10);
    if (v13)
    {
      v14 = (*(v11 + 56) + 16 * v12);
      v15 = *v14;
      v16 = v14[1];
      swift_endAccess();

      *(a1 + 24) = type metadata accessor for ActionAnimation();
      *(a1 + 32) = &protocol witness table for ActionAnimation<A>;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      static EntityAction.makeActionAnimation(_:)(v15, boxed_opaque_existential_1);
      return outlined destroy of TimelineBaseProperties(v25);
    }
  }

  swift_endAccess();
  v24[0] = 0;
  v24[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(67);
  MEMORY[0x1C68F3410](0xD000000000000040, 0x80000001C18F0FA0);
  MEMORY[0x1C68F3410](v8, v10);

  MEMORY[0x1C68F3410](39, 0xE100000000000000);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static AnimationLogger.logger);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v24);
    _os_log_impl(&dword_1C1358000, v19, v20, "%s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1C6902A30](v22, -1, -1);
    MEMORY[0x1C6902A30](v21, -1, -1);
  }

  outlined destroy of TimelineBaseProperties(v25);

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  if (v2 != 255)
  {
    outlined consume of BindTarget(*(v0 + 32), *(v0 + 40), v2);
  }

  v3 = *(v0 + 64);

  v4 = *(v0 + 160);

  v5 = *(v0 + 176);

  v6 = *(v0 + 200);
  if (v6 != 255)
  {
    outlined consume of BindTarget(*(v0 + 184), *(v0 + 192), v6);
  }

  v7 = *(v0 + 216);

  if (*(v0 + 248))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 224));
  }

  return MEMORY[0x1EEE6BDD0](v0, 264, 7);
}

uint64_t objectdestroy_32Tm_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  if (v2 != 255)
  {
    outlined consume of BindTarget(*(v0 + 32), *(v0 + 40), v2);
  }

  v3 = *(v0 + 64);

  v4 = *(v0 + 160);

  v5 = *(v0 + 176);

  v6 = *(v0 + 200);
  if (v6 != 255)
  {
    outlined consume of BindTarget(*(v0 + 184), *(v0 + 192), v6);
  }

  v7 = *(v0 + 216);

  v8 = *(v0 + 240);

  v9 = *(v0 + 280);

  v10 = *(v0 + 296);

  return MEMORY[0x1EEE6BDD0](v0, 304, 7);
}

uint64_t objectdestroy_59Tm()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 120);

  v3 = *(v0 + 144);
  if (v3 != 255)
  {
    outlined consume of BindTarget(*(v0 + 128), *(v0 + 136), v3);
  }

  v4 = *(v0 + 160);

  v5 = *(v0 + 176);

  v6 = *(v0 + 200);
  if (v6 != 255)
  {
    outlined consume of BindTarget(*(v0 + 184), *(v0 + 192), v6);
  }

  v7 = *(v0 + 216);

  v8 = *(v0 + 360);

  v9 = *(v0 + 376);

  return MEMORY[0x1EEE6BDD0](v0, 384, 15);
}

uint64_t objectdestroy_68Tm()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 120);

  v3 = *(v0 + 144);
  if (v3 != 255)
  {
    outlined consume of BindTarget(*(v0 + 128), *(v0 + 136), v3);
  }

  v4 = *(v0 + 160);

  v5 = *(v0 + 176);

  v6 = *(v0 + 200);
  if (v6 != 255)
  {
    outlined consume of BindTarget(*(v0 + 184), *(v0 + 192), v6);
  }

  v7 = *(v0 + 216);

  v8 = *(v0 + 312);

  v9 = *(v0 + 328);

  return MEMORY[0x1EEE6BDD0](v0, 336, 15);
}

uint64_t AnimationResource.addToLoadRequest(_:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  return REAssetLoadRequestAddAsset();
}

uint64_t static AnimationResource.makeActionAnimation<A>(for:duration:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned __int8 *a6, unsigned __int8 *a7, uint64_t a8, double a9, double a10, double a11, float a12, unsigned __int8 a13, uint64_t a14, unsigned __int8 a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, uint64_t a19)
{
  v64 = a8;
  v68 = a5;
  v56 = a1;
  v62 = a14;
  v63 = a2;
  v60 = a3;
  v61 = a16;
  v58 = a15;
  v59 = a17;
  v26 = *(a18 - 8);
  v27 = *(v26 + 64);
  v57 = a13;
  MEMORY[0x1EEE9AC00](a1);
  v55 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = type metadata accessor for Optional();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = &v51 - v32;
  v34 = *(a4 + 8);
  v52 = *a4;
  v51 = v34;
  v54 = *a6;
  v53 = *a7;
  v35 = fmax(a9, 0.0333333333);
  if (a9 <= 0.0)
  {
    a9 = v35;
  }

  v36 = *(a4 + 16);
  v37 = type metadata accessor for ActionEventDefinition();
  type metadata accessor for _ContiguousArrayStorage();
  v38 = *(*(v37 - 8) + 72);
  v39 = *(*(v37 - 8) + 80);
  swift_allocObject();
  v40 = static Array._adoptStorage(_:count:)();
  v42 = v41;
  (*(*(AssociatedTypeWitness - 8) + 56))(v33, 1, 1, AssociatedTypeWitness);
  ActionEventDefinition.init(startTime:duration:parameter:)(v33, v42, 0.0, a9);
  v43 = _finalizeUninitializedArray<A>(_:)(v40);
  v44 = v55;
  (*(v26 + 16))(v55, v56, a18);
  v45 = v52;
  v46 = v51;
  v65[0] = v52;
  v65[1] = v51;
  v66 = v36;
  v70 = v54;
  v69 = v53;
  v67[3] = type metadata accessor for ActionAnimation();
  v67[4] = &protocol witness table for ActionAnimation<A>;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v67);
  v48 = v60;

  outlined copy of BindTarget?(v45, v46, v36);
  ActionAnimation.init(for:events:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)(v44, v43, v63, v48, v65, v68, &v70, &v69, boxed_opaque_existential_1, a10, a11, a12, v64, v57 & 1, v62, v58 & 1, v61, v59 & 1, a18, a19);
  v49 = specialized static AnimationResource.generate(with:)(v67);
  __swift_destroy_boxed_opaque_existential_1(v67);
  return v49;
}

uint64_t specialized static AnimationResource.generate(with:)(uint64_t a1)
{
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19AnimationDefinition_pMd, &_s17RealityFoundation19AnimationDefinition_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27AnimationDefinitionInternal_pMd, &_s17RealityFoundation27AnimationDefinitionInternal_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ForceEffectBase(v6, v9);
    v1 = v10;
    v2 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v3 = (*(v2 + 8))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    outlined destroy of AnimationDefinitionInternal?(v6);
    v3 = 0x80000001C18DE2F0;
    lazy protocol witness table accessor for type AnimationError and conformance AnimationError();
    swift_allocError();
    *v4 = 0xD00000000000001CLL;
    *(v4 + 8) = 0x80000001C18DE2F0;
    *(v4 + 16) = 0;
    swift_willThrow();
  }

  return v3;
}

unint64_t lazy protocol witness table accessor for type AnimationRepeatMode and conformance AnimationRepeatMode()
{
  result = lazy protocol witness table cache variable for type AnimationRepeatMode and conformance AnimationRepeatMode;
  if (!lazy protocol witness table cache variable for type AnimationRepeatMode and conformance AnimationRepeatMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationRepeatMode and conformance AnimationRepeatMode);
  }

  return result;
}

Swift::Void __swiftcall Scene.setSession(_:)(ARSession a1)
{
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  outlined assign with take of WeakSessionAR(v2, v1 + 64);
  swift_endAccess();
}

uint64_t __RKStartTrigger.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t __RKStartTrigger.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t __RKStartTrigger.matches(with:)()
{
  type metadata accessor for __RKStartTrigger();
  if (swift_dynamicCastClass() && *(v0 + 19) != 1)
  {
    return 1;
  }

  type metadata accessor for __RKEntityTriggerGroup();
  v1 = swift_dynamicCastClass();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  swift_beginAccess();
  v3 = *(v2 + 24);
  if (v3 >> 62)
  {
LABEL_21:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  do
  {
    v6 = v4 != v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1C68F41F0](v5, v3);
      if (__OFADD__(v5, 1))
      {
LABEL_15:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_21;
      }

      v7 = *(v3 + 8 * v5 + 32);

      if (__OFADD__(v5, 1))
      {
        goto LABEL_15;
      }
    }

    v8 = __RKStartTrigger.matches(with:)(v7);

    ++v5;
  }

  while ((v8 & 1) == 0);

  return v6;
}

uint64_t static MeshResource.fromCore(_:)(uint64_t a1)
{
  if (REAssetGetSwiftObject())
  {
    type metadata accessor for MeshResource();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  type metadata accessor for MeshResource();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  RERetain();
  REAssetSetSwiftObject();
  return v3;
}

uint64_t __MeshCompileOptions.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = REMeshCompileOptionsCreate();
  return v0;
}

uint64_t MeshResource.expectedMaterialCount.getter()
{
  result = *(v0 + 16);
  if (result)
  {
    MaxMaterialIndex = REMeshAssetGetMaxMaterialIndex();
    v3 = __OFADD__(MaxMaterialIndex, 1);
    result = MaxMaterialIndex + 1;
    if (v3)
    {
      __break(1u);
    }
  }

  return result;
}

double MeshResource.bounds.getter()
{
  if (!*(v0 + 16))
  {
    return 1.40444843e306;
  }

  REEntityComputeLocalBoundingBox();
  return result;
}

uint64_t MeshResource.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  if (a1)
  {
    RERetain();
    REAssetSetSwiftObject();
  }

  return v2;
}

uint64_t MeshResource.init(_:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  if (a1)
  {
    RERetain();
    REAssetSetSwiftObject();
  }

  return v1;
}

uint64_t MeshResource.deinit()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
    REAssetSetSwiftObject();
    RERelease();
  }

  return v0;
}

uint64_t MeshResource.__deallocating_deinit()
{
  return MeshResource.__deallocating_deinit();
}

{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
    REAssetSetSwiftObject();
    RERelease();
  }

  return swift_deallocClassInstance();
}

uint64_t static MeshResource.__load(named:in:)(uint64_t a1, uint64_t a2)
{
  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v4 + 120, v15);
  v5 = v16;
  v6 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  (*(v6 + 32))(v5, v6);
  String.utf8CString.getter();
  AssetHandle = REAssetManagerCreateAssetHandle();

  __swift_destroy_boxed_opaque_existential_1(v15);
  if (!AssetHandle)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  REAssetHandleLoadNow();
  if (REAssetHandleLoadFailed())
  {

    FailedMessage = REAssetHandleCopyLoadFailedMessage();
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
    swift_allocError();
    *v12 = a1;
    *(v12 + 8) = a2;
    *(v12 + 16) = v9;
    *(v12 + 24) = v11;
    *(v12 + 32) = 1;
    return swift_willThrow();
  }

  if (REAssetGetSwiftObject())
  {
    type metadata accessor for MeshResource();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  type metadata accessor for MeshResource();
  v14 = swift_allocObject();
  *(v14 + 16) = AssetHandle;
  RERetain();
  REAssetSetSwiftObject();
  return v14;
}

uint64_t static MeshResource.generateBox(size:cornerRadius:)(float a1, float a2)
{
  v4 = fminf(a2, a1 * 0.5);
  REGeomBuildBoxDefaultOptions();
  LODWORD(v14) = v9;
  WORD2(v14) = v10;
  v5 = v11;
  if (a2 > 0.0)
  {
    v5 = 16;
  }

  WORD3(v14) = v5;
  *(&v14 + 1) = __PAIR64__(LODWORD(a1), LODWORD(v4));
  v15 = a1;
  v16 = a1;
  v17 = v12;
  v18 = 1;
  v19 = v13;
  v6 = _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA15BoxMeshResourceC_Tt2g5(&v14, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  *(inited + 56) = type metadata accessor for MeshResource();
  *(inited + 64) = &protocol witness table for MeshResource;
  *(inited + 32) = v6;

  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  return v6;
}

{
  *(v2 + 76) = a1;
  *(v2 + 80) = a2;
  return MEMORY[0x1EEE6DFA0](static MeshResource.generateBox(size:cornerRadius:), 0, 0);
}

uint64_t static MeshResource.generateBox(width:height:depth:cornerRadius:splitFaces:)(char a1, float a2, float a3, float a4, float a5)
{
  v10 = fminf(a5, fminf(a2, fminf(a3, fminf(a2, a4))) * 0.5);
  REGeomBuildBoxDefaultOptions();
  LODWORD(v20) = v15;
  WORD2(v20) = v16;
  v11 = v17;
  if (a5 > 0.0)
  {
    v11 = 16;
  }

  WORD3(v20) = v11;
  *(&v20 + 1) = __PAIR64__(LODWORD(a2), LODWORD(v10));
  v21 = a3;
  v22 = a4;
  v23 = v18;
  v24 = a1 ^ 1;
  v25 = v19;
  v12 = _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA15BoxMeshResourceC_Tt2g5(&v20, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  *(inited + 56) = type metadata accessor for MeshResource();
  *(inited + 64) = &protocol witness table for MeshResource;
  *(inited + 32) = v12;

  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  return v12;
}

{
  *(v5 + 92) = a1;
  *(v5 + 84) = a4;
  *(v5 + 88) = a5;
  *(v5 + 76) = a2;
  *(v5 + 80) = a3;
  return MEMORY[0x1EEE6DFA0](static MeshResource.generateBox(width:height:depth:cornerRadius:splitFaces:), 0, 0);
}

uint64_t static MeshResource.generateBox(size:cornerRadius:)(__n128 a1, float a2)
{
  v3 = fminf(a2, fminf(a1.n128_f32[0], fminf(a1.n128_f32[1], fminf(a1.n128_f32[0], a1.n128_f32[2]))) * 0.5);
  REGeomBuildBoxDefaultOptions();
  v14 = v9;
  v15 = v10;
  v4 = v11;
  if (a2 > 0.0)
  {
    v4 = 16;
  }

  v16 = v4;
  v17 = v3;
  v18 = a1.n128_u64[0];
  v19 = a1.n128_u32[2];
  v20 = v12;
  v21 = 1;
  v22 = v13;
  v5 = _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA15BoxMeshResourceC_Tt2g5(&v14, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  *(inited + 56) = type metadata accessor for MeshResource();
  *(inited + 64) = &protocol witness table for MeshResource;
  *(inited + 32) = v5;

  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  return v5;
}

{
  v2[5].n128_f32[3] = a2;
  v2[1] = a1;
  return MEMORY[0x1EEE6DFA0](static MeshResource.generateBox(size:cornerRadius:), 0, 0);
}

uint64_t static MeshResource.generateBox(size:cornerRadius:)()
{
  v2 = *(v0 + 76);
  v1 = *(v0 + 80);
  v3 = fminf(v1, v2 * 0.5);
  REGeomBuildBoxDefaultOptions();
  *(v0 + 48) = v8;
  *(v0 + 52) = v9;
  v4 = v10;
  if (v1 > 0.0)
  {
    v4 = 16;
  }

  *(v0 + 54) = v4;
  *(v0 + 56) = v3;
  *(v0 + 60) = v2;
  *(v0 + 64) = v2;
  *(v0 + 68) = v2;
  *(v0 + 72) = v11;
  *(v0 + 74) = 1;
  *(v0 + 75) = v12;
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](static MeshResource.generateBox(size:cornerRadius:), v6, v5);
}

{
  v1 = *(v0 + 16);

  *(v0 + 24) = _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA15BoxMeshResourceC_Tt2g5((v0 + 48), 0);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = static MeshResource.generateBox(size:cornerRadius:);

  return specialized RequestLoadable.awaitForResourceSharing()();
}

{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = static MeshResource.generate(from:);
  }

  else
  {
    v3 = static MeshResource.generateBox(size:cornerRadius:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 24));
}

{
  v1 = *(v0 + 92);
  *v7 = *(v0 + 16);
  v2 = fminf(v1, fminf(v7[0], fminf(v7[1], fminf(v7[0], v7[2]))) * 0.5);
  REGeomBuildBoxDefaultOptions();
  *(v0 + 64) = v8;
  *(v0 + 68) = v9;
  v3 = v10;
  if (v1 > 0.0)
  {
    v3 = 16;
  }

  *(v0 + 70) = v3;
  *(v0 + 72) = v2;
  *(v0 + 76) = *v7;
  *(v0 + 84) = v7[2];
  *(v0 + 88) = v11;
  *(v0 + 90) = 1;
  *(v0 + 91) = v12;
  type metadata accessor for MainActor();
  *(v0 + 32) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](static MeshResource.generateBox(size:cornerRadius:), v5, v4);
}

{
  v1 = *(v0 + 32);

  *(v0 + 40) = _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA15BoxMeshResourceC_Tt2g5((v0 + 64), 0);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = static MeshResource.generateBox(size:cornerRadius:);

  return specialized RequestLoadable.awaitForResourceSharing()();
}

{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = static MeshResource.generateBox(size:cornerRadius:);
  }

  else
  {
    v3 = static MeshResource.generateBox(size:cornerRadius:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 40));
}

{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t static MeshResource.generateBox(width:height:depth:cornerRadius:splitFaces:)()
{
  v1 = *(v0 + 92);
  v3 = *(v0 + 84);
  v2 = *(v0 + 88);
  v5 = *(v0 + 76);
  v4 = *(v0 + 80);
  v6 = fminf(v2, fminf(v5, fminf(v4, fminf(v5, v3))) * 0.5);
  REGeomBuildBoxDefaultOptions();
  *(v0 + 48) = v11;
  *(v0 + 52) = v12;
  v7 = v13;
  if (v2 > 0.0)
  {
    v7 = 16;
  }

  *(v0 + 54) = v7;
  *(v0 + 56) = v6;
  *(v0 + 60) = v5;
  *(v0 + 64) = v4;
  *(v0 + 68) = v3;
  *(v0 + 72) = v14;
  *(v0 + 74) = (v1 & 1) == 0;
  *(v0 + 75) = v15;
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](static MeshResource.generateBox(width:height:depth:cornerRadius:splitFaces:), v9, v8);
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 92);

  *(v0 + 24) = _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA15BoxMeshResourceC_Tt2g5((v0 + 48), v2);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = static MeshResource.generateBox(width:height:depth:cornerRadius:splitFaces:);

  return specialized RequestLoadable.awaitForResourceSharing()();
}

{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = static MeshResource.generateBox(width:height:depth:cornerRadius:splitFaces:);
  }

  else
  {
    v3 = static MeshResource.generateBox(width:height:depth:cornerRadius:splitFaces:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t static MeshResource.generateBoxWithRoundedCorners(width:height:depth:majorRadius:minorRadius:splitFaces:)(char a1, float a2, float a3, float a4, float a5, float a6)
{
  REGeomBuildBoxWithRoundedCornersDefaultOptions();
  v13 = v20;
  if (a3 >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = a3;
  }

  v15 = v14 * 0.5;
  if (v15 >= a5)
  {
    v15 = a5;
  }

  if (a4 >= a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = a4;
  }

  v17 = v16 * 0.5;
  if ((v16 * 0.5) >= a6)
  {
    v17 = a6;
  }

  v12.f32[0] = fmaxf(v15, v17);
  v19 = vbsl_s8(vdup_lane_s32(vcgt_f32(v12, 0), 0), 0x10000200020002, v19);
  if (v12.f32[0] > 0.0)
  {
    v13 = 12;
  }

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a1 ^ 1;
  return _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA33BoxWithRoundedCornersMeshResourceC_Tt2g5(&v19, a1);
}

uint64_t static MeshResource.generatePlane(width:height:cornerRadius:)(float a1, float a2, float a3)
{
  return static MeshResource.generatePlane(width:height:cornerRadius:)(4, a1, a2, a3);
}

{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return MEMORY[0x1EEE6DFA0](static MeshResource.generatePlane(width:height:cornerRadius:), 0, 0);
}

uint64_t static MeshResource.generatePlane(width:depth:cornerRadius:)(float a1, float a2, float a3)
{
  return static MeshResource.generatePlane(width:height:cornerRadius:)(2, a1, a2, a3);
}

{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return MEMORY[0x1EEE6DFA0](static MeshResource.generatePlane(width:depth:cornerRadius:), 0, 0);
}

uint64_t static MeshResource.generatePlane(width:height:cornerRadius:)(int a1, float a2, float a3, float a4)
{
  REGeomBuildPlaneDefaultOptions();
  v8 = WORD2(v12);
  if (a4 > 0.0)
  {
    v8 = 16;
  }

  WORD2(v12) = v8;
  *(&v12 + 1) = __PAIR64__(LODWORD(a3), LODWORD(a2));
  v13 = a4;
  v14 = a1;
  v9 = _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA17PlaneMeshResourceC_Tt2g5(&v12, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  *(inited + 56) = type metadata accessor for MeshResource();
  *(inited + 64) = &protocol witness table for MeshResource;
  *(inited + 32) = v9;

  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  return v9;
}

uint64_t static MeshResource.generatePlane(width:height:cornerRadius:)()
{
  v1 = *(v0 + 84);
  v2 = *(v0 + 76);
  REGeomBuildPlaneDefaultOptions();
  v3 = v8;
  if (v1 > 0.0)
  {
    v3 = 16;
  }

  *(v0 + 48) = v7;
  *(v0 + 52) = v3;
  *(v0 + 54) = v9;
  *(v0 + 56) = v2;
  *(v0 + 64) = v1;
  *(v0 + 68) = v10;
  *(v0 + 72) = 4;
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](static MeshResource.generatePlane(width:height:cornerRadius:), v5, v4);
}

{
  v1 = *(v0 + 16);

  *(v0 + 24) = _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA17PlaneMeshResourceC_Tt2g5((v0 + 48), 0);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = static MeshResource.generateBox(width:height:depth:cornerRadius:splitFaces:);

  return specialized RequestLoadable.awaitForResourceSharing()();
}

uint64_t static MeshResource.generatePlane(width:depth:cornerRadius:)()
{
  v1 = *(v0 + 84);
  v2 = *(v0 + 76);
  REGeomBuildPlaneDefaultOptions();
  v3 = v8;
  if (v1 > 0.0)
  {
    v3 = 16;
  }

  *(v0 + 48) = v7;
  *(v0 + 52) = v3;
  *(v0 + 54) = v9;
  *(v0 + 56) = v2;
  *(v0 + 64) = v1;
  *(v0 + 68) = v10;
  *(v0 + 72) = 2;
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](static MeshResource.generatePlane(width:height:cornerRadius:), v5, v4);
}

uint64_t static MeshResource.__generatePlane(width:widthSegmentCount:depth:depthSegmentCount:cornerRadius:cornerSegmentCount:addUVs:addNormals:)(unint64_t a1, unint64_t a2, unint64_t a3, char a4, char a5, float a6, float a7, float a8)
{
  result = REGeomBuildPlaneDefaultOptions();
  if (a1 >> 16)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 >> 16)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a3 >> 16)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (a8 <= 0.0)
  {
    v17 = a3;
  }

  else
  {
    v17 = 16;
  }

  LOWORD(v18) = a1;
  WORD1(v18) = a2;
  WORD2(v18) = v17;
  *(&v18 + 1) = __PAIR64__(LODWORD(a7), LODWORD(a6));
  v19 = a8;
  v20 = a4 & 1;
  v21 = a5 & 1;
  v22 = 2;
  return _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA17PlaneMeshResourceC_Tt2g5(&v18, 0);
}

uint64_t static MeshResource.__generateOccluderPlane(width:depth:cornerRadius:)(float a1, float a2, float a3)
{
  REGeomBuildPlaneDefaultOptions();
  v6 = WORD2(v8);
  if (a3 > 0.0)
  {
    v6 = 16;
  }

  WORD2(v8) = v6;
  *(&v8 + 1) = __PAIR64__(LODWORD(a2), LODWORD(a1));
  v9 = a3;
  v10 = 2;
  return _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA17PlaneMeshResourceC_Tt2g5(&v8, 0);
}

uint64_t static MeshResource.generateSphere(radius:)(float a1)
{
  REGeomBuildSphereDefaultOptions();
  v3 = _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA18SphereMeshResourceC_Tt2g5(64, v2 & 0x10101, 0, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  *(inited + 56) = type metadata accessor for MeshResource();
  *(inited + 64) = &protocol witness table for MeshResource;
  *(inited + 32) = v3;

  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  return v3;
}

{
  *(v1 + 80) = a1;
  return MEMORY[0x1EEE6DFA0](static MeshResource.generateSphere(radius:), 0, 0);
}

uint64_t static MeshResource.generateSphere(radius:segmentCount:)(__int16 a1, float a2)
{
  REGeomBuildSphereDefaultOptions();
  v5 = _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA18SphereMeshResourceC_Tt2g5(a1, v4 & 0x10101, 0, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  *(inited + 56) = type metadata accessor for MeshResource();
  *(inited + 64) = &protocol witness table for MeshResource;
  *(inited + 32) = v5;

  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  return v5;
}

uint64_t static MeshResource.generateSphere(radius:)()
{
  REGeomBuildSphereDefaultOptions();
  v0[2] = v1;
  v0[3] = type metadata accessor for MainActor();
  v0[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](static MeshResource.generateSphere(radius:), v3, v2);
}

{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6DFA0](static MeshResource.generateSphere(radius:), 0, 0);
}

{
  v1 = *(v0 + 24);
  *(v0 + 40) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](static MeshResource.generateSphere(radius:), v3, v2);
}

{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6DFA0](static MeshResource.generateSphere(radius:), 0, 0);
}

{
  v1 = *(v0 + 24);
  *(v0 + 48) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](static MeshResource.generateSphere(radius:), v3, v2);
}

{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = *(v0 + 80);

  *(v0 + 56) = _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA18SphereMeshResourceC_Tt2g5(64, v2 & 0x10101, 0, v3);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = static MeshResource.generateSphere(radius:);

  return specialized RequestLoadable.awaitForResourceSharing()();
}

{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](static MeshResource.generateSphere(radius:), 0, 0);
  }

  else
  {
    v4 = v3[1];
    v5 = v3[7];

    return v4(v5);
  }
}

{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t static MeshResource.generateCapsule(height:radius:)(float a1, float a2)
{
  REGeomBuildCapsuleDefaultOptions();
  if (v10)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 & 0xFFFFFFFE | v9 & 1;
  if (v11)
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  return _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA19CapsuleMeshResourceC_Tt2g5((v8 << 16) | 0x40, v5 | v6, 0, a2, a1);
}

uint64_t static MeshResource.generateBox(size:majorCornerRadius:minorCornerRadius:)(int8x16_t a1, float a2, float a3)
{
  REGeomBuildBoxWithRoundedCornersDefaultOptions();
  v3 = v14;
  v4 = vext_s8(*a1.i8, *&vextq_s8(a1, a1, 8uLL), 4uLL);
  v5 = vmul_f32(vbsl_s8(vcgt_f32(*a1.i8, v4), v4, *a1.i8), 0x3F0000003F000000);
  v6 = vcgt_f32(__PAIR64__(LODWORD(a3), LODWORD(a2)), v5);
  v7 = vbsl_s8(v6, v5, __PAIR64__(LODWORD(a3), LODWORD(a2)));
  *v6.i32 = fmaxf(*v7.i32, *&v7.i32[1]);
  v8 = vbsl_s8(vdup_lane_s32(vcgt_f32(v6, 0), 0), 0x10000200020002, v13);
  if (*v6.i32 > 0.0)
  {
    v3 = 12;
  }

  v13 = v8;
  v14 = v3;
  v15 = v7;
  v17 = a1.u32[2];
  v16 = a1.i64[0];
  v18 = 1;
  return _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA33BoxWithRoundedCornersMeshResourceC_Tt2g5(&v13, 0);
}

uint64_t static MeshResource.generateCone(height:radius:)(float a1, float a2)
{
  v4 = REGeomBuildConeDefaultOptions() & 0xFFFF0000 | 0x40;

  return _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA16ConeMeshResourceC_Tt2g5(v4, v5 & 0x1010101, 0, a1, a2);
}

uint64_t static MeshResource.generateCylinder(height:radius:)(float a1, float a2)
{
  REGeomBuildCylinderDefaultOptions();
  v5 = 64;
  v6 = a1;
  v7 = a2;
  v8 = a2;
  return _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA20CylinderMeshResourceC_Tt2g5(&v5, 0);
}

double MeshDescriptor.init(convexPolyhedronShape:)@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (RECollisionShapeGetType() == 5)
  {
    PositionCount = REConvexPolyhedronShapeGetPositionCount();
    MeshTriangleIndices = REConvexPolyhedronShapeExtractMeshTriangleIndices();
    if ((PositionCount & 0x8000000000000000) == 0)
    {
      v6 = MeshTriangleIndices;
      if (PositionCount)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
        v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v7 + 16) = PositionCount;
        bzero((v7 + 32), 16 * PositionCount);
        if ((v6 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v7 = MEMORY[0x1E69E7CC0];
        if ((MeshTriangleIndices & 0x8000000000000000) == 0)
        {
LABEL_5:
          if (v6)
          {
            PositionCount = static Array._allocateBufferUninitialized(minimumCapacity:)();
            *(PositionCount + 16) = v6;
            bzero((PositionCount + 32), 2 * v6);
            goto LABEL_10;
          }

LABEL_9:
          PositionCount = MEMORY[0x1E69E7CC0];
LABEL_10:
          REConvexPolyhedronShapeExtractPositions();
          REConvexPolyhedronShapeExtractMeshTriangleIndices();
          a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation11MeshBuffersO10IdentifierV_AC0E12BufferErased_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
          LOBYTE(v38[0]) = 0;
          _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v7, v40);
          v8 = one-time initialization token for positions;
          v33[2] = v7;

          if (v8 == -1)
          {
            goto LABEL_11;
          }

          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_24:
  swift_once();
LABEL_11:
  v9 = static MeshBuffers.positions;
  v10 = word_1EBEAD0B8;
  v11 = HIBYTE(word_1EBEAD0B8);
  v37[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMR);
  v37[4] = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
  v37[0] = swift_allocObject();
  swift_bridgeObjectRetain_n();
  outlined init with copy of MeshBuffer<SIMD3<Float>>(v40, v38);
  if (v11)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5(v9, *(&v9 + 1), v12 | v10, v40);
  outlined init with take of BindableDataInternal(v37, v35);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = a1;
  v14 = v36;
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
  v33[1] = v33;
  v16 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = v19[4];
  v22 = v19[6];
  v38[5] = v19[5];
  v39[0] = v22;
  *(v39 + 9) = *(v19 + 105);
  v23 = v19[1];
  v38[0] = *v19;
  v38[1] = v23;
  v24 = v19[3];
  v38[2] = v19[2];
  v38[3] = v24;
  v38[4] = v21;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v38, v9, *(&v9 + 1), v12 | v10, isUniquelyReferenced_nonNull_native, &v34, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMR);

  outlined destroy of BodyTrackingComponent?(v40, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  __swift_destroy_boxed_opaque_existential_1(v35);
  v25 = v34;
  v26 = *(PositionCount + 16);
  if (v26)
  {
    v37[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
    v27 = v37[0];
    v28 = *(v37[0] + 16);
    v29 = 32;
    do
    {
      v30 = *(PositionCount + v29);
      v37[0] = v27;
      v31 = *(v27 + 24);
      if (v28 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v28 + 1, 1);
        v27 = v37[0];
      }

      *(v27 + 16) = v28 + 1;
      *(v27 + 4 * v28 + 32) = v30;
      v29 += 2;
      ++v28;
      --v26;
    }

    while (v26);
  }

  else
  {

    v27 = MEMORY[0x1E69E7CC0];
  }

  outlined consume of MeshDescriptor.Primitives?(0, 0, 0xFFu);
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = v25;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = v27;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  result = 0.0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0;
  return result;
}

uint64_t MeshDescriptor.init(staticMeshShape:)@<X0>(uint64_t a1@<X8>)
{
  if (RECollisionShapeGetType() == 12)
  {
    RECollisionMeshShapeGetMesh();
    VertexCount = RECollisionMeshGetVertexCount();
    IndexCount = RECollisionMeshGetIndexCount();
    if ((VertexCount & 0x8000000000000000) == 0)
    {
      v4 = IndexCount;
      if (VertexCount)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = VertexCount;
        bzero((v5 + 32), 16 * VertexCount);
        if ((v4 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v5 = MEMORY[0x1E69E7CC0];
        if ((IndexCount & 0x8000000000000000) == 0)
        {
LABEL_5:
          if (v4)
          {
            VertexCount = static Array._allocateBufferUninitialized(minimumCapacity:)();
            *(VertexCount + 16) = v4;
            bzero((VertexCount + 32), 4 * v4);
            goto LABEL_10;
          }

LABEL_9:
          VertexCount = MEMORY[0x1E69E7CC0];
LABEL_10:
          RECollisionMeshExtractVertexPositions();
          RECollisionMeshExtractIndices();
          v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation11MeshBuffersO10IdentifierV_AC0E12BufferErased_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
          v14[0] = 0;
          *a1 = 0;
          *(a1 + 8) = 0xE000000000000000;
          *(a1 + 16) = v6;
          *(a1 + 24) = 0;
          *(a1 + 32) = 0;
          *(a1 + 40) = 0;
          *(a1 + 48) = 0;
          *(a1 + 56) = -1;
          *(a1 + 64) = 0u;
          *(a1 + 80) = 0u;
          *(a1 + 96) = 0;
          _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v5, v14);
          if (one-time initialization token for positions == -1)
          {
            goto LABEL_11;
          }

          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_17:
  swift_once();
LABEL_11:
  v7 = static MeshBuffers.positions;
  v8 = word_1EBEAD0B8;
  v9 = HIBYTE(word_1EBEAD0B8);
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMR);
  v13[4] = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
  v13[0] = swift_allocObject();
  swift_bridgeObjectRetain_n();
  outlined init with copy of MeshBuffer<SIMD3<Float>>(v14, v12);
  if (v9)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5(v7, *(&v7 + 1), v10 | v8, v14);
  specialized Dictionary.subscript.setter(v13, v7, *(&v7 + 1), v10 | v8);
  outlined destroy of BodyTrackingComponent?(v14, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  result = outlined consume of MeshDescriptor.Primitives?(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  *(a1 + 40) = VertexCount;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return result;
}

BOOL REPoseF.isIdentity.getter(float32x2_t a1, float a2, float32x4_t a3)
{
  if (sqrtf((a2 * a2) + vaddv_f32(vmul_f32(a1, a1))) > 0.00001)
  {
    return 0;
  }

  v4 = vmulq_f32(a3, a3);
  v5 = atan2f(sqrtf(v4.f32[2] + vaddv_f32(*v4.f32)), a3.f32[3]);
  return fabsf(v5 + v5) <= 0.00001;
}

uint64_t MeshResource.Contents.offsetBy(pose:)@<X0>(uint64_t a1@<X8>, float32x2_t a2@<D0>, float a3@<S1>, float32x4_t a4@<Q2>)
{
  v7 = a1;
  v8 = v4[1];
  v9 = v4[2];
  v374 = *v4;
  v375 = v8;
  v309 = v8;
  v310 = v9;
  v376 = v9;
  v308 = v374;
  v10 = *(v374.i64[0] + 16);
  if (!v10)
  {
    goto LABEL_130;
  }

  v283 = a1;
  v285 = v374.i64[0] + 32;
  v11 = vmulq_f32(a4, xmmword_1C1899C90);
  v12 = vnegq_f32(v11);
  v13 = vtrn2q_s32(v11, vtrn1q_s32(v11, v12));
  v14 = vextq_s8(v13, v13, 8uLL);
  v15 = vrev64q_s32(v11);
  v15.i32[0] = v12.i32[1];
  v15.i32[3] = v12.i32[2];
  v301 = v15;
  v302 = v14;
  v299 = vextq_s8(v11, v12, 8uLL);
  v300 = vdupq_lane_s32(*a4.f32, 0);
  v295 = (v357 + 5);
  v303 = a4;
  v298 = vdupq_laneq_s32(a4, 2);
  v284 = v374.i64[0];
  swift_bridgeObjectRetain_n();

  v16 = 0;
  while (1)
  {
    if (v16 >= v10)
    {
LABEL_136:
      __break(1u);
LABEL_137:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v291 = v16;
    v18 = (v285 + 48 * v16);
    v19 = *v18;
    v289 = v18[1];
    v290 = v19;
    v20 = v18[2];
    v21 = v18[3];
    v22 = v18[4];
    v23 = v18[5];

    v24 = *(v20 + 16);
    v287 = v22;

    v286 = v23;

    v288 = v21;

    if (v24)
    {
      break;
    }

    v26 = MEMORY[0x1E69E7CC0];
LABEL_125:
    v271 = v290;

    *&v360 = v271;
    *(&v360 + 1) = v289;
    *&v361 = v20;
    *(&v361 + 1) = v288;
    *&v362 = v287;
    *(&v362 + 1) = v286;
    v272 = *(v26 + 2);
    if (v272)
    {
      v273 = v272 - 1;
      for (i = 32; ; i += 64)
      {
        v276 = *&v26[i + 16];
        v275 = *&v26[i + 32];
        v277 = *&v26[i + 41];
        v378[0] = *&v26[i];
        v378[1] = v276;
        *(v379 + 9) = v277;
        v379[0] = v275;
        v278 = *(&v378[0] + 1);
        v279 = v276;
        outlined init with copy of MeshResource.Part(v378, v366);
        specialized OrderedIdentifiableCollection.updateValue(_:forKey:)(v378, v278, v279, v366);
        outlined destroy of MeshResource.Part(v378);
        v367[0] = *v366;
        v367[1] = *&v366[16];
        v367[2] = *&v366[32];
        *(&v367[2] + 9) = *&v366[41];
        outlined destroy of BodyTrackingComponent?(v367, &_s10RealityKit12MeshResourceC0A10FoundationE4PartVSgMd, &_s10RealityKit12MeshResourceC0A10FoundationE4PartVSgMR);
        if (!v273)
        {
          break;
        }

        --v273;
      }
    }

    v17 = v291 + 1;
    v377[0] = v360;
    v377[1] = v361;
    v377[2] = v362;
    specialized OrderedIdentifiableCollection.updateValue(_:forKey:)(v377, v360, *(&v360 + 1), v367);
    outlined destroy of MeshResource.Model(v377);
    outlined consume of MeshResource.Model?(*&v367[0], *(&v367[0] + 1));
    v16 = v17;
    v10 = *(v284 + 16);
    if (v17 == v10)
    {
      v308 = v374;
      v309 = v375;
      v310 = v376;
      v7 = v283;
      goto LABEL_131;
    }
  }

  v25 = 0;
  v297 = v20 + 32;
  v26 = MEMORY[0x1E69E7CC0];
  v296 = v20;
  while (1)
  {
    v305 = v25;
    v27 = v297 + (v25 << 6);
    v29 = *(v27 + 16);
    v28 = *(v27 + 32);
    v30 = *(v27 + 41);
    v372[0] = *v27;
    *(v373 + 9) = v30;
    v372[1] = v29;
    v373[0] = v28;
    v31 = *&v372[0];
    v368 = *(v27 + 8);
    v369 = *(v27 + 24);
    v370 = *(v27 + 40);
    v371 = *(v27 + 56);
    outlined init with copy of MeshResource.Part(v372, v367);
    outlined init with copy of MeshResource.Part(v372, v367);
    if (one-time initialization token for positions != -1)
    {
      swift_once();
    }

    v32 = *(v31 + 16);
    v310.i64[0] = v31;
    if (v32 && (!HIBYTE(word_1EBEAD0B8) ? (v33 = 0) : (v33 = 256), v34 = specialized __RawDictionaryStorage.find<A>(_:)(static MeshBuffers.positions, *(&static MeshBuffers.positions + 1), v33 | word_1EBEAD0B8), (v35 & 1) != 0))
    {
      outlined init with copy of __REAssetService(*(v31 + 56) + 40 * v34, &v360);
      outlined init with take of BindableDataInternal(&v360, v366);
      v36 = *&v366[24];
      v37 = *&v366[32];
      __swift_project_boxed_opaque_existential_1(v366, *&v366[24]);
      v38 = *(v37 + 56);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
      v38(v367, v39, v36, v37);
      v40 = __swift_destroy_boxed_opaque_existential_1(v366);
      v41 = *&v367[0];
      if (*&v367[0])
      {
        *&v366[8] = *(v367 + 8);
        *&v366[65] = *(&v367[4] + 1);
        *&v366[56] = *(&v367[3] + 8);
        *&v366[40] = *(&v367[2] + 8);
        *&v366[24] = *(&v367[1] + 8);
        goto LABEL_18;
      }
    }

    else
    {
      memset(v367, 0, 81);
    }

    v42 = swift_allocObject();
    v43 = MEMORY[0x1E69E7CC0];
    *(v42 + 16) = MEMORY[0x1E69E7CC0];
    v44 = swift_allocObject();
    *(v44 + 16) = v43;
    v45 = swift_allocObject();
    *(v45 + 16) = v43;
    v40 = swift_allocObject();
    *(v40 + 16) = v43;
    *&v366[8] = v42;
    *&v366[16] = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
    *&v366[24] = v44;
    *&v366[32] = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
    *&v366[40] = v45;
    *&v366[48] = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
    *&v366[56] = v40;
    strcpy(&v366[64], "\t");
    *&v366[72] = 0;
    v366[80] = 0;
    v41 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
LABEL_18:
    *v366 = v41;
    v398[2] = *&v366[32];
    v398[3] = *&v366[48];
    v398[4] = *&v366[64];
    v399 = v366[80];
    v398[0] = *v366;
    v398[1] = *&v366[16];
    v46 = (v41)(v40);
    if (!v46)
    {
      v46 = specialized _copySequenceToContiguousArray<A>(_:)(v398);
    }

    v7 = v46;
    outlined destroy of BodyTrackingComponent?(v366, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
    v47 = *(v7 + 16);
    v308.i64[0] = v26;
    if (v47)
    {
      break;
    }

    v49 = MEMORY[0x1E69E7CC0];
LABEL_28:
    v65 = static MeshBuffers.positions;
    LODWORD(v307) = word_1EBEAD0B8;
    v306.i32[0] = HIBYTE(word_1EBEAD0B8);
    v66 = *(v49 + 16);
    v67 = swift_allocObject();
    *(v67 + 16) = v49;
    v68 = swift_allocObject();
    *(v68 + 16) = v49;
    v69 = swift_allocObject();
    *(v69 + 16) = v49;
    v70 = swift_allocObject();
    *(v70 + 16) = v49;
    *&v360 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
    *(&v360 + 1) = v67;
    *&v361 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
    *(&v361 + 1) = v68;
    *&v362 = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
    *(&v362 + 1) = v69;
    *&v363 = closure #4 in MeshBuffer.init<A>(_:)specialized partial apply;
    *(&v363 + 1) = v70;
    LOWORD(v364) = 9;
    *(&v364 + 1) = v66;
    v365 = 0;
    v309.i64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMR);
    v359[3] = v309.i64[0];
    v359[4] = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
    v71 = swift_allocObject();
    v359[0] = v71;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    outlined init with copy of MeshBuffer<SIMD3<Float>>(&v360, &v351);
    if (one-time initialization token for triangleIndices != -1)
    {
      swift_once();
    }

    if (v65 == static MeshBuffers.Identifier.triangleIndices)
    {
      v72 = 2;
    }

    else
    {
      v73 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v72 = v365;
      if (v73)
      {
        v72 = 2;
      }
    }

    v74 = *(&v364 + 1);
    v75 = v364;
    v76 = BYTE1(v364);
    v77 = v361;
    v78 = v295;
    *v295 = v360;
    v78[1] = v77;
    *(v78 + 80) = v365;
    v79 = v364;
    v78[3] = v363;
    v78[4] = v79;
    v78[2] = v362;
    *(v71 + 16) = v65;
    *(v71 + 32) = v307;
    v80 = v306.i32[0];
    *(v71 + 33) = v306.i8[0];
    *(v71 + 40) = v74;
    *(v71 + 48) = v72;
    *(v71 + 49) = v75;
    *(v71 + 50) = v76;
    v81 = v357[0];
    *(v71 + 67) = v357[1];
    *(v71 + 51) = v81;
    v82 = v357[2];
    v83 = v357[3];
    v84 = *v358;
    *(v71 + 129) = *&v358[14];
    *(v71 + 115) = v84;
    *(v71 + 99) = v83;
    *(v71 + 83) = v82;
    outlined init with take of BindableDataInternal(v359, &v351);
    v85 = v310.i64[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v333 = v85;
    v87 = *(&v352 + 1);
    v88 = __swift_mutable_project_boxed_opaque_existential_1(&v351, *(&v352 + 1));
    v304 = &v282;
    v89 = *(*(v87 - 8) + 64);
    v90 = MEMORY[0x1EEE9AC00](v88);
    v92 = (&v282 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v93 + 16))(v92, v90);
    *(&v346 + 1) = v309.i64[0];
    *&v347 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
    v94 = swift_allocObject();
    *&v345 = v94;
    v95 = v92[5];
    v94[5] = v92[4];
    v94[6] = v95;
    v94[7] = v92[6];
    *(v94 + 121) = *(v92 + 105);
    v96 = v92[1];
    v94[1] = *v92;
    v94[2] = v96;
    v97 = v92[3];
    if (v80)
    {
      v98 = 256;
    }

    else
    {
      v98 = 0;
    }

    v94[3] = v92[2];
    v94[4] = v97;
    v100 = specialized __RawDictionaryStorage.find<A>(_:)(v65, *(&v65 + 1), v98 | v65);
    v101 = *(v85 + 16);
    v102 = (v99 & 1) == 0;
    v103 = v101 + v102;
    if (__OFADD__(v101, v102))
    {
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    v104 = v99;
    if (*(v85 + 24) >= v103)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v107 = v333;
        if (v99)
        {
          goto LABEL_44;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v107 = v333;
        if (v104)
        {
          goto LABEL_44;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v103, isUniquelyReferenced_nonNull_native);
      v105 = specialized __RawDictionaryStorage.find<A>(_:)(v65, *(&v65 + 1), v98 | v307);
      if ((v104 & 1) != (v106 & 1))
      {
        goto LABEL_137;
      }

      v100 = v105;
      v107 = v333;
      if (v104)
      {
LABEL_44:
        v108 = (v107[7] + 40 * v100);
        __swift_destroy_boxed_opaque_existential_1(v108);
        outlined init with take of BindableDataInternal(&v345, v108);

        outlined destroy of BodyTrackingComponent?(&v360, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
        goto LABEL_48;
      }
    }

    v109 = *(&v346 + 1);
    v110 = __swift_mutable_project_boxed_opaque_existential_1(&v345, *(&v346 + 1));
    v111 = *(*(v109 - 8) + 64);
    v112 = MEMORY[0x1EEE9AC00](v110);
    v114 = (&v282 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v115 + 16))(v114, v112);
    *(&v340 + 1) = v309.i64[0];
    *&v341 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
    v116 = swift_allocObject();
    *&v339 = v116;
    v117 = v114[3];
    v116[3] = v114[2];
    v116[4] = v117;
    v118 = v114[1];
    v116[1] = *v114;
    v116[2] = v118;
    *(v116 + 121) = *(v114 + 105);
    v119 = v114[6];
    v116[6] = v114[5];
    v116[7] = v119;
    v116[5] = v114[4];
    v107[(v100 >> 6) + 8] |= 1 << v100;
    v120 = v107[6] + 24 * v100;
    *v120 = v65;
    *(v120 + 16) = v307;
    *(v120 + 17) = v306.i8[0];
    outlined init with take of BindableDataInternal(&v339, v107[7] + 40 * v100);
    v121 = v107[2];
    v122 = __OFADD__(v121, 1);
    v123 = v121 + 1;
    if (v122)
    {
      goto LABEL_135;
    }

    v107[2] = v123;
    __swift_destroy_boxed_opaque_existential_1(&v345);
    outlined destroy of BodyTrackingComponent?(&v360, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
LABEL_48:
    v124 = __swift_destroy_boxed_opaque_existential_1(&v351);
    v26 = v308.i64[0];
    v125 = v310.i64[0];
    if (one-time initialization token for normals == -1)
    {
      if (!*(v310.i64[0] + 16))
      {
        goto LABEL_56;
      }
    }

    else
    {
      v124 = swift_once();
      if (!*(v125 + 16))
      {
        goto LABEL_56;
      }
    }

    if (HIBYTE(word_1EBEAD0D0))
    {
      v126 = 256;
    }

    else
    {
      v126 = 0;
    }

    v124 = specialized __RawDictionaryStorage.find<A>(_:)(static MeshBuffers.normals, *algn_1EBEAD0C8, v126 | word_1EBEAD0D0);
    if ((v127 & 1) == 0)
    {
LABEL_56:
      v356 = 0;
      v354 = 0u;
      v355 = 0u;
      v352 = 0u;
      v353 = 0u;
      v351 = 0u;
      goto LABEL_57;
    }

    outlined init with copy of __REAssetService(*(v125 + 56) + 40 * v124, &v339);
    outlined init with take of BindableDataInternal(&v339, &v345);
    v128 = *(&v346 + 1);
    v129 = v347;
    __swift_project_boxed_opaque_existential_1(&v345, *(&v346 + 1));
    v130 = *(v129 + 56);
    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    v132 = v128;
    v125 = v310.i64[0];
    v130(&v351, v131, v132, v129);
    v124 = __swift_destroy_boxed_opaque_existential_1(&v345);
LABEL_57:
    v347 = v353;
    v348 = v354;
    v349 = v355;
    v350 = v356;
    v345 = v351;
    v346 = v352;
    if (v351)
    {
      v396[0] = v345;
      v396[3] = v354;
      v396[4] = v355;
      v397 = v356;
      v396[1] = v352;
      v396[2] = v353;
      v133 = (v345)(v124);
      if (!v133)
      {
        v133 = specialized _copySequenceToContiguousArray<A>(_:)(v396);
      }

      v134 = v133;
      v307 = v107;
      outlined destroy of BodyTrackingComponent?(&v345, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMR);
      v135 = *(v134 + 16);
      if (v135)
      {
        *&v339 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v135, 0);
        v136 = v339;
        v137 = *(v339 + 16);
        v138 = 32;
        v140 = v302;
        v139 = v303;
        v142 = v300;
        v141 = v301;
        v144 = v298;
        v143 = v299;
        v145 = v292;
        do
        {
          v146 = *(v134 + v138);
          *&v339 = v136;
          v147 = *(v136 + 24);
          if (v137 >= v147 >> 1)
          {
            v292 = v145;
            v306 = v146;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v147 > 1), v137 + 1, 1);
            v146 = v306;
            v145.i32[3] = v292.i32[3];
            v144 = v298;
            v143 = v299;
            v142 = v300;
            v141 = v301;
            v140 = v302;
            v139 = v303;
            v136 = v339;
          }

          v148 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v143, *v146.f32, 1), v140, v146.f32[0]), v141, v146, 2);
          v149 = vnegq_f32(v148);
          v150 = vtrn2q_s32(v148, vtrn1q_s32(v148, v149));
          v151 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v148, v149, 8uLL), *v139.f32, 1), vextq_s8(v150, v150, 8uLL), v142);
          v152 = vrev64q_s32(v148);
          v152.i32[0] = v149.i32[1];
          v152.i32[3] = v149.i32[2];
          v153 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v148, v139, 3), v152, v144), v151);
          v153.i32[3] = v145.i32[3];
          *(v136 + 16) = v137 + 1;
          *(v136 + 16 * v137 + 32) = v153;
          v138 += 16;
          ++v137;
          v145 = v153;
          --v135;
        }

        while (v135);
        v306 = v153;

        v292 = v306;
      }

      else
      {

        v136 = MEMORY[0x1E69E7CC0];
      }

      v155 = static MeshBuffers.normals;
      v154 = *algn_1EBEAD0C8;
      v156 = word_1EBEAD0D0;
      v157 = HIBYTE(word_1EBEAD0D0);
      _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v136, &v339);
      v394[2] = v341;
      v394[3] = v342;
      v394[4] = v343;
      v395 = v344;
      v394[0] = v339;
      v394[1] = v340;
      *(&v328 + 1) = v309.i64[0];
      *&v329 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
      *&v327 = swift_allocObject();
      swift_bridgeObjectRetain_n();
      outlined init with copy of MeshBuffer<SIMD3<Float>>(v394, &v333);
      if (v157)
      {
        v158 = 256;
      }

      else
      {
        v158 = 0;
      }

      _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5(v155, v154, v158 | v156, v394);
      outlined init with take of BindableDataInternal(&v327, &v333);
      v159 = v307;
      v160 = swift_isUniquelyReferenced_nonNull_native();
      *&v321 = v159;
      v161 = *(&v334 + 1);
      v162 = __swift_mutable_project_boxed_opaque_existential_1(&v333, *(&v334 + 1));
      v163 = *(*(v161 - 8) + 64);
      v164 = MEMORY[0x1EEE9AC00](v162);
      v166 = (&v282 - ((v165 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v167 + 16))(v166, v164);
      v168 = v166[5];
      v392[4] = v166[4];
      v392[5] = v168;
      v393[0] = v166[6];
      *(v393 + 9) = *(v166 + 105);
      v169 = v166[1];
      v392[0] = *v166;
      v392[1] = v169;
      v170 = v166[3];
      v392[2] = v166[2];
      v392[3] = v170;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v392, v155, v154, v158 | v156, v160, &v321, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMR);

      outlined destroy of BodyTrackingComponent?(v394, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
      v124 = __swift_destroy_boxed_opaque_existential_1(&v333);
      v107 = v321;
      v26 = v308.i64[0];
      v125 = v310.i64[0];
    }

    if (one-time initialization token for tangents != -1)
    {
      v124 = swift_once();
    }

    if (*(v125 + 16) && (!HIBYTE(word_1EBEAD0E8) ? (v171 = 0) : (v171 = 256), v124 = specialized __RawDictionaryStorage.find<A>(_:)(static MeshBuffers.tangents, unk_1EBEAD0E0, v171 | word_1EBEAD0E8), (v172 & 1) != 0))
    {
      outlined init with copy of __REAssetService(*(v125 + 56) + 40 * v124, &v327);
      outlined init with take of BindableDataInternal(&v327, &v333);
      v173 = *(&v334 + 1);
      v174 = v335;
      __swift_project_boxed_opaque_existential_1(&v333, *(&v334 + 1));
      v175 = *(v174 + 56);
      v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
      v177 = v173;
      v125 = v310.i64[0];
      v175(&v339, v176, v177, v174);
      v124 = __swift_destroy_boxed_opaque_existential_1(&v333);
    }

    else
    {
      v344 = 0;
      v342 = 0u;
      v343 = 0u;
      v340 = 0u;
      v341 = 0u;
      v339 = 0u;
    }

    v335 = v341;
    v336 = v342;
    v337 = v343;
    v338 = v344;
    v333 = v339;
    v334 = v340;
    if (v339)
    {
      v390[0] = v333;
      v390[3] = v342;
      v390[4] = v343;
      v391 = v344;
      v390[1] = v340;
      v390[2] = v341;
      v178 = (v333)(v124);
      if (!v178)
      {
        v178 = specialized _copySequenceToContiguousArray<A>(_:)(v390);
      }

      v179 = v178;
      v307 = v107;
      outlined destroy of BodyTrackingComponent?(&v333, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMR);
      v180 = *(v179 + 16);
      if (v180)
      {
        *&v327 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v180, 0);
        v181 = v327;
        v182 = *(v327 + 16);
        v183 = 32;
        v185 = v302;
        v184 = v303;
        v187 = v300;
        v186 = v301;
        v189 = v298;
        v188 = v299;
        v190 = v294;
        do
        {
          v191 = *(v179 + v183);
          *&v327 = v181;
          v192 = *(v181 + 24);
          if (v182 >= v192 >> 1)
          {
            v294 = v190;
            v306 = v191;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v192 > 1), v182 + 1, 1);
            v191 = v306;
            v190.i32[3] = v294.i32[3];
            v189 = v298;
            v188 = v299;
            v187 = v300;
            v186 = v301;
            v185 = v302;
            v184 = v303;
            v181 = v327;
          }

          v193 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v188, *v191.f32, 1), v185, v191.f32[0]), v186, v191, 2);
          v194 = vnegq_f32(v193);
          v195 = vtrn2q_s32(v193, vtrn1q_s32(v193, v194));
          v196 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v193, v194, 8uLL), *v184.f32, 1), vextq_s8(v195, v195, 8uLL), v187);
          v197 = vrev64q_s32(v193);
          v197.i32[0] = v194.i32[1];
          v197.i32[3] = v194.i32[2];
          v198 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v193, v184, 3), v197, v189), v196);
          v198.i32[3] = v190.i32[3];
          *(v181 + 16) = v182 + 1;
          *(v181 + 16 * v182 + 32) = v198;
          v183 += 16;
          ++v182;
          v190 = v198;
          --v180;
        }

        while (v180);
        v306 = v198;

        v294 = v306;
      }

      else
      {

        v181 = MEMORY[0x1E69E7CC0];
      }

      v200 = static MeshBuffers.tangents;
      v199 = unk_1EBEAD0E0;
      v201 = word_1EBEAD0E8;
      v202 = HIBYTE(word_1EBEAD0E8);
      _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v181, &v327);
      v388[2] = v329;
      v388[3] = v330;
      v388[4] = v331;
      v389 = v332;
      v388[0] = v327;
      v388[1] = v328;
      *(&v316 + 1) = v309.i64[0];
      *&v317 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
      *&v315 = swift_allocObject();
      swift_bridgeObjectRetain_n();
      outlined init with copy of MeshBuffer<SIMD3<Float>>(v388, &v321);
      if (v202)
      {
        v203 = 256;
      }

      else
      {
        v203 = 0;
      }

      _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5(v200, v199, v203 | v201, v388);
      outlined init with take of BindableDataInternal(&v315, &v321);
      v204 = v307;
      v205 = swift_isUniquelyReferenced_nonNull_native();
      v312[0] = v204;
      v206 = *(&v322 + 1);
      v207 = __swift_mutable_project_boxed_opaque_existential_1(&v321, *(&v322 + 1));
      v208 = *(*(v206 - 8) + 64);
      v209 = MEMORY[0x1EEE9AC00](v207);
      v211 = (&v282 - ((v210 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v212 + 16))(v211, v209);
      v213 = v211[5];
      v386[4] = v211[4];
      v386[5] = v213;
      v387[0] = v211[6];
      *(v387 + 9) = *(v211 + 105);
      v214 = v211[1];
      v386[0] = *v211;
      v386[1] = v214;
      v215 = v211[3];
      v386[2] = v211[2];
      v386[3] = v215;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v386, v200, v199, v203 | v201, v205, v312, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMR);

      outlined destroy of BodyTrackingComponent?(v388, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
      __swift_destroy_boxed_opaque_existential_1(&v321);
      v107 = v312[0];
      v26 = v308.i64[0];
      v125 = v310.i64[0];
    }

    if (one-time initialization token for bitangents != -1)
    {
      swift_once();
    }

    if (*(v125 + 16) && (!HIBYTE(word_1EBEAD100) ? (v216 = 0) : (v216 = 256), v217 = specialized __RawDictionaryStorage.find<A>(_:)(static MeshBuffers.bitangents, *algn_1EBEAD0F8, v216 | word_1EBEAD100), (v218 & 1) != 0))
    {
      outlined init with copy of __REAssetService(*(v125 + 56) + 40 * v217, &v315);
      outlined init with take of BindableDataInternal(&v315, &v321);
      v219 = *(&v322 + 1);
      v220 = v323;
      __swift_project_boxed_opaque_existential_1(&v321, *(&v322 + 1));
      v221 = *(v220 + 56);
      v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
      v221(&v327, v222, v219, v220);
      __swift_destroy_boxed_opaque_existential_1(&v321);
      v223 = outlined destroy of MeshResource.Part(v372);
    }

    else
    {
      v223 = outlined destroy of MeshResource.Part(v372);
      v327 = 0u;
      v328 = 0u;
      v329 = 0u;
      v330 = 0u;
      v331 = 0u;
      v332 = 0;
    }

    v323 = v329;
    v324 = v330;
    v325 = v331;
    v326 = v332;
    v321 = v327;
    v322 = v328;
    if (v327)
    {
      v384[0] = v321;
      v384[3] = v330;
      v384[4] = v331;
      v385 = v332;
      v384[1] = v328;
      v384[2] = v329;
      v224 = (v321)(v223);
      if (!v224)
      {
        v224 = specialized _copySequenceToContiguousArray<A>(_:)(v384);
      }

      v225 = v224;
      v226 = v107;
      outlined destroy of BodyTrackingComponent?(&v321, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMR);
      v227 = *(v225 + 16);
      if (v227)
      {
        *&v315 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v227, 0);
        v228 = v315;
        v229 = *(v315 + 16);
        v230 = 32;
        v232 = v302;
        v231 = v303;
        v234 = v300;
        v233 = v301;
        v236 = v298;
        v235 = v299;
        v237 = v293;
        do
        {
          v238 = *(v225 + v230);
          *&v315 = v228;
          v239 = *(v228 + 24);
          if (v229 >= v239 >> 1)
          {
            v293 = v237;
            v310 = v238;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v239 > 1), v229 + 1, 1);
            v238 = v310;
            v237.i32[3] = v293.i32[3];
            v236 = v298;
            v235 = v299;
            v234 = v300;
            v233 = v301;
            v232 = v302;
            v231 = v303;
            v228 = v315;
          }

          v240 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v235, *v238.f32, 1), v232, v238.f32[0]), v233, v238, 2);
          v241 = vnegq_f32(v240);
          v242 = vtrn2q_s32(v240, vtrn1q_s32(v240, v241));
          v243 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v240, v241, 8uLL), *v231.f32, 1), vextq_s8(v242, v242, 8uLL), v234);
          v244 = vrev64q_s32(v240);
          v244.i32[0] = v241.i32[1];
          v244.i32[3] = v241.i32[2];
          v245 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v240, v231, 3), v244, v236), v243);
          v245.i32[3] = v237.i32[3];
          *(v228 + 16) = v229 + 1;
          *(v228 + 16 * v229 + 32) = v245;
          v230 += 16;
          ++v229;
          v237 = v245;
          --v227;
        }

        while (v227);
        v310 = v245;

        v293 = v310;
      }

      else
      {

        v228 = MEMORY[0x1E69E7CC0];
      }

      v247 = static MeshBuffers.bitangents;
      v246 = *algn_1EBEAD0F8;
      v248 = word_1EBEAD100;
      v249 = HIBYTE(word_1EBEAD100);
      _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v228, &v315);
      v382[2] = v317;
      v382[3] = v318;
      v382[4] = v319;
      v383 = v320;
      v382[0] = v315;
      v382[1] = v316;
      v314[3] = v309.i64[0];
      v314[4] = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
      v314[0] = swift_allocObject();
      swift_bridgeObjectRetain_n();
      outlined init with copy of MeshBuffer<SIMD3<Float>>(v382, v312);
      if (v249)
      {
        v250 = 256;
      }

      else
      {
        v250 = 0;
      }

      _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5(v247, v246, v250 | v248, v382);
      outlined init with take of BindableDataInternal(v314, v312);
      v251 = swift_isUniquelyReferenced_nonNull_native();
      v311 = v226;
      v252 = v313;
      v253 = __swift_mutable_project_boxed_opaque_existential_1(v312, v313);
      v254 = *(*(v252 - 8) + 64);
      v255 = MEMORY[0x1EEE9AC00](v253);
      v257 = (&v282 - ((v256 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v258 + 16))(v257, v255);
      v259 = v257[5];
      v380[4] = v257[4];
      v380[5] = v259;
      v381[0] = v257[6];
      *(v381 + 9) = *(v257 + 105);
      v260 = v257[1];
      v380[0] = *v257;
      v380[1] = v260;
      v261 = v257[3];
      v380[2] = v257[2];
      v380[3] = v261;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v380, v247, v246, v250 | v248, v251, &v311, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMR);

      outlined destroy of BodyTrackingComponent?(v382, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
      __swift_destroy_boxed_opaque_existential_1(v312);
      v107 = v311;
      v26 = v308.i64[0];
    }

    v315 = v368;
    v316 = v369;
    v317 = v370;
    LOBYTE(v318) = v371;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
    }

    v263 = *(v26 + 2);
    v262 = *(v26 + 3);
    v264 = v305;
    if (v263 >= v262 >> 1)
    {
      v270 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v262 > 1), v263 + 1, 1, v26);
      v264 = v305;
      v26 = v270;
    }

    v25 = v264 + 1;
    *(v26 + 2) = v263 + 1;
    v265 = &v26[64 * v263];
    *(v265 + 4) = v107;
    v266 = v315;
    v267 = v316;
    v268 = v317;
    v265[88] = v318;
    *(v265 + 72) = v268;
    *(v265 + 56) = v267;
    *(v265 + 40) = v266;
    v20 = v296;
    v269 = *(v296 + 16);
    if (v25 == v269)
    {
      goto LABEL_125;
    }

    if (v25 >= v269)
    {
      goto LABEL_134;
    }
  }

  *&v360 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47, 0);
  v48 = 0;
  v49 = v360;
  v51 = v302;
  v50 = v303;
  v53 = v300;
  v52 = v301;
  v55 = v298;
  v54 = v299;
  while (v48 < *(v7 + 16))
  {
    v56 = *(v7 + 16 * v48 + 32);
    *&v360 = v49;
    v58 = *(v49 + 16);
    v57 = *(v49 + 24);
    if (v58 >= v57 >> 1)
    {
      v309 = v56;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1);
      v56 = v309;
      v55 = v298;
      v54 = v299;
      v53 = v300;
      v52 = v301;
      v51 = v302;
      v50 = v303;
      v49 = v360;
    }

    ++v48;
    v59 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v54, *v56.f32, 1), v51, v56.f32[0]), v52, v56, 2);
    v60 = vnegq_f32(v59);
    v61 = vtrn2q_s32(v59, vtrn1q_s32(v59, v60));
    v62 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v59, v60, 8uLL), *v50.f32, 1), vextq_s8(v61, v61, 8uLL), v53);
    v63 = vrev64q_s32(v59);
    v63.i32[0] = v60.i32[1];
    v63.i32[3] = v60.i32[2];
    v64 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v59, v50, 3), v63, v55), v62);
    *v60.i8 = vadd_f32(*v64.f32, a2);
    *&v60.i32[2] = v64.f32[2] + a3;
    v60.i32[3] = 0;
    *(v49 + 16) = v58 + 1;
    *(v49 + 16 * v58 + 32) = v60;
    if (v47 == v48)
    {

      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_130:
  swift_bridgeObjectRetain_n();

LABEL_131:

  v281 = v309;
  *v7 = v308;
  *(v7 + 16) = v281;
  *(v7 + 32) = v310;
  return result;
}

uint64_t MeshResource.init(primitiveMeshShape:)()
{
  v1 = v0;
  Type = RECollisionShapeGetType();
  if (Type <= 3)
  {
    goto LABEL_7;
  }

  if (Type != 4)
  {
    if (Type == 8)
    {
      goto LABEL_19;
    }

    if (Type != 9)
    {
      goto LABEL_23;
    }

    REGeomBuildConeDefaultOptions();
    REConeShapeGetHeight();
    REConeShapeGetRadius();
    v3 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v3 + 120, &v41);
    v4 = v44;
    v5 = v45;
    __swift_project_boxed_opaque_existential_1(&v41, v44);
    (*(v5 + 32))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1(&v41);
    v6 = _s17RealityFoundation22PrimitiveComponentTypePAAE13makeCoreAsset7options11splitMeshess13OpaquePointerV7OptionsQz_SbtFZAA16ConeMeshResourceC_Tt1g5();
    if (!REAssetGetSwiftObject())
    {
      goto LABEL_22;
    }

    Type = swift_unknownObjectRelease();
    __break(1u);
LABEL_7:
    if (Type == 2)
    {
      goto LABEL_21;
    }

    if (Type == 3)
    {
      REBoxShapeGetExtent();
      v40 = v7;
      REGeomBuildBoxDefaultOptions();
      v46 = v41;
      v47 = v42;
      *v48 = v40;
      *&v48[8] = DWORD2(v40);
      v49 = v44;
      v8 = specialized static __ServiceLocator.shared.getter();
      swift_beginAccess();
      outlined init with copy of __REAssetService(v8 + 120, &v41);
      v9 = v44;
      v10 = v45;
      __swift_project_boxed_opaque_existential_1(&v41, v44);
      (*(v10 + 32))(v9, v10);
      __swift_destroy_boxed_opaque_existential_1(&v41);
      v6 = _s17RealityFoundation22PrimitiveComponentTypePAAE13makeCoreAsset7options11splitMeshess13OpaquePointerV7OptionsQz_SbtFZAA15BoxMeshResourceC_Tt1g5(&v46);
      if (REAssetGetSwiftObject())
      {
        swift_unknownObjectRelease();
        __break(1u);
        goto LABEL_11;
      }

LABEL_22:
      REAssetHandleLoadNow();
      REAssetSetNetworkSharingMode();
      v38 = (*(v1 + 120))(v6);
      RERelease();
      return v38;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_11:
  REGeomBuildCapsuleDefaultOptions();
  v11 = *(&v41 + 2);
  v12 = v43;
  v13 = BYTE1(v43);
  v14 = BYTE2(v43);
  RECapsuleShapeGetHeight();
  v16 = v15;
  RECapsuleShapeGetRadius();
  v18 = v17;
  v19 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v19 + 120, &v41);
  v20 = v44;
  v21 = v45;
  __swift_project_boxed_opaque_existential_1(&v41, v44);
  (*(v21 + 32))(v20, v21);
  __swift_destroy_boxed_opaque_existential_1(&v41);
  if (v13)
  {
    v22 = 256;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22 & 0xFFFFFFFE | v12 & 1;
  if (v14)
  {
    v24 = 0x10000;
  }

  else
  {
    v24 = 0;
  }

  v6 = _s17RealityFoundation22PrimitiveComponentTypePAAE13makeCoreAsset7options11splitMeshess13OpaquePointerV7OptionsQz_SbtFZAA19CapsuleMeshResourceC_Tt1g5((v11 << 16) | 0x40, v23 | v24, v18, v16);
  if (!REAssetGetSwiftObject())
  {
    goto LABEL_22;
  }

  swift_unknownObjectRelease();
  __break(1u);
LABEL_19:
  REGeomBuildCylinderDefaultOptions();
  v25 = v41;
  v26 = v43;
  RECylinderShapeGetHeight();
  v28 = v27;
  RECylinderShapeGetRadius();
  v30 = v29;
  RECylinderShapeGetRadius();
  v46 = __PAIR64__(v28, v25);
  v47 = v30;
  *v48 = v31;
  *&v48[4] = v26;
  v32 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v32 + 120, &v41);
  v33 = v44;
  v34 = v45;
  __swift_project_boxed_opaque_existential_1(&v41, v44);
  (*(v34 + 32))(v33, v34);
  __swift_destroy_boxed_opaque_existential_1(&v41);
  v6 = _s17RealityFoundation22PrimitiveComponentTypePAAE13makeCoreAsset7options11splitMeshess13OpaquePointerV7OptionsQz_SbtFZAA20CylinderMeshResourceC_Tt1g5(&v46);
  if (!REAssetGetSwiftObject())
  {
    goto LABEL_22;
  }

  swift_unknownObjectRelease();
  __break(1u);
LABEL_21:
  REGeomBuildSphereDefaultOptions();
  RESphereShapeGetRadius();
  v35 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v35 + 120, &v41);
  v36 = v44;
  v37 = v45;
  __swift_project_boxed_opaque_existential_1(&v41, v44);
  (*(v37 + 32))(v36, v37);
  __swift_destroy_boxed_opaque_existential_1(&v41);
  v6 = _s17RealityFoundation22PrimitiveComponentTypePAAE13makeCoreAsset7options11splitMeshess13OpaquePointerV7OptionsQz_SbtFZAA18SphereMeshResourceC_Tt1g5();
  if (!REAssetGetSwiftObject())
  {
    goto LABEL_22;
  }

LABEL_24:
  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

uint64_t MeshResource.init(shape:)(uint64_t a1)
{
  v2 = v1;
  v26 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  CollisionShape = RECollisionShapeAssetGetCollisionShape();
  if (!CollisionShape)
  {
    __break(1u);
  }

  v6 = CollisionShape;
  v7 = 0;
  Type = RECollisionShapeGetType();
  if (Type > 5)
  {
    if (Type > 0xC)
    {
      goto LABEL_22;
    }

    if (((1 << Type) & 0xCC0) == 0)
    {
      if (((1 << Type) & 0x300) == 0)
      {
        if (Type == 12)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation14MeshDescriptorVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation14MeshDescriptorVGMR);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1C1887600;
          MeshDescriptor.init(staticMeshShape:)(inited + 32);
          v10 = MeshResource.init(from:)(inited);
LABEL_17:
          v17 = v10;
          goto LABEL_18;
        }

LABEL_22:
        __break(1u);
        swift_unexpectedError();
        __break(1u);
LABEL_23:
        swift_unexpectedError();
        __break(1u);
LABEL_24:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        goto LABEL_25;
      }

      goto LABEL_13;
    }

LABEL_10:
    v11 = REGeomMeshCreateFromCoreAttributes();
    if (!v11)
    {
      goto LABEL_24;
    }

    *&v22[0] = v11;
    v12 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v12 + 120, &v23);
    v13 = *(&v24 + 1);
    v14 = v25;
    __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
    (*(v14 + 32))(v13, v14);
    __swift_destroy_boxed_opaque_existential_1(&v23);
    v15 = REAssetManagerMeshMemoryAssetCreate();
    if (!v15)
    {
      goto LABEL_24;
    }

    v17 = (*(v2 + 120))(v15, v16);
    RERelease();
    RERelease();
    goto LABEL_18;
  }

  if ((Type - 2) >= 3)
  {
    if (Type >= 2)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

LABEL_13:
  v17 = MeshResource.init(primitiveMeshShape:)();
  *&v23 = v17;
  v6 = &v23;
  RequestLoadable.enforceResourceSharingBeforeECSCommits()();
  if (!v7)
  {
LABEL_18:
    if (REPoseF.isIdentity.getter(*(a1 + 32), COERCE_FLOAT(*(a1 + 40)), *(a1 + 48)))
    {
      goto LABEL_20;
    }

    MeshResource.Contents.init(_:)(*(v17 + 16), v22);
    MeshResource.Contents.offsetBy(pose:)(&v23, *(a1 + 32), COERCE_FLOAT(*(a1 + 40)), *(a1 + 48));

    v22[0] = v23;
    v22[1] = v24;
    v22[2] = v25;
    MeshResource.replace(with:)(v22);

    *&v23 = v17;
    RequestLoadable.enforceResourceSharingBeforeECSCommits()();
    if (!v19)
    {
LABEL_20:

      v20 = *MEMORY[0x1E69E9840];
      return v17;
    }

    goto LABEL_23;
  }

  Type = swift_unexpectedError();
  __break(1u);
LABEL_15:
  if (Type != 5)
  {
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation14MeshDescriptorVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation14MeshDescriptorVGMR);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1C1887600;
  MeshDescriptor.init(convexPolyhedronShape:)(v6, v18 + 32);
  v10 = MeshResource.init(from:)(v18);
  if (!v7)
  {
    goto LABEL_17;
  }

LABEL_25:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

{
  v7 = *MEMORY[0x1E69E9840];
  v2[59] = a1;
  v2[60] = v1;
  type metadata accessor for MainActor();
  v2[61] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[62] = v3;
  v2[63] = v4;
  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](MeshResource.init(shape:), v3, v4);
}

{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *v2;
  v5 = *(*v2 + 544);
  v6 = *v2;
  v4[69] = v1;

  v7 = v4[67];
  if (v1)
  {
    v8 = v4[62];
    v9 = v4[63];
    v10 = MeshResource.init(shape:);
  }

  else
  {
    v4[70] = a1;
    v8 = v4[62];
    v9 = v4[63];
    v10 = MeshResource.init(shape:);
  }

  v11 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *v2;
  v5 = *(*v2 + 576);
  v6 = *v2;
  v4[73] = v1;

  v7 = v4[71];
  if (v1)
  {
    v8 = v4[62];
    v9 = v4[63];
    v10 = MeshResource.init(shape:);
  }

  else
  {
    v4[74] = a1;
    v8 = v4[62];
    v9 = v4[63];
    v10 = MeshResource.init(shape:);
  }

  v11 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t MeshResource.init(shape:)()
{
  v35 = v0;
  v34 = *MEMORY[0x1E69E9840];
  v1 = *(*(v0 + 472) + 16);
  CollisionShape = RECollisionShapeAssetGetCollisionShape();
  if (!CollisionShape)
  {
    __break(1u);
  }

  v3 = CollisionShape;
  result = RECollisionShapeGetType();
  if (result <= 5)
  {
    if ((result - 2) < 3)
    {
LABEL_16:
      v22 = *(v0 + 480);
      v23 = MeshResource.init(primitiveMeshShape:)();
      *(v0 + 512) = v23;
      *(v0 + 464) = v23;
      v24 = swift_task_alloc();
      *(v0 + 520) = v24;
      *v24 = v0;
      v24[1] = MeshResource.init(shape:);
      v25 = *(v0 + 480);
      v26 = *MEMORY[0x1E69E9840];

      return RequestLoadable.awaitForResourceSharing()(v25, &protocol witness table for MeshResource);
    }

    if (result >= 2)
    {
      if (result == 5)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation14MeshDescriptorVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation14MeshDescriptorVGMR);
        inited = swift_initStackObject();
        *(v0 + 536) = inited;
        *(inited + 16) = xmmword_1C1887600;
        MeshDescriptor.init(convexPolyhedronShape:)(v3, inited + 32);
        v6 = swift_task_alloc();
        *(v0 + 544) = v6;
        *v6 = v0;
        v7 = MeshResource.init(shape:);
        goto LABEL_25;
      }

LABEL_29:
      __break(1u);
      return result;
    }
  }

  else
  {
    if (result > 0xC)
    {
      goto LABEL_29;
    }

    if (((1 << result) & 0xCC0) == 0)
    {
      if (((1 << result) & 0x300) == 0)
      {
        if (result == 12)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation14MeshDescriptorVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation14MeshDescriptorVGMR);
          inited = swift_initStackObject();
          *(v0 + 568) = inited;
          *(inited + 16) = xmmword_1C1887600;
          MeshDescriptor.init(staticMeshShape:)(inited + 32);
          v6 = swift_task_alloc();
          *(v0 + 576) = v6;
          *v6 = v0;
          v7 = MeshResource.init(shape:);
LABEL_25:
          v6[1] = v7;
          v31 = *(v0 + 480);
          v32 = *MEMORY[0x1E69E9840];

          return MeshResource.init(from:)(inited);
        }

        goto LABEL_29;
      }

      goto LABEL_16;
    }
  }

  v8 = REGeomMeshCreateFromCoreAttributes();
  if (!v8)
  {
    goto LABEL_19;
  }

  *(v0 + 448) = v8;
  v9 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v9 + 120, v0 + 384);
  v10 = *(v0 + 408);
  v11 = *(v0 + 416);
  __swift_project_boxed_opaque_existential_1((v0 + 384), v10);
  (*(v11 + 32))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1((v0 + 384));
  v12 = REAssetManagerMeshMemoryAssetCreate();
  if (v12)
  {
    v14 = (*(*(v0 + 480) + 120))(v12, v13);
    RERelease();
    v15 = *(v0 + 448);
    RERelease();
    *(v0 + 600) = v14;
    v16 = *(v0 + 472);
    if (REPoseF.isIdentity.getter(*(v16 + 32), COERCE_FLOAT(*(v16 + 40)), *(v16 + 48)))
    {
      v17 = *(v0 + 488);
      v18 = *(v0 + 472);

      v19 = *(v0 + 8);
      v20 = *(v0 + 600);
      v21 = *MEMORY[0x1E69E9840];

      return v19(v20);
    }

    else
    {
      MeshResource.Contents.init(_:)(*(v14 + 16), v33);
      v33[3] = v33[0];
      v33[4] = v33[1];
      v33[5] = v33[2];
      MeshResource.Contents.offsetBy(pose:)(v0 + 288, *(v16 + 32), COERCE_FLOAT(*(v16 + 40)), *(v16 + 48));

      v28 = *(v0 + 304);
      *(v0 + 336) = *(v0 + 288);
      *(v0 + 352) = v28;
      *(v0 + 368) = *(v0 + 320);
      v29 = swift_task_alloc();
      *(v0 + 608) = v29;
      *v29 = v0;
      v29[1] = MeshResource.init(shape:);
      v30 = *MEMORY[0x1E69E9840];

      return MeshResource.replace(with:)((v0 + 336));
    }
  }

  else
  {
LABEL_19:
    result = _assertionFailure(_:_:file:line:flags:)();
    v27 = *MEMORY[0x1E69E9840];
  }

  return result;
}

{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 520);
  v10 = *v1;
  *(*v1 + 528) = v0;

  v4 = *(v2 + 496);
  v5 = *(v2 + 504);
  if (v0)
  {
    v6 = MeshResource.init(shape:);
  }

  else
  {
    v6 = MeshResource.init(shape:);
  }

  v7 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

{
  v14 = v0;
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 512);
  *(v0 + 600) = v1;
  v2 = *(v0 + 472);
  if (REPoseF.isIdentity.getter(*(v2 + 32), COERCE_FLOAT(*(v2 + 40)), *(v2 + 48)))
  {
    v3 = *(v0 + 488);
    v4 = *(v0 + 472);

    v5 = *(v0 + 8);
    v6 = *(v0 + 600);
    v7 = *MEMORY[0x1E69E9840];

    return v5(v6);
  }

  else
  {
    MeshResource.Contents.init(_:)(*(v1 + 16), v12);
    v12[3] = v12[0];
    v12[4] = v12[1];
    v12[5] = v12[2];
    MeshResource.Contents.offsetBy(pose:)(v0 + 288, *(v2 + 32), COERCE_FLOAT(*(v2 + 40)), *(v2 + 48));

    v9 = *(v0 + 304);
    *(v0 + 336) = *(v0 + 288);
    *(v0 + 352) = v9;
    *(v0 + 368) = *(v0 + 320);
    v10 = swift_task_alloc();
    *(v0 + 608) = v10;
    *v10 = v0;
    v10[1] = MeshResource.init(shape:);
    v11 = *MEMORY[0x1E69E9840];

    return MeshResource.replace(with:)((v0 + 336));
  }
}

{
  v14 = v0;
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 560);
  *(v0 + 600) = v1;
  v2 = *(v0 + 472);
  if (REPoseF.isIdentity.getter(*(v2 + 32), COERCE_FLOAT(*(v2 + 40)), *(v2 + 48)))
  {
    v3 = *(v0 + 488);
    v4 = *(v0 + 472);

    v5 = *(v0 + 8);
    v6 = *(v0 + 600);
    v7 = *MEMORY[0x1E69E9840];

    return v5(v6);
  }

  else
  {
    MeshResource.Contents.init(_:)(*(v1 + 16), v12);
    v12[3] = v12[0];
    v12[4] = v12[1];
    v12[5] = v12[2];
    MeshResource.Contents.offsetBy(pose:)(v0 + 288, *(v2 + 32), COERCE_FLOAT(*(v2 + 40)), *(v2 + 48));

    v9 = *(v0 + 304);
    *(v0 + 336) = *(v0 + 288);
    *(v0 + 352) = v9;
    *(v0 + 368) = *(v0 + 320);
    v10 = swift_task_alloc();
    *(v0 + 608) = v10;
    *v10 = v0;
    v10[1] = MeshResource.init(shape:);
    v11 = *MEMORY[0x1E69E9840];

    return MeshResource.replace(with:)((v0 + 336));
  }
}

{
  v14 = v0;
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 592);
  *(v0 + 600) = v1;
  v2 = *(v0 + 472);
  if (REPoseF.isIdentity.getter(*(v2 + 32), COERCE_FLOAT(*(v2 + 40)), *(v2 + 48)))
  {
    v3 = *(v0 + 488);
    v4 = *(v0 + 472);

    v5 = *(v0 + 8);
    v6 = *(v0 + 600);
    v7 = *MEMORY[0x1E69E9840];

    return v5(v6);
  }

  else
  {
    MeshResource.Contents.init(_:)(*(v1 + 16), v12);
    v12[3] = v12[0];
    v12[4] = v12[1];
    v12[5] = v12[2];
    MeshResource.Contents.offsetBy(pose:)(v0 + 288, *(v2 + 32), COERCE_FLOAT(*(v2 + 40)), *(v2 + 48));

    v9 = *(v0 + 304);
    *(v0 + 336) = *(v0 + 288);
    *(v0 + 352) = v9;
    *(v0 + 368) = *(v0 + 320);
    v10 = swift_task_alloc();
    *(v0 + 608) = v10;
    *v10 = v0;
    v10[1] = MeshResource.init(shape:);
    v11 = *MEMORY[0x1E69E9840];

    return MeshResource.replace(with:)((v0 + 336));
  }
}

{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 608);
  v3 = *v1;
  v3[77] = v0;

  if (v0)
  {
    v4 = v3[42];
    v5 = v3[43];
    v6 = v3[44];
    v7 = v3[45];
    v8 = v3[46];
    v9 = v3[47];

    v10 = v3[62];
    v11 = v3[63];
    v12 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE6DFA0](MeshResource.init(shape:), v10, v11);
  }

  else
  {
    v13 = v3[75];
    v14 = v3[42];
    v15 = v3[43];
    v16 = v3[44];
    v17 = v3[45];
    v18 = v3[46];
    v19 = v3[47];

    v3[57] = v13;
    v20 = swift_task_alloc();
    v3[78] = v20;
    *v20 = v3;
    v20[1] = MeshResource.init(shape:);
    v21 = *MEMORY[0x1E69E9840];
    v22 = v3[60];

    return RequestLoadable.awaitForResourceSharing()(v22, &protocol witness table for MeshResource);
  }
}

{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 624);
  v10 = *v1;
  *(*v1 + 632) = v0;

  v4 = *(v2 + 496);
  v5 = *(v2 + 504);
  if (v0)
  {
    v6 = MeshResource.init(shape:);
  }

  else
  {
    v6 = MeshResource.init(shape:);
  }

  v7 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

{
  v7 = *MEMORY[0x1E69E9840];
  v1 = v0[61];
  v2 = v0[59];

  v3 = v0[1];
  v4 = v0[75];
  v5 = *MEMORY[0x1E69E9840];

  return v3(v4);
}

{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 552);
  v2 = *MEMORY[0x1E69E9840];

  return swift_unexpectedError();
}

{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 584);
  v2 = *MEMORY[0x1E69E9840];

  return swift_unexpectedError();
}

{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 528);
  v2 = *MEMORY[0x1E69E9840];

  return swift_unexpectedError();
}

{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 616);
  v2 = *MEMORY[0x1E69E9840];

  return swift_unexpectedError();
}

{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 632);
  v2 = *MEMORY[0x1E69E9840];

  return swift_unexpectedError();
}

uint64_t _s17RealityFoundation22PrimitiveComponentTypePAAE13makeCoreAsset7options11splitMeshess13OpaquePointerV7OptionsQz_SbtFZAA15BoxMeshResourceC_Tt1g5(_OWORD *a1)
{
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, v10);
  v3 = *&v10[24];
  v4 = v11;
  __swift_project_boxed_opaque_existential_1(v10, *&v10[24]);
  (*(v4 + 32))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v10);
  v5 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v5 + 120, v10);
  v6 = *&v10[24];
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v10, *&v10[24]);
  (*(v7 + 32))(v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v10);
  *v10 = *a1;
  *&v10[12] = *(a1 + 12);
  REMeshAssetCreateBoxDescriptor();
  NewMutableWithAssetDescriptors = REAssetHandleCreateNewMutableWithAssetDescriptors();
  RERelease();
  return NewMutableWithAssetDescriptors;
}

uint64_t _s17RealityFoundation22PrimitiveComponentTypePAAE13makeCoreAsset7options11splitMeshess13OpaquePointerV7OptionsQz_SbtFZAA33BoxWithRoundedCornersMeshResourceC_Tt1g5(__int128 *a1)
{
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, &v11);
  v3 = *(&v12 + 1);
  v4 = v13;
  __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
  (*(v4 + 32))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(&v11);
  v5 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v5 + 120, &v11);
  v6 = *(&v12 + 1);
  v7 = v13;
  __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
  (*(v7 + 32))(v6, v7);
  __swift_destroy_boxed_opaque_existential_1(&v11);
  v8 = a1[1];
  v11 = *a1;
  v12 = v8;
  v13 = *(a1 + 4);
  REMeshAssetCreateBoxWithRoundedCornersDescriptor();
  NewMutableWithAssetDescriptors = REAssetHandleCreateNewMutableWithAssetDescriptors();
  RERelease();
  return NewMutableWithAssetDescriptors;
}

uint64_t _s17RealityFoundation22PrimitiveComponentTypePAAE13makeCoreAsset7options11splitMeshess13OpaquePointerV7OptionsQz_SbtFZAA17PlaneMeshResourceC_Tt1g5(_OWORD *a1)
{
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, v10);
  v3 = *&v10[24];
  v4 = v11;
  __swift_project_boxed_opaque_existential_1(v10, *&v10[24]);
  (*(v4 + 32))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v10);
  v5 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v5 + 120, v10);
  v6 = *&v10[24];
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v10, *&v10[24]);
  (*(v7 + 32))(v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v10);
  *v10 = *a1;
  *&v10[12] = *(a1 + 12);
  REMeshAssetCreatePlaneDescriptor();
  NewMutableWithAssetDescriptors = REAssetHandleCreateNewMutableWithAssetDescriptors();
  RERelease();
  return NewMutableWithAssetDescriptors;
}

uint64_t _s17RealityFoundation22PrimitiveComponentTypePAAE13makeCoreAsset7options11splitMeshess13OpaquePointerV7OptionsQz_SbtFZAA18SphereMeshResourceC_Tt1g5()
{
  v0 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v0 + 120, v8);
  v1 = v9;
  v2 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v2 + 32))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v8);
  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v3 + 120, v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v5 + 32))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v8);
  REMeshAssetCreateSphereDescriptor();
  NewMutableWithAssetDescriptors = REAssetHandleCreateNewMutableWithAssetDescriptors();
  RERelease();
  return NewMutableWithAssetDescriptors;
}

uint64_t _s17RealityFoundation22PrimitiveComponentTypePAAE13makeCoreAsset7options11splitMeshess13OpaquePointerV7OptionsQz_SbtFZAA19CapsuleMeshResourceC_Tt1g5(unint64_t a1, int a2, float a3, float a4)
{
  v7 = a1;
  v8 = a1 >> 16;
  v9 = HIDWORD(a1);
  v10 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v10 + 120, &v18);
  v11 = v23;
  v12 = v24;
  __swift_project_boxed_opaque_existential_1(&v18, v23);
  (*(v12 + 32))(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(&v18);
  v13 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v13 + 120, &v18);
  v14 = v23;
  v15 = v24;
  __swift_project_boxed_opaque_existential_1(&v18, v23);
  (*(v15 + 32))(v14, v15);
  __swift_destroy_boxed_opaque_existential_1(&v18);
  LOWORD(v18) = v7;
  WORD1(v18) = v8;
  WORD2(v18) = v9;
  v19 = a3;
  v20 = a4;
  v21 = a2 & 0x101;
  v22 = BYTE2(a2) & 1;
  REMeshAssetCreateCapsuleDescriptor();
  NewMutableWithAssetDescriptors = REAssetHandleCreateNewMutableWithAssetDescriptors();
  RERelease();
  return NewMutableWithAssetDescriptors;
}

uint64_t _s17RealityFoundation22PrimitiveComponentTypePAAE13makeCoreAsset7options11splitMeshess13OpaquePointerV7OptionsQz_SbtFZAA16ConeMeshResourceC_Tt1g5()
{
  v0 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v0 + 120, v8);
  v1 = v9;
  v2 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v2 + 32))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v8);
  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v3 + 120, v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v5 + 32))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v8);
  REMeshAssetCreateConeDescriptor();
  NewMutableWithAssetDescriptors = REAssetHandleCreateNewMutableWithAssetDescriptors();
  RERelease();
  return NewMutableWithAssetDescriptors;
}

uint64_t _s17RealityFoundation22PrimitiveComponentTypePAAE13makeCoreAsset7options11splitMeshess13OpaquePointerV7OptionsQz_SbtFZAA20CylinderMeshResourceC_Tt1g5(__int128 *a1)
{
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, &v10);
  v3 = v12;
  v4 = v13;
  __swift_project_boxed_opaque_existential_1(&v10, v12);
  (*(v4 + 32))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(&v10);
  v5 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v5 + 120, &v10);
  v6 = v12;
  v7 = v13;
  __swift_project_boxed_opaque_existential_1(&v10, v12);
  (*(v7 + 32))(v6, v7);
  __swift_destroy_boxed_opaque_existential_1(&v10);
  v10 = *a1;
  v11 = *(a1 + 2);
  REMeshAssetCreateCylinderDescriptor();
  NewMutableWithAssetDescriptors = REAssetHandleCreateNewMutableWithAssetDescriptors();
  RERelease();
  return NewMutableWithAssetDescriptors;
}

uint64_t _s17RealityFoundation22PrimitiveComponentTypePAAE13makeCoreAsset7options11splitMeshess13OpaquePointerV7OptionsQz_SbtFZ0A3Kit16TextMeshResourceC_Tt1g5(__int128 *a1)
{
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, &v15);
  v3 = *(&v16 + 1);
  v4 = v17;
  __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
  (*(v4 + 32))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(&v15);
  v5 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v5 + 120, &v15);
  v6 = *(&v16 + 1);
  v7 = v17;
  __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
  (*(v7 + 32))(v6, v7);
  __swift_destroy_boxed_opaque_existential_1(&v15);
  v8 = *(a1 + 5);
  v9 = *(a1 + 6);
  v10 = *(a1 + 7);
  v11 = *(a1 + 8);
  String.utf8CString.getter();
  String.utf8CString.getter();
  v12 = a1[1];
  v15 = *a1;
  v16 = v12;
  v17 = *(a1 + 4);
  REMeshAssetCreateExtrudedTextDescriptor();

  NewMutableWithAssetDescriptors = REAssetHandleCreateNewMutableWithAssetDescriptors();
  RERelease();
  return NewMutableWithAssetDescriptors;
}

uint64_t _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA15BoxMeshResourceC_Tt2g5(_OWORD *a1, char a2)
{
  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v4 + 120, v10);
  v5 = *&v10[24];
  v6 = v11;
  __swift_project_boxed_opaque_existential_1(v10, *&v10[24]);
  (*(v6 + 32))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v10);
  v7 = _s17RealityFoundation22PrimitiveComponentTypePAAE13makeCoreAsset7options11splitMeshess13OpaquePointerV7OptionsQz_SbtFZAA15BoxMeshResourceC_Tt1g5(a1);
  if (REAssetGetSwiftObject())
  {
    result = swift_unknownObjectRelease();
    __break(1u);
  }

  else
  {
    REAssetHandleLoadNow();
    REAssetSetNetworkSharingMode();
    type metadata accessor for BoxMeshResource();
    v8 = swift_allocObject();
    REGeomBuildBoxDefaultOptions();
    *(v8 + 24) = *v10;
    *(v8 + 36) = *&v10[12];
    *(v8 + 52) = 0;
    *(v8 + 16) = v7;
    RERetain();
    REAssetSetSwiftObject();
    *(v8 + 24) = *a1;
    *(v8 + 36) = *(a1 + 12);
    *(v8 + 52) = a2 & 1;
    RERelease();
    return v8;
  }

  return result;
}

uint64_t _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA33BoxWithRoundedCornersMeshResourceC_Tt2g5(uint64_t a1, char a2)
{
  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v4 + 120, &v12);
  v5 = *(&v13 + 1);
  v6 = v14;
  __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
  (*(v6 + 32))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(&v12);
  v7 = _s17RealityFoundation22PrimitiveComponentTypePAAE13makeCoreAsset7options11splitMeshess13OpaquePointerV7OptionsQz_SbtFZAA33BoxWithRoundedCornersMeshResourceC_Tt1g5(a1);
  if (REAssetGetSwiftObject())
  {
    result = swift_unknownObjectRelease();
    __break(1u);
  }

  else
  {
    REAssetHandleLoadNow();
    REAssetSetNetworkSharingMode();
    type metadata accessor for BoxWithRoundedCornersMeshResource();
    v8 = swift_allocObject();
    REGeomBuildBoxWithRoundedCornersDefaultOptions();
    v9 = v13;
    *(v8 + 24) = v12;
    *(v8 + 40) = v9;
    *(v8 + 56) = v14;
    *(v8 + 64) = 0;
    *(v8 + 16) = v7;
    RERetain();
    REAssetSetSwiftObject();
    v10 = *(a1 + 16);
    *(v8 + 24) = *a1;
    *(v8 + 40) = v10;
    *(v8 + 56) = *(a1 + 32);
    *(v8 + 64) = a2 & 1;
    RERelease();
    return v8;
  }

  return result;
}

uint64_t _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA17PlaneMeshResourceC_Tt2g5(_OWORD *a1, char a2)
{
  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v4 + 120, v10);
  v5 = v11;
  v6 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  (*(v6 + 32))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v10);
  v7 = _s17RealityFoundation22PrimitiveComponentTypePAAE13makeCoreAsset7options11splitMeshess13OpaquePointerV7OptionsQz_SbtFZAA17PlaneMeshResourceC_Tt1g5(a1);
  if (REAssetGetSwiftObject())
  {
    result = swift_unknownObjectRelease();
    __break(1u);
  }

  else
  {
    REAssetHandleLoadNow();
    REAssetSetNetworkSharingMode();
    type metadata accessor for PlaneMeshResource();
    v8 = swift_allocObject();
    *(v8 + 32) = 0;
    *(v8 + 40) = 0;
    *(v8 + 45) = 0;
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
    *(v8 + 24) = *a1;
    *(v8 + 36) = *(a1 + 12);
    *(v8 + 52) = a2 & 1;
    RERelease();
    return v8;
  }

  return result;
}

uint64_t _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA18SphereMeshResourceC_Tt2g5(__int16 a1, unsigned int a2, char a3, float a4)
{
  v8 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v8 + 120, v21);
  v9 = v22;
  v10 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(v10 + 32))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v21);
  v11 = _s17RealityFoundation22PrimitiveComponentTypePAAE13makeCoreAsset7options11splitMeshess13OpaquePointerV7OptionsQz_SbtFZAA18SphereMeshResourceC_Tt1g5();
  if (REAssetGetSwiftObject())
  {
    result = swift_unknownObjectRelease();
    __break(1u);
  }

  else
  {
    v12 = HIWORD(a2) & 1;
    v13 = (a2 >> 8) & 1;
    v14 = a2 & 1;
    REAssetHandleLoadNow();
    REAssetSetNetworkSharingMode();
    type metadata accessor for SphereMeshResource();
    v15 = swift_allocObject();
    v16 = REGeomBuildSphereDefaultOptions();
    *(v15 + 24) = v16;
    *(v15 + 28) = HIDWORD(v16);
    *(v15 + 32) = v17 & 1;
    *(v15 + 33) = v18 & 1;
    *(v15 + 34) = v19 & 1;
    *(v15 + 36) = 0;
    *(v15 + 16) = v11;
    RERetain();
    REAssetSetSwiftObject();
    *(v15 + 24) = a1;
    *(v15 + 28) = a4;
    *(v15 + 32) = v14;
    *(v15 + 33) = v13;
    *(v15 + 34) = v12;
    *(v15 + 36) = a3 & 1;
    RERelease();
    return v15;
  }

  return result;
}

uint64_t _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA19CapsuleMeshResourceC_Tt2g5(uint64_t a1, unsigned int a2, char a3, float a4, float a5)
{
  v10 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v10 + 120, v19);
  v11 = v20;
  v12 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  (*(v12 + 32))(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v19);
  if ((a2 >> 8))
  {
    v13 = 256;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13 & 0xFFFFFFFE | a2 & 1;
  if ((a2 & 0x10000) != 0)
  {
    v15 = 0x10000;
  }

  else
  {
    v15 = 0;
  }

  v16 = _s17RealityFoundation22PrimitiveComponentTypePAAE13makeCoreAsset7options11splitMeshess13OpaquePointerV7OptionsQz_SbtFZAA19CapsuleMeshResourceC_Tt1g5(a1 & 0xFFFFFFFFFFFFLL, v14 | v15, a4, a5);
  if (REAssetGetSwiftObject())
  {
    result = swift_unknownObjectRelease();
    __break(1u);
  }

  else
  {
    REAssetHandleLoadNow();
    REAssetSetNetworkSharingMode();
    type metadata accessor for CapsuleMeshResource();
    v17 = swift_allocObject();
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    *(v17 + 37) = 0;
    *(v17 + 16) = v16;
    RERetain();
    REAssetSetSwiftObject();
    *(v17 + 24) = a1;
    *(v17 + 32) = a4;
    *(v17 + 36) = a5;
    *(v17 + 40) = a2;
    *(v17 + 44) = a3 & 1;
    RERelease();
    return v17;
  }

  return result;
}

uint64_t _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA16ConeMeshResourceC_Tt2g5(int a1, int a2, char a3, float a4, float a5)
{
  v10 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v10 + 120, v16);
  v11 = v17;
  v12 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  (*(v12 + 32))(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v16);
  v13 = _s17RealityFoundation22PrimitiveComponentTypePAAE13makeCoreAsset7options11splitMeshess13OpaquePointerV7OptionsQz_SbtFZAA16ConeMeshResourceC_Tt1g5();
  if (REAssetGetSwiftObject())
  {
    result = swift_unknownObjectRelease();
    __break(1u);
  }

  else
  {
    REAssetHandleLoadNow();
    REAssetSetNetworkSharingMode();
    type metadata accessor for ConeMeshResource();
    v14 = swift_allocObject();
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 0;
    *(v14 + 16) = v13;
    RERetain();
    REAssetSetSwiftObject();
    *(v14 + 24) = a1;
    *(v14 + 28) = a4;
    *(v14 + 32) = a5;
    *(v14 + 36) = a2;
    *(v14 + 40) = a3 & 1;
    RERelease();
    return v14;
  }

  return result;
}

uint64_t _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA20CylinderMeshResourceC_Tt2g5(uint64_t a1, char a2)
{
  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v4 + 120, &v10);
  v5 = v12;
  v6 = v13;
  __swift_project_boxed_opaque_existential_1(&v10, v12);
  (*(v6 + 32))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(&v10);
  v7 = _s17RealityFoundation22PrimitiveComponentTypePAAE13makeCoreAsset7options11splitMeshess13OpaquePointerV7OptionsQz_SbtFZAA20CylinderMeshResourceC_Tt1g5(a1);
  if (REAssetGetSwiftObject())
  {
    result = swift_unknownObjectRelease();
    __break(1u);
  }

  else
  {
    REAssetHandleLoadNow();
    REAssetSetNetworkSharingMode();
    type metadata accessor for CylinderMeshResource();
    v8 = swift_allocObject();
    REGeomBuildCylinderDefaultOptions();
    *(v8 + 24) = v10;
    *(v8 + 40) = v11;
    *(v8 + 48) = 0;
    *(v8 + 16) = v7;
    RERetain();
    REAssetSetSwiftObject();
    *(v8 + 24) = *a1;
    *(v8 + 40) = *(a1 + 16);
    *(v8 + 48) = a2 & 1;
    RERelease();
    return v8;
  }

  return result;
}

uint64_t _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfC0A3Kit16TextMeshResourceC_Tt2g5(uint64_t a1, char a2)
{
  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v4 + 120, &v14);
  v5 = *(&v15 + 1);
  v6 = v16;
  __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
  (*(v6 + 32))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(&v14);
  v7 = _s17RealityFoundation22PrimitiveComponentTypePAAE13makeCoreAsset7options11splitMeshess13OpaquePointerV7OptionsQz_SbtFZ0A3Kit16TextMeshResourceC_Tt1g5(a1);
  if (REAssetGetSwiftObject())
  {
    result = swift_unknownObjectRelease();
    __break(1u);
  }

  else
  {
    REAssetHandleLoadNow();
    REAssetSetNetworkSharingMode();
    type metadata accessor for TextMeshResource();
    v8 = swift_allocObject();
    TextMeshResource.init(coreAsset:)(v7);
    v9 = *(v8 + 40);
    v10 = *(v8 + 72);
    v16 = *(v8 + 56);
    v17 = v10;
    v14 = *(v8 + 24);
    v15 = v9;
    v11 = *(a1 + 16);
    *(v8 + 24) = *a1;
    *(v8 + 40) = v11;
    v12 = *(a1 + 48);
    *(v8 + 56) = *(a1 + 32);
    v18 = *(v8 + 88);
    *(v8 + 72) = v12;
    *(v8 + 88) = *(a1 + 64);
    outlined destroy of TextMeshResource.Options(&v14);
    *(v8 + 96) = a2 & 1;
    RERelease();
    return v8;
  }

  return result;
}

void *PlaneMeshResource.__allocating_init(coreAsset:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[4] = 0;
  v2[5] = 0;
  *(v2 + 45) = 0;
  v2[2] = a1;
  v2[3] = 0;
  RERetain();
  REAssetSetSwiftObject();
  return v2;
}

void *PlaneMeshResource.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[4] = 0;
  v2[5] = 0;
  *(v2 + 45) = 0;
  v2[2] = a1;
  v2[3] = 0;
  if (a1)
  {
    RERetain();
    REAssetSetSwiftObject();
  }

  return v2;
}

uint64_t SphereMeshResource.__allocating_init(coreAsset:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = REGeomBuildSphereDefaultOptions();
  *(v2 + 24) = v3;
  *(v2 + 28) = HIDWORD(v3);
  *(v2 + 32) = v4 & 1;
  *(v2 + 33) = v5 & 1;
  *(v2 + 34) = v6 & 1;
  *(v2 + 36) = 0;
  *(v2 + 16) = a1;
  RERetain();
  REAssetSetSwiftObject();
  return v2;
}

uint64_t SphereMeshResource.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = REGeomBuildSphereDefaultOptions();
  *(v2 + 24) = v3;
  *(v2 + 28) = HIDWORD(v3);
  *(v2 + 32) = v4 & 1;
  *(v2 + 33) = v5 & 1;
  *(v2 + 34) = v6 & 1;
  *(v2 + 36) = 0;
  *(v2 + 16) = a1;
  if (a1)
  {
    RERetain();
    REAssetSetSwiftObject();
  }

  return v2;
}

void *CapsuleMeshResource.__allocating_init(coreAsset:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[3] = 0;
  v2[4] = 0;
  *(v2 + 37) = 0;
  v2[2] = a1;
  RERetain();
  REAssetSetSwiftObject();
  return v2;
}

void *CapsuleMeshResource.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[3] = 0;
  v2[4] = 0;
  *(v2 + 37) = 0;
  v2[2] = a1;
  if (a1)
  {
    RERetain();
    REAssetSetSwiftObject();
  }

  return v2;
}

uint64_t ConeMeshResource.__allocating_init(coreAsset:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 16) = a1;
  RERetain();
  REAssetSetSwiftObject();
  return v2;
}

uint64_t ConeMeshResource.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 16) = a1;
  if (a1)
  {
    RERetain();
    REAssetSetSwiftObject();
  }

  return v2;
}

uint64_t CylinderMeshResource.__allocating_init(coreAsset:)(uint64_t a1)
{
  v2 = swift_allocObject();
  REGeomBuildCylinderDefaultOptions();
  *(v2 + 24) = v4;
  *(v2 + 40) = v5;
  *(v2 + 48) = 0;
  *(v2 + 16) = a1;
  RERetain();
  REAssetSetSwiftObject();
  return v2;
}

uint64_t CylinderMeshResource.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  REGeomBuildCylinderDefaultOptions();
  *(v2 + 24) = v4;
  *(v2 + 40) = v5;
  *(v2 + 48) = 0;
  *(v2 + 16) = a1;
  if (a1)
  {
    RERetain();
    REAssetSetSwiftObject();
  }

  return v2;
}

uint64_t BoxMeshResource.__allocating_init(coreAsset:)(uint64_t a1)
{
  v2 = swift_allocObject();
  REGeomBuildBoxDefaultOptions();
  *(v2 + 24) = *v4;
  *(v2 + 36) = *&v4[12];
  *(v2 + 52) = 0;
  *(v2 + 16) = a1;
  RERetain();
  REAssetSetSwiftObject();
  return v2;
}

uint64_t BoxMeshResource.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  REGeomBuildBoxDefaultOptions();
  *(v2 + 24) = *v4;
  *(v2 + 36) = *&v4[12];
  *(v2 + 52) = 0;
  *(v2 + 16) = a1;
  if (a1)
  {
    RERetain();
    REAssetSetSwiftObject();
  }

  return v2;
}

uint64_t BoxWithRoundedCornersMeshResource.__allocating_init(coreAsset:)(uint64_t a1)
{
  v2 = swift_allocObject();
  REGeomBuildBoxWithRoundedCornersDefaultOptions();
  *(v2 + 24) = v4;
  *(v2 + 40) = v5;
  *(v2 + 56) = v6;
  *(v2 + 64) = 0;
  *(v2 + 16) = a1;
  RERetain();
  REAssetSetSwiftObject();
  return v2;
}

uint64_t BoxWithRoundedCornersMeshResource.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  REGeomBuildBoxWithRoundedCornersDefaultOptions();
  *(v2 + 24) = v4;
  *(v2 + 40) = v5;
  *(v2 + 56) = v6;
  *(v2 + 64) = 0;
  *(v2 + 16) = a1;
  if (a1)
  {
    RERetain();
    REAssetSetSwiftObject();
  }

  return v2;
}

uint64_t TextMeshResource.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  TextMeshResource.init(_:)(a1);
  return v2;
}

uint64_t TextMeshResource.init(_:)(uint64_t a1)
{
  REGeomBuildExtrudedTextDefaultOptions();
  *(v1 + 24) = v4;
  *(v1 + 40) = v5;
  *(v1 + 56) = v6;
  *(v1 + 64) = 0xD000000000000013;
  *(v1 + 72) = 0x80000001C18F10C0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 96) = 0;
  *(v1 + 16) = a1;
  if (a1)
  {
    RERetain();
    REAssetSetSwiftObject();
  }

  return v1;
}

uint64_t TextMeshResource.__allocating_init(coreAsset:)(uint64_t a1)
{
  v2 = swift_allocObject();
  TextMeshResource.init(coreAsset:)(a1);
  return v2;
}

uint64_t TextMeshResource.init(coreAsset:)(uint64_t a1)
{
  REGeomBuildExtrudedTextDefaultOptions();
  *(v1 + 24) = v4;
  *(v1 + 40) = v5;
  *(v1 + 56) = v6;
  *(v1 + 64) = 0xD000000000000013;
  *(v1 + 72) = 0x80000001C18F10C0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 96) = 0;
  *(v1 + 16) = a1;
  RERetain();
  REAssetSetSwiftObject();
  return v1;
}

CFStringRef static TextMeshResource.makeMeshResource(_:extrusionDepth:font:containerFrame:alignment:lineBreakMode:segmentDensity:)(uint64_t a1, uint64_t a2, const __CTFont *a3, char a4, unsigned __int8 a5, char a6, float a7, double a8, double a9, double a10, double a11)
{
  v22 = a5;
  REGeomBuildExtrudedTextDefaultOptions();
  v42 = v45;
  v43 = v46;
  v23 = v49;
  v40 = v54;
  v41 = v55;
  Size = CTFontGetSize(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1897FC0;
  v26 = a8;
  v27 = a9;
  *(inited + 32) = v26;
  *(inited + 36) = v27;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(inited);
  v29 = v28;
  swift_setDeallocating();
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_1C1897FC0;
  v31 = a10;
  v32 = a11;
  *(v30 + 32) = v31;
  *(v30 + 36) = v32;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(v30);
  v34 = v33;
  swift_setDeallocating();
  v44 = a6;
  if (v22 >= 6)
  {
    v35 = 4;
  }

  else
  {
    v35 = a5;
  }

  if ((a4 & 0xFC) != 0)
  {
    v36 = 4;
  }

  else
  {
    v36 = a4;
  }

  v45 = v42;
  v37 = Size;
  v46 = v43;
  v47 = v37;
  v48 = a7;
  v49 = v23;
  v50 = v29;
  v51 = v34;
  v52 = v35;
  v53 = v36;
  v54 = v40;
  v55 = v41;
  return specialized static TextMeshResource.makeMeshResource(_:font:options:)(a1, a2, a3, &v44);
}

uint64_t TextMeshResource.__ivar_destroyer()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 72);
  v4[2] = *(v0 + 56);
  v4[3] = v2;
  v5 = *(v0 + 88);
  v4[0] = *(v0 + 24);
  v4[1] = v1;
  return outlined destroy of TextMeshResource.Options(v4);
}

uint64_t TextMeshResource.deinit()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
    REAssetSetSwiftObject();
    RERelease();
  }

  v2 = *(v0 + 40);
  v3 = *(v0 + 72);
  v5[2] = *(v0 + 56);
  v5[3] = v3;
  v6 = *(v0 + 88);
  v5[0] = *(v0 + 24);
  v5[1] = v2;
  outlined destroy of TextMeshResource.Options(v5);
  return v0;
}

uint64_t TextMeshResource.__deallocating_deinit()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
    REAssetSetSwiftObject();
    RERelease();
  }

  v2 = *(v0 + 40);
  v3 = *(v0 + 72);
  v5[2] = *(v0 + 56);
  v5[3] = v3;
  v6 = *(v0 + 88);
  v5[0] = *(v0 + 24);
  v5[1] = v2;
  outlined destroy of TextMeshResource.Options(v5);
  return swift_deallocClassInstance();
}

uint64_t __MeshCompileOptions.deinit()
{
  v1 = *(v0 + 16);
  RERelease();
  return v0;
}

uint64_t __MeshCompileOptions.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t (*__MeshCompileOptions.generateVertexFaceAdjacencyAttributes.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = *(v1 + 16);
  *(a1 + 8) = REMeshCompileOptionsGetGenerateVertexFaceAdjacencyAttributes();
  return __MeshCompileOptions.generateVertexFaceAdjacencyAttributes.modify;
}

uint64_t (*__MeshCompileOptions.reorderVertexCaching.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = *(v1 + 16);
  *(a1 + 8) = REMeshCompileOptionsGetReorderVertexCaching();
  return __MeshCompileOptions.reorderVertexCaching.modify;
}

uint64_t (*__MeshCompileOptions.repairTangents.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = *(v1 + 16);
  *(a1 + 8) = REMeshCompileOptionsGetRepairTangents();
  return __MeshCompileOptions.repairTangents.modify;
}

uint64_t (*__MeshCompileOptions.mergeVerticesIfPolygonSoup.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = *(v1 + 16);
  *(a1 + 8) = REMeshCompileOptionsGetMergeVerticesIfPolygonSoup();
  return __MeshCompileOptions.mergeVerticesIfPolygonSoup.modify;
}

uint64_t (*__MeshCompileOptions.preserveSharpFeatures.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = *(v1 + 16);
  *(a1 + 8) = REMeshCompileOptionsGetPreserveSharpFeatures();
  return __MeshCompileOptions.preserveSharpFeatures.modify;
}

uint64_t (*__MeshCompileOptions.preserveSubdivisonSurfaceData.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = *(v1 + 16);
  *(a1 + 8) = REMeshCompileOptionsGetPreserveSubdivisonSurfaceData();
  return __MeshCompileOptions.preserveSubdivisonSurfaceData.modify;
}

uint64_t (*__MeshCompileOptions.generateDecimatedMesh.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = *(v1 + 16);
  *(a1 + 8) = REMeshCompileOptionsGetGenerateDecimatedMesh();
  return __MeshCompileOptions.generateDecimatedMesh.modify;
}

Swift::Int __MeshCompileOptions.AttributeCompressionType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t __MeshCompileOptions.subscript.getter@<X0>(uint64_t *a1@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 16);
  String.utf8CString.getter();
  LODWORD(v3) = REMeshCompileOptionsGetAttributeCompressionType();

  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 3;
  }

  *a1 = v5;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MeshCompileOptions.subscript.setter(void *a1)
{
  if (*a1 == 3)
  {
    v2 = *(v1 + 16);
    String.utf8CString.getter();

    REMeshCompileOptionsClearAttributeCompressionType();
  }

  else
  {
    v3 = HIDWORD(*a1);
    v4 = *(v1 + 16);
    String.utf8CString.getter();

    REMeshCompileOptionsSetAttributeCompressionType();
  }
}

void (*__MeshCompileOptions.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t **a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  *(v7 + 32) = 0;
  v9 = (v7 + 32);
  *(v7 + 36) = 0;
  v10 = (v7 + 36);
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = *(v3 + 16);
  String.utf8CString.getter();
  AttributeCompressionType = REMeshCompileOptionsGetAttributeCompressionType();

  if (AttributeCompressionType && (v12 = *v10, v12 <= 2))
  {
    v13 = v12 | (*v9 << 32);
  }

  else
  {
    v13 = 3;
  }

  *(v8 + 24) = v13;
  v14 = *MEMORY[0x1E69E9840];
  return __MeshCompileOptions.subscript.modify;
}

void __MeshCompileOptions.subscript.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = **a1;
  if (v2 == 3)
  {
    String.utf8CString.getter();
    REMeshCompileOptionsClearAttributeCompressionType();
  }

  else
  {
    String.utf8CString.getter();
    REMeshCompileOptionsSetAttributeCompressionType();
  }

  free(v1);
}

uint64_t static MeshResource.generateMesh(polygonCount:vertexCountPerPolygon:vertexIndicesPerPolygon:vertexPositions:vertexUVs:vertexNormals:vertexTangents:vertexBitangents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v8 = a5;
  }

  else
  {
    v8 = a4;
  }

  v9 = *(v8 + 16);
  if (v9 != *(a4 + 16))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  if (a6 && *(a6 + 16) != v9)
  {
    goto LABEL_20;
  }

  if (a7 && *(a7 + 16) != v9)
  {
    goto LABEL_21;
  }

  if (a8 && *(a8 + 16) != v9)
  {
    goto LABEL_22;
  }

  if (HIDWORD(v9))
  {
    goto LABEL_23;
  }

  if (REGeomMeshCreateFromCoreAttributes())
  {
    v10 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v10 + 120, v18);
    v11 = v19;
    v12 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v12 + 32))(v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v13 = REAssetManagerMeshMemoryAssetCreate();
    if (v13)
    {
      v14 = v13;
      if (REAssetGetSwiftObject())
      {
        type metadata accessor for MeshResource();
        v15 = swift_dynamicCastClass();
        if (v15)
        {
LABEL_18:
          RERelease();
          RERelease();
          v16 = *MEMORY[0x1E69E9840];
          return v15;
        }

        swift_unknownObjectRelease();
      }

      type metadata accessor for MeshResource();
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      RERetain();
      REAssetSetSwiftObject();
      goto LABEL_18;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t static MeshResource.generateMesh(vertexCountPerPolygon:vertexIndicesPerPolygon:vertexPositions:vertexUVs:vertexNormals:vertexTangents:vertexBitangents:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 16);
  if (HIDWORD(v7))
  {
    __break(1u);
    goto LABEL_22;
  }

  if (!a1)
  {
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
    __break(1u);
  }

  specialized _copyCollectionToContiguousArray<A>(_:)(v7 / a1, a1);
  if (a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = a3;
  }

  v14 = *(v13 + 16);
  if (v14 != *(a3 + 16))
  {
    goto LABEL_23;
  }

  if (a5 && *(a5 + 16) != v14)
  {
    goto LABEL_24;
  }

  if (a6 && *(a6 + 16) != v14)
  {
    goto LABEL_25;
  }

  if (a7 && *(a7 + 16) != v14)
  {
    goto LABEL_26;
  }

  if (HIDWORD(v14))
  {
    goto LABEL_27;
  }

  if (REGeomMeshCreateFromCoreAttributes())
  {
    v15 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v15 + 120, v23);
    v16 = v24;
    v17 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    (*(v17 + 32))(v16, v17);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v18 = REAssetManagerMeshMemoryAssetCreate();
    if (v18)
    {
      v19 = v18;
      if (REAssetGetSwiftObject())
      {
        type metadata accessor for MeshResource();
        v20 = swift_dynamicCastClass();
        if (v20)
        {
LABEL_20:
          RERelease();
          RERelease();

          v21 = *MEMORY[0x1E69E9840];
          return v20;
        }

        swift_unknownObjectRelease();
      }

      type metadata accessor for MeshResource();
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      RERetain();
      REAssetSetSwiftObject();
      goto LABEL_20;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t MeshResource.addToLoadRequest(_:)(uint64_t result)
{
  if (*(v1 + 16))
  {
    v2 = *(result + 16);
    return REAssetLoadRequestAddAsset();
  }

  return result;
}

uint64_t protocol witness for RequestLoadable.addToLoadRequest(_:) in conformance MeshResource(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = *(result + 16);
    return REAssetLoadRequestAddAsset();
  }

  return result;
}

uint64_t MeshResource.customMirror.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  v25 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C1897FD0;
  *(v11 + 32) = 0xD000000000000015;
  *(v11 + 40) = 0x80000001C18F10E0;
  v12 = *(v1 + 16);
  if (!v12)
  {
    goto LABEL_5;
  }

  MaxMaterialIndex = REMeshAssetGetMaxMaterialIndex();
  v14 = MaxMaterialIndex + 1;
  if (__OFADD__(MaxMaterialIndex, 1))
  {
    __break(1u);
LABEL_5:

    v14 = 0;
  }

  v15 = MEMORY[0x1E69E6530];
  *(v11 + 48) = v14;
  *(v11 + 72) = v15;
  *(v11 + 80) = 0x73746E65746E6F63;
  *(v11 + 88) = 0xE800000000000000;
  *(v11 + 120) = &type metadata for MeshResource.Contents;
  v16 = swift_allocObject();
  *(v11 + 96) = v16;
  MeshResource.Contents.init(_:)(v12, v16 + 16);
  *(v11 + 128) = 0x73646E756F62;
  *(v11 + 136) = 0xE600000000000000;
  if (v12)
  {
    REEntityComputeLocalBoundingBox();
    v23 = v17;
    v24 = v18;
  }

  else
  {
    v24 = xmmword_1C189A800;
    v23 = xmmword_1C189A7F0;
  }

  *(v11 + 168) = &type metadata for BoundingBox;
  v19 = swift_allocObject();
  *(v11 + 144) = v19;
  v20 = v24;
  *(v19 + 16) = v23;
  *(v19 + 32) = v20;
  v21 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  (*(v3 + 104))(v6, *MEMORY[0x1E69E75D8], v2);
  type metadata accessor for MeshResource();
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t specialized closure #4 in MeshBuffer.init<A>(_:)(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    return 0;
  }

  v3 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys08IndexingA0VySays5SIMD3VySfGGGGMd, &_ss12_IteratorBoxCys08IndexingA0VySays5SIMD3VySfGGGGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;

  return 1;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, __int16 a4, char a5, void *a6)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, a5, a6, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, a5, a6, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD2VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD2VySfGGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, a5, a6, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5UInt8VGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5UInt8VGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, a5, a6, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s6UInt16VGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s6UInt16VGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, a5, a6, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s6UInt32VGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s6UInt32VGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, a5, a6, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s4Int8VGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s4Int8VGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, a5, a6, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5Int16VGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5Int16VGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, a5, a6, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5Int32VGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5Int32VGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, a5, a6, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_SfGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_SfGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, a5, a6, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_SdGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_SdGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, a5, a6, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD4VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD4VySfGGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, a5, a6, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_AA0C14JointInfluenceVGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_AA0C14JointInfluenceVGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, a5, a6, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_AA18FloatVector3PackedVGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_AA18FloatVector3PackedVGMR);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, __int16 a4, char a5, void *a6, uint64_t *a7, uint64_t *a8)
{
  v43 = a7;
  v44 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v45[3] = v14;
  v45[4] = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
  v15 = swift_allocObject();
  v45[0] = v15;
  v16 = a1[5];
  v15[5] = a1[4];
  v15[6] = v16;
  v15[7] = a1[6];
  *(v15 + 121) = *(a1 + 105);
  v17 = a1[1];
  v15[1] = *a1;
  v15[2] = v17;
  v18 = a1[3];
  v15[3] = a1[2];
  v15[4] = v18;
  v19 = *a6;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4 & 0x101);
  v22 = v19[2];
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
    goto LABEL_14;
  }

  v25 = v20;
  v26 = v19[3];
  if (v26 >= v24 && (a5 & 1) != 0)
  {
LABEL_7:
    v27 = *a6;
    if (v25)
    {
LABEL_8:
      v28 = (v27[7] + 40 * v21);
      __swift_destroy_boxed_opaque_existential_1(v28);
      return outlined init with take of BindableDataInternal(v45, v28);
    }

    goto LABEL_11;
  }

  if (v26 >= v24 && (a5 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, a5 & 1);
  v30 = *a6;
  v31 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4 & 0x101);
  if ((v25 & 1) != (v32 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v21 = v31;
  v27 = *a6;
  if (v25)
  {
    goto LABEL_8;
  }

LABEL_11:
  v33 = __swift_mutable_project_boxed_opaque_existential_1(v45, v14);
  v34 = *(*(v14 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = (&v42 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v38 + 16))(v37, v35);
  v39 = v37[5];
  v46[4] = v37[4];
  v46[5] = v39;
  v47[0] = v37[6];
  *(v47 + 9) = *(v37 + 105);
  v40 = v37[1];
  v46[0] = *v37;
  v46[1] = v40;
  v41 = v37[3];
  v46[2] = v37[2];
  v46[3] = v41;
  specialized _NativeDictionary._insert(at:key:value:)(v21, a2, a3, a4 & 0x101, v46, v27, v43, v44);

  return __swift_destroy_boxed_opaque_existential_1(v45);
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, _OWORD *a5, void *a6, uint64_t *a7, uint64_t *a8)
{
  v23[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v23[4] = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
  v14 = swift_allocObject();
  v23[0] = v14;
  v15 = a5[5];
  v14[5] = a5[4];
  v14[6] = v15;
  v14[7] = a5[6];
  *(v14 + 121) = *(a5 + 105);
  v16 = a5[1];
  v14[1] = *a5;
  v14[2] = v16;
  v17 = a5[3];
  v14[3] = a5[2];
  v14[4] = v17;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v18 = a6[6] + 24 * a1;
  *v18 = a2;
  *(v18 + 8) = a3;
  *(v18 + 16) = a4 & 1;
  *(v18 + 17) = HIBYTE(a4) & 1;
  result = outlined init with take of BindableDataInternal(v23, a6[7] + 40 * a1);
  v20 = a6[2];
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v22;
  }

  return result;
}

CFStringRef specialized static TextMeshResource.makeMeshResource(_:font:options:)(uint64_t a1, uint64_t a2, CTFontRef font, uint64_t a4)
{
  result = CTFontCopyName(font, *MEMORY[0x1E69657D0]);
  if (result)
  {
    v8 = result;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    REGeomBuildExtrudedTextDefaultOptions();

    v12 = *(a4 + 16);
    v21[0] = *a4;
    v21[1] = v12;
    v22 = *(a4 + 32);
    v23 = v9;
    v24 = v11;
    v25 = a1;
    v26 = a2;
    outlined init with copy of TextMeshResource.Options(v21, v15);
    v13 = _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfC0A3Kit16TextMeshResourceC_Tt2g5(v21, 0);
    v14 = *(a4 + 16);
    v15[0] = *a4;
    v15[1] = v14;
    v16 = *(a4 + 32);
    v17 = v9;
    v18 = v11;
    v19 = a1;
    v20 = a2;
    outlined destroy of TextMeshResource.Options(v15);
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __MeshCompileOptions.AttributeCompressionType and conformance __MeshCompileOptions.AttributeCompressionType()
{
  result = lazy protocol witness table cache variable for type __MeshCompileOptions.AttributeCompressionType and conformance __MeshCompileOptions.AttributeCompressionType;
  if (!lazy protocol witness table cache variable for type __MeshCompileOptions.AttributeCompressionType and conformance __MeshCompileOptions.AttributeCompressionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __MeshCompileOptions.AttributeCompressionType and conformance __MeshCompileOptions.AttributeCompressionType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextMeshResource.Options(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for TextMeshResource.Options(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with copy of MeshBuffer<SIMD3<Float>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined consume of MeshResource.Model?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t CollisionComponent.init(shapes:mode:filter:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *a3;
  *(a4 + 12) = 0;
  if (one-time initialization token for default != -1)
  {
    v6 = result;
    v7 = a4;
    swift_once();
    result = v6;
    a4 = v7;
  }

  *a4 = result;
  *(a4 + 8) = v4;
  *(a4 + 16) = v5;
  return result;
}

uint64_t CollisionComponent.init(shapes:isStatic:filter:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  if (one-time initialization token for default != -1)
  {
    v5 = result;
    v6 = a2;
    v7 = a4;
    swift_once();
    a2 = v6;
    result = v5;
    a4 = v7;
  }

  *a4 = result;
  *(a4 + 8) = 0;
  *(a4 + 12) = a2 & 1;
  *(a4 + 16) = v4;
  return result;
}

Swift::Int CollisionComponent.Mode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t *CollisionComponent.InteractionType.setOptions(options:)(uint64_t *result)
{
  v2 = *result;
  v3 = *v1;
  if (*result)
  {
    if (v3)
    {
      goto LABEL_7;
    }

    v3 |= 1u;
  }

  else
  {
    if ((v3 & 1) == 0)
    {
      goto LABEL_7;
    }

    v3 &= ~1u;
  }

  *v1 = v3;
LABEL_7:
  if ((v2 & 2) != 0)
  {
    if ((v3 & 4) != 0)
    {
      return result;
    }

    v4 = v3 | 4;
  }

  else
  {
    if ((v3 & 4) == 0)
    {
      return result;
    }

    v4 = v3 & 0xFFFFFFFB;
  }

  *v1 = v4;
  return result;
}

uint64_t CollisionComponent.shapes.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

double CollisionComponent.filter.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

double CollisionComponent.filter.setter(double *a1)
{
  result = *a1;
  *(v1 + 16) = *a1;
  return result;
}

uint64_t CollisionComponent.init(shapes:interactionType:filter:)@<X0>(uint64_t result@<X0>, int *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *a3;
  if (one-time initialization token for default != -1)
  {
    v6 = result;
    v7 = a4;
    swift_once();
    result = v6;
    a4 = v7;
  }

  *a4 = result;
  *(a4 + 12) = v4;
  *(a4 + 8) = 0;
  *(a4 + 16) = v5;
  return result;
}

uint64_t CollisionComponent.init(_:)@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v37 = MEMORY[0x1E69E7CC0];
  Shape = REColliderComponentGetShape();
  if (!Shape)
  {
    goto LABEL_21;
  }

  v3 = Shape;
  if (RECollisionShapeAssetGetType() != 7)
  {
    v19 = REAssetGetSwiftObject();
    type metadata accessor for ShapeResource();
    if (v19)
    {
      v20 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      v20 = swift_allocObject();
      *(v20 + 16) = v3;
      REPoseIdentity();
      *(v20 + 32) = v21;
      *(v20 + 48) = v22;
      RERetain();
      REAssetSetSwiftObject();
    }

    REPoseIdentity();
    v23 = swift_allocObject();
    *(v23 + 16) = *(v20 + 16);
    v24 = *(v20 + 32);
    v25 = *(v20 + 48);
    REPoseMultiply();
    *(v23 + 32) = v26;
    *(v23 + 48) = v27;
    v28 = RERetain();
    MEMORY[0x1C68F3650](v28);
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }

  ChildCount = RECompoundShapeAssetGetChildCount();
  specialized Array.reserveCapacity(_:)();
  if (ChildCount < 0)
  {
    __break(1u);
LABEL_26:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_20:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    goto LABEL_21;
  }

  if (!ChildCount)
  {
LABEL_21:
    InteractionType = REColliderComponentGetInteractionType();
    if ((InteractionType & 2) != 0)
    {
      v30 = 1;
    }

    else
    {
      v30 = (InteractionType >> 2) & 2;
    }

    Group = REColliderComponentGetGroup();
    result = REColliderComponentGetMask();
    *a1 = v37;
    *(a1 + 8) = v30;
    *(a1 + 12) = InteractionType;
    *(a1 + 16) = Group;
    *(a1 + 20) = result;
    return result;
  }

  v5 = 0;
  while (1)
  {
    ChildShape = RECompoundShapeAssetGetChildShape();
    if (!ChildShape)
    {
      break;
    }

    v7 = ChildShape;
    v8 = REAssetGetSwiftObject();
    type metadata accessor for ShapeResource();
    if (v8)
    {
      v9 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      v9 = swift_allocObject();
      *(v9 + 16) = v7;
      REPoseIdentity();
      v11 = v10;
      HIDWORD(v11) = v33;
      *(v9 + 32) = v11;
      *(v9 + 48) = v12;
      RERetain();
      REAssetSetSwiftObject();
    }

    RECompoundShapeAssetGetChildPose();
    v13 = swift_allocObject();
    *(v13 + 16) = *(v9 + 16);
    v34 = *(v9 + 48);
    v35 = *(v9 + 32);

    REPoseMultiply();
    v15 = v14;
    HIDWORD(v15) = v36;
    *(v13 + 32) = v15;
    *(v13 + 48) = v16;
    RERetain();

    MEMORY[0x1C68F3650](v17);
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v18 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v5;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    if (ChildCount == v5)
    {
      goto LABEL_21;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t CollisionComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 12);
  v5 = *(v1 + 16);
  v7 = *(v1 + 20);
  v8 = *(specialized static ShapeResource.__makeShapeResource(_:)(v3) + 16);
  REColliderComponentSetShape();
  REColliderComponentSetGroup();
  REColliderComponentSetMask();
  REColliderComponentSetInteractionType();
  RENetworkMarkComponentDirty();
}

uint64_t CollisionComponent.isStatic.setter(uint64_t result)
{
  v2 = *(v1 + 12);
  if (result)
  {
    if (v2)
    {
      return result;
    }

    v3 = v2 | 1;
  }

  else
  {
    if ((v2 & 1) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFFE;
  }

  *(v1 + 12) = v3;
  return result;
}

uint64_t (*CollisionComponent.isStatic.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 12);
  *(a1 + 8) = v2;
  *(a1 + 12) = v2 & 1;
  return CollisionComponent.isStatic.modify;
}

uint64_t CollisionComponent.isStatic.modify(uint64_t result)
{
  v1 = *(result + 8);
  if (*(result + 12))
  {
    if ((v1 & 1) == 0)
    {
      v2 = v1 | 1;
LABEL_7:
      *(*result + 12) = v2;
    }
  }

  else if (v1)
  {
    v2 = v1 & 0xFFFFFFFE;
    goto LABEL_7;
  }

  return result;
}

uint64_t *CollisionComponent.init(shapes:mode:collisionOptions:filter:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *a4;
  *(a5 + 12) = 0;
  if (one-time initialization token for default != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  *(a5 + 16) = static CollisionFilter.default;
  *a5 = a1;
  *(a5 + 8) = v6;
  v11 = v7;
  result = CollisionComponent.InteractionType.setOptions(options:)(&v11);
  *(a5 + 16) = v8;
  return result;
}

uint64_t *CollisionComponent.collisionOptions.setter(uint64_t *result)
{
  v2 = *result;
  v3 = *(v1 + 12);
  if (*result)
  {
    if (v3)
    {
      goto LABEL_7;
    }

    v3 |= 1u;
  }

  else
  {
    if ((v3 & 1) == 0)
    {
      goto LABEL_7;
    }

    v3 &= ~1u;
  }

  *(v1 + 12) = v3;
LABEL_7:
  if ((v2 & 2) != 0)
  {
    if ((v3 & 4) != 0)
    {
      return result;
    }

    v4 = v3 | 4;
  }

  else
  {
    if ((v3 & 4) == 0)
    {
      return result;
    }

    v4 = v3 & 0xFFFFFFFB;
  }

  *(v1 + 12) = v4;
  return result;
}

uint64_t *(*CollisionComponent.collisionOptions.modify(void *a1))(uint64_t *a1)
{
  *a1 = *(v1 + 12) & 1 | (2 * ((*(v1 + 12) >> 2) & 1u));
  a1[1] = v1;
  return CollisionComponent.collisionOptions.modify;
}

uint64_t *CollisionComponent.collisionOptions.modify(uint64_t *a1)
{
  v1 = a1[1];
  v3 = *a1;
  return CollisionComponent.InteractionType.setOptions(options:)(&v3);
}

uint64_t CollisionComponent.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v20 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - v8;
  v10 = *v1;
  v11 = *(v1 + 8);
  v12 = *(v1 + 3);
  v13 = *(v1 + 4);
  v14 = *(v1 + 5);
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C1897F90;
  *(v15 + 32) = 0x736570616873;
  *(v15 + 40) = 0xE600000000000000;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit13ShapeResourceCGMd, &_sSay10RealityKit13ShapeResourceCGMR);
  *(v15 + 48) = v10;
  *(v15 + 72) = v16;
  *(v15 + 80) = 1701080941;
  *(v15 + 88) = 0xE400000000000000;
  *(v15 + 96) = v11;
  *(v15 + 120) = &type metadata for CollisionComponent.Mode;
  *(v15 + 128) = 0x7265746C6966;
  *(v15 + 136) = 0xE600000000000000;
  *(v15 + 144) = v13;
  *(v15 + 148) = v14;
  *(v15 + 168) = &type metadata for CollisionFilter;
  *(v15 + 176) = 0xD000000000000010;
  *(v15 + 184) = 0x80000001C18F0C00;
  *(v15 + 192) = v12 & 1 | (2 * ((v12 >> 2) & 1));
  *(v15 + 216) = &type metadata for CollisionComponent.CollisionOptions;
  *(v15 + 224) = 0x6369746174537369;
  *(v15 + 232) = 0xE800000000000000;
  *(v15 + 264) = MEMORY[0x1E69E6370];
  *(v15 + 240) = v12 & 1;
  v17 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E75D8], v20);
  swift_bridgeObjectRetain_n();
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

BOOL specialized static CollisionComponent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *(a2 + 8);
  v7 = *(a2 + 12);
  v8 = *(a2 + 16);
  v9 = *(a2 + 20);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10RealityKit13ShapeResourceC_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v11 = v4 == v8 && v5 == v9;
  return v2 == v6 && v3 == v7 && v11;
}

unint64_t lazy protocol witness table accessor for type CollisionComponent.Mode and conformance CollisionComponent.Mode()
{
  result = lazy protocol witness table cache variable for type CollisionComponent.Mode and conformance CollisionComponent.Mode;
  if (!lazy protocol witness table cache variable for type CollisionComponent.Mode and conformance CollisionComponent.Mode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionComponent.Mode and conformance CollisionComponent.Mode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CollisionComponent.InteractionType and conformance CollisionComponent.InteractionType()
{
  result = lazy protocol witness table cache variable for type CollisionComponent.InteractionType and conformance CollisionComponent.InteractionType;
  if (!lazy protocol witness table cache variable for type CollisionComponent.InteractionType and conformance CollisionComponent.InteractionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionComponent.InteractionType and conformance CollisionComponent.InteractionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollisionComponent.InteractionType and conformance CollisionComponent.InteractionType;
  if (!lazy protocol witness table cache variable for type CollisionComponent.InteractionType and conformance CollisionComponent.InteractionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionComponent.InteractionType and conformance CollisionComponent.InteractionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollisionComponent.InteractionType and conformance CollisionComponent.InteractionType;
  if (!lazy protocol witness table cache variable for type CollisionComponent.InteractionType and conformance CollisionComponent.InteractionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionComponent.InteractionType and conformance CollisionComponent.InteractionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollisionComponent.InteractionType and conformance CollisionComponent.InteractionType;
  if (!lazy protocol witness table cache variable for type CollisionComponent.InteractionType and conformance CollisionComponent.InteractionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionComponent.InteractionType and conformance CollisionComponent.InteractionType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CollisionComponent.CollisionOptions and conformance CollisionComponent.CollisionOptions()
{
  result = lazy protocol witness table cache variable for type CollisionComponent.CollisionOptions and conformance CollisionComponent.CollisionOptions;
  if (!lazy protocol witness table cache variable for type CollisionComponent.CollisionOptions and conformance CollisionComponent.CollisionOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionComponent.CollisionOptions and conformance CollisionComponent.CollisionOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollisionComponent.CollisionOptions and conformance CollisionComponent.CollisionOptions;
  if (!lazy protocol witness table cache variable for type CollisionComponent.CollisionOptions and conformance CollisionComponent.CollisionOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionComponent.CollisionOptions and conformance CollisionComponent.CollisionOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollisionComponent.CollisionOptions and conformance CollisionComponent.CollisionOptions;
  if (!lazy protocol witness table cache variable for type CollisionComponent.CollisionOptions and conformance CollisionComponent.CollisionOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionComponent.CollisionOptions and conformance CollisionComponent.CollisionOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollisionComponent.CollisionOptions and conformance CollisionComponent.CollisionOptions;
  if (!lazy protocol witness table cache variable for type CollisionComponent.CollisionOptions and conformance CollisionComponent.CollisionOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionComponent.CollisionOptions and conformance CollisionComponent.CollisionOptions);
  }

  return result;
}

uint64_t one-time initialization function for resourceCoreLogger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, resourceCoreLogger);
  __swift_project_value_buffer(v0, resourceCoreLogger);
  return Logger.init(subsystem:category:)();
}