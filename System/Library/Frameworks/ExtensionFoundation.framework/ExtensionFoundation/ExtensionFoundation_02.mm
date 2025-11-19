id RBSLaunchContext.hostHandle.getter()
{
  v2 = [v0 identity];
  if (!v2 || (v3 = v2, v4 = [v2 hostIdentifier], v3, !v4))
  {
    [objc_opt_self() _EX_parameterError];
    swift_willThrow();
    return v0;
  }

  v5 = [v0 requestorHandle];
  if (!v5)
  {
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSProcessHandle, 0x1E69C75D0);
    v8 = v4;
    v0 = specialized @nonobjc RBSProcessHandle.__allocating_init(for:)(v8);

    if (!v1)
    {
      if (v0)
      {
        v0 = v0;
        v5 = 0;
        goto LABEL_5;
      }

      [objc_opt_self() _EX_parameterError];
      swift_willThrow();
    }

    return v0;
  }

  v0 = v5;
LABEL_5:
  v6 = v5;

  return v0;
}

id specialized @nonobjc RBSProcessHandle.__allocating_init(for:)(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForIdentifier:a1 error:v6];
  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v4 = *MEMORY[0x1E69E9840];
  return v1;
}

{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForPredicate:a1 error:v6];
  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v4 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t outlined init with copy of _EXExtensionProcessIdentity.JobConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of _EXExtensionProcessIdentity.JobDescriptor(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1847FA698(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id specialized RBSProcessIdentity.Attachment.makeAppExtensionRecord(userID:)()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = objc_allocWithZone(MEMORY[0x1E69635D0]);

  v5 = @nonobjc LSApplicationExtensionRecord.init(bundleIdentifier:)(v2, v3);
  v6 = v5;
  if (v1)
  {
  }

  else if (v5)
  {
    return v6;
  }

  v7 = objc_opt_self();
  v8 = [v7 _EX_parameterError];
  swift_willThrow();
  _StringGuts.grow(_:)(39);

  MEMORY[0x1865F37A0](v2, v3);
  MEMORY[0x1865F37A0](0xD00000000000001ALL, 0x80000001848C4870);
  v9 = MEMORY[0x1865F36D0](0x6F69736E65747845, 0xEB0000000060206ELL);

  [v7 _EX_errorWithCode_description_];

  swift_willThrow();
  return v6;
}

id @nonobjc LSApplicationExtensionRecord.init(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = @nonobjc LSApplicationExtensionRecord.init(bundleIdentifier:)(a1, a2, &selRef_initWithBundleIdentifier_error_);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id @nonobjc LSApplicationExtensionRecord.init(bundleIdentifier:)(uint64_t a1, uint64_t a2, SEL *a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1865F36D0]();

  v11[0] = 0;
  v6 = [v3 *a3];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

id RBSProcessIdentity.makeProcessIdentityWith(_:validationToken:hostIdentifier:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v57 = a3;
  v54 = a2;
  v7 = type metadata accessor for UUID();
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = *(v58 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v50 - v12;
  v14 = type metadata accessor for URL();
  v55 = *(v14 - 8);
  v15 = *(v55 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v50 - v19;
  v21 = [a1 bundleIdentifier];
  if (!v21)
  {
    v36 = objc_opt_self();
    v37 = MEMORY[0x1865F36D0](0xD000000000000036, 0x80000001848C47B0);
    v38 = [v36 _EX_errorWithCode_description_];
LABEL_10:
    v38;

LABEL_20:
    swift_willThrow();
    return v37;
  }

  v22 = v21;
  v52 = a4;
  v53 = v4;
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v23;
  v24 = [a1 extensionPointRecord];
  v25 = [v24 extensionPointType];

  if (v25 != 2)
  {
    v39 = v62;
    v40 = [v62 persona];
    v41 = [v39 uuid];
    if (v41)
    {
      v42 = v41;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v43.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v58 + 8))(v11, v59);
    }

    else
    {
      v43.super.isa = 0;
    }

    v45 = v52;
    if (v57 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
    }

    v37 = [objc_opt_self() extensionIdentityForBundleIdentifier:v22 persona:v40 instanceUUID:v43.super.isa hostIdentifier:v45 validationToken:isa];

    if (!v37)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v26 = [a1 containingBundleRecord];
  if (!v26)
  {

    v44 = objc_opt_self();
    v37 = MEMORY[0x1865F36D0](0xD000000000000038, 0x80000001848C4830);
    v38 = [v44 _EX_errorWithCode_description_];
    goto LABEL_10;
  }

  v27 = v26;
  v28 = [v26 URL];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v55;
  (*(v55 + 32))(v20, v18, v14);
  URL._bridgeToObjectiveC()(v30);
  v32 = v31;
  v33 = [v62 uuid];
  if (v33)
  {
    v34 = v33;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v35.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v58 + 8))(v13, v59);
  }

  else
  {
    v35.super.isa = 0;
  }

  v37 = [objc_opt_self() extensionIdentityForPlugInKitIdentifier:v22 bundledURL:v32 hostIdentifier:v52 UUID:v35.super.isa];

  (*(v29 + 8))(v20, v14);
  if (!v37)
  {
LABEL_19:
    v47 = objc_opt_self();
    v60 = 0;
    v61 = 0xE000000000000000;
    _StringGuts.grow(_:)(58);
    MEMORY[0x1865F37A0](0xD000000000000038, 0x80000001848C47F0);
    MEMORY[0x1865F37A0](v51, v56);

    v37 = v61;
    v48 = MEMORY[0x1865F36D0](v60, v61);

    [v47 _EX_errorWithCode_description_];

    goto LABEL_20;
  }

LABEL_16:

  return v37;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = __CocoaSet.count.getter();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
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
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

id specialized _EXExtensionProcessHandle.__allocating_init(launchConfiguration:response:)(char *a1, id a2)
{
  v156 = *MEMORY[0x1E69E9840];
  v5 = [a2 process];
  if (!v5)
  {
    v18 = [a2 error];
    if (v18)
    {
      v2 = v18;
      v19 = _convertErrorToNSError(_:)();
    }

    else
    {
      v19 = 0;
    }

    [objc_opt_self() _EX_errorWithCode_underlyingError_];

    swift_willThrow();
    goto LABEL_49;
  }

  v138 = v5;
  v139 = [a2 assertion];
  v6 = *&a1[OBJC_IVAR____EXLaunchConfiguration__extensionIdentity];
  v7 = [a2 managedEndpointByLaunchIdentifier];
  v8 = &unk_1E6E4E000;
  if (!v7)
  {
    v141 = 0;
    goto LABEL_14;
  }

  v9 = v7;
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSMachEndpoint, 0x1E69C75A8);
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = [v6 serviceName];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (!*(v10 + 16))
  {

    goto LABEL_12;
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_12:

    v141 = 0;
    goto LABEL_13;
  }

  v141 = *(*(v10 + 56) + 8 * v15);

LABEL_13:
  v8 = &unk_1E6E4E000;
LABEL_14:
  v20 = [a2 managedEndpointByLaunchIdentifier];
  if (!v20)
  {
    v142 = 0;
    goto LABEL_23;
  }

  v21 = v20;
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSMachEndpoint, 0x1E69C75A8);
  v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of _InnerAppExtensionIdentity?(v6 + v23, &v154);
  if (!v155)
  {
    __break(1u);
    goto LABEL_51;
  }

  outlined init with take of _InnerAppExtensionIdentity(&v154, &aBlock);
  v25 = v151;
  v26 = v152;
  __swift_project_boxed_opaque_existential_1(&aBlock, v151);
  v27 = (*(v26 + 69))(v25, v26);
  v29 = v28;
  __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
  if (!*(v22 + 16))
  {

    goto LABEL_21;
  }

  v30 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v29);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
LABEL_21:

    v142 = 0;
    goto LABEL_22;
  }

  v142 = *(*(v22 + 56) + 8 * v30);

LABEL_22:
  v8 = &unk_1E6E4E000;
LABEL_23:
  if ([v6 requiresLibXPCConnection])
  {
    if (v141)
    {
      v33 = [v141 endpoint];
      if (v33)
      {
        v34 = v33;
        v137 = a1;
        v132 = a2;
        v133 = v6;
        v35 = [v6 v8[476]];
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        v39 = type metadata accessor for EXConnectionEndpoint();
        v40 = objc_allocWithZone(v39);
        v131 = 0;
        v135 = 0;
        v41 = OBJC_IVAR___EXConnectionEndpoint_xpcEndpoint;
        *&v40[OBJC_IVAR___EXConnectionEndpoint_xpcEndpoint] = 0;
        v42 = &v40[OBJC_IVAR___EXConnectionEndpoint_identifier];
        *v42 = v36;
        v42[1] = v38;
        *&v40[OBJC_IVAR___EXConnectionEndpoint_bsServiceConnectionEndpoint] = 0;
        *&v40[v41] = v34;
        v143 = v40;
        v43 = &v143;
LABEL_41:
        v43->super_class = v39;
        v99 = [(objc_super *)v43 init];
        v100 = type metadata accessor for _EXExtensionProcessHandle();
        v101 = objc_allocWithZone(v100);
        v102 = OBJC_IVAR____EXExtensionProcessHandle_xpcConnectionLock;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
        v103 = swift_allocObject();
        *(v103 + 16) = 0;
        *&v101[v102] = v103;
        v104 = OBJC_IVAR____EXExtensionProcessHandle_xpcConnections;
        v105 = objc_opt_self();
        v106 = v99;
        *&v101[v104] = [v105 weakObjectsHashTable];
        v107 = OBJC_IVAR____EXExtensionProcessHandle_observersLock;
        v108 = swift_allocObject();
        *(v108 + 16) = 0;
        *&v101[v107] = v108;
        v109 = OBJC_IVAR____EXExtensionProcessHandle_observers;
        *&v101[v109] = [objc_opt_self() weakObjectsHashTable];
        v101[OBJC_IVAR____EXExtensionProcessHandle_invalidationLock_invalidated] = 0;
        v110 = OBJC_IVAR____EXExtensionProcessHandle_invalidationLock;
        v111 = swift_allocObject();
        *(v111 + 16) = 0;
        *&v101[v110] = v111;
        *&v101[OBJC_IVAR____EXExtensionProcessHandle_sandboxExtensions] = MEMORY[0x1E69E7CC0];
        swift_unknownObjectWeakInit();
        v112 = OBJC_IVAR____EXExtensionProcessHandle_launchAssertion;
        *&v101[OBJC_IVAR____EXExtensionProcessHandle_launchAssertion] = 0;
        *&v101[OBJC_IVAR____EXExtensionProcessHandle_assertionAquireCount] = 0;
        *&v101[OBJC_IVAR____EXExtensionProcessHandle_assertion] = 0;
        *&v101[OBJC_IVAR____EXExtensionProcessHandle_launchConfiguration] = v137;
        *&v101[OBJC_IVAR____EXExtensionProcessHandle_innerProcessHandle] = v138;
        *&v101[OBJC_IVAR____EXExtensionProcessHandle_mainEndpoint] = v135;
        *&v101[OBJC_IVAR____EXExtensionProcessHandle_sessionEndpoint] = v131;
        *&v101[OBJC_IVAR____EXExtensionProcessHandle_libXPCEndpoint] = v99;
        *&v101[v112] = v139;
        v146.receiver = v101;
        v146.super_class = v100;
        v113 = v106;
        v114 = v137;
        v115 = v138;
        v116 = v135;
        v117 = v131;
        v140 = v139;
        v2 = objc_msgSendSuper2(&v146, sel_init);
        v118 = [v115 hostProcess];
        if (v118)
        {
          v119 = v118;
          v120 = v117;
          v121 = [v118 pid];
        }

        else
        {
          v120 = v117;
          v121 = -1;
        }

        if (v121 == getpid())
        {
          v128 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v152 = partial apply for closure #1 in _EXExtensionProcessHandle.init(coder:);
          v153 = v128;
          aBlock = MEMORY[0x1E69E9820];
          v149 = 1107296256;
          v150 = thunk for @escaping @callee_guaranteed (@guaranteed RBSProcessHandle, @guaranteed RBSProcessExitContext) -> ();
          v151 = &block_descriptor_48;
          v129 = _Block_copy(&aBlock);

          [v115 monitorForDeath_];

          _Block_release(v129);
        }

        else
        {
        }

        goto LABEL_49;
      }
    }

    v61 = objc_opt_self();
    aBlock = 0;
    v149 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    aBlock = 0xD00000000000001FLL;
    v149 = 0x80000001848C56C0;
    v62 = [v138 description];
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    MEMORY[0x1865F37A0](v63, v65);

    v2 = v149;
    v66 = MEMORY[0x1865F36D0](aBlock, v149);

    [v61 _EX_errorWithCode_description_];

    swift_willThrow();
    v67 = v142;
LABEL_44:

LABEL_49:
    v130 = *MEMORY[0x1E69E9840];
    return v2;
  }

  v44 = [v6 v8[476]];
  v45 = a2;
  v46 = MEMORY[0x1865F36D0](0x767265536E69614DLL, 0xEB00000000656369);
  v47 = objc_opt_self();
  aBlock = 0;
  v134 = v47;
  v48 = v8;
  v49 = [v47 endpointOfLaunchIdentifier:v44 fromLaunchResponse:v45 withService:v46 instance:0 error:&aBlock];

  v50 = aBlock;
  v136 = v45;
  v137 = a1;
  if (v49)
  {

    v51 = [v6 v48 + 760];
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    v55 = type metadata accessor for EXConnectionEndpoint();
    v56 = objc_allocWithZone(v55);
    v57 = OBJC_IVAR___EXConnectionEndpoint_xpcEndpoint;
    *&v56[OBJC_IVAR___EXConnectionEndpoint_xpcEndpoint] = 0;
    v58 = &v56[OBJC_IVAR___EXConnectionEndpoint_identifier];
    *v58 = v52;
    v58[1] = v54;
    *&v56[OBJC_IVAR___EXConnectionEndpoint_bsServiceConnectionEndpoint] = v49;
    *&v56[v57] = 0;
    v144.receiver = v56;
    v144.super_class = v55;
    v59 = objc_msgSendSuper2(&v144, sel_init);
  }

  else
  {
    v68 = v50;
    v69 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v59 = 0;
  }

  v60 = v142;
  if ([v6 presentsUserInterface])
  {
    v70 = [v6 serviceName];
    v71 = v136;
    v72 = MEMORY[0x1865F36D0](0x6C616E7265746E49, 0xEF65636976726553);
    aBlock = 0;
    v73 = [v134 endpointOfLaunchIdentifier:v70 fromLaunchResponse:v71 withService:v72 instance:0 error:&aBlock];

    v74 = aBlock;
    if (v73)
    {

      v75 = [v6 serviceName];
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;

      aBlock = v76;
      v149 = v78;
      MEMORY[0x1865F37A0](0x616E7265746E692ELL, 0xE90000000000006CLL);
      v79 = aBlock;
      v80 = v149;
      v81 = type metadata accessor for EXConnectionEndpoint();
      v82 = objc_allocWithZone(v81);
      v83 = OBJC_IVAR___EXConnectionEndpoint_xpcEndpoint;
      *&v82[OBJC_IVAR___EXConnectionEndpoint_xpcEndpoint] = 0;
      v84 = &v82[OBJC_IVAR___EXConnectionEndpoint_identifier];
      *v84 = v79;
      *(v84 + 1) = v80;
      *&v82[OBJC_IVAR___EXConnectionEndpoint_bsServiceConnectionEndpoint] = v73;
      *&v82[v83] = 0;
      v145.receiver = v82;
      v145.super_class = v81;
      v85 = objc_msgSendSuper2(&v145, sel_init);
      v60 = v142;
      if (!v142)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v86 = v74;
      v87 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v85 = 0;
      v60 = v142;
      if (!v142)
      {
LABEL_43:
        v122 = objc_opt_self();
        aBlock = 0;
        v149 = 0xE000000000000000;
        _StringGuts.grow(_:)(33);

        aBlock = 0xD00000000000001FLL;
        v149 = 0x80000001848C56C0;
        v123 = [v138 description];
        v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v126 = v125;

        MEMORY[0x1865F37A0](v124, v126);

        v2 = v149;
        v127 = MEMORY[0x1865F36D0](aBlock, v149);

        [v122 _EX_errorWithCode_description_];

        swift_willThrow();
        v67 = v141;
        goto LABEL_44;
      }
    }
  }

  else
  {
    v85 = 0;
    if (!v142)
    {
      goto LABEL_43;
    }
  }

  v88 = [v60 endpoint];
  if (!v88)
  {
    goto LABEL_43;
  }

  v89 = v88;
  v135 = v59;
  v90 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of _InnerAppExtensionIdentity?(v6 + v90, &v154);
  if (v155)
  {
    v132 = a2;
    v133 = v6;
    outlined init with take of _InnerAppExtensionIdentity(&v154, &aBlock);
    v91 = v151;
    v92 = v152;
    __swift_project_boxed_opaque_existential_1(&aBlock, v151);
    v93 = (*(v92 + 69))(v91, v92);
    v95 = v94;
    __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
    v39 = type metadata accessor for EXConnectionEndpoint();
    v96 = objc_allocWithZone(v39);
    v97 = OBJC_IVAR___EXConnectionEndpoint_xpcEndpoint;
    *&v96[OBJC_IVAR___EXConnectionEndpoint_xpcEndpoint] = 0;
    v98 = &v96[OBJC_IVAR___EXConnectionEndpoint_identifier];
    *v98 = v93;
    v98[1] = v95;
    *&v96[OBJC_IVAR___EXConnectionEndpoint_bsServiceConnectionEndpoint] = 0;
    *&v96[v97] = v89;
    v147.receiver = v96;
    v43 = &v147;
    v131 = v85;
    goto LABEL_41;
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      outlined init with copy of Any(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      outlined init with copy of Any(i, v9);
      type metadata accessor for _EXSceneRole(0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy19ExtensionFoundation03AppD8IdentityVGMd, &_ss23_ContiguousArrayStorageCy19ExtensionFoundation03AppD8IdentityVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy19ExtensionFoundation04_AppD8IdentityVGMd, &_ss23_ContiguousArrayStorageCy19ExtensionFoundation04_AppD8IdentityVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [RBSDomainAttribute] and conformance [A](&lazy protocol witness table cache variable for type [RBSDomainAttribute] and conformance [A], &_sSaySo18RBSDomainAttributeCGMd, &_sSaySo18RBSDomainAttributeCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18RBSDomainAttributeCGMd, &_sSaySo18RBSDomainAttributeCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSDomainAttribute, 0x1E69C7560);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [RBSDomainAttribute] and conformance [A](&lazy protocol witness table cache variable for type [RBSAttribute] and conformance [A], &_sSaySo12RBSAttributeCGMd, &_sSaySo12RBSAttributeCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12RBSAttributeCGMd, &_sSaySo12RBSAttributeCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSAttribute, 0x1E69C7550);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [RBSDomainAttribute] and conformance [A](&lazy protocol witness table cache variable for type [LSExtensionPointRecord] and conformance [A], &_sSaySo22LSExtensionPointRecordCGMd, &_sSaySo22LSExtensionPointRecordCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo22LSExtensionPointRecordCGMd, &_sSaySo22LSExtensionPointRecordCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSExtensionPointRecord, 0x1E6963668);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall EXConnectionEndpoint.encode(with:)(NSCoder with)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = *(v1 + OBJC_IVAR___EXConnectionEndpoint_identifier);
    v6 = *(v1 + OBJC_IVAR___EXConnectionEndpoint_identifier + 8);
    v7 = with.super.isa;
    v8 = MEMORY[0x1865F36D0](v5, v6);
    v9 = MEMORY[0x1865F36D0](0x696669746E656469, 0xEA00000000007265);
    [v4 encodeObject:v8 forKey:v9];

    v10 = *(v1 + OBJC_IVAR___EXConnectionEndpoint_xpcEndpoint);
    if (v10)
    {
      v11 = *(v1 + OBJC_IVAR___EXConnectionEndpoint_xpcEndpoint);
      swift_unknownObjectRetain();
      v12 = MEMORY[0x1865F36D0](0x6F70646E45637078, 0xEB00000000746E69);
      [v4 encodeXPCObject:v10 forKey:v12];
      swift_unknownObjectRelease();
    }

    v13 = *(v1 + OBJC_IVAR___EXConnectionEndpoint_bsServiceConnectionEndpoint);
    v14 = MEMORY[0x1865F36D0](0xD00000000000001BLL, 0x80000001848C5740);
    [v4 encodeObject:v13 forKey:v14];
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void NSXPCConnection.add(assertion:forAuditToken:)(void *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v6 = v5;
  v30 = a1;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v15 = static OS_dispatch_queue.main.getter();
  v16 = v12[13];
  v33 = *MEMORY[0x1E69E8020];
  v32 = v16;
  v16(v15);
  v17 = _dispatchPreconditionTest(_:)();
  v31 = v12[1];
  v31(v15, v11);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v29 = v6;
  v35 = NSXPCConnection.assertions.getter();
  v27 = a2;
  v28 = a3;
  v18 = specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, a4, a5);
  *v15 = static OS_dispatch_queue.main.getter();
  v32(v15, v33, v11);
  v19 = _dispatchPreconditionTest(_:)();
  v31(v15, v11);
  if ((v19 & 1) == 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSAssertion, 0x1E69C7548);
  lazy protocol witness table accessor for type AuditToken and conformance AuditToken();
  v26 = a5;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v21 = v29;
  objc_setAssociatedObject(v29, "_EX_assertions", isa, 0x301);

  [v18 invalidate];
  v22 = v30;
  v23 = NSXPCConnection.assertions.getter();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v23;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v27, v28, a4, v26, isUniquelyReferenced_nonNull_native);
  *v15 = static OS_dispatch_queue.main.getter();
  v32(v15, v33, v11);
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  v31(v15, v11);
  if (v23)
  {
    v25 = Dictionary._bridgeToObjectiveC()().super.isa;

    objc_setAssociatedObject(v21, "_EX_assertions", v25, 0x301);

    return;
  }

LABEL_7:
  __break(1u);
}

id specialized EXConnectionEndpoint.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___EXConnectionEndpoint_xpcEndpoint;
  *&v1[OBJC_IVAR___EXConnectionEndpoint_xpcEndpoint] = 0;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
    v7 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = &v2[OBJC_IVAR___EXConnectionEndpoint_identifier];
      *v12 = v9;
      v12[1] = v11;
      v13 = XPC_TYPE_ENDPOINT.getter();
      v14 = MEMORY[0x1865F36D0](0x6F70646E45637078, 0xEB00000000746E69);
      v15 = [v6 decodeXPCObjectOfType:v13 forKey:v14];

      v16 = *&v2[v4];
      *&v2[v4] = v15;
      swift_unknownObjectRelease();
      type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for BSServiceConnectionEndpoint, 0x1E698F4A0);
      *&v2[OBJC_IVAR___EXConnectionEndpoint_bsServiceConnectionEndpoint] = NSCoder.decodeObject<A>(of:forKey:)();
      v18.receiver = v2;
      v18.super_class = type metadata accessor for EXConnectionEndpoint();
      return objc_msgSendSuper2(&v18, sel_init);
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id _EXDefaultLog()
{
  if (_EXDefaultLog_onceToken != -1)
  {
    _EXDefaultLog_cold_1();
  }

  v1 = _EXDefaultLog_log;

  return v1;
}

