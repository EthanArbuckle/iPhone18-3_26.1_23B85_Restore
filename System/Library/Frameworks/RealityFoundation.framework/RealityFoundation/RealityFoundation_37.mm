uint64_t closure #1 in static __REAssetBundle.load(url:serviceLocator:completionHandler:)(uint64_t a1, uint64_t a2, void (*a3)(void **), uint64_t a4)
{
  v47[1] = a4;
  v48 = a3;
  v74 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = 0u;
  memset(v68, 0, sizeof(v68));
  v65 = 0u;
  v66 = 0u;
  v64 = 0u;
  v69 = 1;
  v70 = 0;
  v72 = 0;
  v73 = 0;
  v71 = 0;
  LOBYTE(v63) = 1;
  v16 = *(v12 + 16);
  v47[0] = v17;
  v16(v15, a1);
  outlined init with copy of __REAssetBundle.LoadOptions(&v63, v59);
  swift_beginAccess();
  outlined init with copy of __REAssetService(a2 + 120, &v55);
  v18 = *(&v56 + 1);
  v19 = v57;
  __swift_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
  LOBYTE(v52[0]) = v59[0];
  __REAssetService.dispatchPredicate(for:)(v52, v18, v19, v10);
  __swift_destroy_boxed_opaque_existential_1(&v55);
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v18 & 1) == 0)
  {
    __break(1u);
  }

  outlined init with copy of __REAssetService(a2 + 120, v52);
  swift_beginAccess();
  v20 = *(a2 + 16);
  v51 = 0;
  if (!v60)
  {
    v30 = v53;
    v31 = v54;
    __swift_project_boxed_opaque_existential_1(v52, v53);
    (*(v31 + 32))(v30, v31);
    URL._bridgeToObjectiveC()(v32);
    v34 = v33;
    v26 = RERealityFileMountFileAtURL();

    if (v26)
    {
      goto LABEL_4;
    }

LABEL_8:
    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(v51);
    v38 = v51;
    if (v51)
    {
      type metadata accessor for CFErrorRef(0);
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_3(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
      v39 = swift_allocError();
      *v40 = v38;
    }

    else
    {
      v49 = 0;
      v50 = 0xE000000000000000;
      _StringGuts.grow(_:)(34);

      v49 = 0xD00000000000001FLL;
      v50 = 0x80000001C18E1F00;
      v41 = URL.path.getter();
      MEMORY[0x1C68F3410](v41);

      MEMORY[0x1C68F3410](46, 0xE100000000000000);
      v42 = v49;
      v43 = v50;
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      v39 = swift_allocError();
      *v44 = v42;
      *(v44 + 8) = v43;
      *(v44 + 16) = 4;
    }

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v52);
    outlined destroy of __REAssetBundle.LoadOptions(v59);
    (*(v12 + 8))(v15, v47[0]);
    outlined destroy of __REAssetBundle.LoadOptions(&v63);
    v63 = v39;
    BYTE8(v67) = 1;
    v45 = v39;
    v48(&v63);

    result = outlined destroy of BodyTrackingComponent?(&v63, &_ss6ResultOy10RealityKit15__REAssetBundleVs5Error_pGMd, &_ss6ResultOy10RealityKit15__REAssetBundleVs5Error_pGMR);
    goto LABEL_12;
  }

  v22 = v53;
  v21 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  (*(v21 + 32))(v22, v21);
  URL._bridgeToObjectiveC()(v23);
  v25 = v24;
  String.utf8CString.getter();
  v26 = RERealityFileMountFileAtURLWithAliasName();

  if (!v26)
  {
    goto LABEL_8;
  }

LABEL_4:
  v27 = v61;
  if (v61)
  {
    MajorVersionNumber = RERealityFileGetMajorVersionNumber();
    v29 = v27 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
    *v29 = MajorVersionNumber;
    *(v29 + 8) = 1;
  }

  static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v26, v52, v20, v59, &v55);
  v35 = v53;
  v36 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  (*(v36 + 32))(v35, v36);
  RERealityFileUnmount();
  __swift_destroy_boxed_opaque_existential_1(v52);
  outlined destroy of __REAssetBundle.LoadOptions(v59);
  (*(v12 + 8))(v15, v47[0]);
  v62[0] = v55;
  v62[1] = v56;
  v62[2] = v57;
  v62[3] = v58;
  outlined init with copy of __REAssetBundle(v62, v59);
  v59[64] = 0;
  v48(v59);
  outlined destroy of BodyTrackingComponent?(v59, &_ss6ResultOy10RealityKit15__REAssetBundleVs5Error_pGMd, &_ss6ResultOy10RealityKit15__REAssetBundleVs5Error_pGMR);
  outlined destroy of __REAssetBundle(v62);
  result = outlined destroy of __REAssetBundle.LoadOptions(&v63);
LABEL_12:
  v46 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static __REAssetBundle.load(bundle:entryName:assetService:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v28 = a4;
  v29 = a2;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v32 = *(v12 - 8);
  v33 = v12;
  v13 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS.QoSClass();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  (*(v17 + 104))(v20, *MEMORY[0x1E69E7F98], v16);
  v21 = static OS_dispatch_queue.global(qos:)();
  (*(v17 + 8))(v20, v16);
  outlined init with copy of __REAssetService(v28, v37);
  v22 = swift_allocObject();
  outlined init with take of ForceEffectBase(v37, (v22 + 2));
  v24 = v29;
  v23 = v30;
  v22[7] = a1;
  v22[8] = v24;
  v22[9] = a3;
  v22[10] = v23;
  v22[11] = v31;
  aBlock[4] = partial apply for closure #1 in static __REAssetBundle.load(bundle:entryName:assetService:completionHandler:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_22;
  v25 = _Block_copy(aBlock);
  v26 = a1;

  static DispatchQoS.unspecified.getter();
  v35 = MEMORY[0x1E69E7CC0];
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v15, v11, v25);
  _Block_release(v25);

  (*(v34 + 8))(v11, v8);
  (*(v32 + 8))(v15, v33);
}

uint64_t closure #1 in static __REAssetBundle.load(bundle:entryName:assetService:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void **))
{
  v49 = *MEMORY[0x1E69E9840];
  memset(v43, 0, sizeof(v43));
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v44 = 1;
  v45 = 0;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  LOBYTE(v38) = 1;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 32))(v10, v11);
  ServiceLocatorForLegacyAPIWorkaround = _REAssetManagerGetServiceLocatorForLegacyAPIWorkaround();
  v36 = 0;
  v13 = [a2 bundleIdentifier];
  if (!v13)
  {
    v21 = [a2 bundlePath];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    v25 = swift_allocError();
    *v26 = v22;
    *(v26 + 8) = v24;
    *(v26 + 16) = 3;
    swift_willThrow();
LABEL_6:
    outlined destroy of __REAssetBundle.LoadOptions(&v38);
    v38 = v25;
    BYTE8(v42) = 1;
    v27 = v25;
    a5(&v38);

    result = outlined destroy of BodyTrackingComponent?(&v38, &_ss6ResultOy10RealityKit15__REAssetBundleVs5Error_pGMd, &_ss6ResultOy10RealityKit15__REAssetBundleVs5Error_pGMR);
    goto LABEL_7;
  }

  v33 = a5;
  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  (*(v19 + 32))(v18, v19);
  String.utf8CString.getter();
  String.utf8CString.getter();
  v20 = RERealityFileMountFileInBundle();

  if (!v20)
  {
    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(v36);
    _StringGuts.grow(_:)(48);

    v34[0] = 0xD00000000000001FLL;
    v34[1] = 0x80000001C18E1F00;
    MEMORY[0x1C68F3410](a3, a4);
    MEMORY[0x1C68F3410](0x646E7542206E6920, 0xEC000000203A656CLL);
    MEMORY[0x1C68F3410](v15, v17);

    MEMORY[0x1C68F3410](46, 0xE100000000000000);
    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    v25 = swift_allocError();
    *v32 = 0xD00000000000001FLL;
    *(v32 + 8) = 0x80000001C18E1F00;
    *(v32 + 16) = 4;
    a5 = v33;
    swift_willThrow();
    goto LABEL_6;
  }

  static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v20, a1, ServiceLocatorForLegacyAPIWorkaround, &v38, v37);
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  (*(v30 + 32))(v29, v30);
  RERealityFileUnmount();
  outlined init with copy of __REAssetBundle(v37, v34);
  v35 = 0;
  v33(v34);
  outlined destroy of BodyTrackingComponent?(v34, &_ss6ResultOy10RealityKit15__REAssetBundleVs5Error_pGMd, &_ss6ResultOy10RealityKit15__REAssetBundleVs5Error_pGMR);
  outlined destroy of __REAssetBundle(v37);
  result = outlined destroy of __REAssetBundle.LoadOptions(&v38);
LABEL_7:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static __REAssetBundle.load(bundle:entryName:serviceLocator:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v32 = a6;
  v29 = a2;
  v30 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v33 = *(v12 - 8);
  v34 = v12;
  v13 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS.QoSClass();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  (*(v17 + 104))(v20, *MEMORY[0x1E69E7F98], v16);
  v21 = static OS_dispatch_queue.global(qos:)();
  (*(v17 + 8))(v20, v16);
  v22 = swift_allocObject();
  v23 = v29;
  v24 = v30;
  v22[2] = a1;
  v22[3] = v23;
  v22[4] = a3;
  v22[5] = v24;
  v25 = v32;
  v22[6] = v31;
  v22[7] = v25;
  aBlock[4] = partial apply for closure #1 in static __REAssetBundle.load(bundle:entryName:serviceLocator:completionHandler:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_28_0;
  v26 = _Block_copy(aBlock);
  v27 = a1;

  static DispatchQoS.unspecified.getter();
  v36 = MEMORY[0x1E69E7CC0];
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v15, v11, v26);
  _Block_release(v26);

  (*(v35 + 8))(v11, v8);
  (*(v33 + 8))(v15, v34);
}

uint64_t closure #1 in static __REAssetBundle.load(bundle:entryName:serviceLocator:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unsigned __int8 *))
{
  memset(v19, 0, sizeof(v19));
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v20 = 1;
  v21 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  LOBYTE(v14) = 1;
  outlined init with copy of __REAssetBundle.LoadOptions(&v14, v12);
  v10 = a1;

  __REAssetBundle.init(bundle:entryName:serviceLocator:_:)(v10, a2, a3, a4, v12, v13);
  outlined init with copy of __REAssetBundle(v13, v12);
  v12[64] = 0;
  a5(v12);
  outlined destroy of BodyTrackingComponent?(v12, &_ss6ResultOy10RealityKit15__REAssetBundleVs5Error_pGMd, &_ss6ResultOy10RealityKit15__REAssetBundleVs5Error_pGMR);
  outlined destroy of __REAssetBundle(v13);
  return outlined destroy of __REAssetBundle.LoadOptions(&v14);
}

Swift::String __swiftcall String.init(cString:)(Swift::String cString)
{
  if ((cString._object & 0x1000000000000000) == 0 && ((cString._object & 0x2000000000000000) != 0 || (cString._countAndFlagsBits & 0x1000000000000000) != 0))
  {
    v1 = String.init(cString:)();
    v3 = v2;
  }

  else
  {
    _StringGuts._slowWithCString<A>(_:)();

    v1 = v7;
    v3 = v8;
  }

  v4 = v1;
  v5 = v3;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t closure #1 in __REAssetBundle.getSceneDescriptors()@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized Dictionary.subscript.getter(*a1, *(a2 + 56));
  v5 = result;
  if (!result)
  {
    static os_log_type_t.debug.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    v6 = static OS_os_log.default.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1C1887600;
    type metadata accessor for __REAsset();
    _print_unlocked<A, B>(_:_:)();
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v7 + 32) = 0;
    *(v7 + 40) = 0xE000000000000000;
    os_log(_:dso:log:_:_:)();
  }

  *a3 = v5;
  return result;
}

uint64_t __REAssetBundle.sceneAsset(for:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v22 - v4;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v22[1] = a1[3];
  v22[2] = v8;
  v9 = type metadata accessor for __REAssetBundle.AssetMap.SceneDescriptor();
  outlined init with copy of [String : String](a1 + *(v9 + 24), v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    UUID.uuidString.getter();
    (*(v11 + 8))(v5, v10);
  }

  String.utf8CString.getter();
  String.utf8CString.getter();
  String.utf8CString.getter();

  v12 = RESceneDescriptorCreateFromParams();

  v14 = *(a1 + *(v9 + 28));
  if (v14 && (v15 = *(v14 + 16)) != 0)
  {
    v16 = (v14 + 48);
    while (1)
    {
      v17 = *(v16 - 2);
      if (v17 < 0xFFFFFFFF80000000)
      {
        break;
      }

      if (v17 > 0x7FFFFFFF)
      {
        goto LABEL_12;
      }

      v18 = *(v16 - 1);
      v19 = *v16;
      String.utf8CString.getter();
      RESceneDescriptorAddSceneCompatibilityVariant();

      v16 += 3;
      if (!--v15)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_10:
    type metadata accessor for RESceneDescriptor();
    inited = swift_initStackObject();
    *(inited + 16) = v12;
    v21 = __REAssetBundle.sceneAsset(for:)(inited);
    swift_setDeallocating();
    RERelease();
    return v21;
  }

  return result;
}

uint64_t one-time initialization function for temporaryURL()
{
  v0 = type metadata accessor for URL();
  __swift_allocate_value_buffer(v0, static __REAssetBundle.temporaryURL);
  v1 = __swift_project_value_buffer(v0, static __REAssetBundle.temporaryURL);
  return closure #1 in variable initialization expression of static __REAssetBundle.temporaryURL(v1);
}

uint64_t closure #1 in variable initialization expression of static __REAssetBundle.temporaryURL@<X0>(char *a1@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for UUID();
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v35 - v13;
  v15 = objc_opt_self();
  v16 = [v15 defaultManager];
  v37._countAndFlagsBits = 0;
  v17 = [v16 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v37];

  countAndFlagsBits = v37._countAndFlagsBits;
  if (v17)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = countAndFlagsBits;

    v20 = *(v7 + 32);
    v20(v14, v10, v6);
    (*(v7 + 56))(v14, 0, 1, v6);
    v20(a1, v14, v6);
  }

  else
  {
    v21 = v37._countAndFlagsBits;
    v22 = _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v7 + 56))(v14, 1, 1, v6);
    v23 = [v15 defaultManager];
    v24 = [v23 temporaryDirectory];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    if ((*(v7 + 48))(v14, 1, v6) != 1)
    {
      outlined destroy of BodyTrackingComponent?(v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  v25 = [objc_opt_self() mainBundle];
  v26 = [v25 bundleIdentifier];

  if (v26)
  {
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30._countAndFlagsBits = v27;
    v30._object = v29;
    URL.appendPathComponent(_:)(v30);
  }

  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  v37._countAndFlagsBits = 0xD00000000000001CLL;
  v37._object = 0x80000001C18E9120;
  UUID.init()();
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v31 = v36;
  v32 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v32);

  (*(v35 + 8))(v5, v31);
  URL.appendPathComponent(_:)(v37);

  v34 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static __REAssetBundle.temporaryURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for temporaryURL != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  v3 = __swift_project_value_buffer(v2, static __REAssetBundle.temporaryURL);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __REAssetBundle.__write(to:fromEngineQueue:)(uint64_t a1, char a2)
{
  v16 = 0;
  v15 = 1;
  v14 = 1;
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  LOBYTE(v6) = v2;
  *(&v6 + 1) = 1;
  LOBYTE(v7) = 0;
  v8 = 0;
  *v9 = 16777217;
  *&v9[8] = xmmword_1C18B7B50;
  v10 = 0;
  BYTE4(v11) = 0;
  LODWORD(v11) = 0;
  v12 = 0;
  v13[0] = 1;
  *&v13[1] = 0;
  memset(&v13[8], 0, 32);
  *&v13[40] = 1;
  v13[42] = 3;
  v4[4] = v11;
  v4[5] = *v13;
  v5[0] = *&v13[16];
  *(v5 + 11) = *&v13[27];
  v4[0] = v6;
  v4[1] = v7;
  v4[2] = *v9;
  v4[3] = 5uLL;
  __REAssetBundle.writeWithCPlusPlus(to:with:)(a1, v4);
  return outlined destroy of __REAssetBundle.ExportOptions(&v6);
}

uint64_t __REAssetBundle.write(to:with:)(uint64_t a1, __int128 *a2)
{
  v2 = a2[5];
  v6[4] = a2[4];
  v6[5] = v2;
  v7[0] = a2[6];
  *(v7 + 11) = *(a2 + 107);
  v3 = a2[1];
  v6[0] = *a2;
  v6[1] = v3;
  v4 = a2[3];
  v6[2] = a2[2];
  v6[3] = v4;
  return __REAssetBundle.writeWithCPlusPlus(to:with:)(a1, v6);
}

uint64_t __REAssetBundle.__write(to:with:compressionLevel:progress:)(uint64_t a1, char *a2, uint64_t a3, char a4, void *a5)
{
  v6 = *a2;
  v12 = 1;
  v11 = 1;
  LOBYTE(v13) = v6;
  *(&v13 + 1) = a3;
  LOBYTE(v14) = a4 & 1;
  *(&v14 + 1) = a5;
  *v15 = 16777217;
  *&v15[8] = xmmword_1C18B7B50;
  v16 = 0;
  BYTE4(v17) = 0;
  LODWORD(v17) = 0;
  v18 = 0;
  v19[0] = 1;
  *&v19[1] = 0;
  memset(&v19[8], 0, 32);
  *&v19[40] = 1;
  v19[42] = 3;
  v9[4] = v17;
  v9[5] = *v19;
  v10[0] = *&v19[16];
  *(v10 + 11) = *&v19[27];
  v9[2] = *v15;
  v9[3] = 5uLL;
  v9[0] = v13;
  v9[1] = v14;
  v7 = a5;
  __REAssetBundle.writeWithCPlusPlus(to:with:)(a1, v9);
  return outlined destroy of __REAssetBundle.ExportOptions(&v13);
}

uint64_t __REAssetBundle.__write(to:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  v29 = a1;
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v33 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  (*(v14 + 104))(v17, *MEMORY[0x1E69E7F98], v13);
  v30 = static OS_dispatch_queue.global(qos:)();
  (*(v14 + 8))(v17, v13);
  outlined init with copy of __REAssetBundle(v28[1], v39);
  (*(v11 + 16))(v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v10);
  v18 = (*(v11 + 80) + 80) & ~*(v11 + 80);
  v19 = swift_allocObject();
  v20 = v39[1];
  *(v19 + 1) = v39[0];
  *(v19 + 2) = v20;
  v21 = v39[3];
  *(v19 + 3) = v39[2];
  *(v19 + 4) = v21;
  (*(v11 + 32))(&v19[v18], v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v22 = &v19[(v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8];
  v23 = v32;
  *v22 = v31;
  *(v22 + 1) = v23;
  aBlock[4] = partial apply for closure #1 in __REAssetBundle.__write(to:completionHandler:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_34_0;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v37 = MEMORY[0x1E69E7CC0];
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v25 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = v30;
  MEMORY[0x1C68F3CA0](0, v9, v5, v24);
  _Block_release(v24);

  (*(v36 + 8))(v5, v25);
  (*(v34 + 8))(v9, v35);
}

uint64_t closure #1 in __REAssetBundle.__write(to:completionHandler:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v8 = 1;
  v7 = 1;
  LOBYTE(v9) = 1;
  *(&v9 + 1) = 1;
  LOBYTE(v10) = 0;
  v11 = 0;
  *v12 = 16777217;
  *&v12[8] = xmmword_1C18B7B50;
  v13 = 0;
  BYTE4(v14) = 0;
  LODWORD(v14) = 0;
  v15 = 0;
  v16[0] = 1;
  *&v16[1] = 0;
  memset(&v16[8], 0, 32);
  *&v16[40] = 1;
  v16[42] = 3;
  v5[4] = v14;
  v5[5] = *v16;
  v6[0] = *&v16[16];
  *(v6 + 11) = *&v16[27];
  v5[2] = *v12;
  v5[3] = 5uLL;
  v5[0] = v9;
  v5[1] = v10;
  __REAssetBundle.writeWithCPlusPlus(to:with:)(a2, v5);
  a3(0);
  return outlined destroy of __REAssetBundle.ExportOptions(&v9);
}

unint64_t __RealityFileError.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 <= 2)
  {
    if (!*(v0 + 16))
    {
      _StringGuts.grow(_:)(42);

      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1C68F3410](v9);

      MEMORY[0x1C68F3410](0xD000000000000013, 0x80000001C18E8F40);
      _StringGuts.grow(_:)(33);

      if (one-time initialization token for maximumReadingFormatVersion != -1)
      {
        swift_once();
      }

      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1C68F3410](v10);

      MEMORY[0x1C68F3410](10542, 0xE200000000000000);
      v15 = 0xD000000000000015;

      MEMORY[0x1C68F3410](0xD00000000000001DLL, 0x80000001C18E8F60);

      return v15;
    }

    if (v3 == 1)
    {
      _StringGuts.grow(_:)(36);
      v4 = dispatch thunk of CustomStringConvertible.description.getter();

      v15 = v4;
      MEMORY[0x1C68F3410](0xD00000000000001FLL, 0x80000001C18E8E30);
      type metadata accessor for RERealityFileMajorVersion(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25RERealityFileMajorVersionVmMd, &_sSo25RERealityFileMajorVersionVmMR);
      v5 = String.init<A>(describing:)();
      MEMORY[0x1C68F3410](v5);

      v6 = 46;
      v7 = 0xE100000000000000;
LABEL_14:
      MEMORY[0x1C68F3410](v6, v7);
      return v15;
    }

    v15 = 0;
    _StringGuts.grow(_:)(36);
    MEMORY[0x1C68F3410](39, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();
    v11 = "ve a bundleIdentifier.";
    v6 = 0xD000000000000021;
LABEL_13:
    v7 = v11 | 0x8000000000000000;
    goto LABEL_14;
  }

  if (v3 == 3)
  {
    v15 = 0;
    _StringGuts.grow(_:)(96);
    MEMORY[0x1C68F3410](0xD000000000000028, 0x80000001C18E8D90);
    MEMORY[0x1C68F3410](v1, v2);
    v11 = "ality file from bundle '";
    v6 = 0xD000000000000036;
    goto LABEL_13;
  }

  if (v3 == 4)
  {
    v8 = *(v0 + 8);
  }

  else if (v1 > 2)
  {
    if (v1 ^ 4 | v2)
    {
      v14 = 0xD000000000000019;
    }

    else
    {
      v14 = 0xD000000000000012;
    }

    if (v1 ^ 3 | v2)
    {
      return v14;
    }

    else
    {
      return 0xD000000000000023;
    }
  }

  else
  {
    if (v1 ^ 1 | v2)
    {
      v13 = 0xD000000000000013;
    }

    else
    {
      v13 = 0xD000000000000011;
    }

    if (v1 | v2)
    {
      return v13;
    }

    else
    {
      return 0xD000000000000011;
    }
  }

  return v1;
}

uint64_t LocalizedRealityFileError.errorDescription.getter()
{
  _StringGuts.grow(_:)(84);
  MEMORY[0x1C68F3410](0xD000000000000051, 0x80000001C18E91B0);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v0);

  MEMORY[0x1C68F3410](46, 0xE100000000000000);
  return 0;
}

unint64_t SerializationError.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    _StringGuts.grow(_:)(39);

    v6 = 0xD000000000000011;
    MEMORY[0x1C68F3410](a1, a2);
    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E90D0);
    return v6;
  }

  if (a3 == 1)
  {
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1C68F3410](0, 0xE000000000000000);

    MEMORY[0x1C68F3410](a1, a2);
    v6 = 0xD000000000000068;

    MEMORY[0x1C68F3410](8250, 0xE200000000000000);

    return v6;
  }

  return 0xD00000000000002FLL;
}

uint64_t __Archiving.Operation.__deallocating_deinit()
{
  MEMORY[0x1C6901D90](*(v0 + 16));

  return swift_deallocClassInstance();
}

void __Archiving.Operation.archive(to:)()
{
  v1 = *(v0 + 16);
  URL._bridgeToObjectiveC()(*MEMORY[0x1E69E9840]);
  v3 = v2;
  LOBYTE(v1) = _REArchiveOperationArchiveToURL();

  if ((v1 & 1) == 0)
  {
    lazy protocol witness table accessor for type __Archiving.ArchivingError and conformance __Archiving.ArchivingError();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __Archiving.Operation.unarchive(to:withReport:)(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  if (a2)
  {
    v5 = *(v2 + 16);
    URL._bridgeToObjectiveC()(v3);
    v7 = v6;
    v8 = MEMORY[0x1C6901DF0](v5, v6, a2, v16);
  }

  else
  {
    v9 = *(v2 + 16);
    URL._bridgeToObjectiveC()(v3);
    v7 = v10;
    v8 = _REArchiveOperationUnarchiveToURL();
  }

  v11 = v8;

  if ((v11 & 1) == 0)
  {
    v12 = v16[0];
    if (v16[0])
    {
      type metadata accessor for CFErrorRef(0);
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_3(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
      swift_allocError();
      *v13 = v12;
    }

    else
    {
      lazy protocol witness table accessor for type __Archiving.ArchivingError and conformance __Archiving.ArchivingError();
      swift_allocError();
      *v14 = 0;
    }

    swift_willThrow();
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t static __Archiving.archivePackage(source:destination:envelopeVersion:compressionLevel:progress:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v25[0] = a2;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a3;
  v16 = a3[1];
  (*(v10 + 16))(v14, a1, v9, v12);
  type metadata accessor for __Archiving.Operation();
  inited = swift_initStackObject();
  URL._bridgeToObjectiveC()(v18);
  v20 = v19;
  v21 = _REArchiveOperationCreateWithURL();

  (*(v10 + 8))(v14, v9);
  *(inited + 16) = v21;
  _REArchiveOperationSetArchiveCompressionLevel();
  _REArchiveOperationSetStreamCompression();
  if (v16)
  {
    REArchiveGetDefaultEnvelopeVersion();
    if ((_REArchiveOperationSetEnvelopeVersion() & 1) == 0)
    {
LABEL_3:
      lazy protocol witness table accessor for type __Archiving.ArchivingError and conformance __Archiving.ArchivingError();
      swift_allocError();
      *v22 = 1;
      swift_willThrow();
    }
  }

  else if ((_REArchiveOperationSetEnvelopeVersion() & 1) == 0)
  {
    goto LABEL_3;
  }

  if (a6)
  {
    objc_storeStrong(v21, a6);
  }

  v23 = v25[5];
  __Archiving.Operation.archive(to:)();
  if (!v23)
  {
    swift_setDeallocating();
    return MEMORY[0x1C6901D90](v21);
  }
}

uint64_t static __Archiving.unarchivePackage(source:destination:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  type metadata accessor for __Archiving.Operation();
  inited = swift_initStackObject();
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  v14 = _REArchiveOperationCreateWithURL();

  (*(v5 + 8))(v9, v4);
  *(inited + 16) = v14;
  _REArchiveOperationSetStreamCompression();
  __Archiving.Operation.unarchive(to:withReport:)(a2, 0);
  swift_setDeallocating();
  return MEMORY[0x1C6901D90](v14);
}

uint64_t static __Archiving.unarchivePackage(source:destination:withReport:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, a1, v6, v9);
  type metadata accessor for __Archiving.Operation();
  inited = swift_initStackObject();
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  v16 = _REArchiveOperationCreateWithURL();

  (*(v7 + 8))(v11, v6);
  *(inited + 16) = v16;
  _REArchiveOperationSetStreamCompression();
  __Archiving.Operation.unarchive(to:withReport:)(a2, a3);
  swift_setDeallocating();
  return MEMORY[0x1C6901D90](v16);
}

Swift::Int __Archiving.ArchivingError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t __REAssetManager.waitForLoadRequest(_:with:)(uint64_t a1, unsigned __int8 *a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *a2;
  if (v11 == 2)
  {
    v12 = *(a1 + 16);
    if (!REAssetLoadRequestGetState())
    {
      REAssetLoadRequestWaitForCompletion();
    }
  }

  else if (v11)
  {
    v13 = *(v2 + 88);
    v14 = v8;
    *v10 = REAssetManagerGetEngineQueue();
    (*(v6 + 104))(v10, *MEMORY[0x1E69E8018], v14);
    v15 = _dispatchPreconditionTest(_:)();
    result = (*(v6 + 8))(v10, v14);
    if ((v15 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v17 = *(a1 + 16);
    if (!REAssetLoadRequestGetState())
    {
      REAssetLoadRequestWaitForCompletionFromOtherQueue();
    }
  }

  else
  {
    v18 = *(a1 + 16);
    if (REAssetLoadRequestGetState() != 1)
    {
      lazy protocol witness table accessor for type SerializationError and conformance SerializationError();
      swift_allocError();
      *v22 = 0xD00000000000001ALL;
      *(v22 + 8) = 0x80000001C18E9170;
      v23 = 1;
      goto LABEL_14;
    }
  }

  result = REAssetLoadRequestGetState();
  if (result == 1)
  {
    return result;
  }

  RequestCopyError = REAssetLoadRequestCopyError();
  if (!RequestCopyError)
  {
    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    swift_allocError();
    *v22 = 0xD00000000000001BLL;
    *(v22 + 8) = 0x80000001C18E9190;
    v23 = 4;
LABEL_14:
    *(v22 + 16) = v23;
    return swift_willThrow();
  }

  v20 = RequestCopyError;
  type metadata accessor for CFErrorRef(0);
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_3(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
  swift_allocError();
  *v21 = v20;
  return swift_willThrow();
}

double __REAssetService.asManager.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 32))();
  type metadata accessor for __REAssetManager();
  v3 = swift_allocObject();
  result = 0.0;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 2;
  *(v3 + 96) = 514;
  *(v3 + 88) = v2;
  return result;
}

void __REAssetService.performOnEngineQueue<A>(with:_:)(unsigned __int8 *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33[1] = a5;
  v33[2] = a3;
  v34 = a2;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *a1;
  if (v15 == 2)
  {
    __REAssetService.asManager.getter(a4, a6);
    v17 = *(v16 + 88);
    v18 = REAssetManagerGetEngineQueue();

    *v14 = v18;
    (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
    v19 = _dispatchPreconditionTest(_:)();
    v20 = (*(v11 + 8))(v14, v10);
    if (v19)
    {
      v34(v20);
      return;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  if (v15)
  {
    v33[0] = v6;
    __REAssetService.asManager.getter(a4, a6);
    v22 = *(v21 + 88);
    v23 = REAssetManagerGetEngineQueue();

    *v14 = v23;
    (*(v11 + 104))(v14, *MEMORY[0x1E69E8018], v10);
    LOBYTE(v23) = _dispatchPreconditionTest(_:)();
    (*(v11 + 8))(v14, v10);
    if (v23)
    {
      __REAssetService.asManager.getter(a4, a6);
      v25 = *(v24 + 88);
      v26 = REAssetManagerGetEngineQueue();

      OS_dispatch_queue.sync<A>(execute:)();

      return;
    }

    goto LABEL_10;
  }

  v27 = [objc_opt_self() callStackSymbols];
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v35 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
  v29 = BidirectionalCollection<>.joined(separator:)();
  v31 = v30;

  lazy protocol witness table accessor for type SerializationError and conformance SerializationError();
  swift_allocError();
  *v32 = v29;
  *(v32 + 8) = v31;
  *(v32 + 16) = 1;
  swift_willThrow();
}

uint64_t implicit closure #1 in String.init(cString:)@<X0>(uint64_t *a1@<X8>)
{
  result = String.init(cString:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfC10RealityKit9__REAssetC_0E10Foundation17RESceneDescriptorCTt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10RealityKit9__REAssetC0C10Foundation17RESceneDescriptorCGMd, &_ss18_DictionaryStorageCy10RealityKit9__REAssetC0C10Foundation17RESceneDescriptorCGMR);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v17 = v2;
    __CocoaDictionary.makeIterator()();
    if (__CocoaDictionary.Iterator.next()())
    {
      type metadata accessor for __REAsset();
      do
      {
        swift_dynamicCast();
        type metadata accessor for RESceneDescriptor();
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v10 + 1, 1);
        }

        v2 = v17;
        v3 = *(v17 + 40);
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v16 + 16));
        result = Hasher._finalize()();
        v5 = v17 + 64;
        v6 = -1 << *(v17 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v17 + 64 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v17 + 64 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v17 + 48) + 8 * v9) = v16;
        *(*(v17 + 56) + 8 * v9) = v15;
        ++*(v17 + 16);
      }

      while (__CocoaDictionary.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t specialized static __REAssetBundle.AssetMap.SceneDescriptor.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v28 = v8;
  v29 = type metadata accessor for __REAssetBundle.AssetMap.SceneDescriptor();
  v17 = *(v29 + 24);
  v18 = *(v13 + 48);
  outlined init with copy of [String : String](a1 + v17, v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of [String : String](a2 + v17, &v16[v18], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    outlined init with copy of [String : String](v16, v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v21 = &v16[v18];
      v22 = v28;
      (*(v5 + 32))(v28, v21, v4);
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v5 + 8);
      v24(v22, v4);
      v24(v12, v4);
      outlined destroy of BodyTrackingComponent?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if ((v23 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_16;
    }

    (*(v5 + 8))(v12, v4);
LABEL_12:
    outlined destroy of BodyTrackingComponent?(v16, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    return 0;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  outlined destroy of BodyTrackingComponent?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_16:
  v25 = *(v29 + 28);
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);
  if (v26)
  {
    if (v27 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV0H20CompatibilityVariantV_Tt1g5(v26, v27) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v27)
  {
    return 1;
  }

  return 0;
}

uint64_t specialized __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV0J20CompatibilityVariantV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV0J20CompatibilityVariantV10CodingKeys33_C8F7F657726B51B2BB46A431F0E79785LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  lazy protocol witness table accessor for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[15] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v10[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t specialized __REAssetBundle.Header.VersionInfo.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C18E8FB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C506E696769726FLL && a2 == 0xEE006D726F667461)
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

uint64_t specialized __REAssetBundle.AssetMap.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656E656373 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737465737361 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001C18E9010 == a2)
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

uint64_t specialized __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E656E656373 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656449656E656373 && a2 == 0xEF7265696669746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001C18E8FD0 == a2)
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

uint64_t specialized static __REAssetBundle.frameworkVersion(key:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for realityFoundation != -1)
  {
    swift_once();
  }

  v4 = [static NSBundle.realityFoundation infoDictionary];
  if (!v4)
  {
    return 12589;
  }

  v5 = v4;
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v6 + 16))
  {
    goto LABEL_10;
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v8 & 1) == 0)
  {
    goto LABEL_10;
  }

  outlined init with copy of Any(*(v6 + 56) + 32 * v7, v13);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 12589;
  }

  result = v11;
  v10 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v10 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
LABEL_10:

    return 12589;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo.CodingKeys and conformance __REAssetBundle.Header.VersionInfo.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.Header.CodingKeys and conformance __REAssetBundle.Header.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __REAssetBundle.Header.VersionInfo and conformance __REAssetBundle.Header.VersionInfo()
{
  result = lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo and conformance __REAssetBundle.Header.VersionInfo;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo and conformance __REAssetBundle.Header.VersionInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo and conformance __REAssetBundle.Header.VersionInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo and conformance __REAssetBundle.Header.VersionInfo;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo and conformance __REAssetBundle.Header.VersionInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.Header.VersionInfo and conformance __REAssetBundle.Header.VersionInfo);
  }

  return result;
}

uint64_t outlined copy of __REAssetBundle.ExportOptions.DeploymentTarget?(uint64_t a1, unint64_t a2)
{
  if (a2 != 5)
  {
    return outlined copy of __REAssetBundle.ExportOptions.PlatformOS(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of __REAssetBundle.ExportOptions.DeploymentTarget?(uint64_t a1, unint64_t a2)
{
  if (a2 != 5)
  {
    return outlined consume of __REAssetBundle.ExportOptions.PlatformOS(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of __REAssetBundle.ExportOptions.PlatformOS(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t outlined copy of __REAssetBundle.LoadOptions.ContentRequest(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.CodingKeys);
  }

  return result;
}

uint64_t type metadata accessor for __REAssetBundle.AssetMap.SceneDescriptor()
{
  result = type metadata singleton initialization cache for __REAssetBundle.AssetMap.SceneDescriptor;
  if (!type metadata singleton initialization cache for __REAssetBundle.AssetMap.SceneDescriptor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant()
{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [__REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV0G20CompatibilityVariantVGMd, &_sSay10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV0G20CompatibilityVariantVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of __REAssetBundle.AssetMap.SceneDescriptor(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for __REAssetBundle.AssetMap.SceneDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of __REAssetBundle.AssetMap.SceneDescriptor(uint64_t a1)
{
  v2 = type metadata accessor for __REAssetBundle.AssetMap.SceneDescriptor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys and conformance __REAssetBundle.AssetMap.AssetDescriptor.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Int] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd, &_sSaySiGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.CodingKeys and conformance __REAssetBundle.AssetMap.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [__REAssetBundle.AssetMap.SceneDescriptor] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorVGMd, &_sSay10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorVGMR);
    _sSo10CFErrorRefaABs5Error10FoundationWlTm_3(a2, type metadata accessor for __REAssetBundle.AssetMap.SceneDescriptor);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __REAssetBundle.AssetMap.AssetDescriptor and conformance __REAssetBundle.AssetMap.AssetDescriptor()
{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor and conformance __REAssetBundle.AssetMap.AssetDescriptor;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor and conformance __REAssetBundle.AssetMap.AssetDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor and conformance __REAssetBundle.AssetMap.AssetDescriptor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor and conformance __REAssetBundle.AssetMap.AssetDescriptor;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor and conformance __REAssetBundle.AssetMap.AssetDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.AssetDescriptor and conformance __REAssetBundle.AssetMap.AssetDescriptor);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [__REAssetBundle.AssetMap.AssetDescriptor] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10RealityKit15__REAssetBundleV8AssetMapV0E10DescriptorVGMd, &_sSay10RealityKit15__REAssetBundleV8AssetMapV0E10DescriptorVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of __REAssetBundle.AssetMap.SceneDescriptor(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for __REAssetBundle.AssetMap.SceneDescriptor();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of (key: __REAsset, value: __REAssetBundle.AssetMap.SceneDescriptor)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9__REAssetC3key_AA02__C6BundleV8AssetMapV15SceneDescriptorV5valuetSgMd, &_s10RealityKit9__REAssetC3key_AA02__C6BundleV8AssetMapV15SceneDescriptorV5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with copy of __DownsamplingStrategy?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit22__DownsamplingStrategy_pSgMd, &_s10RealityKit22__DownsamplingStrategy_pSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in static __REAssetBundle.load(url:assetService:materialDefinition:completionHandler:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);

  return closure #1 in static __REAssetBundle.load(url:assetService:materialDefinition:completionHandler:)((v0 + 16), v0 + v2, v4);
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in static __REAssetBundle.load(url:serviceLocator:completionHandler:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return closure #1 in static __REAssetBundle.load(url:serviceLocator:completionHandler:)(v0 + v2, v4, v6, v7);
}

uint64_t partial apply for closure #1 in __REAssetBundle.__write(to:completionHandler:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);

  return closure #1 in __REAssetBundle.__write(to:completionHandler:)(v0 + 16, v0 + v2, v4);
}

unint64_t lazy protocol witness table accessor for type __Archiving.ArchivingError and conformance __Archiving.ArchivingError()
{
  result = lazy protocol witness table cache variable for type __Archiving.ArchivingError and conformance __Archiving.ArchivingError;
  if (!lazy protocol witness table cache variable for type __Archiving.ArchivingError and conformance __Archiving.ArchivingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __Archiving.ArchivingError and conformance __Archiving.ArchivingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __Archiving.ArchivingError and conformance __Archiving.ArchivingError;
  if (!lazy protocol witness table cache variable for type __Archiving.ArchivingError and conformance __Archiving.ArchivingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __Archiving.ArchivingError and conformance __Archiving.ArchivingError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for __REAssetBundle.Header(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for __REAssetBundle.Header(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for __REAssetBundle.QueueOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for __REAssetBundle.QueueOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 5;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy123_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 107) = *(a2 + 107);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for __REAssetBundle.ExportOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 123))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for __REAssetBundle.ExportOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 122) = 0;
    *(result + 120) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 123) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 123) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10RealityKit22__DownsamplingStrategy_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for __REAssetBundle.LoadOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
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

uint64_t storeEnumTagSinglePayload for __REAssetBundle.LoadOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for __REAssetBundle.LoadOptions.ContentRequest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for __REAssetBundle.LoadOptions.ContentRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for __REAssetBundle.LoadOptions.ContentRequest(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void type metadata completion function for __REAssetBundle.AssetMap.SceneDescriptor()
{
  type metadata accessor for UUID?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [__REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant]?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for UUID?()
{
  if (!lazy cache variable for type metadata for UUID?)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UUID?);
    }
  }
}

void type metadata accessor for [__REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant]?()
{
  if (!lazy cache variable for type metadata for [__REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV0G20CompatibilityVariantVGMd, &_sSay10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV0G20CompatibilityVariantVGMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [__REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant]?);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10RealityKit02__A9FileErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t getEnumTagSinglePayload for __AssetBundleEnvelopeVersion(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      return v4;
    }

    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  if (v4 == 2)
  {
    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  return v4;
}

_WORD *storeEnumTagSinglePayload for __AssetBundleEnvelopeVersion(_WORD *result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t getEnumTag for __AssetBundleEnvelopeVersion(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for __AssetBundleEnvelopeVersion(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    result[1] = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    result[1] = 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation18SerializationErrorO(uint64_t a1)
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

unint64_t lazy protocol witness table accessor for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys and conformance __REAssetBundle.AssetMap.SceneDescriptor.SceneCompatibilityVariant.CodingKeys);
  }

  return result;
}

uint64_t specialized static __REAssetBundle.getSceneNamesFromRealityFile(realityFile:)()
{
  result = RERealityFileGetAssetDescriptorCount();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (!result)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v2 = 0;
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      if (RERealityFileGetAssetDescriptorAtIndex() && RERealityFileAssetDescriptorAsSceneDescriptor())
      {
        if (RESceneDescriptorGetSceneName())
        {
          v5 = String.init(cString:)();
          v7 = v6;
        }

        else
        {
          v5 = 0;
          v7 = 0xE000000000000000;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
        }

        v9 = *(v3 + 2);
        v8 = *(v3 + 3);
        if (v9 >= v8 >> 1)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v3);
        }

        *(v3 + 2) = v9 + 1;
        v4 = &v3[16 * v9];
        *(v4 + 4) = v5;
        *(v4 + 5) = v7;
      }

      ++v2;
    }

    while (v1 != v2);
    return v3;
  }

  return result;
}

uint64_t specialized static __REAssetBundle.getSceneDescriptorsFromRealityFile(realityFile:)()
{
  result = RERealityFileGetAssetDescriptorCount();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (!result)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v2 = 0;
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      if (RERealityFileGetAssetDescriptorAtIndex())
      {
        v4 = RERealityFileAssetDescriptorAsSceneDescriptor();
        if (v4)
        {
          v5 = v4;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
          }

          v7 = *(v3 + 2);
          v6 = *(v3 + 3);
          if (v7 >= v6 >> 1)
          {
            v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v3);
          }

          *(v3 + 2) = v7 + 1;
          *&v3[8 * v7 + 32] = v5;
        }
      }

      ++v2;
    }

    while (v1 != v2);
    return v3;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SerializationError and conformance SerializationError()
{
  result = lazy protocol witness table cache variable for type SerializationError and conformance SerializationError;
  if (!lazy protocol witness table cache variable for type SerializationError and conformance SerializationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SerializationError and conformance SerializationError);
  }

  return result;
}

uint64_t _sSo10CFErrorRefaABs5Error10FoundationWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type LocalizedRealityFileError and conformance LocalizedRealityFileError()
{
  result = lazy protocol witness table cache variable for type LocalizedRealityFileError and conformance LocalizedRealityFileError;
  if (!lazy protocol witness table cache variable for type LocalizedRealityFileError and conformance LocalizedRealityFileError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalizedRealityFileError and conformance LocalizedRealityFileError);
  }

  return result;
}

__n128 SpatialMediaComponent.init()@<Q0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1897FC0;
  RESpatialMediaComponentGetDefaultImmersiveFrameSize();
  *(inited + 32) = v3;
  RESpatialMediaComponentGetDefaultImmersiveFrameSize();
  *(inited + 36) = v4;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(inited);
  v6 = v5;
  swift_setDeallocating();
  RESpatialMediaComponentGetDefaultMediaPlaneOffset();
  v9 = v7;
  if (one-time initialization token for networkSystemObserver != -1)
  {
    swift_once();
  }

  SMCNetworkSystemObserver.setupRENetworkCallbacks()();

  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 1;
  *(a1 + 20) = 0;
  *(a1 + 23) = 0;
  *(a1 + 27) = 1;
  *(a1 + 28) = 1065353216;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  result = v9;
  *(a1 + 48) = v9;
  return result;
}

float SpatialMediaComponent.spatialMediaPlaneXYOffset.setter(__n128 a1)
{
  a1.n128_u64[1] = v1[3].n128_u32[2];
  v1[3] = a1;
  return a1.n128_f32[0];
}