uint64_t objectdestroy_181Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1847FD2EC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t closure #1 in Service.invalidateLaunchAssertions(forExtensionAuditToken:reply:)(void *a1, uint64_t (*a2)(void))
{
  [a1 auditToken];
  v4 = v23;
  v3 = HIDWORD(v23);
  v6 = v24;
  v5 = v25;
  v7 = v26;
  v8 = v27;
  v22 = v28;
  v21 = v29;
  if (one-time initialization token for launch != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.launch);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = a2;
    v13 = swift_slowAlloc();
    v23 = v13;
    v14 = (v4 | (v3 << 32));
    *v12 = 136315138;
    v15 = AuditToken.description.getter(v14, v6 | (v5 << 32), v7 | (v8 << 32), v22 | (v21 << 32));
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1847D1000, v10, v11, "Releasing launch assertion for audit token '%s'.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    v18 = v13;
    a2 = v20;
    MEMORY[0x1865F56C0](v18, -1, -1);
    MEMORY[0x1865F56C0](v12, -1, -1);
  }

  else
  {

    v14 = (v23 | (HIDWORD(v23) << 32));
  }

  NSXPCConnection.invalidateAssertion(for:)(v14);
  return a2();
}

void closure #3 in _EXServiceClient.launch(with:)(void *a1)
{
  if (one-time initialization token for launch != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.launch);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&dword_1847D1000, oslog, v4, "Launch assertions released for extension: %@", v5, 0xCu);
    outlined destroy of NSObject?(v6, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    MEMORY[0x1865F56C0](v6, -1, -1);
    MEMORY[0x1865F56C0](v5, -1, -1);
  }
}

unint64_t _EXExtensionProcessHandle.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(28);

  v2 = [*(v0 + OBJC_IVAR____EXExtensionProcessHandle_launchConfiguration) description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x1865F37A0](v3, v5);

  MEMORY[0x1865F37A0](0x203A64697020, 0xE600000000000000);
  [*(v1 + OBJC_IVAR____EXExtensionProcessHandle_innerProcessHandle) pid];
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865F37A0](v6);

  return 0xD000000000000012;
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed _EXExtensionProcess?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void closure #1 in static _AppExtensionProcess.make(with:completion:)(void *a1, id a2, void (*a3)(id *))
{
  if (a1)
  {
    v4 = a1;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClassUnconditional();
    v10 = 0;
    v5 = v9;
  }

  else
  {
    if (!a2 || (v9 = a2, v7 = a2, __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR), type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSError, 0x1E696ABC0), (swift_dynamicCast() & 1) == 0))
    {
      v9 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.extensionKit.errorDomain" code:2 userInfo:0];
      v10 = 1;
      a3(&v9);
      goto LABEL_8;
    }

    v9 = v8;
    v10 = 1;
    v5 = v8;
  }

  v6 = v5;
  a3(&v9);

LABEL_8:
}

NSXPCConnection __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _EXExtensionProcessHandle.makeXPCConnectionRetainProcess(_:)(Swift::Bool a1)
{
  if ([*(*&v1[OBJC_IVAR____EXExtensionProcessHandle_launchConfiguration] + OBJC_IVAR____EXLaunchConfiguration__extensionIdentity) requiresLibXPCConnection])
  {
    v5 = objc_opt_self();
    v6 = MEMORY[0x1865F36D0](0xD000000000000021, 0x80000001848C5700);
    [v5 _EX_errorWithCode_description_];

    swift_willThrow();
  }

  else
  {
    v7 = _EXExtensionProcessHandle.makeXPCConnection()();
    if (!v2)
    {
      v9 = v7;
      v3 = v9;
      if (a1)
      {
        objc_setAssociatedObject(v9, "_EX_extensionProcess", v1, 0x301);
      }

      v10 = *&v1[OBJC_IVAR____EXExtensionProcessHandle_xpcConnectionLock];
      os_unfair_lock_lock(v10 + 4);
      [*&v1[OBJC_IVAR____EXExtensionProcessHandle_xpcConnections] addObject_];
      os_unfair_lock_unlock(v10 + 4);
    }
  }

  return v3;
}

id _EXExtensionProcessHandle.makeXPCConnection()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v36 = *(v2 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v0 + OBJC_IVAR____EXExtensionProcessHandle_launchConfiguration);
  v5 = [*(v37 + OBJC_IVAR____EXLaunchConfiguration__extensionIdentity) serviceName];
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.general);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v34 = v1;
    v12 = v11;
    v13 = swift_slowAlloc();
    aBlock = v13;
    *v12 = 136446210;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v7, &aBlock);
    _os_log_impl(&dword_1847D1000, v9, v10, "Creating connection for extension withidentifier: '%{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x1865F56C0](v13, -1, -1);
    v14 = v12;
    v1 = v34;
    MEMORY[0x1865F56C0](v14, -1, -1);
  }

  v15 = *(v1 + OBJC_IVAR____EXExtensionProcessHandle_mainEndpoint);
  if (!v15 || (v16 = *(v15 + OBJC_IVAR___EXConnectionEndpoint_bsServiceConnectionEndpoint)) == 0)
  {
    v18 = *(v37 + OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier);
    if (!v18)
    {
      goto LABEL_12;
    }

    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    v19 = one-time initialization token for _defaultInstanceIdentifier;
    v20 = v18;
    if (v19 != -1)
    {
      goto LABEL_25;
    }

    goto LABEL_10;
  }

  v17 = v16;

  while (1)
  {
    v5 = v44;
    v25 = v17;
    v26 = objc_opt_self();
    v42 = specialized thunk for @callee_guaranteed (@guaranteed BSNSXPCConnectionConfiguring) -> ();
    v43 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
    v41 = &block_descriptor_40;
    v27 = _Block_copy(&aBlock);

    v20 = [v26 NSXPCConnectionWithEndpoint:v25 configurator:v27];
    _Block_release(v27);

    if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_25:
    swift_once();
LABEL_10:
    if (static NSObject.== infix(_:_:)())
    {

LABEL_12:
      isa = 0;
    }

    else
    {
      v23 = v35;
      v22 = v36;
      (*(v36 + 16))(v35, v20 + OBJC_IVAR____EXExtensionInstanceIdentifier_identifier, v2);

      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v22 + 8))(v23, v2);
    }

    v24 = MEMORY[0x1865F36D0](0x767265536E69614DLL, 0xEB00000000656369);
    v17 = [objc_opt_self() endpointForServiceName:v5 oneshot:isa service:v24 instance:0];

    if (!v17)
    {
      v16 = 0;
      v5 = v44;
      goto LABEL_20;
    }

    v16 = v17;
  }

  if (v20)
  {

    return v20;
  }

LABEL_20:

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock = v31;
    *v30 = 136315138;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &aBlock);
    _os_log_impl(&dword_1847D1000, v28, v29, "Failed to create connection for extension: '%s'", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x1865F56C0](v31, -1, -1);
    MEMORY[0x1865F56C0](v30, -1, -1);
  }

  v20 = objc_opt_self();
  aBlock = 0;
  v39 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  aBlock = 0xD000000000000026;
  v39 = 0x80000001848C5610;
  MEMORY[0x1865F37A0](v5, v7);

  v32 = MEMORY[0x1865F36D0](aBlock, v39);

  [v20 _EX_errorWithCode_description_];

  swift_willThrow();
  return v20;
}