float (*SpatialMediaComponent.spatialMediaPlaneXYOffset.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x20uLL);
  }

  *a1 = v3;
  *(v3 + 24) = v1;
  v4 = *(v1 + 48);
  *v3 = v4;
  *(v3 + 16) = v4;
  return SpatialMediaComponent.spatialMediaPlaneXYOffset.modify;
}

float SpatialMediaComponent.spatialMediaPlaneXYOffset.modify(uint64_t *a1)
{
  v1 = *a1;
  *&v2 = *(v1 + 16);
  *(&v2 + 1) = *(v1 + 8);
  *(*(v1 + 24) + 48) = v2;
  free(v1);
  return result;
}

void (*SpatialMediaComponent.spatialMediaPlaneOffset.modify(uint64_t *a1))(void **a1)
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
  *v3 = *(v1 + 48);
  return SpatialMediaComponent.spatialMediaPlaneOffset.modify;
}

void SpatialMediaComponent.spatialMediaPlaneOffset.modify(void **a1)
{
  v1 = *a1;
  *(v1[2] + 48) = *v1;
  free(v1);
}

void one-time initialization function for networkSystemObserver()
{
  type metadata accessor for SMCNetworkSystemObserver();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  SMCNetworkSystemObserver.setupRENetworkCallbacks()();
  static SpatialMediaComponent.networkSystemObserver = v0;
}

{
  type metadata accessor for ImagePresentationComponent.NetworkSystemObserver();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  ImagePresentationComponent.NetworkSystemObserver.setupRENetworkCallbacks()();
  static ImagePresentationComponent.networkSystemObserver = v0;
}

__n128 static SpatialMediaComponent.__fromCore(_:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  REComponentGetEntity();
  SpatialMediaComponent.init()(&v17);
  RESpatialMediaStatusComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    CurrentImmersiveAnimationMode = RESpatialMediaStatusComponentGetCurrentImmersiveAnimationMode();
    if (CurrentImmersiveAnimationMode >= 4)
    {
      v5 = 0;
    }

    else
    {
      v5 = CurrentImmersiveAnimationMode;
    }

    LOBYTE(v17) = v5;
    RESpatialMediaStatusComponentGetImmersiveFrameSize();
    *(&v17 + 1) = v6;
  }

  RESpatialMediaComponentGetSpillTextureBlend();
  DWORD1(v17) = v7;
  RESpatialMediaComponentGetLegibilityGradientStrength();
  DWORD1(v18) = v8;
  BYTE9(v18) = RESpatialMediaComponentGetIsMediaBillboardingEnabled();
  MediaBillboardingMode = RESpatialMediaComponentGetMediaBillboardingMode();
  v10 = MediaBillboardingMode == 1;
  if (MediaBillboardingMode == 2)
  {
    v10 = 2;
  }

  BYTE10(v18) = v10;
  RESpatialMediaComponentGetMediaPlaneOffset();
  v20 = v11;
  BYTE8(v18) = RESpatialMediaComponentGetIsFlatGeometry();
  BYTE11(v18) = RESpatialMediaComponentGetShouldAnimateImmersiveTransition();
  RESpatialMediaComponentGetImmersiveReducedExtent();
  DWORD1(v19) = v12;
  RESpatialMediaComponentGetMagnificationExtent();
  HIDWORD(v18) = v13;
  RESpatialMediaComponentGetMagnificationVelocity();
  LODWORD(v19) = v14;
  BYTE8(v19) = RESpatialMediaComponentGetShouldUsePortalWidthForMediaScaling();
  v15 = v18;
  *a2 = v17;
  *(a2 + 16) = v15;
  result = v20;
  *(a2 + 32) = v19;
  *(a2 + 48) = result;
  return result;
}

uint64_t SpatialMediaComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 4);
  v4 = *(v1 + 20);
  v5 = *(v1 + 24);
  v6 = *(v1 + 25);
  v7 = *(v1 + 26);
  v8 = *(v1 + 27);
  v10 = *(v1 + 28);
  v9 = *(v1 + 32);
  v11 = *(v1 + 36);
  v12 = *(v1 + 40);
  v14 = *(v1 + 48);
  REComponentGetEntity();
  RESpatialMediaStatusComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RESpatialMediaComponentSetIsFlatGeometry();
  RESpatialMediaComponentSetSpillTextureBlend();
  RESpatialMediaComponentSetLegibilityGradientStrength();
  RESpatialMediaComponentSetIsMediaBillboardingEnabled();
  RESpatialMediaComponentSetMediaBillboardingMode();
  RESpatialMediaComponentSetMediaPlaneOffset();
  RESpatialMediaComponentSetShouldAnimateImmersiveTransition();
  RESpatialMediaComponentSetImmersiveReducedExtent();
  RESpatialMediaComponentSetMagnificationExtent();
  RESpatialMediaComponentSetMagnificationVelocity();
  RESpatialMediaComponentSetShouldUsePortalWidthForMediaScaling();

  return RENetworkMarkComponentDirty();
}

uint64_t SMCNetworkSystemObserver.__deallocating_deinit()
{
  if (*(v0 + 16) && *(v0 + 24))
  {
    RENetworkSystemRemoveObserver();
    *(v0 + 16) = 0;
  }

  if (*(v0 + 24))
  {
    RERelease();
  }

  return swift_deallocClassInstance();
}

void SMCNetworkSystemObserver.setupRENetworkCallbacks()()
{
  if (!*(v0 + 24))
  {
    v1 = v0;
    type metadata accessor for __ServiceLocator();
    v2 = static __ServiceLocator.shared.getter();
    swift_beginAccess();
    v3 = *(v2 + 24);
    swift_unownedRetainStrong();

    swift_beginAccess();
    v4 = *(v3 + 40);

    if (!v4)
    {
      __break(1u);
      return;
    }

    swift_beginAccess();
    outlined init with copy of __REAssetService(v4 + 80, v17);

    v5 = v18;
    v6 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v6 + 32))(v16, v5, v6);
    if (REECSManagerSceneCount() < 1)
    {
      if (one-time initialization token for SpatialMediaLogger != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, SpatialMediaLogger);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_16;
      }

      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "App SpatialMedia+Component: setupRENetworkCallbacks failed - scene count is zero";
    }

    else
    {
      ServiceLocator = REECSManagerGetServiceLocator();
      *(v1 + 16) = MEMORY[0x1C68FE270](ServiceLocator);
      v8 = RENetworkSystemObserverCreateEx();
      *(v1 + 24) = v8;
      if (*(v1 + 16) && v8)
      {
        v16[4] = partial apply for implicit closure #2 in implicit closure #1 in SMCNetworkSystemObserver.setupRENetworkCallbacks();
        v16[5] = v1;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 1107296256;
        v16[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
        v16[3] = &block_descriptor_25;
        v9 = _Block_copy(v16);

        RENetworkSystemObserverOnComponentDidUpdate();
        _Block_release(v9);
        RENetworkSystemAddObserver();
LABEL_17:
        __swift_destroy_boxed_opaque_existential_1(v17);
        return;
      }

      if (one-time initialization token for SpatialMediaLogger != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, SpatialMediaLogger);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v11, v12))
      {
LABEL_16:

        goto LABEL_17;
      }

      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "App SpatialMedia+Component: setupRENetworkCallbacks failed - no network system or observer";
    }

    _os_log_impl(&dword_1C1358000, v11, v12, v14, v13, 2u);
    MEMORY[0x1C6902A30](v13, -1, -1);
    goto LABEL_16;
  }
}

unint64_t lazy protocol witness table accessor for type SpatialMediaComponent.MediaBillboardingMode and conformance SpatialMediaComponent.MediaBillboardingMode()
{
  result = lazy protocol witness table cache variable for type SpatialMediaComponent.MediaBillboardingMode and conformance SpatialMediaComponent.MediaBillboardingMode;
  if (!lazy protocol witness table cache variable for type SpatialMediaComponent.MediaBillboardingMode and conformance SpatialMediaComponent.MediaBillboardingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialMediaComponent.MediaBillboardingMode and conformance SpatialMediaComponent.MediaBillboardingMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImmersiveAnimationMode and conformance ImmersiveAnimationMode()
{
  result = lazy protocol witness table cache variable for type ImmersiveAnimationMode and conformance ImmersiveAnimationMode;
  if (!lazy protocol witness table cache variable for type ImmersiveAnimationMode and conformance ImmersiveAnimationMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImmersiveAnimationMode and conformance ImmersiveAnimationMode);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpatialMediaComponent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 64))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SpatialMediaComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void specialized SMCNetworkSystemObserver.onComponentDidUpdate(componentRef:)(uint64_t a1)
{
  REComponentGetEntity();
  RESpatialMediaComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (ComponentByClass && ComponentByClass == a1 || (RESpatialMediaStatusComponentGetComponentType(), (v3 = REEntityGetComponentByClass()) != 0) && v3 == a1)
  {
    RESpatialMediaStatusComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {

      MEMORY[0x1EEDFE8F8]();
    }

    else
    {
      if (one-time initialization token for SpatialMediaLogger != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, SpatialMediaLogger);
      oslog = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_1C1358000, oslog, v5, "App SpatialMedia+Component SMCNetworkSystemObserver onComponentDidUpdate failed - there is no Spatial Media Status Component", v6, 2u);
        MEMORY[0x1C6902A30](v6, -1, -1);
      }
    }
  }
}

uint64_t specialized Material.syncMaterialRenderStateFromCore(coreComponent:index:)()
{
  v4 = *MEMORY[0x1E69E9840];
  if (REMaterialRenderStateArrayComponentGetTriangleFillModeAtIndex())
  {
    *(v0 + 56) = 0;
  }

  if (REMaterialRenderStateArrayComponentGetWritesDepthAtIndex())
  {
    *(v0 + 64) = 1;
  }

  if (REMaterialRenderStateArrayComponentGetReadsDepthAtIndex())
  {
    *(v0 + 65) = 1;
  }

  result = REMaterialRenderStateArrayComponentGetCullModeAtIndex();
  v2 = 2;
  if (!result)
  {
    v2 = 0;
  }

  *(v0 + 72) = v2;
  *(v0 + 80) = result ^ 1;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ModelComponent.init(mesh:materials:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  *a3 = a1;
  *(a3 + 8) = a2;
  type metadata accessor for _Proto_MeshDeformation_v1.Resource();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(a3 + 24) = result;
  return result;
}

uint64_t ModelComponent.mesh.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ModelComponent.materials.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

float (*ModelComponent.boundsMargin.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return PointLightComponent.attenuationFalloffExponent.modify;
}

uint64_t ModelComponent.deformation.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 24);

  *(v1 + 24) = v2;
  return result;
}

uint64_t ModelComponent.init(mesh:materials:deformation:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *(a4 + 16) = 0;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 24) = v4;
  return result;
}

void *ModelComponent.init(mesh:materials:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = a3();
  result = specialized _Proto_MeshDeformation_v1.Resource.__allocating_init(definition:)(v8);
  if (v4)
  {
  }

  else
  {
    *a4 = a1;
    *(a4 + 8) = a2;
    *(a4 + 16) = 0;
    *(a4 + 24) = result;
  }

  return result;
}

uint64_t protocol witness for Component.__toCore(_:) in conformance ModelComponent(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 4);
  v4 = *(v1 + 3);
  v7 = *v1;
  v8 = v3;
  v9 = v4;
  v6 = v2;
  return ModelComponent.__toCore(_:returnStrongReference:)(&v6, 0);
}

uint64_t ModelComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 4);
  v4 = *(v1 + 3);
  v7 = *v1;
  v8 = v3;
  v9 = v4;
  v6 = v2;
  return ModelComponent.__toCore(_:returnStrongReference:)(&v6, 0);
}

_BYTE *closure #1 in static ModelComponent.copyDirectBufferData(component:stage:materialIndex:)(_BYTE *result, unint64_t a2, uint64_t *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      if (a2 <= 0xE)
      {
        v9 = specialized Data.InlineData.init(_:)(result, &result[a2]);
        v10 = v11 & 0xFFFFFFFFFFFFFFLL;
      }

      else
      {
        v5 = type metadata accessor for __DataStorage();
        v6 = *(v5 + 48);
        v7 = *(v5 + 52);
        swift_allocObject();
        v8 = __DataStorage.init(bytes:length:)();
        if (a2 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          v9 = swift_allocObject();
          *(v9 + 16) = 0;
          *(v9 + 24) = a2;
          v10 = v8 | 0x8000000000000000;
        }

        else
        {
          v9 = a2 << 32;
          v10 = v8 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v9 = 0;
      v10 = 0xC000000000000000;
    }

    v13 = *a3;
    v12 = a3[1];
    *a3 = v9;
    a3[1] = v10;

    return outlined consume of Data?(v13, v12);
  }

  return result;
}

uint64_t static ModelComponent.__fromCore(_:borrowStrongReference:)@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v143 = a2;
  v136 = a3;
  v4 = *a1;
  Mesh = REMeshComponentGetMesh();
  if (Mesh)
  {
    v6 = Mesh;
    if (REAssetGetSwiftObject())
    {
      type metadata accessor for MeshResource();
      v137 = swift_dynamicCastClass();
      if (v137)
      {
        goto LABEL_7;
      }

      swift_unknownObjectRelease();
    }

    type metadata accessor for MeshResource();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    RERetain();
    v137 = v7;
    REAssetSetSwiftObject();
  }

  else
  {
    type metadata accessor for MeshResource();
    v137 = swift_allocObject();
    *(v137 + 16) = 0;
  }

LABEL_7:
  MaterialCount = REMeshComponentGetMaterialCount();
  v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, MaterialCount & ~(MaterialCount >> 63), 0, MEMORY[0x1E69E7CC0]);
  Entity = REComponentGetEntity();
  REMaterialParameterBlockArrayComponentGetComponentType();
  v11 = REEntityGetOrAddComponentByClass();
  REMaterialRenderStateArrayComponentGetComponentType();
  v148._rawValue = REEntityGetOrAddComponentByClass();
  v146 = v11;
  if (REMaterialParameterBlockArrayComponentSize() != MaterialCount)
  {
    REMaterialParameterBlockArrayComponentResize();
  }

  if (REMaterialRenderStateArrayComponentSize() != MaterialCount)
  {
    REMaterialRenderStateArrayComponentResize();
  }

  REDirectMaterialParametersArrayComponentGetComponentType();
  v140 = REEntityGetOrAddComponentByClass();
  v135[1] = Entity;
  Component = REEntityGetComponent();
  if (Component)
  {
    Entity = Component;
    VideoAsset = REVideoComponentGetVideoAsset();
    MaterialAsset = REVideoComponentGetMaterialAsset();
    if ((MaterialCount & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  MaterialAsset = 0;
  VideoAsset = 0;
  if (MaterialCount < 0)
  {
    goto LABEL_126;
  }

LABEL_13:
  if (!MaterialCount)
  {
LABEL_122:
    type metadata accessor for _Proto_MeshDeformation_v1.Resource();
    Entity = swift_allocObject();
    *(Entity + 16) = 0;
    *(Entity + 24) = 0;

    REMeshComponentGetBoundsMargin();
    v3 = v129;
    REMeshDeformationComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      MeshDeformationDefinition = REMeshDeformationComponentGetMeshDeformationDefinition();

      v132 = v137;
      if (MeshDeformationDefinition)
      {
        v133 = swift_allocObject();
        *(v133 + 16) = MeshDeformationDefinition;
        *(v133 + 24) = 0;
        RERetain();
        REAssetSetSwiftObject();

        Entity = v133;
      }

      goto LABEL_128;
    }

LABEL_127:

    v132 = v137;
LABEL_128:
    v134 = v136;
    *v136 = v132;
    v134[1] = v9;
    *(v134 + 4) = v3;
    v134[3] = Entity;
    return result;
  }

  v13 = 0;
  v139 = "eiver.rematerial";
  v14 = &static ComponentInfo.Platform.macOS;
  v149 = v4;
  v152 = MaterialCount;
  while (1)
  {
    MaterialAtIndex = REMeshComponentGetMaterialAtIndex();
    if (!MaterialAtIndex)
    {
      goto LABEL_16;
    }

    v16 = MaterialAtIndex;
    MaterialParametersIDAtIndex = REMeshComponentGetMaterialParametersIDAtIndex();
    v153 = v13;
    if (!MaterialParametersIDAtIndex)
    {
      break;
    }

    type metadata accessor for __ServiceLocator();
    Shared = REEngineGetShared();
    if (Shared)
    {
      v19 = Shared;
      if (one-time initialization token for lock != -1)
      {
        swift_once();
      }

      v20 = static __ServiceLocator.lock;
      os_unfair_lock_lock((static __ServiceLocator.lock + 16));
      v21 = v14[291];
      if (!v21 || *(v21 + 24) != v19)
      {
        type metadata accessor for __Engine();
        swift_allocObject();
        v22 = __Engine.init(coreEngine:)(v19);
        v23 = v14[291];
        v14[291] = v22;

        specialized static SceneManager.customComponentType(_:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent);
        specialized static SceneManager.customComponentType(_:)(&type metadata for SceneOriginComponent, &protocol witness table for SceneOriginComponent);
      }

      os_unfair_lock_unlock(v20 + 4);
      v13 = v153;
      v24 = v14[291];
      if (!v24)
      {
LABEL_48:
        Default = REEngineConfigurationCreateDefault();
        type metadata accessor for EngineConfiguration();
        v43 = swift_allocObject();
        *(v43 + 16) = Default;
        if (REGetRetainCount() >= 2)
        {
          v44 = *(v43 + 16);

          v45 = REEngineConfigurationClone();
          v46 = swift_allocObject();
          *(v46 + 16) = v45;

          v43 = v46;
        }

        v47 = *(v43 + 16);
        REEngineConfigurationSetClockMode();
        if (one-time initialization token for defaultServices != -1)
        {
          swift_once();
        }

        v48 = *(v43 + 16);
        v49 = v9;
        if (REGetRetainCount() >= 2)
        {
          v50 = *(v43 + 16);

          v51 = REEngineConfigurationClone();
          v52 = swift_allocObject();
          *(v52 + 16) = v51;

          v43 = v52;
        }

        v53 = *(v43 + 16);
        REEngineConfigurationSetServicesToCreate();
        v54 = *(v43 + 16);
        if (REGetRetainCount() >= 2)
        {
          v55 = *(v43 + 16);

          v56 = REEngineConfigurationClone();
          v57 = swift_allocObject();
          *(v57 + 16) = v56;

          v43 = v57;
        }

        v9 = v49;
        v58 = *(v43 + 16);
        REEngineConfigurationSetServicesToUpdate();
        v59 = *(v43 + 16);
        v14 = &static ComponentInfo.Platform.macOS;
        if (REGetRetainCount() >= 2)
        {
          v60 = *(v43 + 16);

          v61 = REEngineConfigurationClone();
          v62 = swift_allocObject();
          *(v62 + 16) = v61;

          v43 = v62;
        }

        v63 = *(v43 + 16);
        REEngineConfigurationSetStartupOptions();
        if (one-time initialization token for defaultRenderFlags != -1)
        {
          swift_once();
        }

        v64 = *(v43 + 16);
        if (REGetRetainCount() >= 2)
        {
          v65 = *(v43 + 16);

          v66 = REEngineConfigurationClone();
          v67 = swift_allocObject();
          *(v67 + 16) = v66;

          v43 = v67;
        }

        v68 = *(v43 + 16);
        REEngineConfigurationSetRenderFlags();
        if (static __ServiceLocator.__sharedEngine.getter())
        {
        }

        else
        {
          *&v169 = v43;
          v80 = specialized static __Engine.makeSharedEngine(_:)(&v169);
          v81 = v80[3];
          REEngineSetShared();
          static __ServiceLocator.sharedEngine = v80;

          static __ServiceLocator.createdSharedEngine = 1;
        }

        v13 = v153;

        specialized static SceneManager.customComponentType(_:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent);
        specialized static SceneManager.customComponentType(_:)(&type metadata for SceneOriginComponent, &protocol witness table for SceneOriginComponent);
        v24 = static __ServiceLocator.sharedEngine;
        if (!static __ServiceLocator.sharedEngine)
        {
          goto LABEL_132;
        }
      }
    }

    else
    {
      v41 = v14[291];
      v14[291] = 0;

      v24 = v14[291];
      if (!v24)
      {
        goto LABEL_48;
      }
    }

    swift_beginAccess();
    v82 = v24[5];
    if (!v82)
    {
      goto LABEL_131;
    }

    swift_beginAccess();
    if (MEMORY[0x1C68FE260](*(v82 + 16)))
    {
      ParametersTypeForID = REMaterialParametersServiceGetParametersTypeForID();
      if (ParametersTypeForID == 2)
      {
        v84 = type metadata accessor for PhysicallyBasedMaterialResource();
        v85 = swift_allocObject();
        if (one-time initialization token for materialParametersService != -1)
        {
          swift_once();
        }

        PbrParametersByID = REMaterialParametersServiceFindPbrParametersByID();
        if (!PbrParametersByID)
        {
          goto LABEL_133;
        }

        *(v85 + 16) = PbrParametersByID;
        RERetain();
        v88 = v9[2];
        v87 = v9[3];
        v89 = v88 + 1;
        if (v88 >= v87 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v88 + 1, 1, v9);
        }

        v90 = &protocol witness table for PhysicallyBasedMaterialResource;
      }

      else
      {
        if (ParametersTypeForID != 1)
        {
          goto LABEL_136;
        }

        v84 = type metadata accessor for UnlitMaterialResource();
        v85 = swift_allocObject();
        if (one-time initialization token for materialParametersService != -1)
        {
          swift_once();
        }

        UnlitParametersByID = REMaterialParametersServiceFindUnlitParametersByID();
        if (!UnlitParametersByID)
        {
          goto LABEL_133;
        }

        *(v85 + 16) = UnlitParametersByID;
        RERetain();
        v88 = v9[2];
        v92 = v9[3];
        v89 = v88 + 1;
        if (v88 >= v92 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v92 > 1), v88 + 1, 1, v9);
        }

        v90 = &protocol witness table for UnlitMaterialResource;
      }

      *(&v170 + 1) = v84;
      *&v171 = v90;
      *&v169 = v85;
      v9[2] = v89;
      outlined init with take of ForceEffectBase(&v169, &v9[5 * v88 + 4]);
LABEL_110:
      MaterialCount = v152;
      v13 = v153;
      goto LABEL_16;
    }

    MaterialCount = v152;
LABEL_16:
    if (++v13 == MaterialCount)
    {
      goto LABEL_122;
    }
  }

  if (!VideoAsset || v16 != MaterialAsset)
  {
    if (v143)
    {
      v69 = REMaterialParameterBlockArrayComponentBorrowBlockValueAtIndex();
      v70 = v140;
      if (!v69)
      {
        goto LABEL_136;
      }
    }

    else
    {
      v69 = REMaterialParameterBlockArrayComponentGetBlockValueAtIndex();
      v70 = v140;
      if (!v69)
      {
        goto LABEL_136;
      }
    }

    v71 = v69;
    v72 = MEMORY[0x1C68F8A40](v70, v13);
    v73 = REDirectMaterialParametersArrayComponentGetBuffer();
    v74 = REDirectMaterialParametersArrayComponentGetBuffer();
    if (v73 | v74)
    {
      v78 = v74;
      if (v72)
      {
        v151 = specialized static ModelComponent.copyDirectBufferData(component:stage:materialIndex:)();
        v145 = v79;
        v75 = REDirectMaterialParametersArrayComponentGetResources();
        if (!v75)
        {
          v75 = REDirectParameterResourcesCreate();
        }

        v144 = 0;
        v77 = 0;
        v76 = 0;
      }

      else
      {
        v93 = v9;
        v151 = specialized static ModelComponent.copyDirectBufferData(component:stage:materialIndex:)();
        v145 = v94;
        v75 = REDirectMaterialParametersArrayComponentGetResources();
        if (!v75)
        {
          v75 = REDirectParameterResourcesCreate();
        }

        v144 = specialized static ModelComponent.copyDirectBufferData(component:stage:materialIndex:)();
        v96 = v95;
        v76 = REDirectMaterialParametersArrayComponentGetResources();
        if (!v76)
        {
          v76 = REDirectParameterResourcesCreate();
        }

        v77 = v96 | 0x1000000000000000;
        v9 = v93;
        v14 = &static ComponentInfo.Platform.macOS;
      }
    }

    else
    {
      v151 = 0;
      v144 = 0;
      v145 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0x2000000000000000;
    }

    Type = REMaterialAssetGetType();
    if (one-time initialization token for mapping != -1)
    {
      v118 = Type;
      swift_once();
      Type = v118;
    }

    v98 = static __MaterialResource.mapping + 32;
    v99 = *(static __MaterialResource.mapping + 2) + 1;
    while (--v99)
    {
      v100 = v98 + 24;
      v101 = *v98;
      v98 += 24;
      if (v101 == Type)
      {
        v102 = v9;
        v104 = *(v100 - 2);
        v103 = *(v100 - 1);
        *&v154 = MEMORY[0x1E69E7CC0];
        BYTE8(v154) = 0;
        *&v155 = 0;
        *(&v155 + 1) = v71;
        *&v169 = v151;
        *(&v169 + 1) = v145;
        *&v170 = v75;
        *(&v170 + 1) = v144;
        *&v171 = v77;
        *(&v171 + 1) = v76;
        v175 = v16;

        v104(&v160, &v175, &v154, &v169);

        goto LABEL_107;
      }
    }

    v102 = v9;
    *(&v161 + 1) = &type metadata for AnyMaterial;
    *&v162 = &protocol witness table for AnyMaterial;
    v105 = swift_allocObject();
    *&v160 = v105;
    v106 = MEMORY[0x1E69E7CC0];

    v107 = v71;
    v108 = _s17RealityFoundation16LoadableResourcePAAE8fromCore8assetRefxSgs13OpaquePointerV_tFZ0A3Kit010__MaterialD0C_Tt1g5(v16);
    if (!v108)
    {
      goto LABEL_136;
    }

    *(v105 + 16) = v108;
    *(v105 + 24) = v106;
    *(v105 + 32) = 0;
    *(v105 + 40) = 0;
    *(v105 + 48) = v107;
    v14 = &static ComponentInfo.Platform.macOS;
LABEL_107:
    __swift_mutable_project_boxed_opaque_existential_1(&v160, *(&v161 + 1));
    Material.syncMaterialRenderStateFromCore(coreComponent:index:)(v148, v153);
    outlined init with copy of __REAssetService(&v160, &v169);
    v9 = v102;
    v176[0] = v102;
    v110 = v102[2];
    v109 = v102[3];
    if (v110 >= v109 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v109 > 1), v110 + 1, 1, v102);
      outlined consume of DirectUniformsState?(v151, v145, v75, v144, v77, v76);

      v176[0] = v9;
    }

    else
    {
      outlined consume of DirectUniformsState?(v151, v145, v75, v144, v77, v76);
    }

    v111 = *(&v170 + 1);
    v112 = v171;
    v113 = __swift_mutable_project_boxed_opaque_existential_1(&v169, *(&v170 + 1));
    v114 = *(*(v111 - 8) + 64);
    MEMORY[0x1EEE9AC00](v113);
    v116 = v135 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v117 + 16))(v116);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v110, v116, v176, v111, v112);
    __swift_destroy_boxed_opaque_existential_1(&v169);
    __swift_destroy_boxed_opaque_existential_1(&v160);
    goto LABEL_110;
  }

  type metadata accessor for __VideoResource();
  *&v169 = VideoAsset;
  v25 = static __VideoResource.__fromCore(_:)(&v169);
  *(&v161 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13OpaquePointerVSgMd, &_ss13OpaquePointerVSgMR);
  *&v160 = MaterialAsset;
  outlined init with copy of Any(&v160, &v154);
  swift_dynamicCast();
  v141 = v175;
  __swift_destroy_boxed_opaque_existential_1(&v160);
  v144 = _s17RealityFoundation16LoadableResourcePAAE010loadEngineD09assetPathxSS_tFZ0A3Kit010__MaterialD0C_Tt1g5(0xD00000000000001FLL, v139 | 0x8000000000000000);
  v145 = REMaterialParameterBlockValueCreate();
  v166 = 1;
  type metadata accessor for VideoPlaybackController();
  v26 = swift_allocObject();
  *(v26 + 24) = 1;
  *(v26 + 32) = 0;
  *(v26 + 40) = 0;
  *(v26 + 16) = v25;
  v27 = v25[2];
  swift_retain_n();
  AudioInputMode = REVideoAssetGetAudioInputMode();
  MaterialCount = v152;
  if (AudioInputMode >= 3)
  {
    goto LABEL_136;
  }

  v29 = 0x20001u >> (8 * (AudioInputMode & 0x1F));
  swift_beginAccess();
  *(v26 + 24) = v29;
  v30 = v25[2];
  REVideoAssetGetReverbSendLevelDecibels();
  *(v26 + 32) = v31;
  __VideoResource.removeNilEntries()();
  swift_beginAccess();
  v151 = v25;
  v32 = v25[3];
  v142 = v9;
  if (!(v32 >> 62))
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v33)
    {
      goto LABEL_32;
    }

    goto LABEL_113;
  }

  v33 = __CocoaSet.count.getter();
  if (!v33)
  {
LABEL_113:

LABEL_114:
    v119 = _s17RealityFoundation16LoadableResourcePAAE8fromCore8assetRefxSgs13OpaquePointerV_tFZ0A3Kit010__MaterialD0C_Tt1g5(v141);
    v9 = v142;
    v120 = MEMORY[0x1E69E7CC0];
    if (!v119)
    {
      goto LABEL_136;
    }

    v121 = v119;

    *(&v170 + 1) = v175;
    DWORD1(v170) = *(&v175 + 3);
    *(&v173 + 2) = v167;
    WORD3(v173) = v168;
    *&v169 = v121;
    *(&v169 + 1) = v120;
    LOBYTE(v170) = 0;
    *(&v170 + 1) = 0;
    *&v171 = v145;
    *(&v171 + 1) = v151;
    v172 = v26;
    LOWORD(v173) = 257;
    *(&v173 + 1) = 0;
    v174 = v166;
    specialized Material.syncMaterialRenderStateFromCore(coreComponent:index:)();
    if (v143)
    {
      v122 = REMaterialParameterBlockArrayComponentBorrowBlockValueAtIndex();
      if (!v122)
      {
        goto LABEL_136;
      }
    }

    else
    {
      v122 = REMaterialParameterBlockArrayComponentGetBlockValueAtIndex();
      if (!v122)
      {
        goto LABEL_136;
      }
    }

    v123 = v122;

    *(&v169 + 1) = MEMORY[0x1E69E7CC0];
    LOBYTE(v170) = 0;
    *(&v170 + 1) = 0;
    *&v171 = v123;
    v162 = v171;
    v163 = v172;
    v164 = v173;
    v165 = v174;
    v160 = v169;
    v161 = v170;
    outlined init with copy of VideoMaterial(&v160, &v154);
    v125 = v9[2];
    v124 = v9[3];
    if (v125 >= v124 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v124 > 1), v125 + 1, 1, v9);
    }

    v13 = v153;

    *(&v155 + 1) = &type metadata for VideoMaterial;
    *&v156 = &protocol witness table for VideoMaterial;
    v126 = swift_allocObject();
    *&v154 = v126;
    v127 = v163;
    *(v126 + 48) = v162;
    *(v126 + 64) = v127;
    *(v126 + 80) = v164;
    *(v126 + 96) = v165;
    v128 = v161;
    *(v126 + 16) = v160;
    *(v126 + 32) = v128;
    v9[2] = v125 + 1;
    outlined init with take of ForceEffectBase(&v154, &v9[5 * v125 + 4]);
    v156 = v171;
    v157 = v172;
    v158 = v173;
    v159 = v174;
    v154 = v169;
    v155 = v170;
    outlined destroy of VideoMaterial(&v154);
    goto LABEL_16;
  }

LABEL_32:
  v138 = v26;

  v34 = 0;
  while (2)
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1C68F41F0](v34, v32);
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_129;
      }

LABEL_42:
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v38 = *(Strong + 16);
        REVideoComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          DesiredViewingMode = REVideoComponentGetDesiredViewingMode();

          v40 = DesiredViewingMode == 1;
          v14 = &static ComponentInfo.Platform.macOS;
          if (v40)
          {

            v26 = v138;
            *(v138 + 40) = 0;
            MaterialCount = v152;
            goto LABEL_114;
          }

LABEL_35:
          ++v34;
          if (v35 == v33)
          {

            MaterialCount = v152;
            v26 = v138;
            goto LABEL_114;
          }

          continue;
        }

        v14 = &static ComponentInfo.Platform.macOS;
      }

      goto LABEL_35;
    }

    break;
  }

  if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_130;
  }

  v36 = *(v32 + 8 * v34 + 32);

  v35 = v34 + 1;
  if (!__OFADD__(v34, 1))
  {
    goto LABEL_42;
  }

LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  swift_deallocPartialClassInstance();
LABEL_136:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t ModelComponent.__toCore(_:returnStrongReference:)(uint64_t *a1, int a2)
{
  LODWORD(v200) = a2;
  v4 = type metadata accessor for Logger();
  v177 = *(v4 - 8);
  v5 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v178 = &v176 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = *a1;
  v7 = *v2;
  v8 = *(v2 + 1);
  v9 = v2[4];
  v180 = *(v2 + 3);
  Entity = REComponentGetEntity();
  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    v11 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    result = REEntityIsBeingDestroyed();
    if (result)
    {
LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    v13 = specialized static Entity.entityInfoType(_:)();
    if (v13)
    {
      v14 = (*(v13 + 232))();
      v15 = *(v14 + 16);

      MEMORY[0x1C68F9740](v15, 0);
      *(v14 + 16) = Entity;
      MEMORY[0x1C68F9740](Entity, v14);

      v11 = v14;
    }

    else
    {
      v11 = makeEntity(for:)(Entity);
    }
  }

  *&v201 = v7;
  v181 = v11;
  v176 = v4;
  v16 = *(v8 + 16);
  v186 = Entity;
  v194 = v8;
  v202 = v16;
  if (!v16)
  {
    v192 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_25;
    }

LABEL_28:
    *&v219 = 0;
    v217 = 0u;
    v218 = 0u;
    v216 = 0u;
    v43 = v181;

    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation05VideoD0V_TtB5(&v216, 0, v43);
    outlined destroy of BodyTrackingComponent?(&v216, &_s17RealityFoundation14VideoComponentVSgMd, &_s17RealityFoundation14VideoComponentVSgMR);
    v44 = *(v43 + 16);

    if (v44 != *(v43 + 16))
    {
LABEL_180:
      __break(1u);
      goto LABEL_181;
    }

    goto LABEL_29;
  }

  v17 = 0;
  v192 = MEMORY[0x1E69E7CC0];
  v18 = v8 + 32;
  do
  {
    outlined init with copy of __REAssetService(v18, v222);
    if (v17)
    {
      v17 = 1;
    }

    else
    {
      v20 = v223;
      v19 = v224;
      __swift_project_boxed_opaque_existential_1(v222, v223);
      v17 = (v19[18])(v20, v19);
    }

    outlined init with copy of __REAssetService(v222, &v215);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v221 = 0;
      v219 = 0u;
      v220 = 0u;
      v217 = 0u;
      v218 = 0u;
      v216 = 0u;
    }

    __swift_destroy_boxed_opaque_existential_1(v222);
    if (v216)
    {
      v211 = v218;
      v212 = v219;
      v213 = v220;
      v214 = v221;
      v209 = v216;
      v210 = v217;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v192 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v192 + 2) + 1, 1, v192);
      }

      v22 = *(v192 + 2);
      v21 = *(v192 + 3);
      if (v22 >= v21 >> 1)
      {
        v192 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v192);
      }

      v205 = v211;
      v206 = v212;
      v207 = v213;
      v208 = v214;
      v23 = v209;
      v203 = v209;
      v204 = v210;
      v24 = v192;
      *(v192 + 2) = v22 + 1;
      v25 = &v24[88 * v22];
      *(v25 + 3) = v204;
      v26 = v205;
      v27 = v206;
      v28 = v207;
      v25[112] = v208;
      *(v25 + 5) = v27;
      *(v25 + 6) = v28;
      *(v25 + 4) = v26;
      *(v25 + 2) = v23;
    }

    else
    {
      v211 = v218;
      v212 = v219;
      v213 = v220;
      v214 = v221;
      v209 = v216;
      v210 = v217;
      outlined destroy of BodyTrackingComponent?(&v209, &_s10RealityKit13VideoMaterialVSgMd, &_s10RealityKit13VideoMaterialVSgMR);
    }

    v18 += 40;
    --v16;
  }

  while (v16);
  if (!*(v192 + 2))
  {
    v8 = v194;
    if (v17)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v8 = v194;
LABEL_25:
  v29 = v192;
  v30 = *(v192 + 5);
  v218 = *(v192 + 4);
  v219 = v30;
  v220 = *(v192 + 6);
  v221 = v192[112];
  v31 = *(v192 + 3);
  v216 = *(v192 + 2);
  v217 = v31;
  v32 = *(&v218 + 1);
  v33 = v30;
  v223 = &type metadata for VideoMaterial;
  v224 = &protocol witness table for VideoMaterial;
  v222[0] = swift_allocObject();
  memmove((v222[0] + 16), v29 + 32, 0x51uLL);
  *&v203 = v32;
  outlined init with copy of __REAssetService(v222, &v203 + 8);
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(&outlined read-only object #0 of ModelComponent.__toCore(_:returnStrongReference:));
  v35 = v34;
  outlined init with copy of VideoMaterial(&v216, &v209);
  outlined init with copy of VideoMaterial(&v216, &v209);

  __swift_destroy_boxed_opaque_existential_1(v222);
  *&v206 = v35;
  v36 = v181;

  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation05VideoD0V_TtB5(&v203, 0, v36);
  outlined destroy of BodyTrackingComponent?(&v203, &_s17RealityFoundation14VideoComponentVSgMd, &_s17RealityFoundation14VideoComponentVSgMR);
  v37 = *(v36 + 16);

  if (v37 != *(v36 + 16))
  {
LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  __VideoResource.addEntity(_:)(v36);
  LOBYTE(v209) = *(v33 + 40);
  __VideoResource.preferredViewingMode.setter(&v209);
  v38 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v38 + 120, &v209);
  v39 = *(&v210 + 1);
  v40 = v211;
  __swift_project_boxed_opaque_existential_1(&v209, *(&v210 + 1));
  (*(v40 + 32))(v39, v40);
  v41 = *(v32 + 16);
  v42 = *(v33 + 40);
  REAssetManagerPreloadVideoAssetOnce();
  outlined destroy of VideoMaterial(&v216);
  __swift_destroy_boxed_opaque_existential_1(&v209);
LABEL_29:
  Mesh = REMeshComponentGetMesh();
  v46 = *(v201 + 16);
  if (v46)
  {
    v47 = *(v201 + 16);
    REMeshComponentSetMesh();
    v48 = Mesh != v46;
    if (REMeshAssetGetTotalSkeletonCount() >= 1)
    {
      REMeshDeformationComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      RESkeletalPoseComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      RERigComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
    }

    REMeshDeformationComponentGetComponentType();
    if (!REEntityGetComponentByClass())
    {
      result = REMeshAssetGetModelCount();
      if (result < 0)
      {
LABEL_181:
        __break(1u);
        goto LABEL_182;
      }

      v49 = result;
      v50 = 0;
      while (v49 != v50)
      {
        if (__OFADD__(v50, 1))
        {
          goto LABEL_169;
        }

        result = REMeshAssetGetBlendShapeGroupCount();
        ++v50;
        if (result >= 1)
        {
          REMeshDeformationComponentGetComponentType();
          REEntityGetOrAddComponentByClass();
          break;
        }
      }
    }
  }

  else
  {
    REMeshComponentSetMesh();
    v48 = Mesh != 0;
  }

  REMeshComponentGetBoundsMargin();
  v52 = v51;
  REMeshComponentSetBoundsMargin();
  v53 = v52 != v9 || v48;
  REMaterialParameterBlockArrayComponentGetComponentType();
  v189 = REEntityGetOrAddComponentByClass();
  v54 = REMaterialParameterBlockArrayComponentSize();
  v55 = *(v8 + 16);
  if (v54 != v55)
  {
    v56 = *(v8 + 16);
    REMaterialParameterBlockArrayComponentResize();
  }

  MaterialCount = REMeshComponentGetMaterialCount();
  v58 = v202;
  v59 = v53;
  if (v55 < MaterialCount)
  {
    REMeshComponentRemoveAllMaterials();
    v59 = 1;
  }

  v60 = REMeshComponentGetMaterialCount();
  REMaterialRenderStateArrayComponentGetComponentType();
  v61 = REEntityGetComponentByClass() == 0;
  REMaterialRenderStateArrayComponentGetComponentType();
  v188._rawValue = REEntityGetOrAddComponentByClass();
  result = specialized static __ServiceLocator.shared.getter();
  v62 = 0;
  v195 = v194 + 32;
  v199 = v60;
  while (1)
  {
    v64 = 0uLL;
    v65 = v58;
    v66 = 0uLL;
    v67 = 0uLL;
    if (v62 == v58)
    {
      goto LABEL_55;
    }

    if (v62 >= *(v194 + 16))
    {
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
      goto LABEL_178;
    }

    v65 = v62 + 1;
    *&v209 = v62;
    result = outlined init with copy of __REAssetService(v195 + 40 * v62, &v209 + 8);
    v64 = v209;
    v66 = v210;
    v67 = v211;
LABEL_55:
    v216 = v64;
    v217 = v66;
    v68 = v67;
    v218 = v67;
    if (!v67)
    {
      break;
    }

    v62 = v65;
    v201 = v64;
    outlined init with take of ForceEffectBase((&v216 + 8), &v209);
    v69 = v201;
    if (v201 < v60)
    {
      v187 = v59;
      MaterialAtIndex = REMeshComponentGetMaterialAtIndex();
      v71 = *(&v210 + 1);
      v72 = v211;
      __swift_project_boxed_opaque_existential_1(&v209, *(&v210 + 1));
      v73 = (*(v72 + 136))(v71, v72);
      v74 = *(&v210 + 1);
      v75 = v211;
      __swift_project_boxed_opaque_existential_1(&v209, *(&v210 + 1));
      v76 = (*(v75 + 8))(v74, v75);
      if (v73)
      {
        swift_beginAccess();
        v77 = *(v76 + 16);

        REMeshComponentSetMaterialWithParametersAtIndex();
        goto LABEL_62;
      }

      swift_beginAccess();
      v85 = *(v76 + 16);

      REMeshComponentSetMaterialAtIndex();
      if (v187)
      {
LABEL_62:
        v59 = 1;
      }

      else
      {
        v86 = *(&v210 + 1);
        v87 = v211;
        __swift_project_boxed_opaque_existential_1(&v209, *(&v210 + 1));
        v88 = (*(v87 + 8))(v86, v87);
        swift_beginAccess();
        v89 = *(v88 + 16);

        if (MaterialAtIndex)
        {
          v90 = MaterialAtIndex == v89;
        }

        else
        {
          v90 = 0;
        }

        v59 = !v90;
      }

      v58 = v202;
      v60 = v199;
      goto LABEL_51;
    }

    v78 = *(&v210 + 1);
    v79 = v211;
    __swift_project_boxed_opaque_existential_1(&v209, *(&v210 + 1));
    v80 = (*(v79 + 136))(v78, v79);
    v81 = *(&v210 + 1);
    v82 = v211;
    __swift_project_boxed_opaque_existential_1(&v209, *(&v210 + 1));
    v83 = (*(v82 + 8))(v81, v82);
    swift_beginAccess();
    if (v80)
    {
      v84 = *(v83 + 16);

      REMeshComponentAddMaterialWithParameters();
    }

    else
    {
      v63 = *(v83 + 16);

      REMeshComponentAddMaterial();
    }

    v59 = 1;
    v58 = v202;
LABEL_51:
    __swift_project_boxed_opaque_existential_1(&v209, *(&v210 + 1));
    v61 |= Material.syncMaterialRenderStateToCore(_:index:)(v188, v69);
    result = __swift_destroy_boxed_opaque_existential_1(&v209);
  }

  v187 = v59;
  v179 = v61;
  while (1)
  {
    v94 = 0uLL;
    v95 = v202;
    v96 = 0uLL;
    v97 = 0uLL;
    if (v68 != v202)
    {
      if (v68 >= *(v194 + 16))
      {
        goto LABEL_166;
      }

      v95 = v68 + 1;
      *&v209 = v68;
      outlined init with copy of __REAssetService(v195 + 40 * v68, &v209 + 8);
      v94 = v209;
      v96 = v210;
      v97 = v211;
    }

    v216 = v94;
    v217 = v96;
    v218 = v97;
    if (!v97)
    {
      break;
    }

    v201 = v94;
    outlined init with take of ForceEffectBase((&v216 + 8), &v209);
    v98 = *(&v210 + 1);
    v99 = v211;
    if (v200)
    {
      __swift_project_boxed_opaque_existential_1(&v209, *(&v210 + 1));
      (*(v99 + 16))(&v203, v98, v99);
      v100 = *(&v204 + 1);
      REMaterialParameterBlockArrayComponentReturnBlockValueAtIndex();
    }

    else
    {
      __swift_mutable_project_boxed_opaque_existential_1(&v209, *(&v210 + 1));
      v91 = (*(v99 + 32))(&v203, v98, v99);
      v93 = *(v92 + 24);
      REMaterialParameterBlockArrayComponentSetBlockValueAtIndex();
      v91(&v203, 0);
    }

    result = __swift_destroy_boxed_opaque_existential_1(&v209);
    v68 = v95;
  }

  REDirectMaterialParametersArrayComponentGetComponentType();
  result = REEntityGetOrAddComponentByClass();
  v101 = result;
  v102 = 0;
  v185 = &v204;
  v103 = v194;
  v104 = v202;
  v184 = result;
  while (2)
  {
    v105 = 0uLL;
    v106 = v104;
    v107 = 0uLL;
    v108 = 0uLL;
    if (v102 != v104)
    {
      if (v102 >= *(v103 + 16))
      {
        goto LABEL_167;
      }

      v106 = v102 + 1;
      *&v209 = v102;
      outlined init with copy of __REAssetService(v195 + 40 * v102, &v209 + 8);
      v105 = v209;
      v107 = v210;
      v108 = v211;
    }

    v216 = v105;
    v217 = v107;
    v218 = v108;
    if (v108)
    {
      v102 = v106;
      v200 = v105;
      outlined init with take of ForceEffectBase((&v216 + 8), v222);
      v109 = v223;
      v110 = v224;
      __swift_project_boxed_opaque_existential_1(v222, v223);
      (v110[19])(&v209, v109, v110);
      *&v201 = *(&v209 + 1);
      v198 = v210;
      v199 = v209;
      v196 = *(&v211 + 1);
      v111 = v211;
      v197 = *(&v210 + 1);
      v112 = v223;
      v113 = v224;
      __swift_project_boxed_opaque_existential_1(v222, v223);
      v114 = (v113[1])(v112, v113);
      swift_beginAccess();
      v115 = *(v114 + 16);

      v116 = (v111 >> 60) & 3;
      if (v116)
      {
        if (v116 == 1)
        {
          HasGeometryModifierCustomParamsName = REMaterialAssetHasGeometryModifierCustomParamsName();
          v191 = v102;
          if (HasGeometryModifierCustomParamsName)
          {
            v193 = v111;
            v118 = specialized static __ServiceLocator.shared.getter();
            result = swift_beginAccess();
            v119 = *(v118 + 16);
            v120 = v201 >> 62;
            if ((v201 >> 62) > 1)
            {
              v111 = v193;
              v121 = v200;
              if (v120 == 2 && __OFSUB__(*(v199 + 24), *(v199 + 16)))
              {
                goto LABEL_175;
              }
            }

            else
            {
              v111 = v193;
              v121 = v200;
              if (v120 && __OFSUB__(HIDWORD(v199), v199))
              {
                goto LABEL_174;
              }
            }

            v140 = v121;
            REDirectMaterialParametersArrayComponentEnsureBufferSize();
            v141 = REDirectMaterialParametersArrayComponentGetBuffer();
            if (v141)
            {
              v183 = v140;
              v142 = swift_allocObject();
              v143 = v198;
              v144 = v201;
              v142[2] = v199;
              v142[3] = v144;
              v142[4] = v143;
              v145 = swift_allocObject();
              v146 = closure #1 in DirectParameterBuffer.applyToComponent(directParameterComponent:stageFlags:index:)partial apply;
              *(v145 + 16) = closure #1 in DirectParameterBuffer.applyToComponent(directParameterComponent:stageFlags:index:)partial apply;
              *(v145 + 24) = v142;
              *&v205 = thunk for @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned UInt) -> ()partial apply;
              *(&v205 + 1) = v145;
              *&v203 = MEMORY[0x1E69E9820];
              *(&v203 + 1) = 1107296256;
              *&v204 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned UInt) -> ();
              *(&v204 + 1) = &block_descriptor_21;
              v147 = _Block_copy(&v203);
              v148 = v141;
              outlined copy of Data._Representation(v199, v144);
              v149 = v198;

              DRBufferReplace();

              _Block_release(v147);
              LOBYTE(v147) = swift_isEscapingClosureAtFileLocation();

              if (v147)
              {
                goto LABEL_170;
              }

              v111 = v193;
              v103 = v194;
              v101 = v184;
            }

            else
            {
              v146 = 0;
            }

            REDirectMaterialParametersArrayComponentSetResources();

            outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v146);
            v104 = v202;
            v102 = v191;
          }

          else
          {
            MEMORY[0x1C68F89F0](v101, 1, v200);
          }

          if (REMaterialAssetHasSurfaceShaderCustomParamsName())
          {
            v150 = specialized static __ServiceLocator.shared.getter();
            result = swift_beginAccess();
            v151 = *(v150 + 16);
            v152 = v111 >> 62;
            if ((v111 >> 62) > 1)
            {
              v153 = v200;
              if (v152 == 2 && __OFSUB__(*(v197 + 24), *(v197 + 16)))
              {
                goto LABEL_176;
              }
            }

            else
            {
              v153 = v200;
              if (v152 && __OFSUB__(HIDWORD(v197), v197))
              {
                goto LABEL_177;
              }
            }

            v154 = v153;
            REDirectMaterialParametersArrayComponentEnsureBufferSize();
            v155 = REDirectMaterialParametersArrayComponentGetBuffer();
            if (v155)
            {
              v183 = v154;
              v193 = v111;
              v156 = v111 & 0xCFFFFFFFFFFFFFFFLL;
              *&v200 = v156;
              v157 = swift_allocObject();
              v158 = v197;
              v157[2] = v197;
              v157[3] = v156;
              v159 = v196;
              v157[4] = v196;
              v160 = swift_allocObject();
              v161 = partial apply for closure #1 in DirectParameterBuffer.applyToComponent(directParameterComponent:stageFlags:index:);
              *(v160 + 16) = partial apply for closure #1 in DirectParameterBuffer.applyToComponent(directParameterComponent:stageFlags:index:);
              *(v160 + 24) = v157;
              *&v205 = _sSvSuIgyy_SvSuIegyy_TRTA_0;
              *(&v205 + 1) = v160;
              *&v203 = MEMORY[0x1E69E9820];
              *(&v203 + 1) = 1107296256;
              *&v204 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned UInt) -> ();
              *(&v204 + 1) = &block_descriptor_26;
              v162 = _Block_copy(&v203);
              v163 = v155;
              outlined copy of Data._Representation(v158, v200);
              v164 = v159;

              DRBufferReplace();

              _Block_release(v162);
              LOBYTE(v159) = swift_isEscapingClosureAtFileLocation();

              if (v159)
              {
                goto LABEL_171;
              }

              v111 = v193;
              v103 = v194;
              v104 = v202;
              v101 = v184;
            }

            else
            {
              v161 = 0;
            }

            v165 = v196;
            REDirectMaterialParametersArrayComponentSetResources();

            outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v161);
            outlined consume of DirectUniformsState(v199, v201, v198, v197, v111, v165);
            goto LABEL_138;
          }

          MEMORY[0x1C68F89F0](v101, 2, v200);
          outlined consume of DirectUniformsState(v199, v201, v198, v197, v111, v196);
        }

        else
        {
          MEMORY[0x1C68F89F0](v101, 3, v200);
        }
      }

      else
      {
        Type = REMaterialAssetGetType();
        v193 = v111;
        if (Type == 6)
        {
          v123 = REMaterialAssetHasGeometryModifierCustomParamsName();
          if (REMaterialAssetHasSurfaceShaderCustomParamsName())
          {
            v124 = v123 | 2;
          }

          else
          {
            v124 = v123;
          }
        }

        else if (Type == 7)
        {
          v124 = 3;
        }

        else
        {
          v124 = 0;
        }

        v125 = specialized static __ServiceLocator.shared.getter();
        result = swift_beginAccess();
        v126 = *(v125 + 16);
        v127 = v201 >> 62;
        if ((v201 >> 62) > 1)
        {
          v128 = v200;
          if (v127 == 2 && __OFSUB__(*(v199 + 24), *(v199 + 16)))
          {
            goto LABEL_173;
          }
        }

        else
        {
          v128 = v200;
          if (v127 && __OFSUB__(HIDWORD(v199), v199))
          {
            goto LABEL_172;
          }
        }

        v191 = v102;
        v129 = v128;
        REDirectMaterialParametersArrayComponentEnsureBufferSize();
        v130 = REDirectMaterialParametersArrayComponentGetBuffer();
        if (v130)
        {
          v182 = v129;
          v183 = v124;
          v131 = swift_allocObject();
          v132 = v198;
          v133 = v199;
          v134 = v201;
          v131[2] = v199;
          v131[3] = v134;
          v131[4] = v132;
          v135 = swift_allocObject();
          v136 = closure #1 in DirectParameterBuffer.applyToComponent(directParameterComponent:stageFlags:index:)partial apply;
          *(v135 + 16) = closure #1 in DirectParameterBuffer.applyToComponent(directParameterComponent:stageFlags:index:)partial apply;
          *(v135 + 24) = v131;
          *&v205 = thunk for @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned UInt) -> ()partial apply;
          *(&v205 + 1) = v135;
          *&v203 = MEMORY[0x1E69E9820];
          *(&v203 + 1) = 1107296256;
          *&v204 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned UInt) -> ();
          *(&v204 + 1) = &block_descriptor_32;
          v137 = _Block_copy(&v203);
          *&v200 = *(&v205 + 1);
          v138 = v130;
          outlined copy of DirectUniformsState(v133, v134, v132, v197, v193, v196);

          DRBufferReplace();

          _Block_release(v137);
          LOBYTE(v133) = swift_isEscapingClosureAtFileLocation();

          if (v133)
          {
            goto LABEL_168;
          }

          v103 = v194;
          v101 = v184;
        }

        else
        {
          v136 = 0;
        }

        v139 = v198;
        REDirectMaterialParametersArrayComponentSetResources();

        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v136);
        outlined consume of DirectUniformsState(v199, v201, v139, v197, v193, v196);
        v104 = v202;