id specialized thunk for @callee_guaranteed (@guaranteed BSNSXPCConnectionConfiguring) -> ()(void *a1)
{
  [a1 setActivateOnResume];

  return [a1 setFaultOnSuspend];
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

id one-time initialization function for sharedInstance()
{
  result = [objc_allocWithZone(type metadata accessor for _EXExtensionProcessMannger()) init];
  static _EXExtensionProcessMannger.sharedInstance = result;
  return result;
}

void type metadata completion function for AppExtensionProcess.Configuration()
{
  type metadata accessor for ()();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AppExtensionProcess._InstanceIdentifier(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [RBSDomainAttribute](319, &lazy cache variable for type metadata for [RBSDomainAttribute], &lazy cache variable for type metadata for RBSDomainAttribute, 0x1E69C7560, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

void type metadata accessor for [RBSDomainAttribute](uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for NSDictionary(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t AppExtensionProcess.Configuration.init(appExtension:onInterruption:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  outlined init with copy of AppExtensionIdentity(a1, a4);
  v8 = type metadata accessor for AppExtensionProcess.Configuration(0);
  v9 = v8[6];
  if (one-time initialization token for nilInstanceIdentifier != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for AppExtensionProcess._InstanceIdentifier(0);
  v11 = __swift_project_value_buffer(v10, static AppExtensionProcess._InstanceIdentifier.nilInstanceIdentifier);
  outlined init with copy of AppExtensionProcess._InstanceIdentifier(v11, a4 + v9, type metadata accessor for AppExtensionProcess._InstanceIdentifier);
  *(a4 + v8[7]) = 0;
  v12 = v8[8];
  v13 = specialized static RBSDomainAttribute.defaultExtensionAttributes.getter();
  result = outlined destroy of AppExtensionIdentity(a1);
  *(a4 + v12) = v13;
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t one-time initialization function for nilInstanceIdentifier()
{
  v0 = type metadata accessor for AppExtensionProcess._InstanceIdentifier(0);
  __swift_allocate_value_buffer(v0, static AppExtensionProcess._InstanceIdentifier.nilInstanceIdentifier);
  v1 = __swift_project_value_buffer(v0, static AppExtensionProcess._InstanceIdentifier.nilInstanceIdentifier);
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t _EXQuery.isEqual(_:)(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  outlined init with copy of Any?(a1, v55);
  if (v56)
  {
    type metadata accessor for _EXQuery();
    if (swift_dynamicCast())
    {
      v2 = v52;
      if (v52 == v1)
      {

        v36 = 1;
        goto LABEL_11;
      }

      v3 = OBJC_IVAR____EXQuery_inner;
      swift_beginAccess();
      outlined init with copy of _InnerAppExtensionIdentity(v1 + v3, v55);
      v4 = v56;
      v5 = v57;
      __swift_project_boxed_opaque_existential_1(v55, v56);
      v6 = v1;
      v7 = (*(v5 + 32))(v4, v5);
      v9 = v8;
      v11 = v10;
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      *&v52 = v7;
      *(&v52 + 1) = v9;
      v53 = v11;
      v54 = v13;
      v14 = OBJC_IVAR____EXQuery_inner;
      swift_beginAccess();
      outlined init with copy of _InnerAppExtensionIdentity(&v2[v14], v55);
      v15 = v56;
      v16 = v57;
      __swift_project_boxed_opaque_existential_1(v55, v56);
      v17 = (*(v16 + 32))(v15, v16);
      v19 = v18;
      v21 = v20;
      v23 = v22;
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      *&v49 = v17;
      *(&v49 + 1) = v19;
      v50 = v21;
      v51 = v23;
      v24 = v6;
      outlined init with copy of _InnerAppExtensionIdentity(v6 + v3, v55);
      v25 = v56;
      v26 = v57;
      __swift_project_boxed_opaque_existential_1(v55, v56);
      v27 = (*(v26 + 8))(v25, v26);
      v29 = v28;
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      outlined init with copy of _InnerAppExtensionIdentity(&v2[v14], v55);
      v30 = v56;
      v31 = v57;
      __swift_project_boxed_opaque_existential_1(v55, v56);
      v32 = (*(v31 + 8))(v30, v31);
      v34 = v33;
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      if (v29)
      {
        if (v34)
        {
          if (v27 == v32 && v29 == v34)
          {

            v35 = v24;
          }

          else
          {
            v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v35 = v24;
            if ((v39 & 1) == 0)
            {
LABEL_22:

              goto LABEL_10;
            }
          }

LABEL_17:
          outlined init with copy of _InnerAppExtensionIdentity(v35 + v3, v55);
          v40 = v56;
          v41 = v57;
          __swift_project_boxed_opaque_existential_1(v55, v56);
          LODWORD(v40) = (*(v41 + 40))(v40, v41);
          __swift_destroy_boxed_opaque_existential_0Tm(v55);
          outlined init with copy of _InnerAppExtensionIdentity(&v2[v14], v55);
          v42 = v56;
          v43 = v57;
          __swift_project_boxed_opaque_existential_1(v55, v56);
          v44 = (*(v43 + 40))(v42, v43);
          __swift_destroy_boxed_opaque_existential_0Tm(v55);
          if (v40 == v44 && _EXAuditTokenEqual(&v52, &v49))
          {
            v45 = *(v24 + OBJC_IVAR____EXQuery_predicate);
            v46 = *&v2[OBJC_IVAR____EXQuery_predicate];
            v36 = v46 == 0;
            if (!v45)
            {

              goto LABEL_11;
            }

            if (v46)
            {
              type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSPredicate, 0x1E696AE18);
              v47 = v46;
              v48 = v45;
              v36 = static NSObject.== infix(_:_:)();

              goto LABEL_11;
            }
          }

          goto LABEL_22;
        }
      }

      else
      {
        v35 = v24;
        if (!v34)
        {
          goto LABEL_17;
        }
      }
    }
  }

  else
  {
    outlined destroy of NSObject?(v55, &_sypSgMd, &_sypSgMR);
  }

LABEL_10:
  v36 = 0;
LABEL_11:
  v37 = *MEMORY[0x1E69E9840];
  return v36 & 1;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AppExtensionProcess._InstanceIdentifier.init()@<X0>(uint64_t a1@<X8>)
{
  UUID.init()();
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t outlined assign with take of AppExtensionProcess._InstanceIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppExtensionProcess._InstanceIdentifier(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AppExtensionProcess.Configuration._instanceIdentifier.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AppExtensionProcess.Configuration(0) + 24);

  return outlined assign with take of AppExtensionProcess._InstanceIdentifier(a1, v3);
}

uint64_t AppExtensionProcess.init(configuration:)(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v4 = *(*(type metadata accessor for AppExtensionProcess.Configuration(0) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AppExtensionProcess.init(configuration:), 0, 0);
}

uint64_t AppExtensionProcess.init(configuration:)()
{
  v1 = v0[8];
  outlined init with copy of AppExtensionProcess._InstanceIdentifier(v0[6], v1, type metadata accessor for AppExtensionProcess.Configuration);
  v2 = specialized _EXLaunchConfiguration.__allocating_init(_:)(v1);
  v0[9] = v2;
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v3 = v0[7];
  v4 = static _EXExtensionProcessMannger.sharedInstance;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  v6[5] = v2;
  v7 = v4;
  v8 = v2;
  v9 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC19ExtensionFoundation25_EXExtensionProcessHandleC_Tt2g5Tm(0, 0, v3, &async function pointer to partial apply for closure #1 in _EXExtensionProcessMannger.process(configuration:), v6, type metadata accessor for _EXExtensionProcessHandle);
  v0[10] = v9;
  v10 = *(MEMORY[0x1E69E86A8] + 4);
  v11 = swift_task_alloc();
  v0[11] = v11;
  v12 = type metadata accessor for _EXExtensionProcessHandle();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v11 = v0;
  v11[1] = AppExtensionProcess.init(configuration:);
  v14 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 4, v9, v12, v13, v14);
}

{
  receiver = v0[5].receiver;
  super_class = v0[4].super_class;
  v18 = v0[4].receiver;
  v19 = v0[3].super_class;
  v3 = v0[2].super_class;
  v2 = v0[3].receiver;

  v4 = v0[2].receiver;
  v6 = *(v2 + 40);
  v5 = *(v2 + 48);
  v7 = type metadata accessor for _EXExtensionProcessHandle.ProcessObserver();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandlerLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *&v8[v10] = v11;
  *v9 = v6;
  *(v9 + 1) = v5;
  v0[1].receiver = v8;
  v0[1].super_class = v7;

  v12 = objc_msgSendSuper2(v0 + 1, sel_init);
  v13 = *&v4[OBJC_IVAR____EXExtensionProcessHandle_observersLock];
  v14 = v12;
  os_unfair_lock_lock(v13 + 4);
  [*&v4[OBJC_IVAR____EXExtensionProcessHandle_observers] addObject_];
  os_unfair_lock_unlock(v13 + 4);

  outlined destroy of AppExtensionProcess.Configuration(v2, type metadata accessor for AppExtensionProcess.Configuration);
  *v3 = v4;
  v3[1] = v14;

  v15 = v0->super_class;

  return v15();
}

{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = AppExtensionProcess.init(configuration:);
  }

  else
  {
    v3 = AppExtensionProcess.init(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];

  outlined destroy of AppExtensionProcess.Configuration(v5, type metadata accessor for AppExtensionProcess.Configuration);

  v6 = v0[1];
  v7 = v0[12];

  return v6();
}

uint64_t sub_1847FF1B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

char *specialized _EXLaunchConfiguration.__allocating_init(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v51 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v50 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v50 - v9;
  v11 = type metadata accessor for AppExtensionProcess._InstanceIdentifier(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppExtensionIdentity(a1, v55);
  outlined init with copy of _InnerAppExtensionIdentity(v55, v54);
  v20 = [objc_allocWithZone(_EXExtensionIdentity) init];
  outlined destroy of AppExtensionIdentity(v55);
  outlined init with take of _InnerAppExtensionIdentity(v54, v53);
  v21 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  v22 = v20;
  outlined assign with take of AppExtensionIdentity?(v53, v20 + v21, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  swift_endAccess();

  objc_opt_self();
  v23 = swift_dynamicCastObjCClassUnconditional();
  v24 = objc_allocWithZone(type metadata accessor for _EXLaunchConfiguration(0));
  v25 = _EXLaunchConfiguration.init(extensionIdentity:)(v23);
  v26 = type metadata accessor for AppExtensionProcess.Configuration(0);
  v27 = *(v26 + 24);
  v52 = a1;
  outlined init with copy of _EXExtensionProcessIdentity.JobConfiguration(a1 + v27, v14, type metadata accessor for AppExtensionProcess._InstanceIdentifier);
  outlined init with take of UUID?(v14, v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    outlined destroy of NSObject?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v28 = one-time initialization token for _defaultInstanceIdentifier;
    v29 = v25;
    if (v28 != -1)
    {
      v49 = v29;
      swift_once();
      v29 = v49;
    }

    v30 = static _EXExtensionInstanceIdentifier._defaultInstanceIdentifier;
    v31 = *&v29[OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier];
    *&v29[OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier] = static _EXExtensionInstanceIdentifier._defaultInstanceIdentifier;
    v32 = v30;
  }

  else
  {
    (*(v16 + 32))(v19, v10, v15);
    v33 = v50;
    (*(v16 + 16))(v50, v19, v15);
    (*(v16 + 56))(v33, 0, 1, v15);
    v34 = objc_allocWithZone(type metadata accessor for _EXExtensionInstanceIdentifier());
    v35 = v25;
    v36 = _EXExtensionInstanceIdentifier.init(instanceIdentifier:)(v33);
    (*(v16 + 8))(v19, v15);
    v31 = *&v35[OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier];
    *&v35[OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier] = v36;
  }

  v37 = *&v25[OBJC_IVAR____EXLaunchConfiguration_preferredLanguages];
  *&v25[OBJC_IVAR____EXLaunchConfiguration_preferredLanguages] = 0;

  v38 = &v25[OBJC_IVAR____EXLaunchConfiguration_sandboxProfileName];
  v39 = *&v25[OBJC_IVAR____EXLaunchConfiguration_sandboxProfileName + 8];
  *v38 = 0;
  *(v38 + 1) = 0;

  v40 = *&v25[OBJC_IVAR____EXLaunchConfiguration_additionalEnvironmentVariables];
  *&v25[OBJC_IVAR____EXLaunchConfiguration_additionalEnvironmentVariables] = MEMORY[0x1E69E7CC8];

  v41 = *&v25[OBJC_IVAR____EXLaunchConfiguration_launchPersona];
  *&v25[OBJC_IVAR____EXLaunchConfiguration_launchPersona] = 0;

  v42 = type metadata accessor for NWApplicationID();
  v43 = v51;
  (*(*(v42 - 8) + 56))(v51, 1, 1, v42);
  v44 = OBJC_IVAR____EXLaunchConfiguration_networkApplicationID;
  swift_beginAccess();
  outlined assign with take of AppExtensionIdentity?(v43, &v25[v44], &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  swift_endAccess();
  v45 = v52;
  v46 = *(v52 + *(v26 + 32));

  _s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVWOhTm_0(v45, type metadata accessor for AppExtensionProcess.Configuration);
  v47 = *&v25[OBJC_IVAR____EXLaunchConfiguration_assertionAttributes];
  *&v25[OBJC_IVAR____EXLaunchConfiguration_assertionAttributes] = v46;

  return v25;
}

void type metadata completion function for _EXLaunchConfiguration()
{
  type metadata accessor for NWApplicationID?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for NWApplicationID?()
{
  if (!lazy cache variable for type metadata for NWApplicationID?)
  {
    type metadata accessor for NWApplicationID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for NWApplicationID?);
    }
  }
}

id one-time initialization function for _defaultInstanceIdentifier()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v9 - v2;
  if (one-time initialization token for nullUUID != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for UUID();
  v5 = __swift_project_value_buffer(v4, static UUID.nullUUID);
  v6 = *(v4 - 8);
  (*(v6 + 16))(v3, v5, v4);
  (*(v6 + 56))(v3, 0, 1, v4);
  v7 = objc_allocWithZone(type metadata accessor for _EXExtensionInstanceIdentifier());
  result = _EXExtensionInstanceIdentifier.init(instanceIdentifier:)(v3);
  static _EXExtensionInstanceIdentifier._defaultInstanceIdentifier = result;
  return result;
}

uint64_t one-time initialization function for nullUUID()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for UUID();
  __swift_allocate_value_buffer(v4, static UUID.nullUUID);
  v5 = __swift_project_value_buffer(v4, static UUID.nullUUID);
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

void type metadata accessor for [String]?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata completion function for _EXExtensionProcessIdentity.JobDescriptor()
{
  type metadata accessor for _InnerAppExtensionIdentity();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NWApplicationID?(319, &lazy cache variable for type metadata for _EXExtensionProcessIdentity.JobConfiguration?, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
    if (v1 <= 0x3F)
    {
      type metadata accessor for NWApplicationID?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for String?();
        if (v3 <= 0x3F)
        {
          type metadata accessor for [String]?(319, &lazy cache variable for type metadata for [String : Any]?, &_sSDySSypGMd, &_sSDySSypGMR);
          if (v4 <= 0x3F)
          {
            type metadata accessor for [String : String](319, &lazy cache variable for type metadata for [String : Any]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t type metadata accessor for _InnerAppExtensionIdentity()
{
  result = lazy cache variable for type metadata for _InnerAppExtensionIdentity;
  if (!lazy cache variable for type metadata for _InnerAppExtensionIdentity)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _InnerAppExtensionIdentity);
  }

  return result;
}

void type metadata completion function for RBSProcessIdentity.Attachment()
{
  type metadata accessor for String?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [String]?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for [String : String]();
      if (v2 <= 0x3F)
      {
        type metadata accessor for NWApplicationID?();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for [String]?()
{
  if (!lazy cache variable for type metadata for [String]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String]?);
    }
  }
}

void type metadata completion function for _EXHostConfiguration()
{
  type metadata accessor for NWApplicationID?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t specialized _InnerAppExtensionIdentity.requiresNetworkAttribution.getter()
{
  v0 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
  if (*(v0 + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001CLL, 0x80000001848C6D70), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 8 * v1);
    swift_unknownObjectRetain();

    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
  }

  return 0;
}

{
  v1 = *(v0 + *(type metadata accessor for AppExtensionIdentity.ValueIdentity() + 64));
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001CLL, 0x80000001848C6D70);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(v1 + 56) + 8 * v2);
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    return v5;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t specialized _InnerAppExtensionIdentity.requiresMultiInstance.getter()
{
  v0 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
  if (*(v0 + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000017, 0x80000001848C6B50), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 8 * v1);
    swift_unknownObjectRetain();

    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
  }

  return 0;
}

{
  v1 = *(v0 + *(type metadata accessor for AppExtensionIdentity.ValueIdentity() + 64));
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000017, 0x80000001848C6B50);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(v1 + 56) + 8 * v2);
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    return v5;
  }

  return result;
}

uint64_t outlined assign with copy of NWApplicationID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t _InnerAppExtensionIdentity.assertionAttributes.getter(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 48))() != 2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = (*(a2 + 104))(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1848BBBA0;
  if (v4)
  {
    v6 = MEMORY[0x1865F36D0](0xD000000000000016, 0x80000001848C4250);
    v7 = 0x6574784578454955;
    v8 = 0xED00006E6F69736ELL;
  }

  else
  {
    v6 = MEMORY[0x1865F36D0](0xD000000000000016, 0x80000001848C4250);
    v7 = 0xD000000000000010;
    v8 = 0x80000001848C4270;
  }

  v10 = MEMORY[0x1865F36D0](v7, v8);
  v11 = [objc_opt_self() attributeWithDomain:v6 name:v10];

  result = v5;
  *(v5 + 32) = v11;
  return result;
}

id protocol witness for _InnerAppExtensionIdentity.extensionPointType.getter in conformance AppExtensionIdentity.RecordIdentity()
{
  v1 = [*v0 extensionPointRecord];
  v2 = [v1 extensionPointType];

  return v2;
}

id protocol witness for _InnerAppExtensionIdentity.xpcSessionServiceName.getter in conformance AppExtensionIdentity.RecordIdentity()
{
  result = [*v0 bundleIdentifier];
  if (result)
  {
    v2 = result;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    MEMORY[0x1865F37A0](0x7365732D6370782ELL, 0xEC0000006E6F6973);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionProcessHandle._acquireAsertion()()
{
  v57 = *MEMORY[0x1E69E9840];
  v1 = *&v0[OBJC_IVAR____EXExtensionProcessHandle_launchConfiguration];
  v2 = OBJC_IVAR____EXLaunchConfiguration_assertionAttributes;
  v3 = *&v1[OBJC_IVAR____EXLaunchConfiguration_assertionAttributes];
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (one-time initialization token for launch != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.launch);
    v39 = v0;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138543362;
      *(v42 + 4) = v1;
      *v43 = v1;
      v44 = v1;
      _os_log_impl(&dword_1847D1000, v40, v41, "Assertion not taken, empty assertion attributes specified by launch configuration %{public}@.", v42, 0xCu);
      outlined destroy of NSObject?(v43);
      MEMORY[0x1865F56C0](v43, -1, -1);
      MEMORY[0x1865F56C0](v42, -1, -1);
    }

    v19 = 0;
    goto LABEL_17;
  }

  if (v3 < 0)
  {
    v37 = *&v1[OBJC_IVAR____EXLaunchConfiguration_assertionAttributes];
  }

  if (__CocoaSet.count.getter() < 1)
  {
    goto LABEL_12;
  }

LABEL_3:
  _StringGuts.grow(_:)(27);

  aBlock = 0xD000000000000019;
  v50 = 0x80000001848C5640;
  v4 = *&v0[OBJC_IVAR____EXExtensionProcessHandle_innerProcessHandle];
  LODWORD(v55) = [v4 pid];
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865F37A0](v5);

  v6 = [objc_opt_self() targetWithProcessIdentifier_];
  v7 = *&v1[v2];

  v48 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSo18RBSDomainAttributeC_SayAEGTt0g5(v8);
  v9 = *&v1[OBJC_IVAR____EXLaunchConfiguration__extensionIdentity];
  v10 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of _InnerAppExtensionIdentity?(v9 + v10, &v55);
  if (v56)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v55, &aBlock);
    v12 = v52;
    v13 = v53;
    __swift_project_boxed_opaque_existential_1(&aBlock, v52);
    v14 = _InnerAppExtensionIdentity.assertionAttributes.getter(v12, v13);
    specialized Array.append<A>(contentsOf:)(v14);
    __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
    if (v48 >> 62)
    {
      type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSAttribute, 0x1E69C7550);
      v46 = v6;

      _bridgeCocoaArray<A>(_:)();
    }

    else
    {
      v15 = v6;

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSAttribute, 0x1E69C7550);
    }

    v16 = objc_allocWithZone(MEMORY[0x1E69C7548]);
    v17 = MEMORY[0x1865F36D0](0xD000000000000019, 0x80000001848C5640);

    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSAttribute, 0x1E69C7550);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v19 = [v16 initWithExplanation:v17 target:v6 attributes:isa];

    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v53 = partial apply for closure #1 in _EXExtensionProcessHandle._acquireAsertion();
    v54 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v50 = 1107296256;
    v51 = thunk for @escaping @callee_guaranteed (@guaranteed RBSAssertion, @guaranteed Error?) -> ();
    v52 = &block_descriptor_44;
    v21 = _Block_copy(&aBlock);

    [v19 setInvalidationHandler_];
    _Block_release(v21);
    aBlock = 0;
    if ([v19 acquireWithError_])
    {
      v22 = aBlock;
    }

    else
    {
      v23 = aBlock;
      v24 = _convertNSErrorToError(_:)();

      swift_willThrow();
      [v19 invalidate];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1848BAA10;
      v26 = *MEMORY[0x1E696A578];
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v27;
      aBlock = 0;
      v50 = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      aBlock = 0xD000000000000025;
      v50 = 0x80000001848C5690;
      LODWORD(v55) = [v4 pid];
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865F37A0](v28);

      v29 = aBlock;
      v30 = v50;
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 48) = v29;
      *(inited + 56) = v30;
      v31 = *MEMORY[0x1E696AA08];
      *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 88) = v32;
      swift_getErrorValue();
      *(inited + 120) = v47;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 96));
      (*(*(v47 - 8) + 16))(boxed_opaque_existential_1);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      v34 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v35 = @"com.apple.extensionKit.errorDomain";
      v36 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v34 initWithDomain:v35 code:4 userInfo:v36];

      swift_willThrow();
    }

LABEL_17:
    v45 = *MEMORY[0x1E69E9840];
    return v19;
  }

  __break(1u);
  return result;
}

uint64_t sub_184800E6C()
{
  MEMORY[0x1865F57F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSo18RBSDomainAttributeC_SayAEGTt0g5(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo18RBSDomainAttributeC_Tt1g5Tm(v3, 0);
  specialized Array._copyContents(initializing:)((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

Swift::Void __swiftcall _EXExtensionProcessHandle.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____EXExtensionProcessHandle_launchConfiguration);
  v4 = MEMORY[0x1865F36D0](0xD000000000000013, 0x80000001848C5300);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____EXExtensionProcessHandle_innerProcessHandle);
  v6 = MEMORY[0x1865F36D0](0x48737365636F7270, 0xED0000656C646E61);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____EXExtensionProcessHandle_mainEndpoint);
  v8 = MEMORY[0x1865F36D0](0x70646E456E69616DLL, 0xEC000000746E696FLL);
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____EXExtensionProcessHandle_sessionEndpoint);
  v10 = MEMORY[0x1865F36D0](0x456E6F6973736573, 0xEF746E696F70646ELL);
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR____EXExtensionProcessHandle_libXPCEndpoint);
  v12 = MEMORY[0x1865F36D0](0x6E4543505862696CLL, 0xEE00746E696F7064);
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];

  v13 = *(v1 + OBJC_IVAR____EXExtensionProcessHandle_sandboxExtensions);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for _EXSandboxExtension, off_1E6E4D240);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = MEMORY[0x1865F36D0](0xD000000000000011, 0x80000001848C5320);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v15];
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3, a4);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  v10 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v5;
  v16 = *v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v12 = v16;
  }

  v13 = v9;
  v14 = *(*(v12 + 56) + 8 * v9);
  specialized _NativeDictionary._delete(at:)(v13, v12);
  *v5 = v12;
  return v14;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = a4;
    v9 = a3;
    v10 = a2;
    v11 = a1;
    v12 = HIDWORD(a1);
    v13 = HIDWORD(a2);
    v14 = HIDWORD(a3);
    v21 = ~v6;
    v15 = HIDWORD(a4);
    do
    {
      v16 = (*(v23 + 48) + 32 * v7);
      v17 = v16[1];
      *v25.val = *v16;
      *&v25.val[4] = v17;
      *atoken.val = *v25.val;
      *&atoken.val[4] = v17;
      v18 = audit_token_to_pid(&atoken);
      atoken.val[0] = v11;
      atoken.val[1] = v12;
      atoken.val[2] = v10;
      atoken.val[3] = v13;
      atoken.val[4] = v9;
      atoken.val[5] = v14;
      atoken.val[6] = v8;
      atoken.val[7] = v15;
      if (v18 == audit_token_to_pid(&atoken))
      {
        atoken = v25;
        v19 = audit_token_to_pidversion(&atoken);
        atoken.val[0] = v11;
        atoken.val[1] = v12;
        atoken.val[2] = v10;
        atoken.val[3] = v13;
        atoken.val[4] = v9;
        atoken.val[5] = v14;
        atoken.val[6] = v8;
        atoken.val[7] = v15;
        if (v19 == audit_token_to_pidversion(&atoken))
        {
          break;
        }
      }

      v7 = (v7 + 1) & v21;
    }

    while (((*(v22 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 >= v20 && (a6 & 1) != 0)
  {
LABEL_8:
    v26 = *v7;
    if (v21)
    {
      v27 = v26[7];
      v28 = *(v27 + 8 * result);
      *(v27 + 8 * result) = a1;

      return MEMORY[0x1EEE66BB8]();
    }

    v26[(result >> 6) + 8] |= 1 << result;
    v29 = (v26[6] + 32 * result);
    *v29 = a2;
    v29[1] = a3;
    v29[2] = a4;
    v29[3] = a5;
    *(v26[7] + 8 * result) = a1;
    v30 = v26[2];
    v19 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (!v19)
    {
      v26[2] = v31;
      return result;
    }

    goto LABEL_15;
  }

  if (v22 >= v20 && (a6 & 1) == 0)
  {
    v23 = result;
    specialized _NativeDictionary.copy()();
    result = v23;
    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a6 & 1);
  v24 = *v7;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4, a5);
  if ((v21 & 1) == (v25 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return MEMORY[0x1EEE66BB8]();
}

uint64_t _EXExtensionProcessHandle.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____EXExtensionProcessHandle_xpcConnectionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *&v2[v4] = v5;
  v6 = OBJC_IVAR____EXExtensionProcessHandle_xpcConnections;
  *&v2[v6] = [objc_opt_self() weakObjectsHashTable];
  v7 = OBJC_IVAR____EXExtensionProcessHandle_observersLock;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *&v2[v7] = v8;
  v9 = OBJC_IVAR____EXExtensionProcessHandle_observers;
  *&v2[v9] = [objc_opt_self() weakObjectsHashTable];
  v2[OBJC_IVAR____EXExtensionProcessHandle_invalidationLock_invalidated] = 0;
  v10 = OBJC_IVAR____EXExtensionProcessHandle_invalidationLock;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *&v2[v10] = v11;
  v12 = OBJC_IVAR____EXExtensionProcessHandle_sandboxExtensions;
  v13 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____EXExtensionProcessHandle_sandboxExtensions] = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____EXExtensionProcessHandle_launchAssertion] = 0;
  *&v2[OBJC_IVAR____EXExtensionProcessHandle_assertionAquireCount] = 0;
  *&v2[OBJC_IVAR____EXExtensionProcessHandle_assertion] = 0;
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSProcessHandle, 0x1E69C75D0);
  v14 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v14)
  {
    goto LABEL_46;
  }

  v15 = v14;
  *&v2[OBJC_IVAR____EXExtensionProcessHandle_innerProcessHandle] = v14;
  type metadata accessor for EXConnectionEndpoint();
  v16 = v15;
  *&v2[OBJC_IVAR____EXExtensionProcessHandle_mainEndpoint] = NSCoder.decodeObject<A>(of:forKey:)();
  *&v2[OBJC_IVAR____EXExtensionProcessHandle_sessionEndpoint] = NSCoder.decodeObject<A>(of:forKey:)();
  *&v2[OBJC_IVAR____EXExtensionProcessHandle_libXPCEndpoint] = NSCoder.decodeObject<A>(of:forKey:)();
  type metadata accessor for _EXLaunchConfiguration(0);
  v17 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v17)
  {
    v18 = &_sScPSgMd;
    *&v2[OBJC_IVAR____EXExtensionProcessHandle_launchConfiguration] = v17;
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for _EXSandboxExtension, off_1E6E4D240);
    v19 = NSCoder.decodeArrayOfObjects<A>(ofClass:forKey:)();
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v13;
    }

    v21 = *&v2[v12];
    *&v2[v12] = v20;

    v70.receiver = v2;
    v70.super_class = type metadata accessor for _EXExtensionProcessHandle();
    v22 = objc_msgSendSuper2(&v70, sel_init);
    v23 = [v16 hostProcess];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 pid];
    }

    else
    {
      v25 = -1;
    }

    if (v25 == getpid())
    {
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = partial apply for closure #1 in _EXExtensionProcessHandle.init(coder:);
      aBlock[5] = v26;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed RBSProcessHandle, @guaranteed RBSProcessExitContext) -> ();
      aBlock[3] = &block_descriptor_11;
      v27 = _Block_copy(aBlock);

      [v16 monitorForDeath_];
      _Block_release(v27);
    }

    if (![objc_opt_self() sandboxed])
    {

      return v22;
    }

    v63 = v16;
    v64 = a1;
    v28 = OBJC_IVAR____EXExtensionProcessHandle_sandboxExtensions;
    v29 = *&v22[OBJC_IVAR____EXExtensionProcessHandle_sandboxExtensions];
    if (v29 >> 62)
    {
      if (v29 < 0)
      {
        v59 = *&v22[OBJC_IVAR____EXExtensionProcessHandle_sandboxExtensions];
      }

      if (__CocoaSet.count.getter())
      {
LABEL_14:
        if (one-time initialization token for launch != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        __swift_project_value_buffer(v30, static Logger.launch);
        v31 = v22;
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.debug.getter();
        v68 = v31;
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *v34 = 138543618;
          v36 = *(&v31->isa + OBJC_IVAR____EXExtensionProcessHandle_launchConfiguration);
          *(v34 + 4) = v36;
          *v35 = v36;
          *(v34 + 12) = 1026;
          v37 = v22;
          v38 = *(&v31->isa + OBJC_IVAR____EXExtensionProcessHandle_innerProcessHandle);
          v39 = v36;
          LODWORD(v38) = [v38 pid];

          *(v34 + 14) = v38;
          v22 = v37;
          v18 = &_sScPSgMd;

          outlined destroy of NSObject?(v35);
          MEMORY[0x1865F56C0](v35, -1, -1);
          MEMORY[0x1865F56C0](v34, -1, -1);
        }

        else
        {

          v32 = v31;
        }

        v40 = *&v22[v28];
        if (v40 >> 62)
        {
          if (v40 < 0)
          {
            v61 = *&v22[v28];
          }

          v41 = __CocoaSet.count.getter();
        }

        else
        {
          v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v41)
        {
          v62 = v22;
          if (v41 >= 1)
          {
            v67 = v18[57];
            v42 = v40 & 0xC000000000000001;
            v65 = OBJC_IVAR____EXExtensionProcessHandle_innerProcessHandle;

            v43 = 0;
            v44 = &selRef_setService_;
            v66 = v41;
            do
            {
              if (v42)
              {
                v54 = MEMORY[0x1865F3F40](v43, v40);
              }

              else
              {
                v54 = *(v40 + 8 * v43 + 32);
              }

              v55 = v54;
              if (([v54 v44[106]] & 1) == 0)
              {
                v56 = v31;
                v57 = Logger.logObject.getter();
                v58 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v57, v58))
                {
                  v45 = v40;
                  v46 = swift_slowAlloc();
                  v47 = v42;
                  v48 = swift_slowAlloc();
                  *v46 = 138543618;
                  v49 = *(&v31->isa + v67);
                  *(v46 + 4) = v49;
                  *v48 = v49;
                  *(v46 + 12) = 1026;
                  v50 = *(&v68->isa + v65);
                  v51 = v49;
                  LODWORD(v50) = [v50 pid];

                  *(v46 + 14) = v50;
                  v31 = v68;

                  outlined destroy of NSObject?(v48);
                  v52 = v48;
                  v42 = v47;
                  MEMORY[0x1865F56C0](v52, -1, -1);
                  v53 = v46;
                  v40 = v45;
                  v41 = v66;
                  MEMORY[0x1865F56C0](v53, -1, -1);
                }

                else
                {

                  v57 = v56;
                  v55 = v56;
                }

                v44 = &selRef_setService_;
              }

              ++v43;
            }

            while (v41 != v43);

            return v62;
          }

          __break(1u);
          goto LABEL_45;
        }
      }
    }

    else if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    return v22;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed _EXQueryResult?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