LABEL_138:
        v102 = v191;
      }

      result = __swift_destroy_boxed_opaque_existential_1(v222);
      continue;
    }

    break;
  }

  REMeshDeformationComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  v167 = v180;
  if (!*(v180 + 16))
  {
    v168 = specialized _Proto_MeshDeformation_v1.Resource.definition.getter();
    v167 = v180;
    if (!*(v168 + 16))
    {
      v169 = v179;
      if (v187)
      {
        goto LABEL_152;
      }

      goto LABEL_155;
    }
  }

  v169 = v179;
  v170 = v187;
  if (!ComponentByClass)
  {
    REMeshDeformationComponentGetComponentType();
    result = REEntityAddComponentByClass();
    if (!result)
    {
LABEL_182:
      __break(1u);
      return result;
    }
  }

  MeshDeformationDefinition = REMeshDeformationComponentGetMeshDeformationDefinition();
  v172 = *(v167 + 16);
  if (MeshDeformationDefinition)
  {
    if (MeshDeformationDefinition != v172)
    {
      goto LABEL_145;
    }

LABEL_151:
    if (v170)
    {
LABEL_152:
      RENetworkMarkComponentDirty();
      if ((v169 & 1) == 0)
      {
LABEL_157:

        goto LABEL_158;
      }

LABEL_156:
      RENetworkMarkComponentDirty();
      goto LABEL_157;
    }

LABEL_155:
    if ((v169 & 1) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_156;
  }

  if (!v172)
  {
    goto LABEL_151;
  }

LABEL_145:
  REMeshDeformationComponentSetMeshDeformationDefinition();
  if (v170)
  {
    RENetworkMarkComponentDirty();
  }

  if (v169)
  {
    RENetworkMarkComponentDirty();
  }

  RENetworkMarkComponentDirty();
LABEL_158:
  RENetworkMarkComponentDirty();
  RENetworkMarkComponentDirty();
  REMeshPartInstancesComponentGetComponentType();
  if (!REEntityGetComponentByClass() || (specialized static MeshInstancesComponent.isAboveLimits(meshComponent:meshInstancesComponent:)() & 1) == 0)
  {
  }

  Logger.init()();
  v173 = Logger.logObject.getter();
  v174 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v173, v174))
  {
    v175 = swift_slowAlloc();
    *v175 = 67109120;
    *(v175 + 4) = REMeshPartInstancesComponentGetVertexLimit();
    _os_log_impl(&dword_1C1358000, v173, v174, "Error: MeshInstancesComponent attempted to render beyond the per component vertex/index limit of %u. Reduce instance count of MeshInstancesComponent, or vertex/index count of the mesh part being instanced.", v175, 8u);
    MEMORY[0x1C6902A30](v175, -1, -1);
  }

  else
  {
  }

  return (*(v177 + 8))(v178, v176);
}

uint64_t ModelComponent.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v19 - v8;
  v10 = *(v0 + 8);
  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  v19[0] = *v0;
  v11 = v19[0];
  v19[1] = v10;
  v20 = v12;
  v21 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C1897FD0;
  *(v14 + 32) = 1752393069;
  *(v14 + 40) = 0xE400000000000000;
  v15 = type metadata accessor for MeshResource();
  *(v14 + 48) = v11;
  *(v14 + 72) = v15;
  *(v14 + 80) = 0x6C6169726574616DLL;
  *(v14 + 88) = 0xE900000000000073;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit8Material_pGMd, &_sSay10RealityKit8Material_pGMR);
  *(v14 + 96) = v10;
  *(v14 + 120) = v16;
  strcpy((v14 + 128), "boundsMargin");
  *(v14 + 141) = 0;
  *(v14 + 142) = -5120;
  *(v14 + 168) = MEMORY[0x1E69E6448];
  *(v14 + 144) = v12;
  v17 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E75D8], v1);
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

id specialized static ModelComponent.copyDirectBufferData(component:stage:materialIndex:)()
{
  result = REDirectMaterialParametersArrayComponentGetBuffer();
  if (result)
  {
    v1 = result;
    v7 = xmmword_1C18B8F30;
    v2 = swift_allocObject();
    *(v2 + 16) = &v7;
    v3 = swift_allocObject();
    *(v3 + 16) = partial apply for closure #1 in static ModelComponent.copyDirectBufferData(component:stage:materialIndex:);
    *(v3 + 24) = v2;
    v6[4] = _sSVSuIgyy_SVSuIegyy_TRTA_0;
    v6[5] = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeRawPointer, @unowned UInt) -> ();
    v6[3] = &block_descriptor_41_0;
    v4 = _Block_copy(v6);

    DRBufferRead();

    _Block_release(v4);
    LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

    if (v1)
    {
      __break(1u);
    }

    else
    {
      v5 = v7;
      if (*(&v7 + 1) >> 60 == 15)
      {
        outlined consume of Data?(v7, *(&v7 + 1));

        return 0;
      }

      else
      {
        outlined copy of Data._Representation(v7, *(&v7 + 1));
        outlined consume of Data?(v5, *(&v5 + 1));

        return v5;
      }
    }
  }

  return result;
}

void outlined consume of DirectUniformsState?(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5, void *a6)
{
  if ((~(a2 & a5) & 0x3000000000000000) != 0)
  {
    outlined consume of DirectUniformsState(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_6Tm()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

__n128 _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCAA0C14JointInfluenceV_AA0C7BuffersO0P0Vy_APGTt2B5Tm@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = one-time initialization token for triangleIndices;

  if (v10 != -1)
  {
    swift_once();
  }

  if (static MeshBuffers.Identifier.triangleIndices == a1 && *algn_1EBEAD098 == a2)
  {

    v13 = 2;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      v13 = 2;
    }

    else
    {
      v13 = *(a4 + 80);
    }
  }

  *&v17[53] = *(a4 + 48);
  *&v17[37] = *(a4 + 32);
  *&v17[69] = *(a4 + 64);
  *&v17[5] = *a4;
  *&v17[21] = *(a4 + 16);
  *(a5 + 67) = *&v17[32];
  *(a5 + 83) = *&v17[48];
  *(a5 + 99) = *&v17[64];
  result = *v17;
  *(a5 + 35) = *v17;
  v15 = *(a4 + 72);
  v16 = *(a4 + 64);
  v17[85] = *(a4 + 80);
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 17) = HIBYTE(a3) & 1;
  *(a5 + 24) = v15;
  *(a5 + 32) = v13;
  *(a5 + 33) = v16;
  *(a5 + 113) = *&v17[78];
  *(a5 + 51) = *&v17[16];
  return result;
}

double MeshResource.Part.triangleIndices.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (one-time initialization token for triangleIndices == -1)
  {
    if (!*(v3 + 16))
    {
      goto LABEL_9;
    }
  }

  else
  {
    swift_once();
    if (!*(v3 + 16))
    {
      goto LABEL_9;
    }
  }

  if (HIBYTE(word_1EBEAD130))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(static MeshBuffers.triangleIndices, *algn_1EBEAD128, v4 | word_1EBEAD130);
  if (v6)
  {
    outlined init with copy of __REAssetService(*(v3 + 56) + 40 * v5, v10);
    outlined init with take of BindableDataInternal(v10, v11);
    v7 = v12;
    v8 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v8 + 56))(MEMORY[0x1E69E7668], v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v11);
    return result;
  }

LABEL_9:
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t MeshResource.Part.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized MeshResource.Part.subscript.setter(a1, a2, a3, a4);
  v6 = *(*(a3 - 8) + 8);

  return v6(a2, a3);
}

uint64_t MeshResource.Part.skeletonID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t MeshResource.Skeleton.init(id:jointNames:inverseBindPose:localRestPose:parentIndices:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = a2;
  v12 = a1;
  v75[1] = *MEMORY[0x1E69E9840];
  v73 = a1;
  *&v74 = a2;
  *(&v74 + 1) = MEMORY[0x1E69E7CC0];
  v14 = *(a3 + 16);
  v15 = *(a4 + 16);

  if (v14 != v15)
  {

    if (one-time initialization token for logger == -1)
    {
LABEL_12:
      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, logger);

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v75[0] = v34;
        *v33 = 136315138;
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, v75);

        *(v33 + 4) = v35;
        _os_log_impl(&dword_1C1358000, v31, v32, "Expected all joint arrays for skeleton '%s' to have the same count", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x1C6902A30](v34, -1, -1);
        MEMORY[0x1C6902A30](v33, -1, -1);
      }

      else
      {
      }

      lazy protocol witness table accessor for type MeshResourceError and conformance MeshResourceError();
      swift_allocError();
      *v41 = xmmword_1C18A4F00;
      swift_willThrow();

      goto LABEL_49;
    }

LABEL_52:
    swift_once();
    goto LABEL_12;
  }

  v64 = a6;
  v61 = a7;
  v62 = a5;
  v16 = MEMORY[0x1E69E7CC0];
  v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0, MEMORY[0x1E69E7CC0]);
  *(&v74 + 1) = v17;
  v18 = *(a3 + 16);
  v65 = a3;
  v63 = v14;
  if (v18)
  {
    if (v18 > *(a4 + 16))
    {
      goto LABEL_56;
    }

    v19 = v17;
    v20 = v18 - 1;
    v12 = a3 + 40;
    for (i = (a4 + 48); ; i += 4)
    {
      v23 = *(v12 - 8);
      v22 = *v12;
      v69 = *i;
      v71 = *(i - 1);
      v66 = i[2];
      v67 = i[1];
      v24 = one-time initialization token for identity;

      if (v24 != -1)
      {
        swift_once();
      }

      v25 = static simd_quatf.identity;
      v11 = *(v19 + 2);
      v26 = *(v19 + 3);
      if (v11 >= v26 >> 1)
      {
        v60 = static simd_quatf.identity;
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v11 + 1, 1, v19);
        v25 = v60;
        v19 = v29;
      }

      *(v19 + 2) = v11 + 1;
      v27 = &v19[144 * v11];
      *(v27 + 4) = v23;
      *(v27 + 5) = v22;
      *(v27 + 6) = 0;
      v27[56] = 1;
      v28 = *(v75 + 3);
      *(v27 + 57) = v75[0];
      *(v27 + 15) = v28;
      *(v27 + 4) = v71;
      *(v27 + 5) = v69;
      *(v27 + 6) = v67;
      *(v27 + 7) = v66;
      *(v27 + 8) = xmmword_1C1887620;
      *(v27 + 9) = v25;
      *(v27 + 20) = 0;
      *(v27 + 21) = 0;
      if (!v20)
      {
        break;
      }

      v12 += 16;
      --v20;
    }

    *(&v74 + 1) = v19;
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v64)
  {
    v36 = v64;
  }

  else
  {
    v36 = v16;
  }

  v37 = *(v36 + 16);
  if (v37)
  {
    v75[0] = v16;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37, 0);
    v38 = 0;
    v39 = v16;
    while (v38 < *(v36 + 16))
    {
      v12 = *(v36 + 8 * v38 + 32);
      if ((v12 & 0x8000000000000000) != 0)
      {
        v12 = 0xFFFFFFFFLL;
      }

      else if (HIDWORD(v12))
      {
        goto LABEL_51;
      }

      v75[0] = v39;
      v11 = *(v39 + 16);
      v40 = *(v39 + 24);
      if (v11 >= v40 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v11 + 1, 1);
        v39 = v75[0];
      }

      ++v38;
      *(v39 + 16) = v11 + 1;
      *(v39 + 4 * v11 + 32) = v12;
      if (v37 == v38)
      {

        v16 = MEMORY[0x1E69E7CC0];
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v39 = MEMORY[0x1E69E7CC0];
LABEL_32:
  if (v62)
  {
    v42 = v62;
  }

  else
  {
    v42 = v16;
  }

  v43 = *(v42 + 16);
  if (v43)
  {
    v75[0] = v16;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43, 0);
    v44 = *(v16 + 16);
    v45 = 48 * v44;
    v46 = (v42 + 64);
    do
    {
      v47 = *(v46 - 2);
      v48 = *(v46 - 1);
      v49 = *v46;
      v75[0] = v16;
      v50 = *(v16 + 24);
      v51 = v44 + 1;
      if (v44 >= v50 >> 1)
      {
        v70 = v48;
        v72 = v47;
        v68 = v49;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v44 + 1, 1);
        v49 = v68;
        v48 = v70;
        v47 = v72;
        v16 = v75[0];
      }

      *(v16 + 16) = v51;
      v52 = (v16 + v45);
      v52[2] = v47;
      v52[3] = v48;
      v52[4] = v49;
      v45 += 48;
      v46 += 3;
      v44 = v51;
      --v43;
    }

    while (v43);
  }

  v53 = RESkeletonDefinitionCreate();
  String.utf8CString.getter();

  RESkeletonDefinitionSetName();

  if (HIDWORD(v63))
  {
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  RESkeletonDefinitionSetJointCount();
  if (v63)
  {
    v54 = 0;
    v55 = (v65 + 40);
    do
    {
      v56 = *(v55 - 1);
      v57 = *v55;
      String.utf8CString.getter();
      RESkeletonDefinitionSetJointName();

      v55 += 2;
      ++v54;
    }

    while (v63 != v54);
  }

  if (HIDWORD(*(v39 + 16)))
  {
    goto LABEL_54;
  }

  RESkeletonDefinitionSetParentIndices();
  RESkeletonDefinitionSetInverseBindPoses();
  if (HIDWORD(*(v16 + 16)))
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
  }

  RESkeletonDefinitionSetLocalRestPoses();
  v75[0] = 0;
  result = RESkeletonDefinitionValidate();
  if ((result & 1) == 0)
  {
    __break(1u);
    return result;
  }

  closure #1 in MeshResource.Skeleton.init(id:jointNames:inverseBindPose:localRestPose:parentIndices:)(v53, v65, &v73);

  RERelease();

  *v61 = v73;
  *(v61 + 8) = v74;
LABEL_49:
  v59 = *MEMORY[0x1E69E9840];
  return result;
}

__n128 MeshResource.Part.jointInfluences.getter@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 10);
  v6 = *(v2 + 44);
  if (one-time initialization token for jointInfluences == -1)
  {
    if (!*(v4 + 16))
    {
      goto LABEL_9;
    }
  }

  else
  {
    swift_once();
    if (!*(v4 + 16))
    {
      goto LABEL_9;
    }
  }

  if (HIBYTE(word_1EBEAD148))
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  v8 = specialized __RawDictionaryStorage.find<A>(_:)(static MeshBuffers.jointInfluences, unk_1EBEAD140, v7 | word_1EBEAD148);
  if (a1)
  {
    outlined init with copy of __REAssetService(*(v4 + 56) + 40 * v8, v35);
    outlined init with take of BindableDataInternal(v35, v30);
    v9 = *&v30[24];
    v10 = *&v30[32];
    __swift_project_boxed_opaque_existential_1(v30, *&v30[24]);
    (*(v10 + 56))(v37, &type metadata for MeshJointInfluence, v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v30);
    goto LABEL_10;
  }

LABEL_9:
  memset(v37, 0, 81);
LABEL_10:
  v35[2] = v37[2];
  v35[3] = v37[3];
  v35[4] = v37[4];
  v36 = v37[5];
  v35[0] = v37[0];
  v35[1] = v37[1];
  v11 = *&v37[0];
  if (*&v37[0])
  {
    if (one-time initialization token for jointInfluenceEndIndices != -1)
    {
      swift_once();
    }

    if (*(v4 + 16))
    {
      v12 = HIBYTE(word_1EBEAD160) ? 256 : 0;
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(static MeshBuffers.jointInfluenceEndIndices, *algn_1EBEAD158, v12 | word_1EBEAD160);
      if (a1)
      {
        outlined init with copy of __REAssetService(*(v4 + 56) + 40 * v13, v21);
        outlined init with take of BindableDataInternal(v21, v30);
        v14 = *&v30[24];
        v15 = *&v30[32];
        __swift_project_boxed_opaque_existential_1(v30, *&v30[24]);
        (*(v15 + 56))(&v22, MEMORY[0x1E69E72F0], v14, v15);
        __swift_destroy_boxed_opaque_existential_1(v30);
        if (v22)
        {
          *&v30[24] = *(&v37[1] + 8);
          *&v30[40] = *(&v37[2] + 8);
          *&v30[56] = *(&v37[3] + 8);
          *&v30[65] = *(&v37[4] + 1);
          *&v30[8] = *(v37 + 8);
          *v30 = v11;
          *&v30[88] = v22;
          v31 = v23;
          v32 = v24;
          v33 = v25;
          *v34 = v26;
          *&v34[8] = v27 & 0x10F;
          *&v34[16] = v28;
          v34[24] = v29 & 3 | 0x80;
LABEL_24:
          destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(v30, a1);
          goto LABEL_25;
        }
      }
    }

    if ((v6 & 1) == 0)
    {
      *&v30[24] = *(&v37[1] + 8);
      *&v30[40] = *(&v37[2] + 8);
      *&v30[56] = *(&v37[3] + 8);
      *&v30[65] = *(&v37[4] + 1);
      *&v30[8] = *(v37 + 8);
      *v30 = v11;
      *&v30[88] = v5;
      *&v34[8] = 0;
      v34[24] = 0;
      goto LABEL_24;
    }

    outlined destroy of BodyTrackingComponent?(v35, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGSgMd, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGSgMR);
  }

  _s10RealityKit12MeshResourceC0A10FoundationE15JointInfluencesVSgWOi0_(v30);
LABEL_25:
  v16 = *v34;
  *(a2 + 128) = v33;
  *(a2 + 144) = v16;
  *(a2 + 153) = *&v34[9];
  v17 = *&v30[80];
  *(a2 + 64) = *&v30[64];
  *(a2 + 80) = v17;
  v18 = v32;
  *(a2 + 96) = v31;
  *(a2 + 112) = v18;
  v19 = *&v30[16];
  *a2 = *v30;
  *(a2 + 16) = v19;
  result = *&v30[48];
  *(a2 + 32) = *&v30[32];
  *(a2 + 48) = result;
  return result;
}

uint64_t MeshResource.Part.skeletonID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

double specialized MeshResource.Part.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  return specialized MeshResource.Part.subscript.getter(a1, a2, a3, &type metadata for MeshJointInfluence, a4);
}

{
  return specialized MeshResource.Part.subscript.getter(a1, a2, a3, MEMORY[0x1E69E72F0], a4);
}

double specialized MeshResource.Part.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *v5;
  if (*(v7 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3 & 0x101), (v10 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v7 + 56) + 40 * v9, v14);
    outlined init with take of BindableDataInternal(v14, v15);
    v11 = v16;
    v12 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(v12 + 56))(a4, v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    *(a5 + 80) = 0;
    result = 0.0;
    *(a5 + 48) = 0u;
    *(a5 + 64) = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
  }

  return result;
}

unint64_t MeshResource.Part.init(id:materialIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation11MeshBuffersO10IdentifierV_AC0E12BufferErased_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 44) = 1;
  *(a4 + 56) = 0;
  *a4 = result;
  *(a4 + 8) = a1;
  *(a4 + 16) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t MeshModelCollection.init()@<X0>(uint64_t *a1@<X8>)
{
  result = _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE5ModelVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MeshModelCollection.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE5ModelVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v5 = v4;
  v46 = *(a1 + 16);
  if (v46)
  {
    v6 = 0;
    v7 = (a1 + 72);
    v45 = a1;
    while (v6 < *(a1 + 16))
    {
      v51 = v3;
      v12 = *(v7 - 5);
      v11 = *(v7 - 4);
      v14 = *(v7 - 3);
      v13 = *(v7 - 2);
      v15 = *(v7 - 1);
      v16 = *v7;
      v17 = v5[2];
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v52 = v12;
      if (v17 && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v11), (v19 & 1) != 0))
      {
        v20 = *(v5[7] + 8 * v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = specialized _ArrayBuffer._consumeAndCreateNew()(v51);
        }

        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_32;
        }

        if (v20 >= *(v51 + 2))
        {
          goto LABEL_33;
        }

        v21 = &v51[48 * v20];
        v49 = *(v21 + 5);
        v22 = v11;
        v23 = *(v21 + 6);
        v24 = *(v21 + 7);
        v26 = *(v21 + 8);
        v25 = *(v21 + 9);
        *(v21 + 4) = v52;
        *(v21 + 5) = v22;
        *(v21 + 6) = v14;
        *(v21 + 7) = v13;
        *(v21 + 8) = v15;
        *(v21 + 9) = v16;

        v3 = v51;
      }

      else
      {
        v47 = v16;
        v48 = v13;
        v27 = *(v51 + 2);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = v5;
        v50 = v11;
        v30 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v11);
        v31 = v5[2];
        v32 = (v29 & 1) == 0;
        v33 = v31 + v32;
        if (__OFADD__(v31, v32))
        {
          goto LABEL_30;
        }

        v34 = v29;
        if (v5[3] >= v33)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, isUniquelyReferenced_nonNull_native);
          v35 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v50);
          if ((v34 & 1) != (v36 & 1))
          {
            goto LABEL_34;
          }

          v30 = v35;
        }

        v3 = v51;
        if (v34)
        {
          *(v5[7] + 8 * v30) = v27;
        }

        else
        {
          v5[(v30 >> 6) + 8] |= 1 << v30;
          v37 = (v5[6] + 16 * v30);
          *v37 = v12;
          v37[1] = v50;
          *(v5[7] + 8 * v30) = v27;
          v38 = v5[2];
          v39 = __OFADD__(v38, 1);
          v40 = v38 + 1;
          if (v39)
          {
            goto LABEL_31;
          }

          v5[2] = v40;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v51 + 2) + 1, 1, v51);
        }

        v42 = *(v3 + 16);
        v41 = *(v3 + 24);
        if (v42 >= v41 >> 1)
        {
          v8 = v14;
          v9 = v42 + 1;
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v3);
        }

        else
        {
          v9 = v42 + 1;
          v8 = v14;
        }

        *(v3 + 16) = v9;
        v10 = (v3 + 48 * v42);
        v5 = v53;
        v10[4] = v12;
        v10[5] = v50;
        v10[6] = v8;
        v10[7] = v48;
        v10[8] = v15;
        v10[9] = v47;
      }

      ++v6;
      v7 += 6;
      a1 = v45;
      if (v46 == v6)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
LABEL_28:

    *a2 = v3;
    a2[1] = v5;
  }

  return result;
}

uint64_t specialized OrderedIdentifiableCollection.subscript.setter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1[1];
  if (v7)
  {
    v8 = *a1;
    v9 = a1[4];
    v10 = a1[5];
    v11 = a1[3];
    v38 = a1[2];
    v12 = v3[1];
    if (*(v12 + 16))
    {
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if (v14)
      {
        v15 = v13;

        v16 = *(*(v12 + 56) + 8 * v15);
        v17 = *v4;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          if ((v16 & 0x8000000000000000) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
          v17 = result;
          if ((v16 & 0x8000000000000000) == 0)
          {
LABEL_6:
            if (v16 < *(v17 + 16))
            {
              v19 = v8;
              v20 = (v17 + 48 * v16);
              v21 = v20[5];
              v22 = v20[6];
              v23 = v20[7];
              v24 = v20[8];
              v25 = v20[9];
              v20[4] = v19;
              v20[5] = v7;
              v20[6] = v38;
              v20[7] = v11;
              v20[8] = v9;
              v20[9] = v10;

              *v4 = v17;
              return result;
            }

            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
        return result;
      }

      v37 = v8;
      v30 = v4[1];
    }

    else
    {
      v37 = *a1;
    }

    v31 = *v4;
    v32 = *(*v4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v4[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v32, a2, a3, isUniquelyReferenced_nonNull_native);

    v4[1] = v39;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 16) + 1, 1, v31);
      v31 = result;
    }

    v35 = *(v31 + 16);
    v34 = *(v31 + 24);
    if (v35 >= v34 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v31);
      v31 = result;
    }

    *(v31 + 16) = v35 + 1;
    v36 = (v31 + 48 * v35);
    v36[4] = v37;
    v36[5] = v7;
    v36[6] = v38;
    v36[7] = v11;
    v36[8] = v9;
    v36[9] = v10;
    *v4 = v31;
  }

  else
  {
    v26 = v3[1];
    if (*(v26 + 16) && (v27 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3), (v28 & 1) != 0))
    {
      v29 = *(*(v26 + 56) + 8 * v27);
      specialized Dictionary._Variant.removeValue(forKey:)(a2, a3);

      specialized Array.remove(at:)(v29, &v39);
    }

    else
    {
    }
  }

  return result;
}

uint64_t specialized OrderedIdentifiableCollection.subscript.setter(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (*a1)
  {
    v7 = a1[1];
    v37 = *a1;
    v38 = v7;
    v39[0] = a1[2];
    *(v39 + 9) = *(a1 + 41);
    v8 = v3[1];
    if (*(v8 + 16))
    {
      v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if (v11)
      {
        v12 = v10;

        v13 = *(*(v8 + 56) + 8 * v12);
        v14 = *v4;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          if ((v13 & 0x8000000000000000) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
          v14 = result;
          if ((v13 & 0x8000000000000000) == 0)
          {
LABEL_6:
            if (v13 < *(v14 + 16))
            {
              v16 = (v14 + (v13 << 6));
              v17 = v16[2];
              v18 = v16[3];
              v19 = v16[4];
              *&v36[9] = *(v16 + 73);
              v35[1] = v18;
              *v36 = v19;
              v35[0] = v17;
              v20 = a1[1];
              v16[2] = *a1;
              v16[3] = v20;
              v16[4] = a1[2];
              *(v16 + 73) = *(a1 + 41);
              result = outlined destroy of MeshResource.Part(v35);
              *v4 = v14;
              return result;
            }

            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

      v25 = v4[1];
    }

    v26 = *v4;
    v27 = *(*v4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v35[0] = v4[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, a2, a3, isUniquelyReferenced_nonNull_native);

    v4[1] = *&v35[0];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 16) + 1, 1, v26);
      v26 = result;
    }

    v30 = *(v26 + 16);
    v29 = *(v26 + 24);
    if (v30 >= v29 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v26);
      v26 = result;
    }

    *(v26 + 16) = v30 + 1;
    v31 = (v26 + (v30 << 6));
    v32 = v37;
    v33 = v38;
    v34 = v39[0];
    *(v31 + 73) = *(v39 + 9);
    v31[3] = v33;
    v31[4] = v34;
    v31[2] = v32;
    *v4 = v26;
  }

  else
  {
    v21 = v3[1];
    if (*(v21 + 16) && (v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3), (v23 & 1) != 0))
    {
      v24 = *(*(v21 + 56) + 8 * v22);
      specialized Dictionary._Variant.removeValue(forKey:)(a2, a3);

      specialized Array.remove(at:)(v24, &v37);
      return outlined destroy of MeshResource.Part(&v37);
    }

    else
    {
    }
  }

  return result;
}

{
  v4 = v3;
  if (*(a1 + 1))
  {
    v7 = a1[3];
    v44 = a1[2];
    v45 = v7;
    v8 = a1[5];
    v46 = a1[4];
    v47 = v8;
    v9 = a1[1];
    v42 = *a1;
    v43 = v9;
    v10 = v3[1];
    if (*(v10 + 16))
    {
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if (v13)
      {
        v14 = v12;

        v15 = *(*(v10 + 56) + 8 * v14);
        v16 = *v4;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
          v16 = result;
          if ((v15 & 0x8000000000000000) == 0)
          {
LABEL_6:
            if (v15 < *(v16 + 16))
            {
              v18 = (v16 + 96 * v15);
              v19 = v18[3];
              v41[0] = v18[2];
              v41[1] = v19;
              v20 = v18[4];
              v21 = v18[5];
              v22 = v18[7];
              v41[4] = v18[6];
              v41[5] = v22;
              v41[2] = v20;
              v41[3] = v21;
              v23 = a1[3];
              v18[4] = a1[2];
              v18[5] = v23;
              v24 = a1[5];
              v18[6] = a1[4];
              v18[7] = v24;
              v25 = a1[1];
              v18[2] = *a1;
              v18[3] = v25;
              result = outlined destroy of MeshResource.Instance(v41);
              *v4 = v16;
              return result;
            }

            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

      v30 = v4[1];
    }

    v31 = *v4;
    v32 = *(*v4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v41[0] = v4[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v32, a2, a3, isUniquelyReferenced_nonNull_native);

    v4[1] = *&v41[0];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 16) + 1, 1, v31);
      v31 = result;
    }

    v35 = *(v31 + 16);
    v34 = *(v31 + 24);
    if (v35 >= v34 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v31);
      v31 = result;
    }

    *(v31 + 16) = v35 + 1;
    v36 = (v31 + 96 * v35);
    v37 = v43;
    v36[2] = v42;
    v36[3] = v37;
    v38 = v44;
    v39 = v45;
    v40 = v47;
    v36[6] = v46;
    v36[7] = v40;
    v36[4] = v38;
    v36[5] = v39;
    *v4 = v31;
  }

  else
  {
    v26 = v3[1];
    if (*(v26 + 16) && (v27 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3), (v28 & 1) != 0))
    {
      v29 = *(*(v26 + 56) + 8 * v27);
      specialized Dictionary._Variant.removeValue(forKey:)(a2, a3);

      specialized Array.remove(at:)(v29, &v42);
      return outlined destroy of MeshResource.Instance(&v42);
    }

    else
    {
    }
  }

  return result;
}

uint64_t specialized OrderedIdentifiableCollection.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (a2)
  {
    v14 = v6[1];
    if (*(v14 + 16))
    {
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
      if (v16)
      {
        v17 = v15;

        v18 = *(*(v14 + 56) + 8 * v17);
        v19 = *v7;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
          v19 = result;
          if ((v18 & 0x8000000000000000) == 0)
          {
LABEL_6:
            if (v18 < *(v19 + 16))
            {
              v21 = v19 + 32 * v18;
              v23 = *(v21 + 40);
              v22 = *(v21 + 48);
              *(v21 + 32) = a1;
              *(v21 + 40) = a2;
              *(v21 + 48) = a3;
              *(v21 + 56) = a4;
              *(v21 + 60) = BYTE4(a4) & 1;

              *v7 = v19;
              return result;
            }

            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

      v28 = v7[1];
    }

    v29 = *v7;
    v30 = *(*v7 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v7[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, a5, a6, isUniquelyReferenced_nonNull_native);

    v7[1] = v35;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v33 = *(v29 + 16);
    v32 = *(v29 + 24);
    if (v33 >= v32 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v33 + 1;
    v34 = v29 + 32 * v33;
    *(v34 + 32) = a1;
    *(v34 + 40) = a2;
    *(v34 + 48) = a3;
    *(v34 + 56) = a4;
    *(v34 + 60) = BYTE4(a4) & 1;
    *v7 = v29;
  }

  else
  {
    v24 = v6[1];
    if (*(v24 + 16) && (v25 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6), (v26 & 1) != 0))
    {
      v27 = *(*(v24 + 56) + 8 * v25);
      specialized Dictionary._Variant.removeValue(forKey:)(a5, a6);

      specialized Array.remove(at:)(v27, &v35);
    }

    else
    {
    }
  }

  return result;
}

uint64_t specialized OrderedIdentifiableCollection.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    v12 = v5[1];
    if (*(v12 + 16))
    {
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5);
      if (v14)
      {
        v15 = v13;

        v16 = *(*(v12 + 56) + 8 * v15);
        v17 = *v6;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          if ((v16 & 0x8000000000000000) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
          v17 = result;
          if ((v16 & 0x8000000000000000) == 0)
          {
LABEL_6:
            if (v16 < *(v17 + 16))
            {
              v19 = (v17 + 24 * v16);
              v21 = v19[5];
              v20 = v19[6];
              v19[4] = a1;
              v19[5] = a2;
              v19[6] = a3;

              *v6 = v17;
              return result;
            }

            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

      v26 = v6[1];
    }

    v27 = *v6;
    v28 = *(*v6 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v6[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, a4, a5, isUniquelyReferenced_nonNull_native);

    v6[1] = v33;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 16) + 1, 1, v27);
      v27 = result;
    }

    v31 = *(v27 + 16);
    v30 = *(v27 + 24);
    if (v31 >= v30 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v27);
      v27 = result;
    }

    *(v27 + 16) = v31 + 1;
    v32 = (v27 + 24 * v31);
    v32[4] = a1;
    v32[5] = a2;
    v32[6] = a3;
    *v6 = v27;
  }

  else
  {
    v22 = v5[1];
    if (*(v22 + 16) && (v23 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5), (v24 & 1) != 0))
    {
      v25 = *(*(v22 + 56) + 8 * v23);
      specialized Dictionary._Variant.removeValue(forKey:)(a4, a5);

      specialized Array.remove(at:)(v25, &v33);
    }

    else
    {
    }
  }

  return result;
}

unint64_t MeshModelCollection.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = v3[1];
  if (!*(v6 + 16) || (v7 = *v4, result = specialized __RawDictionaryStorage.find<A>(_:)(result, a2), (v8 & 1) == 0))
  {
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return result;
  }

  v9 = *(*(v6 + 56) + 8 * result);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v9 >= *(v7 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v10 = (v7 + 48 * v9);
  v11 = v10[5];
  v12 = v10[6];
  v13 = v10[7];
  v14 = v10[8];
  v15 = v10[9];
  *a3 = v10[4];
  *(a3 + 8) = v11;
  *(a3 + 16) = v12;
  *(a3 + 24) = v13;
  *(a3 + 32) = v14;
  *(a3 + 40) = v15;
}

uint64_t MeshModelCollection.insert(_:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = v1[1];
  if (*(v8 + 16) && (v9 = *v1, v10 = v1[1], result = specialized __RawDictionaryStorage.find<A>(_:)(*a1, v2), (v12 & 1) != 0))
  {
    v13 = *(*(v8 + 56) + 8 * result);
    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v14 = *(v9 + 16);

      if (v13 < v14)
      {
        return 0;
      }
    }

    __break(1u);
  }

  else
  {
    v15[0] = v3;
    v15[1] = v2;
    v15[2] = v4;
    v15[3] = v5;
    v15[4] = v6;
    v15[5] = v7;

    specialized OrderedIdentifiableCollection.subscript.setter(v15, v3, v2);
    return 1;
  }

  return result;
}

uint64_t MeshModelCollection.update(_:)@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];

  specialized OrderedIdentifiableCollection.updateValue(_:forKey:)(v5, *&v5[0], *(&v5[0] + 1), a2);

  return outlined destroy of MeshResource.Model(v5);
}