id closure #2 in _EXServiceClient.launch(with:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (one-time initialization token for launch != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.launch);
    v6 = a2;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138543362;
      *(v9 + 4) = v6;
      *v10 = a2;
      v11 = v6;
      _os_log_impl(&dword_1847D1000, v7, v8, "Launch failed with error: %{public}@", v9, 0xCu);
      outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      MEMORY[0x1865F56C0](v10, -1, -1);
      MEMORY[0x1865F56C0](v9, -1, -1);
    }

    swift_beginAccess();
    v12 = *(a3 + 16);
    *(a3 + 16) = a2;
  }

  else if (a1)
  {
    v16 = a1;
    v25 = _EXExtensionProcessHandle._acquireAsertion()();
    v26 = *&v16[OBJC_IVAR____EXExtensionProcessHandle_invalidationLock];
    os_unfair_lock_lock(v26 + 4);
    v27 = *&v16[OBJC_IVAR____EXExtensionProcessHandle_assertion];
    *&v16[OBJC_IVAR____EXExtensionProcessHandle_assertion] = v25;
    v28 = v25;

    *&v16[OBJC_IVAR____EXExtensionProcessHandle_assertionAquireCount] = 1;
    os_unfair_lock_unlock(v26 + 4);

    swift_beginAccess();
    v12 = *(a4 + 16);
    *(a4 + 16) = a1;
  }

  else
  {
    if (one-time initialization token for launch != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.launch);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138543362;
      *(v20 + 4) = 0;
      *v21 = 0;
      _os_log_impl(&dword_1847D1000, v18, v19, "Launch failed with error: %{public}@", v20, 0xCu);
      outlined destroy of NSObject?(v21, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      MEMORY[0x1865F56C0](v21, -1, -1);
      MEMORY[0x1865F56C0](v20, -1, -1);
    }

    swift_beginAccess();
    v22 = *(a3 + 16);
    if (v22)
    {
      v23 = v22;
      v24 = _convertErrorToNSError(_:)();
    }

    else
    {
      v24 = 0;
    }

    v29 = [objc_opt_self() _EX_errorWithCode_underlyingError_];

    swift_beginAccess();
    v12 = *(a3 + 16);
    *(a3 + 16) = v29;
  }

  return a2;
}

Swift::Void __swiftcall NSXPCConnection.invalidateAssertion(for:)(ExtensionFoundation::AuditToken *a1)
{
  v17 = v1;
  v18 = v2;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v8 = static OS_dispatch_queue.main.getter();
  v9 = *MEMORY[0x1E69E8020];
  v10 = v5[13];
  v10(v8, v9, v4);
  v11 = _dispatchPreconditionTest(_:)();
  v12 = v5[1];
  v12(v8, v4);
  if (v11)
  {
    v21 = NSXPCConnection.assertions.getter();
    v19 = specialized Dictionary._Variant.removeValue(forKey:)(a1, v17, v18, v19);
    *v8 = static OS_dispatch_queue.main.getter();
    v10(v8, v9, v4);
    v13 = _dispatchPreconditionTest(_:)();
    v12(v8, v4);
    if (v13)
    {
      type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSAssertion, 0x1E69C7548);
      lazy protocol witness table accessor for type AuditToken and conformance AuditToken();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      objc_setAssociatedObject(v20, "_EX_assertions", isa, 0x301);

      v15 = v19;
      [v19 invalidate];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id specialized _EXExtensionProcess.init(processHandle:configuration:)(void *a1, char *a2)
{
  v23 = OBJC_IVAR____EXExtensionProcess__processHandle;
  *&v2[OBJC_IVAR____EXExtensionProcess__processHandle] = a1;
  *&v2[OBJC_IVAR____EXExtensionProcess_configuration] = a2;
  v5 = *&a2[OBJC_IVAR____EXHostConfiguration_interruptionHandler];
  v6 = *&a2[OBJC_IVAR____EXHostConfiguration_interruptionHandler + 8];
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v8 = destructiveProjectEnumData for Platform;
    v7 = 0;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  v10 = type metadata accessor for _EXExtensionProcessHandle.ProcessObserver();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandler];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandlerLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *&v11[v13] = v14;
  *v12 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  *(v12 + 1) = v9;
  v15 = a1;
  v16 = a2;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSXPCConnection) -> (@unowned Bool))?(v5, v6);
  v25.receiver = v11;
  v25.super_class = v10;
  v17 = objc_msgSendSuper2(&v25, sel_init);
  *&v2[OBJC_IVAR____EXExtensionProcess__observer] = v17;
  v18 = *&v2[v23];
  v19 = *&v18[OBJC_IVAR____EXExtensionProcessHandle_observersLock];
  v20 = v17;
  v21 = v18;
  os_unfair_lock_lock(v19 + 4);
  [*&v21[OBJC_IVAR____EXExtensionProcessHandle_observers] addObject_];
  os_unfair_lock_unlock(v19 + 4);

  v24.receiver = v2;
  v24.super_class = _EXExtensionProcess;
  return objc_msgSendSuper2(&v24, sel_init);
}

uint64_t sub_184802740()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void specialized ListenerDelegate.listener(_:didReceive:withContext:)(void *a1)
{
  v6[4] = specialized thunk for @callee_guaranteed (@guaranteed BSNSXPCConnectionConfiguring) -> ();
  v6[5] = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  v6[3] = &block_descriptor_25;
  v2 = _Block_copy(v6);

  v3 = [a1 extractNSXPCConnectionWithConfigurator_];
  _Block_release(v2);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v5 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xE8))(v3);

    if ((v5 & 1) == 0)
    {
      [a1 invalidate];
    }
  }
}

id _EXExtensionProcess.deinit()
{
  v1 = *&v0[OBJC_IVAR____EXExtensionProcess__observer];
  v2 = OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandlerLock;
  v3 = *&v1[OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandlerLock];
  v4 = v1;
  os_unfair_lock_lock(v3 + 4);
  v5 = *&v4[OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandler];
  os_unfair_lock_unlock((*&v1[v2] + 16));

  if (v5 && (v6 = OBJC_IVAR____EXExtensionProcess_configuration, swift_beginAccess(), (*(*&v0[v6] + OBJC_IVAR____EXHostConfiguration_requireInvalidation) & 1) != 0))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v8.receiver = v0;
    v8.super_class = _EXExtensionProcess;
    return objc_msgSendSuper2(&v8, sel_dealloc);
  }

  return result;
}

uint64_t NSXPCConnection.assertions.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v7 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (objc_getAssociatedObject(v1, "_EX_assertions"))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {
    outlined destroy of Any?(v12);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy19ExtensionFoundation10AuditTokenVSo12RBSAssertionCGMd, _sSDy19ExtensionFoundation10AuditTokenVSo12RBSAssertionCGMR);
  if ((swift_dynamicCast() & 1) == 0 || (result = v13) == 0)
  {
LABEL_10:
    v13 = MEMORY[0x1E69E7CC8];
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSAssertion, 0x1E69C7548);
    lazy protocol witness table accessor for type AuditToken and conformance AuditToken();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    objc_setAssociatedObject(v1, "_EX_assertions", isa, 0x301);

    result = v13;
    if (v13)
    {
      return result;
    }

LABEL_13:
    __break(1u);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v9 = HIDWORD(a1);
  v10 = HIDWORD(a2);
  v11 = HIDWORD(a3);
  v12 = *(v4 + 40);
  v13 = HIDWORD(a4);
  Hasher.init(_seed:)();
  atoken.val[0] = a1;
  atoken.val[1] = v9;
  atoken.val[2] = a2;
  atoken.val[3] = v10;
  atoken.val[4] = a3;
  atoken.val[5] = v11;
  atoken.val[6] = a4;
  atoken.val[7] = v13;
  v14 = audit_token_to_pid(&atoken);
  Hasher._combine(_:)(v14);
  atoken.val[0] = a1;
  atoken.val[1] = v9;
  atoken.val[2] = a2;
  atoken.val[3] = v10;
  atoken.val[4] = a3;
  atoken.val[5] = v11;
  atoken.val[6] = a4;
  atoken.val[7] = v13;
  v15 = audit_token_to_pidversion(&atoken);
  Hasher._combine(_:)(v15);
  v16 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3, a4, v16);
}

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19ExtensionFoundation10AuditTokenVSo12RBSAssertionCGMd, &_ss18_DictionaryStorageCy19ExtensionFoundation10AuditTokenVSo12RBSAssertionCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        v20 = (*(v4 + 48) + 32 * v17);
        v21 = v18[1];
        *v20 = *v18;
        v20[1] = v21;
        *(*(v4 + 56) + 8 * v17) = v19;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 32 * v6);
      v11 = v10[1];
      *v26.val = *v10;
      *&v26.val[4] = v11;
      Hasher.init(_seed:)();
      v25 = v26;
      v12 = audit_token_to_pid(&v25);
      Hasher._combine(_:)(v12);
      v25 = v26;
      v13 = audit_token_to_pidversion(&v25);
      Hasher._combine(_:)(v13);
      result = Hasher._finalize()();
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v18 = v17[1];
          *v16 = *v17;
          v16[1] = v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 8 * v3);
        v21 = (v19 + 8 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
        goto LABEL_18;
      }
    }
  }

  *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
LABEL_18:
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AuditToken and conformance AuditToken()
{
  result = lazy protocol witness table cache variable for type AuditToken and conformance AuditToken;
  if (!lazy protocol witness table cache variable for type AuditToken and conformance AuditToken)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AuditToken and conformance AuditToken);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AuditToken and conformance AuditToken;
  if (!lazy protocol witness table cache variable for type AuditToken and conformance AuditToken)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AuditToken and conformance AuditToken);
  }

  return result;
}

id specialized Service.invalidateLaunchAssertions(forExtensionAuditToken:reply:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v9 = *(v20 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() currentConnection];
  if (result)
  {
    v14 = result;
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v15 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = a1;
    v16[4] = a2;
    aBlock[4] = partial apply for closure #1 in Service.invalidateLaunchAssertions(forExtensionAuditToken:reply:);
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_30;
    v17 = _Block_copy(aBlock);
    v18 = v14;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1865F3C00](0, v12, v8, v17);
    _Block_release(v17);

    (*(v5 + 8))(v8, v4);
    return (*(v9 + 8))(v12, v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18480365C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t EXExtensionMain(_:_:)(uint64_t a1, uint64_t *a2)
{
  if (getenv("EXTENSION_KIT_EXTENSION_TYPE"))
  {
    v4 = String.init(utf8String:)();
    v6 = v5;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = 0;
  v6 = 0;
  if (!a2)
  {
    goto LABEL_12;
  }

LABEL_3:
  v7 = *a2;
  v8 = String.init(utf8String:)();
  if (!v9)
  {
LABEL_13:

    return 1;
  }

  v10 = v9;
  v11 = v8;
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.general);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136446466;
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v23);

    *(v15 + 4) = v17;
    *(v15 + 12) = 2082;
    if (v6)
    {
      v18 = v6;
    }

    else
    {
      v4 = 0;
      v18 = 0xE000000000000000;
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v18, &v23);

    *(v15 + 14) = v19;
    swift_arrayDestroy();
    MEMORY[0x1865F56C0](v16, -1, -1);
    MEMORY[0x1865F56C0](v15, -1, -1);
  }

  else
  {
  }

  [objc_opt_self() notifyExtensionMainCalled];
  if (v6)
  {

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    [objc_opt_self() bootstrap];
    type metadata accessor for _EXRunningExtension();
    result = static _EXRunningExtension.shared.getter();
    if (a1 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a1 <= 0x7FFFFFFF)
    {
      v21 = result;
      v22 = (*((*MEMORY[0x1E69E7D40] & *result) + 0x90))(a2, a1);

      return v22;
    }

    __break(1u);
    goto LABEL_26;
  }

  result = objc_opt_self();
  if (a1 < 0xFFFFFFFF80000000)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a1 <= 0x7FFFFFFF)
  {
    return [result _PKServiceStartWithArguments_count_];
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t one-time initialization function for general(uint64_t a1)
{
  return one-time initialization function for general(a1, static Logger.general);
}

{
  return one-time initialization function for general(a1, 0x746C7561666564, 0xE700000000000000, &static OS_os_log.general);
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

Swift::Bool __swiftcall _EXRunningExtension.shouldAccept(_:)(NSXPCConnection a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension);
  if (v3)
  {
    LOBYTE(v3) = [v3 shouldAcceptConnection_];
  }

  else
  {
    __break(1u);
  }

  return v3;
}

uint64_t type metadata completion function for _EXExtensionInstanceIdentifier()
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

uint64_t partial apply for closure #1 in _EXExtensionProcessMannger.process(configuration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #2 in AppExtensionPoint.Monitor.ObserverController.addMonitor(_:for:);

  return closure #1 in _EXExtensionProcessMannger.process(configuration:)(a1, v4, v5, v7, v6);
}

uint64_t closure #1 in _EXExtensionProcessMannger.process(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in _EXExtensionProcessMannger.process(configuration:), 0, 0);
}

uint64_t closure #1 in _EXExtensionProcessMannger.process(configuration:)()
{
  v1 = *(v0 + 24);
  **(v0 + 16) = _EXExtensionProcessMannger.process(configuration:)(*(v0 + 32));
  v2 = *(v0 + 8);

  return v2();
}