uint64_t specialized OrderedIdentifiableCollection.updateValue(_:forKey:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v10 = v4[1];
  if (!*(v10 + 2) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3), (v12 & 1) == 0) || (v13 = specialized Dictionary._Variant.updateValue(_:forKey:)(*(*(v10 + 7) + 8 * v11), a2, a3), (v14 & 1) != 0))
  {
    v16 = *v5;
    v15 = v5[1];
    v17 = *(*v5 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41[0] = v5[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, a2, a3, isUniquelyReferenced_nonNull_native);
    v5[1] = v41[0];
    outlined init with copy of MeshResource.Model(a1, v41);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
    }

    v20 = *(v16 + 2);
    v19 = *(v16 + 3);
    if (v20 >= v19 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v16);
    }

    *(v16 + 2) = v20 + 1;
    v21 = &v16[48 * v20];
    v22 = v21 + 32;
    v23 = *a1;
    v24 = a1[2];
    *(v21 + 3) = a1[1];
    *(v21 + 4) = v24;
    *(v21 + 2) = v23;
    *v5 = v16;
    goto LABEL_9;
  }

  v31 = v13;
  v32 = *v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v31 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v32);
  v32 = result;
  if ((v31 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (v31 >= *(v32 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v33 = (v32 + 48 * v31);
  v34 = v33[6];
  v40 = v33[5];
  v35 = v33[7];
  v36 = v33[8];
  v37 = v33[9];
  v39 = a1[1];
  v38 = a1[2];
  *(v33 + 2) = *a1;
  *(v33 + 3) = v39;
  *(v33 + 4) = v38;
  outlined init with copy of MeshResource.Model(a1, v41);

  *v5 = v32;
  if (v31 < *(v32 + 16))
  {
    v22 = v33 + 4;
LABEL_9:
    v26 = v22[2];
    v25 = v22[3];
    v27 = v22[1];
    v28 = v22[4];
    v29 = v22[5];
    *a4 = *v22;
    a4[1] = v27;
    a4[2] = v26;
    a4[3] = v25;
    a4[4] = v28;
    a4[5] = v29;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t specialized OrderedIdentifiableCollection.updateValue(_:forKey:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v10 = v4[1];
  if (!*(v10 + 2) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3), (v12 & 1) == 0) || (v13 = specialized Dictionary._Variant.updateValue(_:forKey:)(*(*(v10 + 7) + 8 * v11), a2, a3), (v14 & 1) != 0))
  {
    v16 = *v5;
    v15 = v5[1];
    v17 = *(*v5 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v46 = v5[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, a2, a3, isUniquelyReferenced_nonNull_native);
    v5[1] = v46;
    outlined init with copy of MeshResource.Part(a1, &v46);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
    }

    v20 = *(v16 + 2);
    v19 = *(v16 + 3);
    if (v20 >= v19 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v16);
    }

    *(v16 + 2) = v20 + 1;
    v21 = &v16[64 * v20];
    v22 = *a1;
    v23 = a1[1];
    v24 = a1[2];
    *(v21 + 73) = *(a1 + 41);
    *(v21 + 3) = v23;
    *(v21 + 4) = v24;
    *(v21 + 2) = v22;
    *v5 = v16;
    v25 = *(v21 + 2);
    v26 = *(v21 + 3);
    v27 = *(v21 + 4);
    *(v48 + 9) = *(v21 + 73);
    v47 = v26;
    v48[0] = v27;
    v46 = v25;
    memmove(a4, v21 + 32, 0x39uLL);
    v28 = v44;
    return outlined init with copy of MeshResource.Part(&v46, v28);
  }

  v30 = v13;
  v31 = *v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v30 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
  v31 = result;
  if ((v30 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (v30 >= *(v31 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v32 = (v31 + (v30 << 6));
  v33 = v32[2];
  v34 = v32[3];
  v35 = v32[4];
  *&v45[9] = *(v32 + 73);
  v44[1] = v34;
  *v45 = v35;
  v44[0] = v33;
  v36 = *a1;
  v37 = a1[1];
  v38 = a1[2];
  *(v32 + 73) = *(a1 + 41);
  v32[3] = v37;
  v32[4] = v38;
  v32[2] = v36;
  outlined init with copy of MeshResource.Part(a1, &v46);
  result = outlined destroy of MeshResource.Part(v44);
  *v5 = v31;
  if (v30 < *(v31 + 16))
  {
    v39 = v32[2];
    v40 = v32[3];
    v41 = v32[4];
    *(v48 + 9) = *(v32 + 73);
    v47 = v40;
    v48[0] = v41;
    v46 = v39;
    v42 = v32[3];
    *a4 = v32[2];
    a4[1] = v42;
    a4[2] = v32[4];
    *(a4 + 41) = *(v32 + 73);
    v28 = &v43;
    return outlined init with copy of MeshResource.Part(&v46, v28);
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t specialized OrderedIdentifiableCollection.updateValue(_:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v16 = v7[1];
  if (!*(v16 + 2) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6), (v18 & 1) == 0) || (v19 = specialized Dictionary._Variant.updateValue(_:forKey:)(*(*(v16 + 7) + 8 * v17), a5, a6), (v20 & 1) != 0))
  {
    v38 = a1;
    v22 = *v8;
    v21 = v8[1];
    v23 = *(*v8 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v8[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, a5, a6, isUniquelyReferenced_nonNull_native);
    v8[1] = v39;

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_5:
      v26 = *(v22 + 2);
      v25 = *(v22 + 3);
      if (v26 >= v25 >> 1)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v22);
      }

      *(v22 + 2) = v26 + 1;
      v27 = &v22[32 * v26];
      *(v27 + 4) = v38;
      *(v27 + 5) = a2;
      v28 = v27 + 32;
      *(v28 + 2) = a3;
      *(v28 + 6) = a4;
      v28[28] = BYTE4(a4) & 1;
      *v8 = v22;
      goto LABEL_8;
    }

LABEL_16:
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
    goto LABEL_5;
  }

  v34 = v19;
  v22 = *v8;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v34 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
  v22 = result;
  if ((v34 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

LABEL_13:
  if (v34 >= *(v22 + 2))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v35 = &v22[32 * v34];
  *(v35 + 4) = a1;
  v28 = v35 + 32;
  v36 = *(v28 + 1);
  v37 = *(v28 + 2);
  *(v28 + 1) = a2;
  *(v28 + 2) = a3;
  *(v28 + 6) = a4;
  v28[28] = BYTE4(a4) & 1;

  *v8 = v22;
  if (v34 >= *(v22 + 2))
  {
    __break(1u);
    goto LABEL_16;
  }

LABEL_8:
  v29 = *(v28 + 1);
  v30 = *(v28 + 2);
  v31 = *(v28 + 6);
  v32 = v28[28];
  *a7 = *v28;
  *(a7 + 8) = v29;
  *(a7 + 16) = v30;
  *(a7 + 24) = v31;
  *(a7 + 28) = v32;
}

uint64_t specialized OrderedIdentifiableCollection.updateValue(_:forKey:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v10 = v4[1];
  if (!*(v10 + 2) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3), (v12 & 1) == 0) || (v13 = specialized Dictionary._Variant.updateValue(_:forKey:)(*(*(v10 + 7) + 8 * v11), a2, a3), (v14 & 1) != 0))
  {
    v16 = *v5;
    v15 = v5[1];
    v17 = *(*v5 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v53 = v5[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, a2, a3, isUniquelyReferenced_nonNull_native);
    v5[1] = v53;
    outlined init with copy of MeshResource.Instance(a1, &v53);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
    }

    v20 = *(v16 + 2);
    v19 = *(v16 + 3);
    if (v20 >= v19 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v16);
    }

    *(v16 + 2) = v20 + 1;
    v21 = &v16[96 * v20];
    v22 = a1[1];
    *(v21 + 2) = *a1;
    *(v21 + 3) = v22;
    v23 = a1[2];
    v24 = a1[3];
    v25 = a1[5];
    *(v21 + 6) = a1[4];
    *(v21 + 7) = v25;
    *(v21 + 4) = v23;
    *(v21 + 5) = v24;
    *v5 = v16;
    v26 = *(v21 + 3);
    v53 = *(v21 + 2);
    v54 = v26;
    v27 = *(v21 + 4);
    v28 = *(v21 + 5);
    v29 = *(v21 + 7);
    v57 = *(v21 + 6);
    v58 = v29;
    v55 = v27;
    v56 = v28;
    memmove(a4, v21 + 32, 0x60uLL);
    v30 = v52;
    return outlined init with copy of MeshResource.Instance(&v53, v30);
  }

  v32 = v13;
  v33 = *v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v32 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v33);
  v33 = result;
  if ((v32 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (v32 >= *(v33 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v34 = (v33 + 96 * v32);
  v35 = v34[3];
  v52[0] = v34[2];
  v52[1] = v35;
  v36 = v34[4];
  v37 = v34[5];
  v38 = v34[7];
  v52[4] = v34[6];
  v52[5] = v38;
  v52[2] = v36;
  v52[3] = v37;
  v39 = a1[5];
  v41 = a1[2];
  v40 = a1[3];
  v34[6] = a1[4];
  v34[7] = v39;
  v34[4] = v41;
  v34[5] = v40;
  v42 = a1[1];
  v34[2] = *a1;
  v34[3] = v42;
  outlined init with copy of MeshResource.Instance(a1, &v53);
  result = outlined destroy of MeshResource.Instance(v52);
  *v5 = v33;
  if (v32 < *(v33 + 16))
  {
    v43 = v34[3];
    v53 = v34[2];
    v54 = v43;
    v44 = v34[4];
    v45 = v34[5];
    v46 = v34[7];
    v57 = v34[6];
    v58 = v46;
    v55 = v44;
    v56 = v45;
    v47 = v34[3];
    *a4 = v34[2];
    a4[1] = v47;
    v48 = v34[4];
    v49 = v34[5];
    v50 = v34[7];
    a4[4] = v34[6];
    a4[5] = v50;
    a4[2] = v48;
    a4[3] = v49;
    v30 = &v51;
    return outlined init with copy of MeshResource.Instance(&v53, v30);
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t specialized OrderedIdentifiableCollection.updateValue(_:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v7 = v6;
  v14 = v6[1];
  if (!*(v14 + 2) || (v15 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5), (v16 & 1) == 0) || (v17 = specialized Dictionary._Variant.updateValue(_:forKey:)(*(*(v14 + 7) + 8 * v15), a4, a5), (v18 & 1) != 0))
  {
    v20 = *v7;
    v19 = v7[1];
    v21 = *(*v7 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v7[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, a4, a5, isUniquelyReferenced_nonNull_native);
    v7[1] = v33;

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_5:
      v24 = *(v20 + 2);
      v23 = *(v20 + 3);
      if (v24 >= v23 >> 1)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v20);
      }

      *(v20 + 2) = v24 + 1;
      v25 = &v20[24 * v24];
      *(v25 + 4) = a1;
      *(v25 + 5) = a2;
      v26 = v25 + 32;
      v26[2] = a3;
      *v7 = v20;
      goto LABEL_8;
    }

LABEL_16:
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
    goto LABEL_5;
  }

  v30 = v17;
  v20 = *v7;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v30 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
  v20 = result;
  if ((v30 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

LABEL_13:
  if (v30 >= *(v20 + 2))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v31 = &v20[24 * v30];
  *(v31 + 4) = a1;
  v26 = v31 + 32;
  a1 = v26[1];
  v32 = v26[2];
  v26[1] = a2;
  v26[2] = a3;

  *v7 = v20;
  if (v30 >= *(v20 + 2))
  {
    __break(1u);
    goto LABEL_16;
  }

LABEL_8:
  v27 = v26[1];
  v28 = v26[2];
  *a6 = *v26;
  a6[1] = v27;
  a6[2] = v28;
}

uint64_t specialized OrderedIdentifiableCollection.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = v3[1];
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v8 & 1) == 0)
  {
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return result;
  }

  v9 = result;
  v10 = v4[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = v4[1];
  v21 = v12;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v12 = v21;
  }

  v13 = *(*(v12 + 48) + 16 * v9 + 8);

  v14 = *(*(v12 + 56) + 8 * v9);
  result = specialized _NativeDictionary._delete(at:)(v9, v12);
  v4[1] = v12;
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v14 >= *(*v4 + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v15 = (*v4 + 48 * v14);
  v16 = v15[5];
  v17 = v15[6];
  v18 = v15[7];
  v19 = v15[8];
  v20 = v15[9];
  *a3 = v15[4];
  *(a3 + 8) = v16;
  *(a3 + 16) = v17;
  *(a3 + 24) = v18;
  *(a3 + 32) = v19;
  *(a3 + 40) = v20;

  specialized Array.remove(at:)(v14, &v21);
}

{
  v4 = v3;
  v6 = v3[1];
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v8 & 1) == 0)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 21) = 0;
    *(a3 + 16) = 0;
    return result;
  }

  v9 = result;
  v10 = v4[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = v4[1];
  v20 = v12;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v12 = v20;
  }

  v13 = *(*(v12 + 48) + 16 * v9 + 8);

  v14 = *(*(v12 + 56) + 8 * v9);
  result = specialized _NativeDictionary._delete(at:)(v9, v12);
  v4[1] = v12;
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v14 >= *(*v4 + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v15 = *v4 + 32 * v14;
  v17 = *(v15 + 32);
  v16 = *(v15 + 40);
  v18 = *(v15 + 48);
  v19 = *(v15 + 56);
  LOBYTE(v15) = *(v15 + 60);
  *a3 = v17;
  *(a3 + 8) = v16;
  *(a3 + 16) = v18;
  *(a3 + 24) = v19;
  *(a3 + 28) = v15;

  specialized Array.remove(at:)(v14, &v20);
}

uint64_t specialized OrderedIdentifiableCollection.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = v3[1];
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = result;
    v10 = v4[1];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = v4[1];
    v23 = v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(*(v12 + 56) + 8 * v9);
    result = specialized _NativeDictionary._delete(at:)(v9, v12);
    v4[1] = v12;
    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v14 < *(*v4 + 16))
    {
      v15 = (*v4 + (v14 << 6));
      v16 = v15[2];
      v17 = v15[3];
      v18 = v15[4];
      *&v21[9] = *(v15 + 73);
      v20[1] = v17;
      *v21 = v18;
      v20[0] = v16;
      v19 = v15[3];
      *a3 = v15[2];
      a3[1] = v19;
      a3[2] = v15[4];
      *(a3 + 41) = *(v15 + 73);
      outlined init with copy of MeshResource.Part(v20, v22);
      specialized Array.remove(at:)(v14, v22);
      return outlined destroy of MeshResource.Part(v22);
    }

    __break(1u);
  }

  else
  {
    *(a3 + 41) = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

{
  v4 = v3;
  v6 = v3[1];
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = result;
    v10 = v4[1];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = v4[1];
    v26 = v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v26;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(*(v12 + 56) + 8 * v9);
    result = specialized _NativeDictionary._delete(at:)(v9, v12);
    v4[1] = v12;
    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v14 < *(*v4 + 16))
    {
      v15 = (*v4 + 96 * v14);
      v16 = v15[3];
      v24[0] = v15[2];
      v24[1] = v16;
      v17 = v15[4];
      v18 = v15[5];
      v19 = v15[7];
      v24[4] = v15[6];
      v24[5] = v19;
      v24[2] = v17;
      v24[3] = v18;
      v20 = v15[3];
      *a3 = v15[2];
      a3[1] = v20;
      v21 = v15[4];
      v22 = v15[5];
      v23 = v15[7];
      a3[4] = v15[6];
      a3[5] = v23;
      a3[2] = v21;
      a3[3] = v22;
      outlined init with copy of MeshResource.Instance(v24, v25);
      specialized Array.remove(at:)(v14, v25);
      return outlined destroy of MeshResource.Instance(v25);
    }

    __break(1u);
  }

  else
  {
    a3[4] = 0u;
    a3[5] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t specialized OrderedIdentifiableCollection.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v6 = v3[1];
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v8 & 1) == 0)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return result;
  }

  v9 = result;
  v10 = v4[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = v4[1];
  v18 = v12;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v12 = v18;
  }

  v13 = *(*(v12 + 48) + 16 * v9 + 8);

  v14 = *(*(v12 + 56) + 8 * v9);
  result = specialized _NativeDictionary._delete(at:)(v9, v12);
  v4[1] = v12;
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v14 >= *(*v4 + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v15 = (*v4 + 24 * v14);
  v16 = v15[5];
  v17 = v15[6];
  *a3 = v15[4];
  a3[1] = v16;
  a3[2] = v17;

  specialized Array.remove(at:)(v14, &v18);
}

uint64_t MeshModelCollection.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  else if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = (*v1 + 48 * v2);
    v5 = v4[5];
    v6 = v4[6];
    v7 = v4[7];
    v8 = v4[8];
    v9 = v4[9];
    *a1 = v4[4];
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    *(a1 + 40) = v9;
    v1[1] = v2 + 1;
  }

  return result;
}

unint64_t MeshModelCollection.subscript.getter@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*v2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = (*v2 + 48 * result);
  v4 = v3[5];
  v5 = v3[6];
  v6 = v3[7];
  v7 = v3[8];
  v8 = v3[9];
  *a2 = v3[4];
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
}

void (*protocol witness for Collection.subscript.read in conformance MeshModelCollection(void (**a1)(uint64_t a1), unint64_t *a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x30uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*v2 + 16))
  {
    v8 = (*v2 + 48 * v7);
    v9 = v8[5];
    v10 = v8[6];
    v11 = v8[7];
    v12 = v8[8];
    v13 = v8[9];
    *v6 = v8[4];
    *(v6 + 1) = v9;
    *(v6 + 2) = v10;
    *(v6 + 3) = v11;
    *(v6 + 4) = v12;
    *(v6 + 5) = v13;

    return protocol witness for Collection.subscript.read in conformance MeshModelCollection;
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.read in conformance MeshModelCollection(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];

  free(v1);
}

double MeshModelCollection.init(arrayLiteral:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  MeshModelCollection.init(_:)(a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

double protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance MeshModelCollection@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  MeshModelCollection.init(_:)(a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t MeshPartCollection.init()@<X0>(uint64_t *a1@<X8>)
{
  result = _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE4PartVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MeshPartCollection.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE4PartVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v6 = v5;
  v7 = *(a1 + 16);
  if (!v7)
  {

LABEL_31:
    *a2 = v4;
    a2[1] = v6;
    return result;
  }

  v8 = 0;
  v44 = a2;
  v45 = v7 - 1;
  v9 = 32;
  do
  {
    v10 = *(a1 + v9 + 16);
    v48 = *(a1 + v9);
    v49 = v10;
    *&v50[9] = *(a1 + v9 + 41);
    *v50 = *(a1 + v9 + 32);
    v12 = *(&v48 + 1);
    v11 = v10;
    if (!v6[2])
    {
      outlined init with copy of MeshResource.Part(&v48, v46);
      outlined init with copy of MeshResource.Part(&v48, v46);
LABEL_11:
      v23 = *(v4 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v46[0] = v6;
      v25 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v11);
      v27 = v6[2];
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        goto LABEL_32;
      }

      v31 = v26;
      if (v6[3] >= v30)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = v25;
          specialized _NativeDictionary.copy()();
          v25 = v33;
          v6 = *&v46[0];
          if (v31)
          {
            goto LABEL_17;
          }

          goto LABEL_19;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v30, isUniquelyReferenced_nonNull_native);
        v25 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v11);
        if ((v31 & 1) != (v32 & 1))
        {
          goto LABEL_36;
        }
      }

      v6 = *&v46[0];
      if (v31)
      {
LABEL_17:
        *(v6[7] + 8 * v25) = v23;
LABEL_21:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
        }

        v38 = *(v4 + 16);
        v37 = *(v4 + 24);
        if (v38 >= v37 >> 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v4);
        }

        outlined destroy of MeshResource.Part(&v48);
        *(v4 + 16) = v38 + 1;
        v39 = (v4 + (v38 << 6));
        v41 = v49;
        v40 = *v50;
        v42 = v48;
        *(v39 + 73) = *&v50[9];
        v39[3] = v41;
        v39[4] = v40;
        v39[2] = v42;
        goto LABEL_26;
      }

LABEL_19:
      v6[(v25 >> 6) + 8] |= 1 << v25;
      v34 = (v6[6] + 16 * v25);
      *v34 = v12;
      v34[1] = v11;
      *(v6[7] + 8 * v25) = v23;
      v35 = v6[2];
      v29 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v29)
      {
        goto LABEL_33;
      }

      v6[2] = v36;

      goto LABEL_21;
    }

    outlined init with copy of MeshResource.Part(&v48, v46);
    outlined init with copy of MeshResource.Part(&v48, v46);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v11);
    if ((v14 & 1) == 0)
    {
      goto LABEL_11;
    }

    v15 = *(v6[7] + 8 * v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    }

    outlined destroy of MeshResource.Part(&v48);
    if ((v15 & 0x8000000000000000) != 0)
    {
      goto LABEL_34;
    }

    if (v15 >= *(v4 + 16))
    {
      goto LABEL_35;
    }

    v16 = (v4 + (v15 << 6));
    v17 = v16[2];
    v18 = v16[3];
    v19 = v16[4];
    *&v47[9] = *(v16 + 73);
    v46[1] = v18;
    *v47 = v19;
    v46[0] = v17;
    v20 = v48;
    v21 = v49;
    v22 = *v50;
    *(v16 + 73) = *&v50[9];
    v16[3] = v21;
    v16[4] = v22;
    v16[2] = v20;
    outlined destroy of MeshResource.Part(v46);
LABEL_26:
    if (v45 == v8)
    {

      a2 = v44;
      goto LABEL_31;
    }

    ++v8;
    v9 += 64;
  }

  while (v8 < *(a1 + 16));
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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t MeshPartCollection.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = v3[1];
  if (*(v6 + 16) && (v7 = *v4, result = specialized __RawDictionaryStorage.find<A>(_:)(result, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * result);
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < *(v7 + 16))
    {
      v10 = (v7 + (v9 << 6));
      v11 = v10[2];
      v12 = v10[3];
      v13 = v10[4];
      *&v17[9] = *(v10 + 73);
      v16[1] = v12;
      *v17 = v13;
      v16[0] = v11;
      v14 = v10[3];
      *a3 = v10[2];
      a3[1] = v14;
      a3[2] = v10[4];
      *(a3 + 41) = *(v10 + 73);
      return outlined init with copy of MeshResource.Part(v16, &v15);
    }

    __break(1u);
  }

  else
  {
    *(a3 + 41) = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t MeshPartCollection.insert(_:)(_OWORD *a1)
{
  v3 = a1[1];
  v15[0] = *a1;
  v15[1] = v3;
  *&v16[9] = *(a1 + 41);
  *v16 = a1[2];
  v4 = v3;
  v5 = v1[1];
  if (*(v5 + 16) && (v6 = *v1, v7 = v1[1], result = specialized __RawDictionaryStorage.find<A>(_:)(*(&v15[0] + 1), v3), (v9 & 1) != 0))
  {
    v10 = *(*(v5 + 56) + 8 * result);
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v11 = *(v6 + 16);
      result = outlined destroy of MeshResource.Part(v15);
      if (v10 < v11)
      {
        return 0;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = a1[1];
    v13[0] = *a1;
    v13[1] = v12;
    v14[0] = a1[2];
    *(v14 + 9) = *(a1 + 41);

    specialized OrderedIdentifiableCollection.subscript.setter(v13, *(&v15[0] + 1), v4);
    return 1;
  }

  return result;
}

uint64_t MeshPartCollection.update(_:)@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v7[0] = a1[2];
  *(v7 + 9) = *(a1 + 41);
  v4 = v3;

  specialized OrderedIdentifiableCollection.updateValue(_:forKey:)(v6, *(&v6[0] + 1), v4, a2);

  return outlined destroy of MeshResource.Part(v6);
}

uint64_t MeshPartCollection.Iterator.next()@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *(a1 + 41) = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  else if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = (*v1 + (v2 << 6));
    v5 = v4[2];
    v6 = v4[3];
    v7 = v4[4];
    *&v12[9] = *(v4 + 73);
    v11[1] = v6;
    *v12 = v7;
    v11[0] = v5;
    v8 = v4[3];
    *a1 = v4[2];
    a1[1] = v8;
    a1[2] = v4[4];
    *(a1 + 41) = *(v4 + 73);
    v1[1] = v2 + 1;
    return outlined init with copy of MeshResource.Part(v11, &v10);
  }

  return result;
}