__int128 *one-time initialization function for current()
{
  result = [objc_opt_self() auditTokenForCurrentProcess];
  if (result)
  {
    v1 = result[1];
    static AuditToken.current = *result;
    *&qword_1EA872A30 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void type metadata completion function for _EXExtensionProcessIdentity.JobConfiguration()
{
  type metadata accessor for String?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [String : String](319, &lazy cache variable for type metadata for [String : String]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [String]?(319, &lazy cache variable for type metadata for [String]?, &_sSaySSGMd, &_sSaySSGMR);
      if (v2 <= 0x3F)
      {
        type metadata accessor for NWApplicationID?(319, &lazy cache variable for type metadata for NWApplicationID?, MEMORY[0x1E6977CA8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

unint64_t one-time initialization function for shared()
{
  type metadata accessor for ExtensionMain();
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(closure #1 in ExtensionMain.init(), 0, 1u, isUniquelyReferenced_nonNull_native);
  v3 = swift_isUniquelyReferenced_nonNull_native();
  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(closure #2 in ExtensionMain.init(), 0, 8u, v3);
  *(v0 + 16) = v1;
  static ExtensionMain.shared = v0;
  return result;
}

{
  type metadata accessor for AppExtensionPoint.Monitor.ObserverController();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC19ExtensionFoundation03AppC5PointV7MonitorC8IdentityV_AG18ObserverControllerC0I033_5D985BB42A36A6D664ED77CA96129115LLVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v0 + 112) = result;
  static AppExtensionPoint.Monitor.ObserverController.shared = v0;
  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v20 = *v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + result) = a3;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x1865F42C0](a1);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

id static _EXRunningExtension.sharedInstance()()
{
  if (one-time initialization token for _shared != -1)
  {
    swift_once();
  }

  v0 = swift_dynamicCastClassUnconditional();

  return v0;
}

uint64_t one-time initialization function for _shared()
{
  result = closure #1 in variable initialization expression of static _EXRunningExtension._shared();
  static _EXRunningExtension._shared = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of static _EXRunningExtension._shared()
{
  v0 = getenv("EXTENSION_KIT_EXTENSION_TYPE");
  if (!v0)
  {
    v25 = 0;
    v24 = 24;
LABEL_14:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v1 = v0;
  v2 = atoi(v0);
  ExtensionType.init(rawValue:)(v2);
  v3 = v28;
  if (v28 == 9)
  {
    _StringGuts.grow(_:)(48);

    v28 = 0xD00000000000002DLL;
    v29 = 0x80000001848C2420;
    v27 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSpys4Int8VGMd, &_sSpys4Int8VGMR);
    v20 = String.init<A>(describing:)();
    MEMORY[0x1865F37A0](v20);

    MEMORY[0x1865F37A0](39, 0xE100000000000000);
    v25 = 0;
    v21 = 28;
LABEL_13:
    v24 = v21;
    goto LABEL_14;
  }

  v27 = 0;
  v4 = type metadata accessor for MainActor();
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v27;
  LOBYTE(v25) = v28;
  specialized static MainActor.assumeIsolated<A>(_:file:line:)(partial apply for closure #1 in closure #1 in variable initialization expression of static _EXRunningExtension._shared, &v23);
  v5 = v27;
  if (!v27)
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v28 = 0xD00000000000002DLL;
    v29 = 0x80000001848C2420;
    v26 = v3;
    v22 = String.init<A>(describing:)();
    MEMORY[0x1865F37A0](v22);

    MEMORY[0x1865F37A0](39, 0xE100000000000000);
    v25 = 0;
    v21 = 36;
    goto LABEL_13;
  }

  v6 = one-time initialization token for launch;
  v7 = v27;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.launch);
  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v12 = 136315394;
    v26 = v3;
    v15 = String.init<A>(describing:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v28);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v5;
    v18 = v9;
    _os_log_impl(&dword_1847D1000, v10, v11, "Extension Type: '%s' : %@", v12, 0x16u);
    outlined destroy of NSObject?(v13, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    MEMORY[0x1865F56C0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x1865F56C0](v14, -1, -1);
    MEMORY[0x1865F56C0](v12, -1, -1);
  }

  else
  {
  }

  return v9;
}

ExtensionFoundation::ExtensionType_optional __swiftcall ExtensionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 9;
  if (rawValue < 9)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t specialized static MainActor.assumeIsolated<A>(_:file:line:)(uint64_t a1, uint64_t a2)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  partial apply for specialized thunk for @callee_guaranteed () -> (@out A, @error @owned Error)();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    MEMORY[0x1865F37A0](0xD00000000000003FLL, 0x80000001848C2450);
    v8 = _typeName(_:qualified:)();
    MEMORY[0x1865F37A0](v8);

    MEMORY[0x1865F37A0](46, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t partial apply for specialized thunk for @callee_guaranteed () -> (@out A, @error @owned Error)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void closure #1 in closure #1 in variable initialization expression of static _EXRunningExtension._shared(void **a1, unsigned __int8 a2)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static ExtensionMain.shared;
  swift_beginAccess();
  v5 = v4[2];
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 16 * v6;
    v10 = *v8;
    v9 = *(v8 + 8);

    v10(&v15, v11);

    v12 = v15;
  }

  else
  {
    v13 = [objc_opt_self() _EX_parameterError];
    swift_willThrow();

    v12 = 0;
  }

  v14 = *a1;
  *a1 = v12;
}

id closure #1 in ExtensionMain.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  result = [objc_allocWithZone(a1(0)) init];
  *a2 = result;
  return result;
}

uint64_t _EXRunningExtension.start(withArguments:count:)()
{
  v1 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x98))())
  {
    return 1;
  }

  (*((*v1 & *v0) + 0xA8))();
  return 0;
}

uint64_t _EXRunningLibXPCServiceExtension._start(withArguments:count:)(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = static CommandLine.arguments.getter();
  v8 = *(v7 + 16);
  if (v8)
  {
    v3 = 0;
    v9 = (v7 + 40);
    do
    {
      v10 = *(v9 - 1) == 0xD000000000000010 && 0x80000001848C4170 == *v9;
      if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_11;
      }

      ++v3;
      v9 += 2;
    }

    while (v8 != v3);
  }

  while (1)
  {
    do
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_11:

      v11 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v12 = static CommandLine.arguments.getter();
      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_23;
      }

      if (v11 >= *(v12 + 16))
      {
        goto LABEL_24;
      }

      v13 = v12 + 16 * v11;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);

      v16 = Data.init(base64Encoded:options:)();
    }

    while (v17 >> 60 == 15);
    v18 = v16;
    v3 = v17;
    v19 = type metadata accessor for JSONDecoder();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type LaunchArguments and conformance LaunchArguments();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v22 = v4 + OBJC_IVAR____TtC19ExtensionFoundation32_EXRunningLibXPCServiceExtension_launchArguments;
    v23 = *(v4 + OBJC_IVAR____TtC19ExtensionFoundation32_EXRunningLibXPCServiceExtension_launchArguments + 16);
    *v22 = v38;
    *(v22 + 8) = v39;
    *(v22 + 16) = v40;
    *(v22 + 24) = v41;

    v24 = [objc_opt_self() _getEntryPointFunction];
    if (!v24)
    {
      break;
    }

    v25 = v24(a2, a1);
    a1 = OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension;
    v26 = *(v4 + OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension);
    if (v26)
    {
      [v26 setHasSwiftEntryPoint_];
      a2 = *(v4 + a1);
      if (!a2)
      {
        goto LABEL_26;
      }

      type metadata accessor for AppExtensionWrapper();
      v27 = swift_dynamicCastClass();
      if (v27)
      {
        v28 = v27;
        v29 = a2;

        v30 = *(v28 + OBJC_IVAR____TtC19ExtensionFoundation19AppExtensionWrapper__handleConnection + 8);
        v31 = static _EXRunningLibXPCServiceExtension.libXPCConnectionHandler;
        static _EXRunningLibXPCServiceExtension.libXPCConnectionHandler = *(v28 + OBJC_IVAR____TtC19ExtensionFoundation19AppExtensionWrapper__handleConnection);
        qword_1EA8729F8 = v30;

        outlined consume of (@escaping @callee_guaranteed () -> ())?(v31);
        outlined consume of Data?(v18, v3);
        v32 = *(v28 + OBJC_IVAR____TtC19ExtensionFoundation19AppExtensionWrapper__acceptSession);
        v33 = *(v28 + OBJC_IVAR____TtC19ExtensionFoundation19AppExtensionWrapper__acceptSession + 8);
        outlined copy of (@escaping @callee_guaranteed (@guaranteed XPCListener.IncomingSessionRequest) -> (@out XPCListener.IncomingSessionRequest.Decision))?(v32);

        v34 = (v4 + OBJC_IVAR____TtC19ExtensionFoundation32_EXRunningLibXPCServiceExtension_sessionConnectionHandler);
        v35 = *(v4 + OBJC_IVAR____TtC19ExtensionFoundation32_EXRunningLibXPCServiceExtension_sessionConnectionHandler);
        v36 = *(v4 + OBJC_IVAR____TtC19ExtensionFoundation32_EXRunningLibXPCServiceExtension_sessionConnectionHandler + 8);
        *v34 = v32;
        v34[1] = v33;
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v35);
        return v25;
      }
    }

    else
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
    }
  }

  outlined consume of Data?(v18, v3);

  return 1;
}

uint64_t LaunchArguments.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19ExtensionFoundation15LaunchArgumentsV10CodingKeys33_D2FCF0381CAFFB8CF6AB845243C2FE04LLOGMd, &_ss22KeyedDecodingContainerVy19ExtensionFoundation15LaunchArgumentsV10CodingKeys33_D2FCF0381CAFFB8CF6AB845243C2FE04LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v21 = 0;
  lazy protocol witness table accessor for type ExtensionType and conformance ExtensionType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v22;
  v20 = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v18 = v12;
  v19 = 2;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  *(a2 + 8) = v18;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15 & 1;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t getEnumTagSinglePayload for ExtensionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void static AppExtension.main()(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = *(AssociatedTypeWitness - 8);
  v6 = *(v64 + 64);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v63 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v65 = (&v60 - v10);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v12 = *(a1 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = static os_log_type_t.debug.getter();
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  v17 = static OS_os_log.general;
  if (os_log_type_enabled(static OS_os_log.general, v16))
  {
    v18 = swift_slowAlloc();
    v62 = a1;
    v61 = v15;
    v19 = v12;
    v20 = v18;
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    type metadata accessor for _EXRunningExtension();
    v22 = static _EXRunningExtension.sharedInstance()();
    *(v20 + 4) = v22;
    *v21 = v22;
    _os_log_impl(&dword_1847D1000, v17, v16, "Launching non-UI extension %@", v20, 0xCu);
    outlined destroy of NSObject?(v21, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    v23 = v21;
    v3 = v2;
    MEMORY[0x1865F56C0](v23, -1, -1);
    v24 = v20;
    v12 = v19;
    v15 = v61;
    a1 = v62;
    MEMORY[0x1865F56C0](v24, -1, -1);
  }

  (*(a2 + 32))(a1, a2);
  v25 = static CommandLine.arguments.getter();
  specialized static NWApplicationID.setNetworkAppID(from:)(v25);
  if (v3)
  {
    (*(v12 + 8))(v15, a1);

    return;
  }

  v26 = *(a2 + 24);
  v26(a1, a2);
  v27 = AssociatedTypeWitness;
  if (swift_dynamicCast())
  {
    v28 = v12;
    v71 = v68;
    v72 = v69;
    v73 = v70;
    type metadata accessor for _EXRunningExtension();
    v29 = static _EXRunningExtension.sharedInstance()();
    v30 = type metadata accessor for AppExtensionWrapper();
    v31 = objc_allocWithZone(v30);
    v32 = swift_allocObject();
    v33 = v72;
    *(v32 + 1) = v71;
    *(v32 + 2) = v33;
    *(v32 + 3) = v73;
    v34 = &v31[OBJC_IVAR____TtC19ExtensionFoundation19AppExtensionWrapper__accept];
    *v34 = partial apply for implicit closure #2 in implicit closure #1 in AppExtensionWrapper.init(handlerConfiguration:);
    v34[1] = v32;
    v35 = swift_allocObject();
    v36 = v72;
    *(v35 + 1) = v71;
    *(v35 + 2) = v36;
    *(v35 + 3) = v73;
    v37 = &v31[OBJC_IVAR____TtC19ExtensionFoundation19AppExtensionWrapper__acceptSession];
    *v37 = partial apply for implicit closure #4 in implicit closure #3 in AppExtensionWrapper.init(handlerConfiguration:);
    v37[1] = v35;
    v38 = swift_allocObject();
    v39 = v72;
    *(v38 + 1) = v71;
    *(v38 + 2) = v39;
    *(v38 + 3) = v73;
    v40 = &v31[OBJC_IVAR____TtC19ExtensionFoundation19AppExtensionWrapper__handleConnection];
    *v40 = partial apply for implicit closure #6 in implicit closure #5 in AppExtensionWrapper.init(handlerConfiguration:);
    v40[1] = v38;
    outlined init with copy of ConnectionHandler(&v71, &v68);
    outlined init with copy of ConnectionHandler(&v71, &v68);
    outlined init with copy of ConnectionHandler(&v71, &v68);
    v66.receiver = v31;
    v66.super_class = v30;
    v41 = objc_msgSendSuper2(&v66, sel_init);
    v42 = OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension;
    if (!*&v29[OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension])
    {
      v43 = v41;
      outlined destroy of ConnectionHandler(&v71);
      (*(v28 + 8))(v15, a1);
      v44 = *&v29[v42];
      *&v29[v42] = v43;

LABEL_15:
      return;
    }
  }

  else
  {
    v62 = v12;
    v26(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation03AppA13Configuration_AA023LibXPCConnectionHandlerD0pMd, &_s19ExtensionFoundation03AppA13Configuration_AA023LibXPCConnectionHandlerD0pMR);
    if (swift_dynamicCast())
    {
      outlined init with take of AppExtensionConfiguration & LibXPCConnectionHandlerConfiguration(v67, &v68);
      type metadata accessor for _EXRunningExtension();
      v45 = static _EXRunningExtension.sharedInstance()();
      v46 = *(&v69 + 1);
      v47 = v70;
      v48 = __swift_project_boxed_opaque_existential_1(&v68, *(&v69 + 1));
      v49 = objc_allocWithZone(type metadata accessor for AppExtensionWrapper());
      v50 = specialized AppExtensionWrapper.init<A>(_:)(v48, v46, v47, *(&v47 + 1));
      v51 = OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension;
      if (!*&v45[OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension])
      {
        v52 = v50;
        (*(v62 + 8))(v15, a1);
        v53 = *&v45[v51];
        *&v45[v51] = v52;

        __swift_destroy_boxed_opaque_existential_0Tm(&v68);
        return;
      }
    }

    else
    {
      memset(v67, 0, sizeof(v67));
      outlined destroy of NSObject?(v67, &_s19ExtensionFoundation03AppA13Configuration_AA023LibXPCConnectionHandlerD0pSgMd, &_s19ExtensionFoundation03AppA13Configuration_AA023LibXPCConnectionHandlerD0pSgMR);
      type metadata accessor for _EXRunningExtension();
      v61 = static _EXRunningExtension.sharedInstance()();
      v65 = type metadata accessor for AppExtensionWrapper();
      v54 = v63;
      v26(a1, a2);
      v55 = v61;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v57 = objc_allocWithZone(v65);
      v58 = specialized AppExtensionWrapper.init<A>(_:)(v54, v27, AssociatedConformanceWitness);
      (*(v64 + 8))(v54, v27);
      v59 = OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension;
      if (!*&v55[OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension])
      {
        (*(v62 + 8))(v15, a1);
        v44 = *&v55[v59];
        *&v55[v59] = v58;

        goto LABEL_15;
      }
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t one-time initialization function for general(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  *a4 = result;
  return result;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t specialized static NWApplicationID.setNetworkAppID(from:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NWApplicationID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = specialized static NWApplicationID.findEncodedNetworkAppID(from:)(a1);
  if (v10)
  {
    v11 = result;
    v12 = v10;

    v13 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v11, v12);
    v15 = v14;
    v16 = type metadata accessor for JSONDecoder();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type NWApplicationID and conformance NWApplicationID(&lazy protocol witness table cache variable for type NWApplicationID and conformance NWApplicationID);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (v2)
    {

      outlined consume of Data._Representation(v13, v15);
    }

    else
    {

      NWApplicationID.setSelf()();
      outlined consume of Data._Representation(v13, v15);

      return (*(v5 + 8))(v8, v4);
    }
  }

  return result;
}

uint64_t specialized static NWApplicationID.findEncodedNetworkAppID(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  for (i = (a1 + 56); ; i += 2)
  {
    result = *(i - 3);
    if (result == 0x6B726F7774654E2DLL && *(i - 2) == 0xED00004449707041)
    {
      break;
    }

    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if (result)
    {
      break;
    }

    if (v1 == ++v2)
    {
      return 0;
    }
  }

  if (v2 >= (v1 - 1))
  {
    return 0;
  }

  if (v2 + 1 >= v1)
  {
    __break(1u);
  }

  else
  {
    v7 = *(i - 1);
    v6 = *i;

    return v7;
  }

  return result;
}

_OWORD *outlined init with take of AppExtensionConfiguration & LibXPCConnectionHandlerConfiguration(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t (*implicit closure #1 in AppExtensionWrapper.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a2);
  return partial apply for implicit closure #2 in implicit closure #1 in AppExtensionWrapper.init<A>(_:);
}

id specialized AppExtensionWrapper.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = implicit closure #1 in AppExtensionWrapper.init<A>(_:)(a1, a2, a3, a4);
  v10 = &v4[OBJC_IVAR____TtC19ExtensionFoundation19AppExtensionWrapper__accept];
  *v10 = v9;
  v10[1] = v11;
  v12 = &v4[OBJC_IVAR____TtC19ExtensionFoundation19AppExtensionWrapper__acceptSession];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = implicit closure #3 in AppExtensionWrapper.init<A>(_:)(a1, a2, a3, a4);
  v14 = &v4[OBJC_IVAR____TtC19ExtensionFoundation19AppExtensionWrapper__handleConnection];
  *v14 = v13;
  v14[1] = v15;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for AppExtensionWrapper();
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t (*implicit closure #3 in AppExtensionWrapper.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a2);
  return partial apply for implicit closure #4 in implicit closure #3 in AppExtensionWrapper.init<A>(_:);
}

Swift::Void __swiftcall _EXRunningLibXPCServiceExtension.resume()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for XPCListener.InitializationOptions();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  [objc_opt_self() _checkIn];
  p_cb = &OBJC_PROTOCOL___OS_os_transaction.cb;
  v14 = OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension;
  v15 = *&v0[OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension];
  if (!v15)
  {
    __break(1u);
    goto LABEL_8;
  }

  [v15 willFinishLaunching];
  v14 = *&v14[v0];
  if (!v14)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    v33 = v0;
    v34 = &v0[OBJC_IVAR____TtC19ExtensionFoundation32_EXRunningLibXPCServiceExtension_launchArguments];
    v0 = *&v0[OBJC_IVAR____TtC19ExtensionFoundation32_EXRunningLibXPCServiceExtension_launchArguments + 16];
    if (v0)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_11:
    type metadata accessor for OS_dispatch_queue();
    v16 = static OS_dispatch_queue.main.getter();
    v17 = swift_allocObject();
    *(v17 + 16) = v0;
    v40 = partial apply for closure #4 in _EXRunningLibXPCServiceExtension.resume();
    v41 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v37 = 1107296256;
    v38 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v39 = &block_descriptor_12;
    v14 = _Block_copy(&aBlock);
    v34 = v0;
    static DispatchQoS.unspecified.getter();
    v35 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1865F3C00](0, v10, v5, v14);
    _Block_release(v14);

    v18 = *(v2 + 8);
    v2 += 8;
    v18(v5, v1);
    v19 = *(v7 + 8);
    v7 += 8;
    v19(v10, v6);

    p_cb = &v34[OBJC_IVAR____TtC19ExtensionFoundation32_EXRunningLibXPCServiceExtension_launchArguments];
    if (*&v34[OBJC_IVAR____TtC19ExtensionFoundation32_EXRunningLibXPCServiceExtension_launchArguments + 16])
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_13:
    v20 = *(p_cb + 1);
    v32[1] = *(v34 + 1);
    v21 = swift_allocObject();
    v32[0] = v21;
    *(v21 + 16) = v14;
    *(v21 + 24) = v20;
    outlined copy of (@escaping @callee_guaranteed (@guaranteed XPCListener.IncomingSessionRequest) -> (@out XPCListener.IncomingSessionRequest.Decision))?(v14);
    outlined copy of (@escaping @callee_guaranteed (@guaranteed XPCListener.IncomingSessionRequest) -> (@out XPCListener.IncomingSessionRequest.Decision))?(v14);

    static XPCListener.InitializationOptions.none.getter();
    v22 = type metadata accessor for XPCListener();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    v25 = XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();
    v26 = v33;
    v27 = *&v33[OBJC_IVAR____TtC19ExtensionFoundation32_EXRunningLibXPCServiceExtension_sessionListener];
    *&v33[OBJC_IVAR____TtC19ExtensionFoundation32_EXRunningLibXPCServiceExtension_sessionListener] = v25;

    type metadata accessor for OS_dispatch_queue();
    v28 = static OS_dispatch_queue.main.getter();
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    v40 = partial apply for closure #2 in _EXRunningLibXPCServiceExtension.resume();
    v41 = v29;
    aBlock = MEMORY[0x1E69E9820];
    v37 = 1107296256;
    v38 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v39 = &block_descriptor_20;
    v30 = _Block_copy(&aBlock);
    v31 = v26;
    static DispatchQoS.unspecified.getter();
    v35 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1865F3C00](0, v10, v5, v30);
    _Block_release(v30);

    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v10, v6);

    p_cb = *(v34 + 2);
    if (p_cb)
    {
      if (v34[24])
      {
        sandbox_enable_local_state_flag();
      }

      dispatch_main();
    }

    __break(1u);
LABEL_15:
    if (p_cb[6])
    {
      sandbox_enable_local_state_flag();
    }

    xpc_main(@objc closure #3 in _EXRunningLibXPCServiceExtension.resume());
  }

  type metadata accessor for AppExtensionWrapper();
  if (!swift_dynamicCastClass())
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  p_cb = &v0[OBJC_IVAR____TtC19ExtensionFoundation32_EXRunningLibXPCServiceExtension_sessionConnectionHandler];
  v14 = *&v0[OBJC_IVAR____TtC19ExtensionFoundation32_EXRunningLibXPCServiceExtension_sessionConnectionHandler];
  if (v14)
  {
    goto LABEL_9;
  }

  if (static _EXRunningLibXPCServiceExtension.libXPCConnectionHandler)
  {
    goto LABEL_11;
  }
}

uint64_t sub_1848070C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1848070FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

id partial apply for closure #4 in _EXRunningLibXPCServiceExtension.resume()()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension);
  if (result)
  {
    return [result didFinishLaunching];
  }

  __break(1u);
  return result;
}

uint64_t @objc closure #3 in _EXRunningLibXPCServiceExtension.resume()(uint64_t result)
{
  v1 = static _EXRunningLibXPCServiceExtension.libXPCConnectionHandler;
  if (static _EXRunningLibXPCServiceExtension.libXPCConnectionHandler)
  {
    v2 = result;
    swift_unknownObjectRetain();
    outlined copy of (@escaping @callee_guaranteed (@guaranteed XPCListener.IncomingSessionRequest) -> (@out XPCListener.IncomingSessionRequest.Decision))?(v1);
    v1(v2);
    swift_unknownObjectRelease();

    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v1);
  }

  return result;
}