uint64_t MeshPartCollection.makeIterator()@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];

  *a1 = v4;
  a1[1] = 0;
  return result;
}

Swift::Int __swiftcall MeshPartCollection.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall MeshPartCollection.formIndex(after:)(Swift::Int *after)
{
  if (__OFADD__(*after, 1))
  {
    __break(1u);
  }

  else
  {
    ++*after;
  }
}

unint64_t MeshPartCollection.subscript.getter@<X0>(unint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > result)
  {
    v3 = (*v2 + (result << 6));
    v4 = v3[2];
    v5 = v3[3];
    v6 = v3[4];
    *&v10[9] = *(v3 + 73);
    v9[1] = v5;
    *v10 = v6;
    v9[0] = v4;
    v7 = v3[3];
    *a2 = v3[2];
    a2[1] = v7;
    a2[2] = v3[4];
    *(a2 + 41) = *(v3 + 73);
    return outlined init with copy of MeshResource.Part(v9, &v8);
  }

  __break(1u);
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance MeshPartCollection(void (**a1)(uint64_t a1), unint64_t *a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0xB9uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*v2 + 16))
  {
    v8 = (*v2 + (v7 << 6));
    v9 = v8[2];
    v10 = v8[3];
    v11 = v8[4];
    *(result + 41) = *(v8 + 73);
    *(result + 1) = v10;
    *(result + 2) = v11;
    *result = v9;
    memmove(result + 64, v8 + 2, 0x39uLL);
    outlined init with copy of MeshResource.Part(v6, v6 + 128);
    return protocol witness for Collection.subscript.read in conformance MeshPartCollection;
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.read in conformance MeshPartCollection(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v1[8] = *(*a1 + 64);
  v1[9] = v2;
  v1[10] = v1[6];
  *(v1 + 169) = *(v1 + 105);
  outlined destroy of MeshResource.Part((v1 + 8));

  free(v1);
}

double MeshPartCollection.init(arrayLiteral:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  MeshPartCollection.init(_:)(a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

double protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance MeshPartCollection@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  MeshPartCollection.init(_:)(a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t MeshModelCollection.customMirror.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a5;
  v27 = a4;
  v24 = a2;
  v25 = a3;
  v7 = type metadata accessor for Mirror.AncestorRepresentation();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v23 - v14;
  v17 = *v5;
  v16 = v5[1];
  v29 = v17;
  v30 = v16;
  v28 = v17;
  v18 = *MEMORY[0x1E69E7590];
  v19 = type metadata accessor for Mirror.DisplayStyle();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v15, v18, v19);
  (*(v20 + 56))(v15, 0, 1, v19);
  (*(v8 + 104))(v11, *MEMORY[0x1E69E75D8], v7);
  swift_bridgeObjectRetain_n();

  v21 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, v24);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(v25, a1, v21);
  return Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)();
}

uint64_t protocol witness for CustomReflectable.customMirror.getter in conformance MeshModelCollection@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, unint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a1;
  v7 = type metadata accessor for Mirror.AncestorRepresentation();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v23 - v14;
  v17 = *v5;
  v16 = v5[1];
  v29 = v17;
  v30 = v16;
  v28 = v17;
  v18 = *MEMORY[0x1E69E7590];
  v19 = type metadata accessor for Mirror.DisplayStyle();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v15, v18, v19);
  (*(v20 + 56))(v15, 0, 1, v19);
  (*(v8 + 104))(v11, *MEMORY[0x1E69E75D8], v7);
  swift_bridgeObjectRetain_n();

  v21 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, v24);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(v25, a2, v21);
  return Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)();
}

uint64_t MeshLevelCollection_v1.init()@<X0>(uint64_t *a1@<X8>)
{
  result = _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE8Level_v1VTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MeshLevelCollection_v1.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE8Level_v1VTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v5 = v4;
  v44 = *(a1 + 16);
  if (v44)
  {
    v6 = 0;
    v7 = (a1 + 60);
    v43 = a1;
    while (v6 < *(a1 + 16))
    {
      v9 = *(v7 - 28);
      v10 = *(v7 - 20);
      v11 = *(v7 - 12);
      v12 = *(v7 - 1);
      v13 = *v7;
      v14 = v5[2];
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      if (v14 && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10), (v16 & 1) != 0))
      {
        v17 = *(v5[7] + 8 * v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
        }

        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_31;
        }

        if (v17 >= *(v3 + 16))
        {
          goto LABEL_32;
        }

        v18 = v3 + 32 * v17;
        v19 = v3;
        v21 = *(v18 + 40);
        v20 = *(v18 + 48);
        *(v18 + 32) = v9;
        *(v18 + 40) = v10;
        *(v18 + 48) = v11;
        *(v18 + 56) = v12;
        *(v18 + 60) = v13;

        v3 = v19;

        a1 = v43;
      }

      else
      {
        v46 = v12;
        v47 = v11;
        v45 = v3;
        v22 = *(v3 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = v9;
        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
        v26 = v5[2];
        v27 = (v25 & 1) == 0;
        v28 = __OFADD__(v26, v27);
        v29 = v26 + v27;
        if (v28)
        {
          goto LABEL_29;
        }

        v30 = v25;
        if (v5[3] >= v29)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v40 = v24;
            specialized _NativeDictionary.copy()();
            v24 = v40;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, isUniquelyReferenced_nonNull_native);
          v24 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
          if ((v30 & 1) != (v31 & 1))
          {
            goto LABEL_33;
          }
        }

        v32 = v13;
        if (v30)
        {
          *(v5[7] + 8 * v24) = v22;
        }

        else
        {
          v5[(v24 >> 6) + 8] |= 1 << v24;
          v33 = (v5[6] + 16 * v24);
          *v33 = v9;
          v33[1] = v10;
          *(v5[7] + 8 * v24) = v22;
          v34 = v5[2];
          v28 = __OFADD__(v34, 1);
          v35 = v34 + 1;
          if (v28)
          {
            goto LABEL_30;
          }

          v5[2] = v35;
        }

        v36 = v45;
        a1 = v43;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v45 + 16) + 1, 1, v45);
        }

        v38 = *(v36 + 2);
        v37 = *(v36 + 3);
        v39 = v36;
        if (v38 >= v37 >> 1)
        {
          v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v36);
        }

        *(v39 + 2) = v38 + 1;
        v3 = v39;
        v8 = &v39[32 * v38];
        *(v8 + 4) = v48;
        *(v8 + 5) = v10;
        *(v8 + 6) = v47;
        *(v8 + 14) = v46;
        v8[60] = v32;
      }

      ++v6;
      v7 += 32;
      if (v44 == v6)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
LABEL_27:

    *a2 = v3;
    a2[1] = v5;
  }

  return result;
}

unint64_t MeshLevelCollection_v1.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = v3[1];
  if (!*(v6 + 16) || (v7 = *v4, result = specialized __RawDictionaryStorage.find<A>(_:)(result, a2), (v8 & 1) == 0))
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 21) = 0;
    *(a3 + 16) = 0;
    return result;
  }

  v9 = *(*(v6 + 56) + 8 * result);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v9 >= *(v7 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v10 = v7 + 32 * v9;
  v12 = *(v10 + 32);
  v11 = *(v10 + 40);
  v13 = *(v10 + 48);
  v14 = *(v10 + 56);
  LOBYTE(v10) = *(v10 + 60);
  *a3 = v12;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13;
  *(a3 + 24) = v14;
  *(a3 + 28) = v10;
}

uint64_t MeshLevelCollection_v1.insert(_:)(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 28);
  v7 = v1[1];
  if (*(v7 + 16) && (v8 = *v1, v9 = v1[1], result = specialized __RawDictionaryStorage.find<A>(_:)(*a1, v2), (v11 & 1) != 0))
  {
    v12 = *(*(v7 + 56) + 8 * result);
    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v13 = *(v8 + 16);

      if (v12 < v13)
      {
        return 0;
      }
    }

    __break(1u);
  }

  else
  {
    if (v6)
    {
      v14 = 0x100000000;
    }

    else
    {
      v14 = 0;
    }

    specialized OrderedIdentifiableCollection.subscript.setter(v3, v2, v4, v14 | v5, v3, v2);
    return 1;
  }

  return result;
}

uint64_t MeshLevelCollection_v1.update(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 28);

  specialized OrderedIdentifiableCollection.updateValue(_:forKey:)(v3, v4, v5, v6 | (v7 << 32), v3, v4, a2);

  return swift_bridgeObjectRelease_n();
}

uint64_t MeshLevelCollection_v1.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 21) = 0;
    *(a1 + 16) = 0;
  }

  else if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *v1 + 32 * v2;
    v6 = *(v4 + 32);
    v5 = *(v4 + 40);
    v7 = *(v4 + 48);
    v8 = *(v4 + 56);
    LOBYTE(v4) = *(v4 + 60);
    *a1 = v6;
    *(a1 + 8) = v5;
    *(a1 + 16) = v7;
    *(a1 + 24) = v8;
    *(a1 + 28) = v4;
    v1[1] = v2 + 1;
  }

  return result;
}

unint64_t MeshLevelCollection_v1.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*v2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = *v2 + 32 * result;
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = *(v3 + 48);
  v7 = *(v3 + 56);
  LOBYTE(v3) = *(v3 + 60);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 28) = v3;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance MeshLevelCollection_v1(uint64_t (*result)(uint64_t a1), unint64_t *a2))(uint64_t a1)
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    v4 = result;
    v5 = *v2 + 32 * v3;
    v7 = *(v5 + 32);
    v6 = *(v5 + 40);
    v8 = *(v5 + 48);
    v9 = *(v5 + 56);
    LOBYTE(v5) = *(v5 + 60);
    *v4 = v7;
    *(v4 + 1) = v6;
    *(v4 + 2) = v8;
    *(v4 + 6) = v9;
    *(v4 + 28) = v5;

    return protocol witness for Collection.subscript.read in conformance MeshLevelCollection_v1;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.subscript.read in conformance MeshLevelCollection_v1(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
}

double MeshLevelCollection_v1.init(arrayLiteral:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  MeshLevelCollection_v1.init(_:)(a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

double protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance MeshLevelCollection_v1@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  MeshLevelCollection_v1.init(_:)(a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t MeshInstanceCollection.init()@<X0>(uint64_t *a1@<X8>)
{
  result = _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE8InstanceVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MeshInstanceCollection.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE8InstanceVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v6 = v5;
  v7 = *(a1 + 16);
  if (!v7)
  {

LABEL_31:
    *a2 = v4;
    a2[1] = v6;
    return result;
  }

  v8 = 0;
  v47 = a2;
  v48 = v7 - 1;
  v9 = 32;
  do
  {
    v10 = *(a1 + v9 + 16);
    v50 = *(a1 + v9);
    v51 = v10;
    v11 = *(a1 + v9 + 80);
    v54 = *(a1 + v9 + 64);
    v55 = v11;
    v12 = *(a1 + v9 + 48);
    v52 = *(a1 + v9 + 32);
    v53 = v12;
    v13 = v50;
    if (!v6[2])
    {
      outlined init with copy of MeshResource.Instance(&v50, v49);
      outlined init with copy of MeshResource.Instance(&v50, v49);
LABEL_11:
      v26 = *(v4 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v49[0] = v6;
      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v13, *(&v13 + 1));
      v30 = v6[2];
      v31 = (v29 & 1) == 0;
      v32 = __OFADD__(v30, v31);
      v33 = v30 + v31;
      if (v32)
      {
        goto LABEL_32;
      }

      v34 = v29;
      if (v6[3] >= v33)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = v28;
          specialized _NativeDictionary.copy()();
          v28 = v36;
          v6 = *&v49[0];
          if (v34)
          {
            goto LABEL_17;
          }

          goto LABEL_19;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, isUniquelyReferenced_nonNull_native);
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v13, *(&v13 + 1));
        if ((v34 & 1) != (v35 & 1))
        {
          goto LABEL_36;
        }
      }

      v6 = *&v49[0];
      if (v34)
      {
LABEL_17:
        *(v6[7] + 8 * v28) = v26;
LABEL_21:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
        }

        v40 = *(v4 + 16);
        v39 = *(v4 + 24);
        if (v40 >= v39 >> 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v4);
        }

        outlined destroy of MeshResource.Instance(&v50);
        *(v4 + 16) = v40 + 1;
        v41 = (v4 + 96 * v40);
        v42 = v51;
        v41[2] = v50;
        v41[3] = v42;
        v43 = v55;
        v45 = v52;
        v44 = v53;
        v41[6] = v54;
        v41[7] = v43;
        v41[4] = v45;
        v41[5] = v44;
        goto LABEL_26;
      }

LABEL_19:
      v6[(v28 >> 6) + 8] |= 1 << v28;
      *(v6[6] + 16 * v28) = v13;
      *(v6[7] + 8 * v28) = v26;
      v37 = v6[2];
      v32 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v32)
      {
        goto LABEL_33;
      }

      v6[2] = v38;

      goto LABEL_21;
    }

    outlined init with copy of MeshResource.Instance(&v50, v49);
    outlined init with copy of MeshResource.Instance(&v50, v49);
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v13, *(&v13 + 1));
    if ((v15 & 1) == 0)
    {
      goto LABEL_11;
    }

    v16 = *(v6[7] + 8 * v14);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    }

    outlined destroy of MeshResource.Instance(&v50);
    if ((v16 & 0x8000000000000000) != 0)
    {
      goto LABEL_34;
    }

    if (v16 >= *(v4 + 16))
    {
      goto LABEL_35;
    }

    v17 = (v4 + 96 * v16);
    v18 = v17[3];
    v49[0] = v17[2];
    v49[1] = v18;
    v19 = v17[4];
    v20 = v17[5];
    v21 = v17[7];
    v49[4] = v17[6];
    v49[5] = v21;
    v49[2] = v19;
    v49[3] = v20;
    v22 = v55;
    v24 = v52;
    v23 = v53;
    v17[6] = v54;
    v17[7] = v22;
    v17[4] = v24;
    v17[5] = v23;
    v25 = v51;
    v17[2] = v50;
    v17[3] = v25;
    outlined destroy of MeshResource.Instance(v49);
LABEL_26:
    if (v48 == v8)
    {

      a2 = v47;
      goto LABEL_31;
    }

    ++v8;
    v9 += 96;
  }

  while (v8 < *(a1 + 16));
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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t MeshInstanceCollection.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = v3[1];
  if (*(v6 + 16) && (v7 = *v4, result = specialized __RawDictionaryStorage.find<A>(_:)(result, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * result);
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < *(v7 + 16))
    {
      v10 = (v7 + 96 * v9);
      v11 = v10[3];
      v20[0] = v10[2];
      v20[1] = v11;
      v12 = v10[4];
      v13 = v10[5];
      v14 = v10[7];
      v20[4] = v10[6];
      v20[5] = v14;
      v20[2] = v12;
      v20[3] = v13;
      v15 = v10[3];
      *a3 = v10[2];
      a3[1] = v15;
      v16 = v10[4];
      v17 = v10[5];
      v18 = v10[7];
      a3[4] = v10[6];
      a3[5] = v18;
      a3[2] = v16;
      a3[3] = v17;
      return outlined init with copy of MeshResource.Instance(v20, &v19);
    }

    __break(1u);
  }

  else
  {
    a3[4] = 0u;
    a3[5] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t MeshInstanceCollection.insert(_:)(_OWORD *a1)
{
  v3 = a1[1];
  v17[0] = *a1;
  v17[1] = v3;
  v4 = a1[5];
  v17[4] = a1[4];
  v17[5] = v4;
  v5 = a1[3];
  v17[2] = a1[2];
  v17[3] = v5;
  v6 = v1[1];
  if (*(v6 + 16) && (v7 = *v1, v8 = v1[1], result = specialized __RawDictionaryStorage.find<A>(_:)(*&v17[0], *(&v17[0] + 1)), (v10 & 1) != 0))
  {
    v11 = *(*(v6 + 56) + 8 * result);
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v12 = *(v7 + 16);
      result = outlined destroy of MeshResource.Instance(v17);
      if (v11 < v12)
      {
        return 0;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = a1[3];
    v16[2] = a1[2];
    v16[3] = v13;
    v14 = a1[5];
    v16[4] = a1[4];
    v16[5] = v14;
    v15 = a1[1];
    v16[0] = *a1;
    v16[1] = v15;

    specialized OrderedIdentifiableCollection.subscript.setter(v16, *&v17[0], *(&v17[0] + 1));
    return 1;
  }

  return result;
}

uint64_t MeshInstanceCollection.update(_:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a1[5];
  v7[4] = a1[4];
  v7[5] = v4;
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;

  specialized OrderedIdentifiableCollection.updateValue(_:forKey:)(v7, *&v7[0], *(&v7[0] + 1), a2);

  return outlined destroy of MeshResource.Instance(v7);
}

uint64_t MeshInstanceCollection.Iterator.next()@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    a1[4] = 0u;
    a1[5] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }

  else if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = (*v1 + 96 * v2);
    v5 = v4[3];
    v15[0] = v4[2];
    v15[1] = v5;
    v6 = v4[4];
    v7 = v4[5];
    v8 = v4[7];
    v15[4] = v4[6];
    v15[5] = v8;
    v15[2] = v6;
    v15[3] = v7;
    v9 = v4[3];
    *a1 = v4[2];
    a1[1] = v9;
    v10 = v4[4];
    v11 = v4[5];
    v12 = v4[7];
    a1[4] = v4[6];
    a1[5] = v12;
    a1[2] = v10;
    a1[3] = v11;
    v1[1] = v2 + 1;
    return outlined init with copy of MeshResource.Instance(v15, &v14);
  }

  return result;
}

unint64_t MeshInstanceCollection.subscript.getter@<X0>(unint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > result)
  {
    v3 = (*v2 + 96 * result);
    v4 = v3[3];
    v13[0] = v3[2];
    v13[1] = v4;
    v5 = v3[4];
    v6 = v3[5];
    v7 = v3[7];
    v13[4] = v3[6];
    v13[5] = v7;
    v13[2] = v5;
    v13[3] = v6;
    v8 = v3[3];
    *a2 = v3[2];
    a2[1] = v8;
    v9 = v3[4];
    v10 = v3[5];
    v11 = v3[7];
    a2[4] = v3[6];
    a2[5] = v11;
    a2[2] = v9;
    a2[3] = v10;
    return outlined init with copy of MeshResource.Instance(v13, &v12);
  }

  __break(1u);
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance MeshInstanceCollection(void (**a1)(uint64_t a1), unint64_t *a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x120uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*v2 + 16))
  {
    v8 = (*v2 + 96 * v7);
    v9 = v8[3];
    *result = v8[2];
    *(result + 1) = v9;
    v10 = v8[4];
    v11 = v8[5];
    v12 = v8[7];
    *(result + 4) = v8[6];
    *(result + 5) = v12;
    *(result + 2) = v10;
    *(result + 3) = v11;
    memmove(result + 96, v8 + 2, 0x60uLL);
    outlined init with copy of MeshResource.Instance(v6, v6 + 192);
    return protocol witness for Collection.subscript.read in conformance MeshInstanceCollection;
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.read in conformance MeshInstanceCollection(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 144);
  v1[14] = *(*a1 + 128);
  v1[15] = v2;
  v3 = v1[11];
  v1[16] = v1[10];
  v1[17] = v3;
  v4 = v1[7];
  v1[12] = v1[6];
  v1[13] = v4;
  outlined destroy of MeshResource.Instance((v1 + 12));

  free(v1);
}

double MeshInstanceCollection.init(arrayLiteral:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  MeshInstanceCollection.init(_:)(a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

double protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance MeshInstanceCollection@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  MeshInstanceCollection.init(_:)(a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t MeshSkeletonCollection.init()@<X0>(uint64_t *a1@<X8>)
{
  result = _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE8SkeletonVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MeshSkeletonCollection.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE8SkeletonVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v5 = v4;
  v40 = *(a1 + 16);
  if (v40)
  {
    v6 = 0;
    v7 = (a1 + 48);
    while (v6 < *(a1 + 16))
    {
      v10 = *(v7 - 2);
      v9 = *(v7 - 1);
      v11 = *v7;
      v12 = v5[2];
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      if (v12 && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v9), (v14 & 1) != 0))
      {
        v15 = *(v5[7] + 8 * v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
        }

        if ((v15 & 0x8000000000000000) != 0)
        {
          goto LABEL_31;
        }

        if (v15 >= *(v3 + 16))
        {
          goto LABEL_32;
        }

        v16 = (v3 + 24 * v15);
        v17 = v10;
        v19 = v16[5];
        v18 = v16[6];
        v16[4] = v17;
        v16[5] = v9;
        v16[6] = v11;
      }

      else
      {
        v20 = v11;
        v21 = a1;
        v22 = *(v3 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v10;
        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v9);
        v26 = v5[2];
        v27 = (v25 & 1) == 0;
        v28 = __OFADD__(v26, v27);
        v29 = v26 + v27;
        if (v28)
        {
          goto LABEL_29;
        }

        v30 = v25;
        if (v5[3] >= v29)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v37 = v24;
            specialized _NativeDictionary.copy()();
            v24 = v37;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, isUniquelyReferenced_nonNull_native);
          v24 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v9);
          if ((v30 & 1) != (v31 & 1))
          {
            goto LABEL_33;
          }
        }

        a1 = v21;
        if (v30)
        {
          *(v5[7] + 8 * v24) = v22;
        }

        else
        {
          v5[(v24 >> 6) + 8] |= 1 << v24;
          v32 = (v5[6] + 16 * v24);
          *v32 = v41;
          v32[1] = v9;
          *(v5[7] + 8 * v24) = v22;
          v33 = v5[2];
          v28 = __OFADD__(v33, 1);
          v34 = v33 + 1;
          if (v28)
          {
            goto LABEL_30;
          }

          v5[2] = v34;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1, v3);
        }

        v36 = *(v3 + 16);
        v35 = *(v3 + 24);
        if (v36 >= v35 >> 1)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v3);
        }

        *(v3 + 16) = v36 + 1;
        v8 = (v3 + 24 * v36);
        v8[4] = v41;
        v8[5] = v9;
        v8[6] = v20;
      }

      ++v6;
      v7 += 3;
      if (v40 == v6)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
LABEL_27:

    *a2 = v3;
    a2[1] = v5;
  }

  return result;
}

unint64_t MeshSkeletonCollection.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v6 = v3[1];
  if (!*(v6 + 16) || (v7 = *v4, result = specialized __RawDictionaryStorage.find<A>(_:)(result, a2), (v8 & 1) == 0))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return result;
  }

  v9 = *(*(v6 + 56) + 8 * result);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v9 >= *(v7 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v10 = (v7 + 24 * v9);
  v11 = v10[5];
  v12 = v10[6];
  *a3 = v10[4];
  a3[1] = v11;
  a3[2] = v12;
}