__n128 AppExtensionProcess.Configuration.init(appExtensionIdentity:onInterruption:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AppExtensionProcess.Configuration(0);
  v9 = v8[6];
  if (one-time initialization token for nilInstanceIdentifier != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for AppExtensionProcess._InstanceIdentifier(0);
  v11 = __swift_project_value_buffer(v10, static AppExtensionProcess._InstanceIdentifier.nilInstanceIdentifier);
  outlined init with copy of AppExtensionProcess._InstanceIdentifier(v11, a4 + v9, type metadata accessor for AppExtensionProcess._InstanceIdentifier);
  *(a4 + v8[7]) = 0;
  v12 = v8[8];
  *(a4 + v12) = specialized static RBSDomainAttribute.defaultExtensionAttributes.getter();
  v13 = *(a1 + 32);
  result = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = result;
  *(a4 + 32) = v13;
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t partial apply for closure #2 in AppExtensionPoint.Monitor.ObserverController.addMonitor(_:for:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void specialized _EXExtensionProcessMannger.applyNetworkApplicationID(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - v7;
  v9 = type metadata accessor for NWApplicationID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static NWApplicationID.self.getter();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of NSObject?(v8, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.general);
    v15 = a1;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138543362;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      _os_log_impl(&dword_1847D1000, v16, v17, "Failed to resolve host network app id to config: %{public}@", v18, 0xCu);
      outlined destroy of NSObject?(v19, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      MEMORY[0x1865F56C0](v19, -1, -1);
      MEMORY[0x1865F56C0](v18, -1, -1);
    }
  }

  else
  {
    v21 = *(v10 + 32);
    v21(v13, v8, v9);
    v21(v6, v13, v9);
    (*(v10 + 56))(v6, 0, 1, v9);
    v22 = OBJC_IVAR____EXLaunchConfiguration_networkApplicationID;
    swift_beginAccess();
    outlined assign with take of NWApplicationID?(v6, a1 + v22);
    swift_endAccess();
  }
}

uint64_t outlined assign with take of NWApplicationID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NWApplicationID.encodedNetworkAppIDArgs()()
{
  v1 = type metadata accessor for String.Encoding();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1848BAA10;
  strcpy((v3 + 32), "-NetworkAppID");
  *(v3 + 46) = -4864;
  v4 = type metadata accessor for JSONEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for NWApplicationID();
  lazy protocol witness table accessor for type NWApplicationID and conformance NWApplicationID(&lazy protocol witness table cache variable for type NWApplicationID and conformance NWApplicationID);
  v7 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v9 = v8;

  if (v0)
  {
    *(v3 + 16) = 0;

    return v3;
  }

  static String.Encoding.utf8.getter();
  result = String.init(data:encoding:)();
  if (v11)
  {
    v12 = result;
    v13 = v11;
    outlined consume of Data._Representation(v7, v9);
    *(v3 + 48) = v12;
    *(v3 + 56) = v13;
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type NWApplicationID and conformance NWApplicationID(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NWApplicationID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of _InnerAppExtensionIdentity(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_0Tm(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  outlined destroy of NSObject?(__src, &_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  closure #2 in Data.init<A>(_:)(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = specialized Data._Representation.init(count:)(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v10 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.init<A>(_:));
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    Data._Representation.append(contentsOf:)();
    outlined consume of Data?(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  outlined consume of Data?(v36, v6);
LABEL_63:
  v32 = __src[0];
  outlined copy of Data._Representation(*&__src[0], *(&__src[0] + 1));

  outlined consume of Data._Representation(v32, *(&v32 + 1));
  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

uint64_t closure #2 in Data.init<A>(_:)@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = specialized Data.InlineData.init(_:)(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = type metadata accessor for __DataStorage();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void NWApplicationID.setSelf()()
{
  v1 = type metadata accessor for NWApplicationID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - v7;
  NWApplicationID.nw.getter();
  v9 = nw_application_id_set_self();
  swift_unknownObjectRelease();
  if (v9)
  {
    v10 = static os_log_type_t.error.getter();
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    v11 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = v9;
      _os_log_impl(&dword_1847D1000, v11, v10, "Could not apply network app ID: %{darwin.errno}d", v12, 8u);
      MEMORY[0x1865F56C0](v12, -1, -1);
    }

    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.extensionKit.errorDomain" code:16 userInfo:0];
    swift_willThrow();
  }

  else
  {
    v13 = static os_log_type_t.info.getter();
    v14 = *(v2 + 16);
    v14(v8, v0, v1);
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    v15 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v15, v13))
    {
      v16 = swift_slowAlloc();
      v24 = v13;
      v17 = v16;
      v23 = swift_slowAlloc();
      v25 = v23;
      *v17 = 136315138;
      v14(v6, v8, v1);
      v18 = String.init<A>(describing:)();
      v20 = v19;
      (*(v2 + 8))(v8, v1);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v25);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1847D1000, v15, v24, "Set network app id to %s", v17, 0xCu);
      v22 = v23;
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x1865F56C0](v22, -1, -1);
      MEMORY[0x1865F56C0](v17, -1, -1);
    }

    else
    {

      (*(v2 + 8))(v8, v1);
    }
  }
}

Swift::Void __swiftcall AppExtensionProcess.invalidate()()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[1];
  v4 = OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandlerLock;
  os_unfair_lock_lock((*&v3[OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandlerLock] + 16));
  v5 = &v3[OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandler];
  v6 = *&v3[OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandler];
  v7 = *&v3[OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandler + 8];
  *v5 = 0;
  *(v5 + 1) = 0;
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
  os_unfair_lock_unlock((*&v3[v4] + 16));
  v8 = *(v2 + OBJC_IVAR____EXExtensionProcessHandle_observersLock);
  v9 = v3;
  os_unfair_lock_lock(v8 + 4);
  [*(v2 + OBJC_IVAR____EXExtensionProcessHandle_observers) removeObject_];
  os_unfair_lock_unlock(v8 + 4);

  _EXExtensionProcessHandle.invalidate()();
}

Swift::Void __swiftcall _EXExtensionProcessHandle.invalidate()()
{
  v1 = *(v0 + OBJC_IVAR____EXExtensionProcessHandle_invalidationLock);
  os_unfair_lock_lock(v1 + 4);
  v2 = *(v0 + OBJC_IVAR____EXExtensionProcessHandle_assertion);
  if (v2)
  {
    *(v0 + OBJC_IVAR____EXExtensionProcessHandle_assertion) = 0;
    *(v0 + OBJC_IVAR____EXExtensionProcessHandle_assertionAquireCount) = 0;
  }

  os_unfair_lock_unlock(v1 + 4);
  [v2 invalidate];
  _EXExtensionProcessHandle.cleanUpAfterInvalidation()();
}

Swift::Void __swiftcall _EXExtensionProcessHandle.cleanUpAfterInvalidation()()
{
  v1 = *&v0[OBJC_IVAR____EXExtensionProcessHandle_invalidationLock];
  os_unfair_lock_lock(v1 + 4);
  if (v0[OBJC_IVAR____EXExtensionProcessHandle_invalidationLock_invalidated] == 1)
  {

    os_unfair_lock_unlock(v1 + 4);
    return;
  }

  v0[OBJC_IVAR____EXExtensionProcessHandle_invalidationLock_invalidated] = 1;
  if (one-time initialization token for launch != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.launch);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_1847D1000, v4, v5, "Assertion for extension process '%{public}@' invalidated", v6, 0xCu);
    outlined destroy of NSObject?(v7);
    MEMORY[0x1865F56C0](v7, -1, -1);
    MEMORY[0x1865F56C0](v6, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong processDidInvalidate_];

  v10 = *&v3[OBJC_IVAR____EXExtensionProcessHandle_xpcConnectionLock];
  os_unfair_lock_lock(v10 + 4);
  v11 = [*&v3[OBJC_IVAR____EXExtensionProcessHandle_xpcConnections] allObjects];
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSXPCConnection, 0x1E696B0B8);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  os_unfair_lock_unlock(v10 + 4);
  v13 = *&v3[OBJC_IVAR____EXExtensionProcessHandle_observersLock];
  os_unfair_lock_lock(v13 + 4);
  v45 = v3;
  v14 = [*&v3[OBJC_IVAR____EXExtensionProcessHandle_observers] allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXExtensionProcessObserver_pMd, &_s19ExtensionFoundation27_EXExtensionProcessObserver_pMR);
  v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  os_unfair_lock_unlock(v13 + 4);
  os_unfair_lock_unlock(v1 + 4);
  if (v12 >> 62)
  {
    v15 = __CocoaSet.count.getter();
    if (!v15)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_20;
    }
  }

  if (v15 < 1)
  {
    __break(1u);
    goto LABEL_36;
  }

  v16 = 0;
  v17 = &selRef_initWithIdentifier_platform_error_;
  do
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1865F3F40](v16, v12);
    }

    else
    {
      v18 = *(v12 + 8 * v16 + 32);
    }

    v19 = v18;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = v17;
      v24 = swift_slowAlloc();
      *v22 = 138543362;
      *(v22 + 4) = v19;
      *v24 = v19;
      v25 = v19;
      _os_log_impl(&dword_1847D1000, v20, v21, "Invalidating connection '%{public}@'", v22, 0xCu);
      outlined destroy of NSObject?(v24);
      v26 = v24;
      v17 = v23;
      MEMORY[0x1865F56C0](v26, -1, -1);
      MEMORY[0x1865F56C0](v22, -1, -1);
    }

    ++v16;

    [v19 v17[32]];
  }

  while (v15 != v16);
LABEL_20:

  v27 = v44;
  if (v44 >> 62)
  {
    v28 = __CocoaSet.count.getter();
    v29 = v45;
    if (v28)
    {
LABEL_22:
      if (v28 >= 1)
      {
        v30 = 0;
        v31 = v44 & 0xC000000000000001;
        do
        {
          if (v31)
          {
            v32 = MEMORY[0x1865F3F40](v30, v27);
          }

          else
          {
            v32 = *(v27 + 8 * v30 + 32);
            swift_unknownObjectRetain();
          }

          swift_unknownObjectRetain();
          v33 = Logger.logObject.getter();
          v34 = static os_log_type_t.debug.getter();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            v36 = v28;
            v37 = v31;
            v38 = swift_slowAlloc();
            v46 = v38;
            *v35 = 136446210;
            swift_unknownObjectRetain();
            v39 = String.init<A>(describing:)();
            v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v46);

            *(v35 + 4) = v41;
            v27 = v44;
            _os_log_impl(&dword_1847D1000, v33, v34, "Informing process observer '%{public}s' of extension process invalidation", v35, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v38);
            v42 = v38;
            v31 = v37;
            v28 = v36;
            MEMORY[0x1865F56C0](v42, -1, -1);
            v43 = v35;
            v29 = v45;
            MEMORY[0x1865F56C0](v43, -1, -1);
          }

          ++v30;
          [v32 processDidInvalidate_];
          swift_unknownObjectRelease();
        }

        while (v28 != v30);

        return;
      }

LABEL_36:
      __break(1u);
      return;
    }
  }

  else
  {
    v28 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v29 = v45;
    if (v28)
    {
      goto LABEL_22;
    }
  }
}

id _EXRegistrationLog()
{
  if (_EXRegistrationLog_onceToken != -1)
  {
    _EXRegistrationLog_cold_1();
  }

  v1 = _EXRegistrationLog_log;

  return v1;
}

uint64_t useAssertions()
{
  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  v1 = +[_EXDefaults sharedInstance];
  v2 = [v1 platformShouldExhibitEmbeddedBehavior];

  return v2;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void safelyAccessPidForExtensionIdentiferDictionary(void *a1)
{
  v1 = a1;
  if (safelyAccessPidForExtensionIdentiferDictionary_once == -1)
  {
    if (!v1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = v1;
  safelyAccessPidForExtensionIdentiferDictionary_cold_1();
  v1 = v3;
  if (v3)
  {
LABEL_3:
    v2 = v1;
    os_unfair_lock_lock(&safelyAccessPidForExtensionIdentiferDictionary___lock);
    v2[2](v2, safelyAccessPidForExtensionIdentiferDictionary___extensionIDToProcessID);
    os_unfair_lock_unlock(&safelyAccessPidForExtensionIdentiferDictionary___lock);
    v1 = v2;
  }

LABEL_4:
}

id _NSAcquireProcessAssertionForPIDWithOptions(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a1 < 1)
  {
    goto LABEL_10;
  }

  if (useAssertions())
  {
    if (a2)
    {
      v6 = 15;
    }

    else
    {
      v6 = 7;
    }

    v7 = [objc_alloc(MEMORY[0x1E698D038]) initWithPID:a1 flags:v6 reason:9 name:@"com.apple.extension.session"];
    [v7 setInvalidationHandler:v5];
  }

  else
  {
    v7 = 0;
  }

  if (([v7 acquire] & 1) == 0)
  {
    [v7 invalidate];

LABEL_10:
    v7 = 0;
  }

  return v7;
}

const void *__EXConcreteExtensionGetProcessIdentifierForExtensionIdentifier_block_invoke(uint64_t a1, CFDictionaryRef theDict)
{
  result = CFDictionaryGetValue(theDict, *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __EXExtensionCompleteRequestReturningItemsContinuation_block_invoke(uint64_t a1)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  if (*(a1 + 48))
  {
    v2 = [MEMORY[0x1E696AE30] processInfo];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = [MEMORY[0x1E696AE30] processInfo];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __EXExtensionCompleteRequestReturningItemsContinuation_block_invoke_2;
      v11[3] = &unk_1E6E4E040;
      v13 = *(a1 + 48);
      v12 = *(a1 + 40);
      [v4 performExpiringActivityWithReason:@"com.apple.extension-completion" usingBlock:v11];

      v5 = v13;
    }

    else
    {
      v7 = dispatch_get_global_queue(21, 0);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __EXExtensionCompleteRequestReturningItemsContinuation_block_invoke_4;
      v8[3] = &unk_1E6E4DAC0;
      v10 = *(a1 + 48);
      v9 = *(a1 + 40);
      dispatch_async(v7, v8);

      v5 = v10;
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696B0F8] _sharedExtensionContextVendor];
    v6 = [*(a1 + 40) _UUID];
    [v5 _tearDownContextWithUUID:v6];
  }

  os_activity_scope_leave(&state);
}

void EXConcreteExtensionTearDownRequestWithIdentifier(void *a1, void *a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = [v5 _extensionContextForUUID:v6];
  v8 = _EXLegacyLog();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v29 = v6;
      v30 = 2114;
      v31 = v5;
      v32 = 1024;
      LODWORD(v33) = [v5 _plugInProcessIdentifier];
      _os_log_impl(&dword_1847D1000, v9, OS_LOG_TYPE_DEFAULT, "tearing down extension request %{public}@ to extension %{public}@ (last known pid %d)", buf, 0x1Cu);
    }

    v9 = [v7 internalImplementation];
    v10 = [v9 _processAssertion];
    [v9 _setProcessAssertion:0];
    v11 = [v9 _pkUUID];
    v12 = [v11 copy];

    [v9 invalidate];
    v13 = [v5 _extensionContexts];
    [v13 removeObjectForKey:v6];

    v14 = [v5 _extensionServiceConnections];
    v15 = [v14 objectForKeyedSubscript:v6];

    [v15 setInvalidationHandler:0];
    [v15 setInterruptionHandler:0];
    [v15 invalidate];
    v16 = [v5 _extensionServiceConnections];
    [v16 removeObjectForKey:v6];

    v17 = _EXLegacyLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543874;
      v29 = v6;
      v30 = 2114;
      v31 = v10;
      v32 = 2048;
      v33 = a3;
      _os_log_debug_impl(&dword_1847D1000, v17, OS_LOG_TYPE_DEBUG, "Schedule request '%{public}@' assertion (%{public}@) cleanup after %llu seconds.", buf, 0x20u);
    }

    v18 = dispatch_time(0, 1000000000 * a3);
    v19 = [EXConcreteExtension globalStateQueueForExtension:v5];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __EXConcreteExtensionTearDownRequestWithIdentifier_block_invoke;
    v23[3] = &unk_1E6E4DEA8;
    v24 = v6;
    v25 = v10;
    v26 = v5;
    v27 = v12;
    v20 = v12;
    v21 = v10;
    dispatch_after(v18, v19, v23);
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    EXConcreteExtensionTearDownRequestWithIdentifier_cold_1();
  }

  v22 = *MEMORY[0x1E69E9840];
}

void EXConcreteExtensionTearDownRequestCompletion(void *a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = a2;
  v8 = _EXLegacyLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = [v5 _plugInProcessIdentifier];
    _os_log_impl(&dword_1847D1000, v8, OS_LOG_TYPE_DEFAULT, "in EXConcreteExtensionTearDownRequestCompletion for plugin pid %d", v11, 8u);
  }

  v6[2](v6);
  [v5 requestTeardownDelay];
  EXConcreteExtensionTearDownRequestWithIdentifier(v5, v7, v9);

  v10 = *MEMORY[0x1E69E9840];
}

objc_class *EXGetExtensionContextVendorClass()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = _EXLegacyLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = NSStringFromClass(v0);
    v5 = 136446466;
    v6 = "Class EXGetExtensionContextVendorClass(void)";
    v7 = 2114;
    v8 = v2;
    _os_log_impl(&dword_1847D1000, v1, OS_LOG_TYPE_DEFAULT, "%{public}s returning %{public}@", &v5, 0x16u);
  }

  v3 = *MEMORY[0x1E69E9840];

  return v0;
}

void _EXExtensionInstallRunloopObserverToPingLaunchdAfterEvent()
{
  Main = CFRunLoopGetMain();
  if (!Main)
  {
    _EXExtensionInstallRunloopObserverToPingLaunchdAfterEvent_cold_1();
  }

  v1 = Main;
  v2 = CFRunLoopObserverCreate(0, 0xA0uLL, 0, 0, _EXExtensionPingLaunchdAfterEvent, 0);
  __EXExtensionPingLaunchdObserver = v2;
  v3 = *MEMORY[0x1E695E8D0];

  CFRunLoopAddObserver(v1, v2, v3);
}

void _EXExtensionPingLaunchdAfterEvent()
{
  +[EXXPCUtil checkInWithLaunchd];
  CFRelease(__EXExtensionPingLaunchdObserver);
  __EXExtensionPingLaunchdObserver = 0;
}

void __EXConcreteExtensionTearDownRequestWithIdentifier_block_invoke_400_cold_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v9 = [a2 localizedDescription];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

xpc_connection_t AppExtensionProcess._makeLibXPCConnection()()
{
  v1 = *(*v0 + OBJC_IVAR____EXExtensionProcessHandle_libXPCEndpoint);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR___EXConnectionEndpoint_xpcEndpoint);
    if (v2)
    {
      return xpc_connection_create_from_endpoint(v2);
    }
  }

  v4 = objc_opt_self();
  v5 = MEMORY[0x1865F36D0](0xD000000000000022, 0x80000001848C4E00);
  [v4 _EX_errorWithCode_description_];

  return swift_willThrow();
}

objc_class *EXGetExtensionContextInternalClass()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = _EXLegacyLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = NSStringFromClass(v0);
    v5 = 136446466;
    v6 = "Class EXGetExtensionContextInternalClass(void)";
    v7 = 2114;
    v8 = v2;
    _os_log_impl(&dword_1847D1000, v1, OS_LOG_TYPE_DEFAULT, "%{public}s returning %{public}@", &v5, 0x16u);
  }

  v3 = *MEMORY[0x1E69E9840];

  return v0;
}

uint64_t sub_18480B488()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18480B4C0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_18480B540()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18480B578()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18480B5B0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_18480B5E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension);
  if (result)
  {
    *a2 = result;
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So15NSXPCConnectionCSbIeghgd_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18480B624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy19ExtensionFoundation03AppB5PointV7MonitorC5StateVs5Error_p_GMd, &_sScs12ContinuationVy19ExtensionFoundation03AppB5PointV7MonitorC5StateVs5Error_p_GMR);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_18480B754(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy19ExtensionFoundation03AppB5PointV7MonitorC5StateVs5Error_p_GMd, &_sScs12ContinuationVy19ExtensionFoundation03AppB5PointV7MonitorC5StateVs5Error_p_GMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_18480B884()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18480B8BC()
{
  v1 = (type metadata accessor for LocalLSDatabaseObserver.Observer(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7]);

  v7 = v1[9];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy19ExtensionFoundation03AppB5PointV7MonitorC5StateVs5Error_p_GMd, &_sScs12ContinuationVy19ExtensionFoundation03AppB5PointV7MonitorC5StateVs5Error_p_GMR);
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_18480B9F4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 4);
  v2 = v0[9];

  v3 = v0[11];

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_18480BA48()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_18480BAA0()
{
  MEMORY[0x1865F57F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18480BADC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18480BB20()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18480BB64()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18480BB9C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18480BBD4()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_18480BC14()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void _s19ExtensionFoundation16_EXServiceClientC8ObserverC8listener_25shouldAcceptNewConnectionSbSo13NSXPCListenerC_So15NSXPCConnectionCtFyycfU__0()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = *&Strong[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_connection];
  *&Strong[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_connection] = 0;
}

uint64_t sub_18480BCA4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18480BCE4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18480BD1C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18480BD5C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18480BD98()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18480BDD8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18480BE20()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18480BE58()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18480BEA4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_18480BFE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_18480C11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_18480C258(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_18480C394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18480C468()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18480C4A4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static _EXExtensionInstanceIdentifier.supportsSecureCoding;
  return result;
}

uint64_t sub_18480C4F0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static _EXExtensionInstanceIdentifier.supportsSecureCoding = v1;
  return result;
}

id sub_18480C538@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 configuration];
  *a2 = result;
  return result;
}

uint64_t sub_18480C58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_18480C648(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18480C700()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18480C738()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18480C784()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_18480C848()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18480C880()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_18480C8D0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18480C928()
{
  v1 = type metadata accessor for _ServiceExtensionProcess.Configuration(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 32);

  v9 = *(v1 + 28);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  v12 = *(v6 + *(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_18480CA80@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @callee_guaranteed () -> ();
  a2[1] = v5;
}

uint64_t sub_18480CAF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for _ServiceExtensionProcess.Configuration(0) + 32));
}

uint64_t sub_18480CB3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ServiceExtensionProcess.Inner(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18480CBA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ServiceExtensionProcess.Inner(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18480CC18(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AppExtensionProcess._InstanceIdentifier(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_18480CCC4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AppExtensionProcess._InstanceIdentifier(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18480CD68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for _ServiceExtensionProcess.Configuration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_18480CE24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for _ServiceExtensionProcess.Configuration(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18480CEDC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18480CF14()
{
  v1 = type metadata accessor for _ServiceExtensionProcess.Configuration(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 16);

  v7 = *(v0 + v3 + 32);

  v8 = *(v1 + 28);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  v11 = *(v5 + *(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_18480D068()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18480D0B0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static _EXExtensionProcessHandle.supportsSecureCoding;
  return result;
}

uint64_t sub_18480D0FC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static _EXExtensionProcessHandle.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_18480D150()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18480D188()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 68, 7);
}

uint64_t sub_18480D1C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySay19ExtensionFoundation04_AppB8IdentityVG_GMd, &_sScS12ContinuationVySay19ExtensionFoundation04_AppB8IdentityVG_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_18480D254()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_18480D2C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18480D30C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18480D344()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 68, 7);
}

uint64_t sub_18480D430(uint64_t a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for AppExtensionProcess.Configuration(0) + 24);

  return outlined assign with copy of AppExtensionProcess._InstanceIdentifier(a1, v3);
}

uint64_t sub_18480D478@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for AppExtensionProcess.Configuration(0);
  *a2 = *(a1 + *(result + 28));
  return result;
}

uint64_t sub_18480D4B0(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for AppExtensionProcess.Configuration(0);
  *(a2 + *(result + 28)) = v3;
  return result;
}

uint64_t sub_18480D4E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for AppExtensionProcess.Configuration(0) + 32));
}

uint64_t sub_18480D590@<X0>(uint64_t *a1@<X8>)
{
  result = _AppExtensionProcess.Configuration.instanceIdentifier.getter();
  *a1 = result;
  return result;
}

void sub_18480D5BC(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 56);
  v5 = *a1;

  *(a2 + 56) = v3;
}

uint64_t sub_18480D5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AppExtensionProcess._InstanceIdentifier(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18480D6A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AppExtensionProcess._InstanceIdentifier(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18480D748(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18480D7C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18480D83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18480D8F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18480D9B4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18480D9F0(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for UUID();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for URL();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[14];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[15];

  return v15(v16, a2, v14);
}

uint64_t sub_18480DB68(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UUID();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for URL();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[14];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[15];

  return v15(v16, a2, a2, v14);
}

void sub_18480E1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_184810050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock((v24 + v25));
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void EXConcreteExtensionErrorCleanupHandler(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [EXConcreteExtension globalStateQueueForExtension:v3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __EXConcreteExtensionErrorCleanupHandler_block_invoke;
  v8[3] = &unk_1E6E4DB10;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_async(v5, v8);
}

void sub_184811094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1848116A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_184811B3C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock((v2 + v3));
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_184812078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_184812170(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

id EXConcreteExtensionFilterItemsWithMCProfile(void *a1, void *a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v5 = getMCProfileConnectionClass_softClass;
  v19 = getMCProfileConnectionClass_softClass;
  if (!getMCProfileConnectionClass_softClass)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __getMCProfileConnectionClass_block_invoke;
    v15[3] = &unk_1E6E4DEF8;
    v15[4] = &v16;
    __getMCProfileConnectionClass_block_invoke(v15);
    v5 = v17[3];
  }

  v6 = v5;
  _Block_object_dispose(&v16, 8);
  v7 = [v5 sharedConnection];
  v8 = [v3 identifier];
  v20[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v10 = [MEMORY[0x1E696AAE8] mainBundle];
  v11 = [v10 bundleIdentifier];
  v12 = [v7 allowedAppBundleIDsForBidirectionalDataMovementAfterApplyingFilterToBundleIDs:v9 localAppBundleID:v11 localAccountIsManaged:0];

  if (![v12 count])
  {

    v4 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

void sub_184812AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_EXItemProviderSandboxedResource *EXConcreteExtensionGetSandboxedResourceForItemIfNeeded(void *a1, _OWORD *a2, uint64_t a3)
{
  v5 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 isFileURL])
  {
    v6 = [_EXItemProviderSandboxedResource alloc];
    v7 = a2[1];
    v10[0] = *a2;
    v10[1] = v7;
    v8 = [(_EXItemProviderSandboxedResource *)v6 initWithContentsOfURL:v5 auditToken:v10 error:a3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void EXConcreteExtensionCompleteItemLoading(void *a1, _OWORD *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v16 = 0;
    v12 = a2[1];
    v15[0] = *a2;
    v15[1] = v12;
    v10 = EXConcreteExtensionGetSandboxedResourceForItemIfNeeded(v7, v15, &v16);
    v13 = v16;
    if (v13)
    {
      v14 = v13;

      v11 = v14;
      v7 = 0;
      v8 = v11;
    }

    else if (v10)
    {
      v10 = v10;

      v11 = 0;
      v8 = 0;
      v7 = v10;
    }

    else
    {
      v11 = 0;
      v8 = 0;
    }
  }

  v9[2](v9, v7, v8);
}

void sub_184814994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_184814F24(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void EXConcreteExtensionDispatchSyncFromMainQueueToGlobalStateQueue(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  if (dyld_program_sdk_at_least())
  {
    v4 = [EXConcreteExtension globalStateQueueForExtension:v5];
    dispatch_sync(v4, v3);
  }

  else
  {
    v3[2](v3);
  }
}

void __EXConcreteExtensionErrorCleanupHandler_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _extensionContexts];
  [v2 removeObjectForKey:*(a1 + 40)];

  v3 = [*(a1 + 32) _extensionServiceConnections];
  [v3 removeObjectForKey:*(a1 + 40)];
}

void ___sharedSafePluginQueue_block_invoke()
{
  v2 = dispatch_get_global_queue(0, 0);
  v0 = dispatch_queue_create_with_target_V2("safe plugin queue for NSExtension", 0, v2);
  v1 = _sharedSafePluginQueue_q;
  _sharedSafePluginQueue_q = v0;
}

void __EXConcreteExtensionGetLocalizedInfoDictionaryObjectForPlugInAndKeys_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9 = v5;
  if (v5)
  {
    v6 = *(*(a1 + 40) + 8);
    v7 = v5;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    v8 = [a3 localizedDescription];
    NSLog(&cfstr_UnableToResolv.isa, v8);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

Class __getMCProfileConnectionClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __ManagedConfigurationLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E6E4DF18;
    v7 = 0;
    ManagedConfigurationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (ManagedConfigurationLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MCProfileConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMCProfileConnectionClass_block_invoke_cold_1();
  }

  getMCProfileConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __ManagedConfigurationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ManagedConfigurationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

CFMutableDictionaryRef __safelyAccessPidForExtensionIdentiferDictionary_block_invoke()
{
  result = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], 0);
  safelyAccessPidForExtensionIdentiferDictionary___extensionIDToProcessID = result;
  return result;
}

uint64_t __EXConcreteExtensionResolveSystemExtensionPIDByIdentifier_block_invoke()
{
  EXConcreteExtensionResolveSystemExtensionPIDByIdentifier_resolution_queue = dispatch_queue_create("com.apple.extension.resolution-queue", MEMORY[0x1E69E96A8]);

  return MEMORY[0x1EEE66BB8]();
}

void OUTLINED_FUNCTION_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0x1Cu);
}

void OUTLINED_FUNCTION_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_12(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

void _NSExtensionContextCompleteItemLoading(void *a1, void *a2, void *a3, void *a4)
{
  object = a1;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v7;
      v11 = [v10 resourceURL];
      v7 = v10;
      if (v11)
      {
        objc_setAssociatedObject(object, v10, v10, 0x301);
        v7 = v11;
      }
    }
  }

  v9[2](v9, v7, v8);
}

void __EXExtensionCompleteRequestReturningItemsContinuation_block_invoke_2(uint64_t a1, char a2)
{
  (*(*(a1 + 40) + 16))();
  if ((a2 & 1) == 0)
  {
    v4 = _EXExtensionGetGlobalStateQueue(0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __EXExtensionCompleteRequestReturningItemsContinuation_block_invoke_3;
    block[3] = &unk_1E6E4DC28;
    v6 = *(a1 + 32);
    dispatch_async(v4, block);
  }
}

void __EXExtensionCompleteRequestReturningItemsContinuation_block_invoke_3(uint64_t a1)
{
  v3 = [MEMORY[0x1E696B0F8] _sharedExtensionContextVendor];
  v2 = [*(a1 + 32) _UUID];
  [v3 _tearDownContextWithUUID:v2];
}

void __EXExtensionCompleteRequestReturningItemsContinuation_block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = _EXExtensionGetGlobalStateQueue(0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __EXExtensionCompleteRequestReturningItemsContinuation_block_invoke_5;
  block[3] = &unk_1E6E4DC28;
  v4 = *(a1 + 32);
  dispatch_async(v2, block);
}

void __EXExtensionCompleteRequestReturningItemsContinuation_block_invoke_5(uint64_t a1)
{
  v3 = [MEMORY[0x1E696B0F8] _sharedExtensionContextVendor];
  v2 = [*(a1 + 32) _UUID];
  [v3 _tearDownContextWithUUID:v2];
}

void sub_18481A00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t EXExtensionIsSafeKeyPathForObject(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = [v3 rangeOfString:@"."];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v5;
    v9 = v6;
    v10 = [v3 substringToIndex:v5];
    v11 = [v3 substringFromIndex:v8 + v9];
    if ([v10 isEqualToString:@"@count"])
    {
      if (EXExtensionIsOfSafeCollectionClassForPredicates(v4) & 1) != 0 || (objc_getClass("NSDictionary"), (objc_opt_isKindOfClass()))
      {

LABEL_8:
        IsSafeKeyPathForObject = 1;
        goto LABEL_31;
      }

      goto LABEL_29;
    }

    if (([v10 isEqualToString:@"@avg"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"@max") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"@min") & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"@sum"))
    {
      if (EXExtensionIsOfSafeCollectionClassForPredicates(v4))
      {
        v12 = &__block_literal_global_3;
LABEL_15:
        IsSafeKeyPathForObjectsInCollection = EXExtensionIsSafeKeyPathForObjectsInCollection(v11, v4, v12);
LABEL_16:
        IsSafeKeyPathForObject = IsSafeKeyPathForObjectsInCollection;
LABEL_30:

        goto LABEL_31;
      }
    }

    else
    {
      if (([v10 isEqualToString:@"@distinctUnionOfObjects"] & 1) == 0 && !objc_msgSend(v10, "isEqualToString:", @"@unionOfObjects"))
      {
        if (([v10 isEqualToString:@"@distinctUnionOfArrays"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"@unionOfArrays"))
        {
          v14 = "NSArray";
        }

        else
        {
          if (![v10 isEqualToString:@"@distinctUnionOfSets"])
          {
            if (EXExtensionIsSafeKeyForObject(v10, v4))
            {
              v16 = [v4 valueForKey:v10];
              IsSafeKeyPathForObject = EXExtensionIsSafeKeyPathForObject(v11, v16);

              goto LABEL_30;
            }

            goto LABEL_29;
          }

          v14 = "NSSet";
        }

        Class = objc_getClass(v14);
        IsSafeKeyPathForObjectsInCollection = EXExtensionIsSafeKeyPathForSubcollectionsOfClassOfCollection(v11, Class, v4);
        goto LABEL_16;
      }

      if (EXExtensionIsOfSafeCollectionClassForPredicates(v4))
      {
        v12 = &__block_literal_global_26;
        goto LABEL_15;
      }
    }

LABEL_29:
    IsSafeKeyPathForObject = 0;
    goto LABEL_30;
  }

  IsSafeKeyPathForObject = EXExtensionIsSafeKeyForObject(v3, v4);
LABEL_31:

  return IsSafeKeyPathForObject;
}

uint64_t EXExtensionIsSafeKeyForObject(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 length])
  {
    if (!v4)
    {
      v6 = 1;
      goto LABEL_14;
    }

    if ([v3 characterAtIndex:0] != 64)
    {
      objc_getClass("NSString");
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_getClass("NSDictionary");
        isKindOfClass = objc_opt_isKindOfClass();
        goto LABEL_13;
      }

      v5 = @"length";
LABEL_11:
      isKindOfClass = [v3 isEqualToString:v5];
LABEL_13:
      v6 = isKindOfClass;
      goto LABEL_14;
    }

    if (EXExtensionIsOfSafeCollectionClassForPredicates(v4) & 1) != 0 || (objc_getClass("NSDictionary"), (objc_opt_isKindOfClass()))
    {
      v5 = @"@count";
      goto LABEL_11;
    }
  }

  v6 = 0;
LABEL_14:

  return v6 & 1;
}

uint64_t EXExtensionIsOfSafeCollectionClassForPredicates(void *a1)
{
  v1 = a1;
  objc_getClass("NSArray");
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_getClass("NSSet"), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_getClass("NSOrderedSet");
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

uint64_t EXExtensionIsSafeKeyPathForObjectsInCollection(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if (EXExtensionIsSafeKeyPathForObject(v5, v13))
        {
          v14 = [v13 valueForKeyPath:{v5, v19}];
          v15 = v7[2](v7, v14);

          if (v15)
          {
            continue;
          }
        }

        v16 = 0;
        goto LABEL_13;
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v16 = 1;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 1;
  }

LABEL_13:

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __EXExtensionIsSafeKeyPathForObject_block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    objc_getClass("NSNumber");
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 1;
  }

  return isKindOfClass & 1;
}

uint64_t EXExtensionIsSafeKeyPathForSubcollectionsOfClassOfCollection(void *a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = a3;
  if (EXExtensionIsOfSafeCollectionClassForPredicates(v5))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v12 = 0;
            goto LABEL_13;
          }

          EXExtensionIsSafeKeyPathForObjectsInCollection(v4, v11, &__block_literal_global_152);
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = 1;
LABEL_13:
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t EXExtensionIsPredicateSafeToExecuteWithObject(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  objc_getClass("NSTruePredicate");
  if (objc_opt_isKindOfClass())
  {
    v5 = _EXLegacyLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_1847D1000, v5, OS_LOG_TYPE_DEFAULT, "Use of NSTruePredicate is forbidden: %@", &v10, 0xCu);
    }
  }

  IsSafePredicateForObjectWithSubquerySubstitutions = EXExtensionIsSafePredicateForObjectWithSubquerySubstitutions(v3, v4, MEMORY[0x1E695E0F8]);
  if ((IsSafePredicateForObjectWithSubquerySubstitutions & 1) == 0)
  {
    v7 = _EXLegacyLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "EXExtensionIsPredicateSafeToExecuteWithObject";
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_1847D1000, v7, OS_LOG_TYPE_DEFAULT, "%s: NSPredicate considered unsafe: %@", &v10, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return IsSafePredicateForObjectWithSubquerySubstitutions;
}

uint64_t EXExtensionIsSafePredicateForObjectWithSubquerySubstitutions(void *a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  objc_getClass("NSCompoundPredicate");
  if (objc_opt_isKindOfClass())
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = [v5 subpredicates];
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if (!EXExtensionIsSafePredicateForObjectWithSubquerySubstitutions(*(*(&v23 + 1) + 8 * v12), v6, v7))
          {
            IsSafeExpressionForObjectWithSubquerySubstitutions = 0;
            goto LABEL_23;
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    IsSafeExpressionForObjectWithSubquerySubstitutions = 1;
    goto LABEL_23;
  }

  objc_getClass("NSComparisonPredicate");
  if (objc_opt_isKindOfClass())
  {
    v8 = v5;
    v14 = v6;
    v15 = v7;
    v16 = [v8 predicateOperatorType];
    v17 = v16;
    if (v16 > 98)
    {
      if ((v16 - 99) < 2 || (v16 - 1100) < 2 || v16 == 1000)
      {
LABEL_14:
        v18 = [v8 leftExpression];
        if (EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions(v18, v14, v15))
        {
          v19 = [v8 rightExpression];
          IsSafeExpressionForObjectWithSubquerySubstitutions = EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions(v19, v14, v15);
        }

        else
        {
          IsSafeExpressionForObjectWithSubquerySubstitutions = 0;
        }

LABEL_22:
LABEL_23:

        goto LABEL_24;
      }
    }

    else if (v16 < 0xB)
    {
      goto LABEL_14;
    }

    v22 = _EXLegacyLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v29 = "EXExtensionIsSafePredicateOperatorTypeForObjectWithSubquerySubstitutions";
      v30 = 2048;
      v31 = v17;
      _os_log_impl(&dword_1847D1000, v22, OS_LOG_TYPE_DEFAULT, "%s: NSPredicateOperator considered unsafe: %ld", buf, 0x16u);
    }

    IsSafeExpressionForObjectWithSubquerySubstitutions = 0;
    goto LABEL_22;
  }

  objc_getClass("NSTruePredicate");
  if (objc_opt_isKindOfClass())
  {
    IsSafeExpressionForObjectWithSubquerySubstitutions = 1;
  }

  else
  {
    objc_getClass("NSFalsePredicate");
    IsSafeExpressionForObjectWithSubquerySubstitutions = objc_opt_isKindOfClass();
  }

LABEL_24:

  v20 = *MEMORY[0x1E69E9840];
  return IsSafeExpressionForObjectWithSubquerySubstitutions & 1;
}

id _EXPredicateWithString(void *a1)
{
  v1 = a1;
  [v1 rangeOfString:@"%"];
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E696AE18] predicateWithFormat:v1];
  }

  return v3;
}

void sub_18481C3E4(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x18481C3A0);
}

id _EXExtensionMakeAndPredicate(void *a1, void *a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v11[0] = v3;
      v11[1] = v4;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
      v7 = _EXExtensionMakeAndPredicateWithArray(v6);

      goto LABEL_7;
    }

    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  v7 = v8;
LABEL_7:

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

void sub_18481CC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Unwind_Resume(a1);
}

id _EXExtensionMakeAndPredicateWithArray(void *a1)
{
  v1 = a1;
  if ([v1 count] >= 2)
  {
    v2 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v1];
LABEL_5:
    v3 = v2;
    goto LABEL_7;
  }

  if ([v1 count] == 1)
  {
    v2 = [v1 objectAtIndex:0];
    goto LABEL_5;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

void sub_18481D6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _EXExtensionItemsMatchHackishRepresentationOfSharedLocationExtensionItems(void *a1)
{
  v1 = [a1 objectForKey:@"extensionItems"];
  if (_NSIsNSArray() && [v1 count] == 1)
  {
    v2 = [v1 firstObject];
    if (_NSIsNSDictionary() && [v2 count] == 1)
    {
      v3 = [v2 objectForKey:@"attachments"];
      if (_NSIsNSArray() && [v3 count] >= 3 && objc_msgSend(v3, "count") <= 3)
      {
        v13 = [MEMORY[0x1E695DEC8] arrayWithObject:@"public.url"];
        v12 = [MEMORY[0x1E695DEC8] arrayWithObject:@"public.plain-text"];
        v6 = [MEMORY[0x1E695DEC8] arrayWithObject:@"com.apple.mapkit.map-item"];
        v7 = [MEMORY[0x1E695DF20] dictionaryWithObject:v13 forKey:@"registeredTypeIdentifiers"];
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObject:v12 forKey:@"registeredTypeIdentifiers"];
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObject:v6 forKey:@"registeredTypeIdentifiers"];
        v10 = [MEMORY[0x1E695DFD8] setWithArray:v3];
        v11 = [MEMORY[0x1E695DFD8] setWithObjects:{v8, v7, v9, 0}];
        v4 = [v10 isEqualToSet:v11];
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id _EXExtensionPredicateForActivationRule(void *a1)
{
  v1 = a1;
  objc_getClass("NSString");
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_getClass("NSDictionary");
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v2 = _EXDefaultLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
      {
        _EXExtensionPredicateForActivationRule_cold_1(v1, v2);
      }
    }
  }

  objc_getClass("NSString");
  if (objc_opt_isKindOfClass())
  {
    v3 = _EXPredicateWithString(v1);
  }

  else
  {
    v4 = v1;
    if (_EXExtensionGenerateNSPredicateFromActivationDictionary_once != -1)
    {
      _EXExtensionPredicateForActivationRule_cold_2();
    }

    v5 = _EXLegacyLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      _EXExtensionPredicateForActivationRule_cold_3(v4, v5);
    }

    v6 = [_EXExtensionGenerateNSPredicateFromActivationDictionary_predicateCache objectForKey:v4];
    v7 = v6;
    if (v6)
    {
      v3 = v6;
    }

    else
    {
      memset(v10, 0, sizeof(v10));
      if (_EXExtensionGetActivationRules_onceToken != -1)
      {
        _EXExtensionPredicateForActivationRule_cold_4();
      }

      __copy_constructor_8_8_s0_s8_s16_s24_s32_s40_s48_s56(v10, &_EXExtensionGetActivationRules__activation_rules);
      if (+[EXConcreteExtension _shouldLogExtensionDiscovery])
      {
        NSLog(&cfstr_GeneratingPred.isa, v4);
      }

      v8 = [[_EXExtensionPredicateBuilder alloc] initWithActivationRules:v10 predicateDictionary:v4];
      v3 = [(_EXExtensionPredicateBuilder *)v8 makePredicate];
      if (+[EXConcreteExtension _shouldLogExtensionDiscovery])
      {
        NSLog(&cfstr_GotPredicate.isa, v3);
      }

      if (v3)
      {
        [_EXExtensionGenerateNSPredicateFromActivationDictionary_predicateCache setObject:v3 forKey:v4];
      }

      __destructor_8_s0_s8_s16_s24_s32_s40_s48_s56(v10);
    }
  }

  return v3;
}

void sub_18481DBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __destructor_8_s0_s8_s16_s24_s32_s40_s48_s56(va);
  _Unwind_Resume(a1);
}

uint64_t EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions(void *a1, void *a2, void *a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [(__CFString *)v5 expressionType];
  v9 = 1;
  if (v8 <= 9)
  {
    if (v8 < 3)
    {
      goto LABEL_76;
    }

    if ((v8 - 5) < 3)
    {
      objc_getClass("NSSet");
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_getClass("NSOrderedSet");
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_73;
        }
      }

      v10 = [(__CFString *)v5 leftExpression];
      if (EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions(v10, v6, v7))
      {
        v11 = [(__CFString *)v5 rightExpression];
        IsSafeExpressionForObjectWithSubquerySubstitutions = EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions(v11, v6, v7);

        if (IsSafeExpressionForObjectWithSubquerySubstitutions)
        {
          goto LABEL_82;
        }

        goto LABEL_73;
      }

      goto LABEL_72;
    }

    if ((v8 - 3) < 2)
    {
      v10 = [(__CFString *)v5 function];
      if (([v10 isEqualToString:@"valueForKey:"]& 1) != 0 || [v10 isEqualToString:@"valueForKeyPath:"])
      {
        v25 = [(__CFString *)v5 arguments];
        if ([v25 count]!= 1)
        {
          v26 = _EXLegacyLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_3(v25);
          }

          goto LABEL_70;
        }

        v26 = [v25 firstObject];
        if (!EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions(v26, v6, v7))
        {
          v28 = _EXLegacyLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_7();
          }

          goto LABEL_69;
        }

        v27 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v7];
        v28 = [v26 expressionValueWithObject:v6 context:v27];

        if (!_NSIsNSString())
        {
          v30 = _EXLegacyLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_8();
          }

          goto LABEL_68;
        }

        v29 = [(__CFString *)v5 operand];
        v30 = v29;
        if (!v29)
        {
          v32 = _EXLegacyLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_10(v32);
          }

          goto LABEL_67;
        }

        if (!EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions(v29, v6, v7))
        {
          v32 = _EXLegacyLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_9();
          }

          goto LABEL_67;
        }

        v31 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v7];
        loga = [v30 expressionValueWithObject:v6 context:v31];

        if ([v10 isEqualToString:@"valueForKeyPath:"])
        {
          v32 = loga;
          if ((EXExtensionIsSafeKeyPathForObject(v28, loga) & 1) == 0)
          {
LABEL_35:
            logb = _EXLegacyLog();
            if (os_log_type_enabled(logb, OS_LOG_TYPE_DEBUG))
            {
              v40 = [v10 isEqualToString:@"valueForKeyPath:"];
              v41 = &stru_1EF289F70;
              *buf = 136315906;
              v51 = "EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions";
              v52 = 2112;
              if (v40)
              {
                v41 = @"path";
              }

              v53 = v41;
              v54 = 2112;
              v55 = v28;
              v56 = 2112;
              v57 = v32;
              _os_log_debug_impl(&dword_1847D1000, logb, OS_LOG_TYPE_DEBUG, "%s: Key%@ %@ not safe to evaluate with %@", buf, 0x2Au);
            }

LABEL_67:
LABEL_68:

LABEL_69:
LABEL_70:

LABEL_71:
LABEL_72:

            goto LABEL_73;
          }
        }

        else
        {
          v32 = loga;
          if ((EXExtensionIsSafeKeyForObject(v28, loga) & 1) == 0)
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
        if (([v10 isEqualToString:@"from:subtract:"]& 1) == 0 && ![v10 isEqualToString:@"add:to:"])
        {
          v25 = _EXLegacyLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_1();
          }

          goto LABEL_71;
        }

        v25 = [(__CFString *)v5 arguments];
        v26 = [(__CFString *)v5 operand];
        if ((EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions(v26, v6, v7) & 1) == 0)
        {
          v28 = _EXLegacyLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_2();
          }

          goto LABEL_69;
        }

        if ([v25 count]!= 2)
        {
          v28 = _EXLegacyLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_3(v25);
          }

          goto LABEL_69;
        }

        v33 = [v25 objectAtIndexedSubscript:0];
        v34 = EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions(v33, v6, v7);

        if ((v34 & 1) == 0)
        {
          v28 = _EXLegacyLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_4(v25);
          }

          goto LABEL_69;
        }

        v35 = [v25 objectAtIndexedSubscript:1];
        v36 = EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions(v35, v6, v7);

        if ((v36 & 1) == 0)
        {
          v28 = _EXLegacyLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_5(v25);
          }

          goto LABEL_69;
        }
      }

LABEL_82:
      v9 = 1;
      goto LABEL_76;
    }

LABEL_37:
    v10 = _EXLegacyLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_11();
    }

    goto LABEL_72;
  }

  if (v8 > 0x14)
  {
    goto LABEL_37;
  }

  if (((1 << v8) & 0x18D800) == 0)
  {
    if (v8 == 10)
    {
      goto LABEL_76;
    }

    if (v8 != 13)
    {
      goto LABEL_37;
    }

    v13 = [(__CFString *)v5 collection];
    if (EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions(v13, v6, v7))
    {
      v14 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v7];
      v15 = [v13 expressionValueWithObject:v6 context:v14];

      if (!v15)
      {

        goto LABEL_82;
      }

      if (EXExtensionIsOfSafeCollectionClassForPredicates(v15))
      {
        log = v13;
        v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v7];
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v17 = v15;
        v18 = [v17 countByEnumeratingWithState:&v45 objects:v49 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v46;
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v46 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v45 + 1) + 8 * i);
              v23 = [(__CFString *)v5 variable];
              [v16 setObject:v22 forKey:v23];

              v24 = [(__CFString *)v5 predicate];
              LODWORD(v23) = EXExtensionIsSafePredicateForObjectWithSubquerySubstitutions(v24, v6, v16);

              if (!v23)
              {

                goto LABEL_73;
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v45 objects:v49 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }

        goto LABEL_82;
      }
    }
  }

LABEL_73:
  v37 = _EXLegacyLog();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v51 = "EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions";
    v52 = 2112;
    v53 = v5;
    _os_log_impl(&dword_1847D1000, v37, OS_LOG_TYPE_DEFAULT, "%s: Expression considered unsafe: %@", buf, 0x16u);
  }

  v9 = 0;
LABEL_76:

  v38 = *MEMORY[0x1E69E9840];
  return v9;
}

void __destructor_8_s0_s8_s16_s24_s32_s40_s48_s56(uint64_t a1)
{
  v2 = *(a1 + 56);
}

id __copy_constructor_8_8_s0_s8_s16_s24_s32_s40_s48_s56(void *a1, id *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];
  result = a2[7];
  a1[7] = result;
  return result;
}

void OUTLINED_FUNCTION_3_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_18481F0C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18481FD70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_184821178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t _EXAuditTokenGetPID(_OWORD *a1)
{
  v1 = a1[1];
  *v3.val = *a1;
  *&v3.val[4] = v1;
  return audit_token_to_pid(&v3);
}

BOOL _EXAuditTokenEqual(_OWORD *a1, _OWORD *a2)
{
  v4 = a1[1];
  *v11.val = *a1;
  *&v11.val[4] = v4;
  v5 = audit_token_to_pid(&v11);
  v6 = a2[1];
  *v11.val = *a2;
  *&v11.val[4] = v6;
  if (v5 != audit_token_to_pid(&v11))
  {
    return 0;
  }

  v7 = a1[1];
  *v11.val = *a1;
  *&v11.val[4] = v7;
  v8 = audit_token_to_pidversion(&v11);
  v9 = a2[1];
  *v11.val = *a2;
  *&v11.val[4] = v9;
  return v8 == audit_token_to_pidversion(&v11);
}

void sub_184822694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  os_activity_scope_leave((v27 - 96));
  _Unwind_Resume(a1);
}

void _NSExtensionContextEmitNotifications(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = _EXExtensionGetGlobalStateQueue(0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___NSExtensionContextEmitNotifications_block_invoke;
  block[3] = &unk_1E6E4DCC8;
  v21 = v10;
  v22 = v9;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v9;
  v19 = v10;
  dispatch_async(v14, block);
}

void OUTLINED_FUNCTION_2_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_3_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x26u);
}

id _EXDiscoveryLog()
{
  if (_EXDiscoveryLog_onceToken != -1)
  {
    _EXDiscoveryLog_cold_1();
  }

  v1 = _EXDiscoveryLog_log;

  return v1;
}

id _EXSignpostLog()
{
  if (_EXSignpostLog_onceToken != -1)
  {
    _EXSignpostLog_cold_1();
  }

  v1 = _EXSignpostLog_log;

  return v1;
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

id sdkDictionaryAdditions()
{
  if (sdkDictionaryAdditions_onceToken != -1)
  {
    sdkDictionaryAdditions_cold_1();
  }

  v1 = sdkDictionaryAdditions_sdkDictionaryAdditions;

  return v1;
}

void __sdkDictionaryAdditions_block_invoke()
{
  v59[18] = *MEMORY[0x1E69E9840];
  v56 = @"EXExtensionPointGroupExtensionPointIdentifier";
  v57 = @"com.apple.quicklook.preview";
  v58[0] = @"com.apple.quicklook.thumbnail";
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
  v59[0] = v21;
  v58[1] = @"com.apple.usernotifications.content-extension";
  v54 = @"EXSettingsEnablementUIHidden";
  v0 = MEMORY[0x1E695E118];
  v55 = MEMORY[0x1E695E118];
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
  v59[1] = v20;
  v58[2] = @"com.apple.fileprovider-actionsui";
  v52 = @"EXSettingsEnablementUIHidden";
  v53 = v0;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  v59[2] = v19;
  v58[3] = @"com.apple.FinderSync";
  v50 = @"EXSettingsEnablementUIHidden";
  v51 = v0;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
  v59[3] = v18;
  v58[4] = @"com.apple.ctk-tokens";
  v48 = @"EXSettingsEnablementUIHidden";
  v49 = v0;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
  v59[4] = v17;
  v58[5] = @"com.apple.AppSSO.idp-extension";
  v46 = @"EXSettingsEnablementUIHidden";
  v47 = v0;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
  v59[5] = v16;
  v58[6] = @"com.apple.appintents-extension";
  v44 = @"EXSettingsEnablementUIHidden";
  v45 = v0;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  v59[6] = v15;
  v58[7] = @"com.apple.services";
  v42[0] = @"EXSettingsEnablementUIHidden";
  v42[1] = @"EXExtensionIconPersonality";
  v43[0] = v0;
  v43[1] = @"self";
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
  v59[7] = v14;
  v58[8] = @"com.apple.AudioUnit";
  v40 = @"EXSettingsEnablementUIHidden";
  v41 = v0;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  v59[8] = v13;
  v58[9] = @"com.apple.AudioUnit-UI";
  v38 = @"EXExtensionPointGroupExtensionPointIdentifier";
  v39 = @"com.apple.AudioUnit";
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  v59[9] = v12;
  v58[10] = @"com.apple.usernotifications.service";
  v36 = @"EXSettingsEnablementUIHidden";
  v37 = v0;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v59[10] = v1;
  v58[11] = @"com.apple.networkextension.packet-tunnel";
  v34 = @"EXSettingsEnablementUIHidden";
  v35 = v0;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v59[11] = v2;
  v58[12] = @"com.apple.app.non-ui-extension";
  v32 = @"EXSettingsEnablementUIHidden";
  v33 = v0;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v59[12] = v3;
  v58[13] = @"com.apple.app.non-ui-extension.multiple-instances";
  v30 = @"EXSettingsEnablementUIHidden";
  v31 = v0;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v59[13] = v4;
  v58[14] = @"com.apple.app.ui-extension.multiple-instances";
  v28 = @"EXSettingsEnablementUIHidden";
  v29 = v0;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v59[14] = v5;
  v58[15] = @"com.apple.watchkit";
  v26 = @"EXExtensionIconPersonality";
  v27 = @"self";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v59[15] = v6;
  v58[16] = @"com.apple.message-payload-provider";
  v24 = @"EXExtensionIconPersonality";
  v25 = @"self";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v59[16] = v7;
  v58[17] = @"com.apple.ui-services";
  v22 = @"EXExtensionIconPersonality";
  v23 = @"self";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v59[17] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:18];
  v10 = sdkDictionaryAdditions_sdkDictionaryAdditions;
  sdkDictionaryAdditions_sdkDictionaryAdditions = v9;

  v11 = *MEMORY[0x1E69E9840];
}

void sub_184832944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for audit_token_t(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for audit_token_t(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}