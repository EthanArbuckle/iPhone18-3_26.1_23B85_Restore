uint64_t closure #1 in closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v58 = a8;
  v62 = a7;
  v60 = a6;
  v66 = a3;
  v67 = a5;
  v57 = a4;
  v56 = a2;
  v59 = a11;
  v65 = a12;
  v61 = a10;
  v64 = a9;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v13 - 8);
  v55 = v13;
  v14 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchQoS();
  v51 = *(v53 - 8);
  v16 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 32) = 1701869940;
  v63 = inited + 32;
  *(inited + 16) = xmmword_1C18CF0A0;
  v23 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0xD000000000000010;
  *(inited + 56) = 0x80000001C18EDF80;
  *(inited + 72) = v23;
  *(inited + 80) = 0x73746E65746E6F63;
  *(inited + 88) = 0xEA0000000000664FLL;
  *(inited + 120) = v18;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 96));
  v25 = *(v19 + 16);
  v25(boxed_opaque_existential_1, a1, v18);
  *(inited + 128) = 0x656D614E68746977;
  *(inited + 136) = 0xE800000000000000;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v27 = v66;
  *(inited + 144) = v56;
  *(inited + 152) = v27;
  *(inited + 168) = v26;
  *(inited + 176) = 0xD000000000000015;
  v28 = MEMORY[0x1E69E6370];
  *(inited + 184) = 0x80000001C18ED680;
  *(inited + 192) = v57;
  *(inited + 216) = v28;
  *(inited + 224) = 0x64616F4C74736F70;
  *(inited + 232) = 0xE800000000000000;
  v25(v21, a1, v18);
  v29 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v30 = (v20 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = v60;
  *(v31 + 16) = v67;
  *(v31 + 24) = v32;
  v33 = v31 + v29;
  v34 = v59;
  (*(v19 + 32))(v33, v21, v18);
  *(v31 + v30) = v62;
  v35 = v61;
  v36 = swift_allocObject();
  *(v36 + 16) = partial apply for postLoad #1 (data:) in closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:);
  *(v36 + 24) = v31;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
  *(inited + 240) = thunk for @escaping @callee_guaranteed (@guaranteed [String : Any]) -> (@error @owned Error)partial apply;
  *(inited + 248) = v36;
  *(inited + 264) = v37;
  *(inited + 272) = 0xD000000000000018;
  *(inited + 280) = 0x80000001C18EDE40;
  v38 = v58;
  *(inited + 288) = *(v58 + 49);
  *(inited + 312) = MEMORY[0x1E69E6370];
  *(inited + 320) = 0x694C79726F6D656DLL;
  *(inited + 328) = 0xEB0000000074696DLL;
  v39 = *(v38 + 56);
  LOBYTE(v36) = *(v38 + 64);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  *(inited + 336) = v39;
  *(inited + 344) = v36;
  *(inited + 360) = v40;
  strcpy((inited + 368), "featuresToSkip");
  *(inited + 383) = -18;
  *(inited + 384) = *(v38 + 68);
  *(inited + 408) = &type metadata for Entity.__LoadOptions.LoadableFeatures;
  *(inited + 416) = 0x6C6C69666C7566;
  *(inited + 424) = 0xE700000000000000;
  outlined init with copy of Entity.__LoadOptions(v38, v68);
  v41 = swift_allocObject();
  v42 = v68[3];
  *(v41 + 56) = v68[2];
  *(v41 + 72) = v42;
  *(v41 + 88) = v68[4];
  v43 = v68[1];
  *(v41 + 24) = v68[0];
  *(v41 + 16) = v64;
  v44 = v69;
  *(v41 + 40) = v43;
  *(v41 + 104) = v44;
  *(v41 + 112) = v35;
  *(v41 + 120) = v34;
  v45 = swift_allocObject();
  *(v45 + 16) = partial apply for closure #1 in closure #1 in closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:);
  *(v45 + 24) = v41;
  *(inited + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit6EntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit6EntityCs5Error_pGcMR);
  *(inited + 432) = partial apply for specialized thunk for @escaping @callee_guaranteed (@guaranteed Result<A, Error>) -> ();
  *(inited + 440) = v45;

  v46 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v47 = v65[3];
  v48 = v65[4];
  __swift_project_boxed_opaque_existential_1(v65, v47);
  (*(v48 + 40))(v46, v47, v48);
}

uint64_t _ss6ResultOy10RealityKit6EntityCs5Error_pGIegg_Iegg_AByxsAF_pGRi_zRi0_zlyAEIsegn_Iegg_TR(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(), uint64_t))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  a3(thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply, v6);
}

uint64_t static Entity.loadAnchor(named:in:)(uint64_t a1, unint64_t a2, void *a3)
{
  v57 = a2;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    v40 = a3;
  }

  else
  {
    v40 = [objc_opt_self() mainBundle];
  }

  v10 = a3;
  v11 = specialized static __ServiceLocator.shared.getter();
  v12 = *(*(v11 + 168) + 32);
  swift_beginAccess();
  v13 = *(v11 + 24);
  swift_unownedRetainStrong();
  v14 = *(v13 + 32);

  v15 = v14;

  *v9 = v15;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if (v15)
  {
    if (one-time initialization token for synchronousLoadOptions == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_6:
  v16 = static Entity.synchronousLoadOptions;
  swift_beginAccess();
  v17 = static RKARSystemCore.generateDecimatedMeshes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA06AnchorC0CGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA06AnchorC0CGMR);
  inited = swift_initStackObject();
  swift_weakInit();
  v19 = v57;
  *(inited + 16) = a1;
  *(inited + 24) = v19;
  *(inited + 32) = v16;
  *(inited + 33) = v17;
  *(inited + 34) = 1;
  *(inited + 36) = 4;
  swift_weakAssign();
  swift_beginAccess();
  outlined init with copy of [String : String](v11 + 176, &v55, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  if (!v56)
  {

    outlined destroy of BodyTrackingComponent?(&v55, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
    goto LABEL_13;
  }

  v37[1] = v11;
  v38 = v12;
  outlined init with take of ForceEffectBase(&v55, &v46);
  v20 = a1;
  v21 = v48;
  __swift_project_boxed_opaque_existential_1(&v46, v48);
  v22 = *(*(&v21 + 1) + 16);

  v23 = v40;
  if ((v22(v20, v19, v40, v21, *(&v21 + 1)) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v46);
    v19 = v57;
    a1 = v20;
    v12 = v38;
LABEL_13:
    memset(v51, 0, 25);
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v51[25] = 1;
    v53 = 0;
    v54 = 0;
    v52 = 0;
    LOBYTE(v46) = 2;
    v51[27] = v16 != 2;
    v51[26] = (v16 & 0xFE) != 2;
    v31 = v39;
    v32 = v40;
    __SceneResourceCache.findSceneResource(named:bundle:options:)(a1, v19, v40, &v46, &v44);
    if (v31)
    {
      outlined destroy of __REAssetBundle.LoadOptions(&v46);
    }

    else
    {
      if (v45)
      {
        outlined init with take of ForceEffectBase(&v44, &v55);
        outlined init with copy of __REAssetService(&v55, &v44);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27SceneResourceLoadResultBase_pMd, &_s17RealityFoundation27SceneResourceLoadResultBase_pMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24SceneResourceEntityMaker_pMd, &_s17RealityFoundation24SceneResourceEntityMaker_pMR);
        swift_dynamicCast();
        v33 = v42;
        v34 = v43;
        __swift_project_boxed_opaque_existential_1(v41, v42);
        v12 = (*(v34 + 16))(v33, v34);
        __swift_destroy_boxed_opaque_existential_1(v41);
        specialized Entity.LoadFinisher.setupAfterRealityLoadSync(_:)(v12);

        __swift_destroy_boxed_opaque_existential_1(&v55);
      }

      else
      {
        outlined destroy of BodyTrackingComponent?(&v44, &_s17RealityFoundation27SceneResourceLoadResultBase_pSgMd, &_s17RealityFoundation27SceneResourceLoadResultBase_pSgMR);
        type metadata accessor for Entity.LoadError(0);
        _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
        swift_allocError();
        *v35 = a1;
        v35[1] = v19;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      outlined destroy of __REAssetBundle.LoadOptions(&v46);
    }

    return v12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v24 = swift_initStackObject();
  *(v24 + 32) = 1701869940;
  *(v24 + 16) = xmmword_1C189FFC0;
  v25 = MEMORY[0x1E69E6158];
  *(v24 + 40) = 0xE400000000000000;
  *(v24 + 48) = 0xD000000000000013;
  *(v24 + 56) = 0x80000001C18ED780;
  *(v24 + 72) = v25;
  *(v24 + 80) = 0x64656D616ELL;
  *(v24 + 88) = 0xE500000000000000;
  *(v24 + 96) = v20;
  *(v24 + 104) = v57;
  *(v24 + 120) = v25;
  *(v24 + 128) = 0x656C646E7562;
  *(v24 + 136) = 0xE600000000000000;
  v26 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSBundle, 0x1E696AAE8);
  *(v24 + 144) = v23;
  *(v24 + 168) = v26;
  *(v24 + 176) = 0xD000000000000015;
  *(v24 + 184) = 0x80000001C18ED680;
  v27 = static RKARSystemCore.generateDecimatedMeshes;
  *(v24 + 216) = MEMORY[0x1E69E6370];
  *(v24 + 192) = v27;

  v28 = v23;
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v24);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v29 = v48;
  __swift_project_boxed_opaque_existential_1(&v46, v48);
  v30 = v39;
  (*(*(&v29 + 1) + 32))(v12, v29, *(&v29 + 1));

  if (!v30)
  {
    type metadata accessor for AnchorEntity();
    v12 = swift_dynamicCastClassUnconditional();
    specialized Entity.LoadFinisher.setupAfterUSDLoadSync(_:)(v12, specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:));
  }

  __swift_destroy_boxed_opaque_existential_1(&v46);
  return v12;
}

uint64_t closure #1 in static Entity.loadAnchorAsync(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v37 = a2;
  v38 = a7;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v14 - 8);
  v36 = v14;
  v15 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v33 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v32 = *(v34 - 8);
  v17 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v31 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C18CF0B0;
  *(inited + 32) = 1701869940;
  v21 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0xD000000000000018;
  *(inited + 56) = 0x80000001C18EE020;
  *(inited + 72) = v21;
  *(inited + 80) = 0x64656D616ELL;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = a3;
  *(inited + 104) = a4;
  *(inited + 120) = v21;
  *(inited + 128) = 0x656C646E7562;
  *(inited + 136) = 0xE600000000000000;
  v22 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSBundle, 0x1E696AAE8);
  *(inited + 144) = a5;
  *(inited + 168) = v22;
  *(inited + 176) = 0x64616F4C74736F70;
  *(inited + 184) = 0xE800000000000000;
  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
  *(inited + 224) = 0xD000000000000015;
  *(inited + 192) = specialized thunk for @escaping @callee_guaranteed (@guaranteed [String : Any]) -> (@error @owned Error);
  *(inited + 200) = 0;
  *(inited + 232) = 0x80000001C18ED680;
  swift_beginAccess();
  v23 = MEMORY[0x1E69E6370];
  *(inited + 240) = static RKARSystemCore.generateDecimatedMeshes;
  *(inited + 264) = v23;
  *(inited + 272) = 0x6C6C69666C7566;
  *(inited + 280) = 0xE700000000000000;
  v24 = swift_allocObject();
  v24[2] = v38;
  v24[3] = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  v24[4] = v19;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for closure #1 in closure #1 in static Entity.loadAnchorAsync(named:in:);
  *(v25 + 24) = v24;
  *(inited + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit12AnchorEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit12AnchorEntityCs5Error_pGcMR);
  *(inited + 288) = partial apply for specialized thunk for @escaping @callee_guaranteed (@guaranteed Result<A, Error>) -> ();
  *(inited + 296) = v25;

  v26 = a5;

  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v28 = a8[3];
  v29 = a8[4];
  __swift_project_boxed_opaque_existential_1(a8, v28);
  (*(v29 + 40))(v27, v28, v29);
}

uint64_t closure #2 in static Entity.loadAnchorAsync(named:in:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v36 = a7;
  v37 = a8;
  v42 = a11;
  v34 = a9;
  v35 = a5;
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v38 - 8);
  v16 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v39 = *(v19 - 8);
  v40 = v19;
  v20 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  v25 = v34;
  v26 = v35;
  *(v24 + 24) = a4;
  *(v24 + 32) = v26;
  *(v24 + 40) = a6;
  v28 = v36;
  v27 = v37;
  *(v24 + 48) = v36;
  *(v24 + 56) = v27;
  *(v24 + 64) = v25;
  *(v24 + 72) = a10;
  *(v24 + 80) = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  *(v24 + 88) = v23;
  aBlock[4] = partial apply for doLoadAnchorEntityAsync #1 () in closure #2 in static Entity.loadAnchorAsync(named:in:);
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_814;
  v29 = _Block_copy(aBlock);

  v30 = v28;
  v31 = v27;

  static DispatchQoS.unspecified.getter();
  v43 = MEMORY[0x1E69E7CC0];
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v32 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v22, v18, v29);
  _Block_release(v29);
  (*(v41 + 8))(v18, v32);
  (*(v39 + 8))(v22, v40);
}

uint64_t doLoadAnchorEntityAsync #1 () in closure #2 in static Entity.loadAnchorAsync(named:in:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v36 = a7;
  v37 = a8;
  v43 = a6;
  v39 = a10;
  v38 = a9;
  v14 = a1;
  v44 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v44 - 8);
  v15 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v40 = *(v18 - 8);
  v41 = v18;
  v19 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v58, 0, 25);
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v58[25] = 1;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  LOBYTE(v53) = 1;
  v58[27] = v14 != 2;
  v58[26] = (a1 & 0xFE) != 2;
  __SceneResourceCache.findSceneResource(named:bundle:options:)(a3, a4, a5, &v53, &v46);
  v28 = v36;
  v27 = v37;
  if (v48)
  {
    outlined init with take of ForceEffectBase(&v46, v52);
    outlined init with copy of __REAssetService(v52, v51);
    v29 = swift_allocObject();
    v29[2] = v28;
    outlined init with take of ForceEffectBase(v51, (v29 + 3));
    v30 = v38;
    v29[8] = v27;
    v29[9] = v30;
    v29[10] = v39;
    v49 = partial apply for closure #1 in doLoadAnchorEntityAsync #1 () in closure #2 in static Entity.loadAnchorAsync(named:in:);
    v50 = v29;
    *&v46 = MEMORY[0x1E69E9820];
    *(&v46 + 1) = 1107296256;
    v47 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v48 = &block_descriptor_826;
    v31 = _Block_copy(&v46);

    static DispatchQoS.unspecified.getter();
    v45 = MEMORY[0x1E69E7CC0];
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v32 = v44;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v21, v17, v31);
    _Block_release(v31);
    (*(v42 + 8))(v17, v32);
    (*(v40 + 8))(v21, v41);
    __swift_destroy_boxed_opaque_existential_1(v52);
    outlined destroy of __REAssetBundle.LoadOptions(&v53);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v46, &_s17RealityFoundation27SceneResourceLoadResultBase_pSgMd, &_s17RealityFoundation27SceneResourceLoadResultBase_pSgMR);
    type metadata accessor for Entity.LoadError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
    v34 = swift_allocError();
    *v35 = a3;
    v35[1] = a4;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    outlined destroy of __REAssetBundle.LoadOptions(&v53);
    v22 = swift_allocObject();
    v23 = v39;
    v22[2] = v38;
    v22[3] = v23;
    v22[4] = v34;
    *(&v55 + 1) = partial apply for closure #1 in closure #1 in static AudioFileResource.loadAsync(contentsOf:withName:inputMode:loadingStrategy:shouldLoop:);
    *&v56 = v22;
    v53 = MEMORY[0x1E69E9820];
    *&v54 = 1107296256;
    *(&v54 + 1) = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *&v55 = &block_descriptor_820;
    v24 = _Block_copy(&v53);

    v25 = v34;
    static DispatchQoS.unspecified.getter();
    *&v46 = MEMORY[0x1E69E7CC0];
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v26 = v44;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v21, v17, v24);
    _Block_release(v24);

    (*(v42 + 8))(v17, v26);
    (*(v40 + 8))(v21, v41);
  }
}

_BYTE *static Entity.loadAnchor(contentsOf:withName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  v3 = specialized static Entity.__loadAnchor(contentsOf:withName:downsamplingStrategy:)(a1, a2, a3, v5);
  outlined destroy of BodyTrackingComponent?(v5, &_s10RealityKit22__DownsamplingStrategy_pSgMd, &_s10RealityKit22__DownsamplingStrategy_pSgMR);
  return v3;
}

uint64_t static Entity.__loadAnchorAsync(contentsOf:withName:downsamplingStrategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v104 = a4;
  v109 = a2;
  v118 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v102 - v7;
  Information = type metadata accessor for RealityFileLoadInformation(0);
  v112 = *(Information - 8);
  v9 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](Information);
  v105 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v113 = &v102 - v11;
  v108 = type metadata accessor for URL();
  v107 = *(v108 - 8);
  v12 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v106 = v13;
  v114 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = specialized static __ServiceLocator.shared.getter();
  v20 = *(*(v19 + 168) + 16);
  swift_beginAccess();
  v21 = *(v19 + 24);
  swift_unownedRetainStrong();
  v22 = *(v21 + 32);

  v23 = v20;
  v24 = v22;

  v120 = v19;
  v25 = *(*(v19 + 168) + 32);
  *v18 = v24;
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14);
  v26 = v24;

  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  v28 = *(v15 + 8);
  v27 = v15 + 8;
  v28(v18, v14);
  if (v24)
  {
    v27 = v25;
    v119 = v26;
    v116 = a3;
    v117 = v23;
    type metadata accessor for LoadRequestDependencies();
    a3 = swift_allocObject();
    v29 = MEMORY[0x1E69E7CC0];
    *(a3 + 16) = MEMORY[0x1E69E7CC0];
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(a3 + 24) = v30;
    swift_beginAccess();
    *(a3 + 16) = v29;
    if (one-time initialization token for asynchronousLoadOptions == -1)
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
  v31 = static Entity.asynchronousLoadOptions;
  v32 = v118;
  v33 = URL.absoluteString.getter();
  v35 = v34;
  swift_beginAccess();
  v36 = static RKARSystemCore.generateDecimatedMeshes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA06AnchorC0CGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA06AnchorC0CGMR);
  v37 = swift_allocObject();
  swift_weakInit();
  *(v37 + 16) = v33;
  *(v37 + 24) = v35;
  v103 = v31;
  *(v37 + 32) = v31;
  *(v37 + 33) = v36;
  *(v37 + 34) = 1;
  *(v37 + 36) = 4;
  swift_weakAssign();
  v38 = v120;
  swift_beginAccess();
  outlined init with copy of [String : String](v38 + 176, &v121, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  v39 = a3;
  if (v122)
  {
    v102 = v27;
    outlined init with take of ForceEffectBase(&v121, &v123);
    v41 = *(&v124 + 1);
    v40 = v125;
    __swift_project_boxed_opaque_existential_1(&v123, *(&v124 + 1));
    v42 = *(v40 + 24);

    if (v42(v32, v41, v40))
    {
      v43 = v107;
      v44 = *(v107 + 16);
      v118 = v39;
      v45 = v108;
      v44(v114, v32, v108);
      outlined init with copy of __REAssetService(&v123, &v121);
      v46 = (*(v43 + 80) + 16) & ~*(v43 + 80);
      v47 = (v106 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
      v48 = (v47 + 23) & 0xFFFFFFFFFFFFFFF8;
      v49 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
      v50 = (v49 + 15) & 0xFFFFFFFFFFFFFFF8;
      v51 = swift_allocObject();
      (*(v43 + 32))(v51 + v46, v114, v45);
      v52 = (v51 + v47);
      v53 = v116;
      *v52 = v109;
      v52[1] = v53;
      *(v51 + v48) = v110;
      *(v51 + v49) = v37;
      outlined init with take of ForceEffectBase(&v121, v51 + v50);
      *(v51 + ((v50 + 47) & 0xFFFFFFFFFFFFFFF8)) = v119;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMd, &_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMR);
      v54 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit12AnchorEntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit12AnchorEntityCs5Error_pGSgGMR);
      v55 = swift_allocObject();
      v56 = swift_allocObject();
      *(v56 + 16) = 0;
      *(v55 + 16) = v56;
      *(v55 + 24) = 0;
      *(v55 + 32) = -1;
      *(v54 + 16) = v55;
      v57 = swift_allocObject();
      v57[2] = partial apply for closure #1 in static Entity.__loadAnchorAsync(contentsOf:withName:downsamplingStrategy:);
      v57[3] = v51;
      v58 = v118;
      v57[4] = v55;
      v57[5] = v58;
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit12AnchorEntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit12AnchorEntityCs5Error_pGMR);
      v60 = *(v59 + 48);
      v61 = *(v59 + 52);
      swift_allocObject();

      v62 = Future.init(_:)();

      *(v54 + 24) = v62;
      __swift_destroy_boxed_opaque_existential_1(&v123);
      return v54;
    }

    __swift_destroy_boxed_opaque_existential_1(&v123);
    v63 = v102;
  }

  else
  {

    outlined destroy of BodyTrackingComponent?(&v121, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
    v63 = v27;
  }

  type metadata accessor for RealityFileLoadInformationResolver();
  static RealityFileLoadInformationResolver.resolve(url:)(v32, v8);
  v64 = v112;
  if ((*(v112 + 48))(v8, 1, Information) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v8, &_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
    v65 = v107;
    v66 = v114;
    v67 = v32;
    v68 = v108;
    (*(v107 + 16))(v114, v67, v108);
    v69 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v70 = swift_allocObject();
    (*(v65 + 32))(v70 + v69, v66, v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMd, &_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMR);
    v54 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit12AnchorEntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit12AnchorEntityCs5Error_pGSgGMR);
    v71 = swift_allocObject();
    v72 = swift_allocObject();
    *(v72 + 16) = 0;
    *(v71 + 16) = v72;
    *(v71 + 24) = 0;
    *(v71 + 32) = -1;
    *(v54 + 16) = v71;
    v73 = swift_allocObject();
    v73[2] = partial apply for closure #2 in static Entity.loadBodyTrackedAsync(contentsOf:withName:);
    v73[3] = v70;
    v73[4] = v71;
    v73[5] = v39;
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit12AnchorEntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit12AnchorEntityCs5Error_pGMR);
    v75 = *(v74 + 48);
    v76 = *(v74 + 52);
    swift_allocObject();

    v77 = Future.init(_:)();

    *(v54 + 24) = v77;
  }

  else
  {
    v78 = v8;
    v79 = v113;
    outlined init with take of RealityFileLoadInformation(v78, v113, type metadata accessor for RealityFileLoadInformation);
    outlined init with copy of [String : String](v104, &v123, &_s10RealityKit22__DownsamplingStrategy_pSgMd, &_s10RealityKit22__DownsamplingStrategy_pSgMR);
    v80 = v105;
    outlined init with copy of LoadTrace(v79, v105, type metadata accessor for RealityFileLoadInformation);
    v81 = *(v64 + 80);
    v118 = v39;
    v82 = (v81 + 88) & ~v81;
    v83 = (v9 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
    v84 = v63;
    v85 = (v83 + 15) & 0xFFFFFFFFFFFFFFF8;
    v86 = (v85 + 15) & 0xFFFFFFFFFFFFFFF8;
    v87 = swift_allocObject();
    v88 = v124;
    *(v87 + 16) = v123;
    *(v87 + 32) = v88;
    v89 = v109;
    *(v87 + 48) = v125;
    *(v87 + 56) = v89;
    *(v87 + 64) = v116;
    *(v87 + 72) = v103;
    *(v87 + 80) = v84;
    outlined init with take of RealityFileLoadInformation(v80, v87 + v82, type metadata accessor for RealityFileLoadInformation);
    *(v87 + v83) = v119;
    *(v87 + v85) = v110;
    *(v87 + v86) = v37;
    v90 = v117;
    *(v87 + ((v86 + 15) & 0xFFFFFFFFFFFFFFF8)) = v117;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMd, &_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMR);
    v54 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit12AnchorEntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit12AnchorEntityCs5Error_pGSgGMR);
    v91 = swift_allocObject();
    v92 = swift_allocObject();
    *(v92 + 16) = 0;
    *(v91 + 16) = v92;
    *(v91 + 24) = 0;
    *(v91 + 32) = -1;
    *(v54 + 16) = v91;
    v93 = swift_allocObject();
    v93[2] = partial apply for closure #2 in static Entity.__loadAnchorAsync(contentsOf:withName:downsamplingStrategy:);
    v93[3] = v87;
    v94 = v118;
    v93[4] = v91;
    v93[5] = v94;
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit12AnchorEntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit12AnchorEntityCs5Error_pGMR);
    v96 = *(v95 + 48);
    v97 = *(v95 + 52);
    swift_allocObject();

    v98 = v90;
    v99 = v119;

    v100 = Future.init(_:)();

    *(v54 + 24) = v100;

    outlined destroy of LoadTrace(v113, type metadata accessor for RealityFileLoadInformation);
  }

  return v54;
}

uint64_t closure #1 in static Entity.__loadAnchorAsync(contentsOf:withName:downsamplingStrategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v39 = a2;
  v40 = a7;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v14 - 8);
  v38 = v14;
  v15 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v35 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v34 = *(v36 - 8);
  v17 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v33 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 32) = 1701869940;
  *(inited + 16) = xmmword_1C18CF0B0;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0xD000000000000016;
  v21 = MEMORY[0x1E69E6158];
  *(inited + 56) = 0x80000001C18EDF20;
  *(inited + 72) = v21;
  *(inited + 80) = 0x73746E65746E6F63;
  *(inited + 88) = 0xEA0000000000664FLL;
  v22 = type metadata accessor for URL();
  *(inited + 120) = v22;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 96));
  (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, a3, v22);
  *(inited + 128) = 0x656D614E68746977;
  *(inited + 136) = 0xE800000000000000;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  *(inited + 144) = a4;
  *(inited + 152) = a5;
  *(inited + 168) = v24;
  *(inited + 176) = 0xD000000000000015;
  *(inited + 184) = 0x80000001C18ED680;
  swift_beginAccess();
  v25 = MEMORY[0x1E69E6370];
  *(inited + 192) = static RKARSystemCore.generateDecimatedMeshes;
  *(inited + 216) = v25;
  *(inited + 224) = 0x64616F4C74736F70;
  *(inited + 232) = 0xE800000000000000;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
  *(inited + 240) = specialized thunk for @escaping @callee_guaranteed (@guaranteed [String : Any]) -> (@error @owned Error);
  *(inited + 248) = 0;
  *(inited + 264) = v26;
  *(inited + 272) = 0x6C6C69666C7566;
  *(inited + 280) = 0xE700000000000000;
  v27 = swift_allocObject();
  v27[2] = v40;
  v27[3] = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  v27[4] = v19;
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for closure #1 in closure #1 in static Entity.__loadAnchorAsync(contentsOf:withName:downsamplingStrategy:);
  *(v28 + 24) = v27;
  *(inited + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit12AnchorEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit12AnchorEntityCs5Error_pGcMR);
  *(inited + 288) = partial apply for specialized thunk for @escaping @callee_guaranteed (@guaranteed Result<A, Error>) -> ();
  *(inited + 296) = v28;

  v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v30 = a8[3];
  v31 = a8[4];
  __swift_project_boxed_opaque_existential_1(a8, v30);
  (*(v31 + 40))(v29, v30, v31);
}

uint64_t closure #1 in closure #1 in static Entity.loadAnchorAsync(named:in:)(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  if (a2)
  {
    return a4(a1, 1);
  }

  memset(v6, 0, 24);
  v6[3] = 1;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  specialized Entity.LoadFinisher.setupAfterUSDLoadAsync(_:options:_:)(a1, v6, a4, a5, specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:), specialized Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:));
  return outlined destroy of BodyTrackingComponent?(v6, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
}

uint64_t closure #2 in static Entity.__loadAnchorAsync(contentsOf:withName:downsamplingStrategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v45 = a6;
  v44 = a4;
  v43 = a2;
  v55 = a12;
  v47 = a10;
  v48 = a11;
  v46 = a9;
  v52 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v52 - 8);
  v18 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchQoS();
  v51 = *(v53 - 8);
  v20 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v49 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  Information = type metadata accessor for RealityFileLoadInformation(0);
  v23 = *(Information - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](Information - 8);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;
  outlined init with copy of [String : String](a3, v58, &_s10RealityKit22__DownsamplingStrategy_pSgMd, &_s10RealityKit22__DownsamplingStrategy_pSgMR);
  outlined init with copy of LoadTrace(a8, v25, type metadata accessor for RealityFileLoadInformation);
  v27 = (*(v23 + 80) + 88) & ~*(v23 + 80);
  v28 = (v24 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = v58[1];
  *(v31 + 16) = v58[0];
  *(v31 + 32) = v32;
  v33 = v44;
  *(v31 + 48) = v59;
  *(v31 + 56) = v33;
  *(v31 + 64) = a5;
  *(v31 + 72) = v45;
  *(v31 + 80) = a7;
  outlined init with take of RealityFileLoadInformation(v25, v31 + v27, type metadata accessor for RealityFileLoadInformation);
  v34 = v46;
  *(v31 + v28) = v46;
  v35 = v48;
  *(v31 + v29) = v47;
  *(v31 + v30) = v35;
  v36 = (v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v36 = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  v36[1] = v26;
  aBlock[4] = partial apply for doLoadAnchorEntityFromURLAsync #1 () in closure #2 in static Entity.__loadAnchorAsync(contentsOf:withName:downsamplingStrategy:);
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_573_0;
  v37 = _Block_copy(aBlock);

  v38 = v34;

  v39 = v49;
  static DispatchQoS.unspecified.getter();
  v56 = MEMORY[0x1E69E7CC0];
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v40 = v50;
  v41 = v52;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v39, v40, v37);
  _Block_release(v37);
  (*(v54 + 8))(v40, v41);
  (*(v51 + 8))(v39, v53);
}

uint64_t doLoadAnchorEntityFromURLAsync #1 () in closure #2 in static Entity.__loadAnchorAsync(contentsOf:withName:downsamplingStrategy:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33[0] = a8;
  v33[1] = a5;
  v39 = a7;
  v35 = a11;
  v34 = a10;
  v16 = a4;
  v40 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v40 - 8);
  v17 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v36 = *(v20 - 8);
  v37 = v20;
  v21 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = 256;
  v46 = 0u;
  memset(v47, 0, sizeof(v47));
  v48 = 0;
  v55 = 0;
  v56 = 0;
  v54 = 0;
  v45[0] = 1;
  outlined assign with copy of __DownsamplingStrategy?(a1, &v47[8]);
  v49 = a2;
  v50 = a3;
  v53 = v16 != 2;
  v52 = (a4 & 0xFE) != 2;
  v24 = (a6 + *(type metadata accessor for RealityFileLoadInformation(0) + 20));
  v25 = *v24;
  v26 = v24[1];

  __SceneResourceCache.loadSceneResource(url:sceneName:loadOptions:)(a6, v25, v26, v45, v44);
  outlined init with copy of __REAssetService(v44, v43);
  v27 = swift_allocObject();
  v27[2] = v33[0];
  outlined init with take of ForceEffectBase(v43, (v27 + 3));
  v28 = v34;
  v29 = v35;
  v27[8] = a9;
  v27[9] = v28;
  v27[10] = v29;
  v42[4] = partial apply for closure #1 in doLoadAnchorEntityFromURLAsync #1 () in closure #2 in static Entity.__loadAnchorAsync(contentsOf:withName:downsamplingStrategy:);
  v42[5] = v27;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 1107296256;
  v42[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v42[3] = &block_descriptor_585;
  v30 = _Block_copy(v42);

  static DispatchQoS.unspecified.getter();
  v41 = MEMORY[0x1E69E7CC0];
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v31 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v23, v19, v30);
  _Block_release(v30);
  (*(v38 + 8))(v19, v31);
  (*(v36 + 8))(v23, v37);
  __swift_destroy_boxed_opaque_existential_1(v44);

  return outlined destroy of __REAssetBundle.LoadOptions(v45);
}

uint64_t closure #1 in doLoadAnchorEntityAsync #1 () in closure #2 in static Entity.loadAnchorAsync(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  outlined init with copy of __REAssetService(a2, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27SceneResourceLoadResultBase_pMd, &_s17RealityFoundation27SceneResourceLoadResultBase_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24SceneResourceEntityMaker_pMd, &_s17RealityFoundation24SceneResourceEntityMaker_pMR);
  swift_dynamicCast();
  v7 = v17;
  v8 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v9 = (*(v8 + 16))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v16);
  memset(v11, 0, 24);
  v11[3] = 1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  specialized Entity.LoadFinisher.setupAfterRealityLoadAsync(_:options:_:)(v9, v11, a4, a5, specialized Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:));

  return outlined destroy of BodyTrackingComponent?(v11, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
}

uint64_t _s10RealityKit6EntityC20withUnsafeJointNames33_F26D63620DB78A19432B1EBEC9E8266ALLyxSaySSG_xSPySPys4Int8VGSgGSgKXEtKlFZyt_Tt2g504_s10a4Kit6c26C20withCharacterOptions33_hijklmn39ALLyxxSo08REEntityeF0azKXEKlFZxSPySPys4O19VGSgGSgKXEfU_yt_Tg5SiSo08REEntityS7Optionsaxs5Error_pRi_zRi0_zlyytIsglrzo_Tf1nnc_n(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v28 = a3;
    v7 = v3;
    v27[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v8 = v27[0];
    v9 = (a1 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v12 = String.utf8CString.getter();

      v13 = strdup((v12 + 32));

      v27[0] = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v8 = v27[0];
      }

      *(v8 + 16) = v16;
      *(v8 + 8 * v15 + 32) = v13;
      v9 += 2;
      --v5;
    }

    while (v5);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
    v16 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v16)
    {
      v22 = 1;
      v18 = MEMORY[0x1E69E7CC0];
      goto LABEL_16;
    }

    v28 = a3;
    v7 = v3;
  }

  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  do
  {
    v19 = *(v8 + 8 * v17 + 32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
    }

    v21 = *(v18 + 2);
    v20 = *(v18 + 3);
    if (v21 >= v20 >> 1)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
    }

    ++v17;
    *(v18 + 2) = v21 + 1;
    *&v18[8 * v21 + 32] = v19;
  }

  while (v16 != v17);
  v22 = 0;
  v3 = v7;
  a3 = v28;
LABEL_16:
  LOBYTE(v27[0]) = 0;
  v27[1] = a2;
  v27[2] = v18 + 32;
  a3(v27);
  if (v3)
  {

    if ((v22 & 1) == 0)
    {
      v23 = (v8 + 32);
      do
      {
        v24 = *v23++;
        free(v24);
        --v16;
      }

      while (v16);
    }
  }

  else
  {

    if ((v22 & 1) == 0)
    {
      v25 = 32;
      do
      {
        free(*(v8 + v25));
        v25 += 8;
        --v16;
      }

      while (v16);
    }
  }
}

unint64_t static Entity.loadBodyTracked(named:in:)(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit21BodyTrackingComponentVSgMd, &_s10RealityKit21BodyTrackingComponentVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v50 = &v47 - v8;
  v9 = type metadata accessor for BodyTrackingComponent(0);
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    v58 = a3;
  }

  else
  {
    v58 = [objc_opt_self() mainBundle];
  }

  v17 = a3;
  v18 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v19 = *(v18 + 24);
  swift_unownedRetainStrong();
  v20 = *(v19 + 32);

  v21 = v20;

  *v16 = v21;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12);
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if (v19)
  {
    if (one-time initialization token for synchronousLoadOptions == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_6:
  v22 = static Entity.synchronousLoadOptions;
  swift_beginAccess();
  v23 = static RKARSystemCore.generateDecimatedMeshes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA011BodyTrackedC0CGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA011BodyTrackedC0CGMR);
  inited = swift_initStackObject();
  swift_weakInit();
  *(inited + 16) = a1;
  *(inited + 24) = a2;
  *(inited + 32) = v22;
  *(inited + 33) = v23;
  *(inited + 34) = 256;
  *(inited + 36) = 3;
  swift_weakAssign();
  swift_beginAccess();
  outlined init with copy of [String : String](v18 + 176, &v53, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  if (!v54)
  {

    outlined destroy of BodyTrackingComponent?(&v53, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
LABEL_13:
    type metadata accessor for Entity.LoadError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
    swift_allocError();
    *v39 = a1;
    v39[1] = a2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return a2;
  }

  v51 = v18;
  outlined init with take of ForceEffectBase(&v53, v55);
  v25 = v56;
  v26 = v57;
  __swift_project_boxed_opaque_existential_1(v55, v56);
  v27 = *(v26 + 16);

  v28 = a1;
  v29 = a1;
  v30 = v58;
  if ((v27(v28, a2, v58, v25, v26) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
    a1 = v29;
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v31 = swift_initStackObject();
  *(v31 + 32) = 1701869940;
  *(v31 + 16) = xmmword_1C189FFC0;
  v32 = MEMORY[0x1E69E6158];
  *(v31 + 40) = 0xE400000000000000;
  *(v31 + 48) = 0xD000000000000019;
  *(v31 + 56) = 0x80000001C18ED7A0;
  *(v31 + 72) = v32;
  *(v31 + 80) = 1701667182;
  *(v31 + 88) = 0xE400000000000000;
  *(v31 + 96) = v29;
  *(v31 + 104) = a2;
  *(v31 + 120) = v32;
  *(v31 + 128) = 0x656C646E7562;
  *(v31 + 136) = 0xE600000000000000;
  v33 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSBundle, 0x1E696AAE8);
  *(v31 + 144) = v30;
  *(v31 + 168) = v33;
  *(v31 + 176) = 0xD000000000000015;
  *(v31 + 184) = 0x80000001C18ED680;
  v34 = static RKARSystemCore.generateDecimatedMeshes;
  *(v31 + 216) = MEMORY[0x1E69E6370];
  *(v31 + 192) = v34;

  v35 = v30;
  a2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v31);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v36 = v56;
  v37 = v57;
  __swift_project_boxed_opaque_existential_1(v55, v56);
  v38 = v52;
  (*(v37 + 32))(a2, v36, v37);
  if (v38)
  {
  }

  else
  {

    type metadata accessor for BodyTrackedEntity();
    v41 = swift_dynamicCastClass();
    if (v41)
    {
      a2 = v41;
      v58 = v35;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV10identifier_tMd, &_s10Foundation4UUIDV10identifier_tMR);
      v43 = v49;
      (*(*(v42 - 8) + 56))(v49, 1, 1, v42);
      v44 = v48;
      *(v43 + *(v48 + 20)) = 0;
      v45 = v50;
      outlined init with copy of LoadTrace(v43, v50, type metadata accessor for BodyTrackingComponent);
      (*(v47 + 56))(v45, 0, 1, v44);
      _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA012BodyTrackingD0V_TtB5(v45, 0, a2);
      outlined destroy of BodyTrackingComponent?(v45, &_s10RealityKit21BodyTrackingComponentVSgMd, &_s10RealityKit21BodyTrackingComponentVSgMR);
      outlined destroy of LoadTrace(v43, type metadata accessor for BodyTrackingComponent);
      specialized Entity.LoadFinisher.setupAfterUSDLoadSync(_:)(a2);

      swift_setDeallocating();
      v46 = *(inited + 24);

      swift_weakDestroy();

      __swift_destroy_boxed_opaque_existential_1(v55);
      return a2;
    }

    type metadata accessor for Entity.LoadError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(v55);
  return a2;
}

uint64_t closure #1 in static Entity.loadBodyTrackedAsync(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v38 = a2;
  v39 = a7;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v14 - 8);
  v37 = v14;
  v15 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v34 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchQoS();
  v33 = *(v35 - 8);
  v17 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v32 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 32) = 1701869940;
  *(inited + 16) = xmmword_1C18CF0B0;
  v21 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0xD00000000000001ELL;
  *(inited + 56) = 0x80000001C18EE000;
  *(inited + 72) = v21;
  *(inited + 80) = 1701667182;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = a3;
  *(inited + 104) = a4;
  *(inited + 120) = v21;
  *(inited + 128) = 0x656C646E7562;
  *(inited + 136) = 0xE600000000000000;
  v22 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSBundle, 0x1E696AAE8);
  *(inited + 144) = a5;
  *(inited + 168) = v22;
  *(inited + 176) = 0xD000000000000015;
  *(inited + 184) = 0x80000001C18ED680;
  swift_beginAccess();
  v23 = MEMORY[0x1E69E6370];
  *(inited + 192) = static RKARSystemCore.generateDecimatedMeshes;
  *(inited + 216) = v23;
  *(inited + 224) = 0x64616F4C74736F70;
  *(inited + 232) = 0xE800000000000000;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
  *(inited + 240) = specialized thunk for @escaping @callee_guaranteed (@guaranteed [String : Any]) -> (@error @owned Error);
  *(inited + 248) = 0;
  *(inited + 264) = v24;
  *(inited + 272) = 0x6C6C69666C7566;
  *(inited + 280) = 0xE700000000000000;
  v25 = swift_allocObject();
  v25[2] = v39;
  v25[3] = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  v25[4] = v19;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for closure #1 in closure #1 in static Entity.loadBodyTrackedAsync(named:in:);
  *(v26 + 24) = v25;
  *(inited + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit17BodyTrackedEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit17BodyTrackedEntityCs5Error_pGcMR);
  *(inited + 288) = partial apply for specialized thunk for @escaping @callee_guaranteed (@guaranteed Result<A, Error>) -> ();
  *(inited + 296) = v26;

  v27 = a5;

  v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v29 = a8[3];
  v30 = a8[4];
  __swift_project_boxed_opaque_existential_1(a8, v29);
  (*(v30 + 40))(v28, v29, v30);
}

uint64_t closure #1 in closure #1 in static Entity.loadBodyTrackedAsync(contentsOf:withName:)(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  if (a2)
  {
    return a4(a1, 1);
  }

  memset(v6, 0, 24);
  v6[3] = 1;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  specialized Entity.LoadFinisher.setupAfterUSDLoadAsync(_:options:_:)(a1, v6, a4, a5);
  return outlined destroy of BodyTrackingComponent?(v6, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
}

unint64_t static Entity.loadBodyTracked(contentsOf:withName:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v11 = *(v10 + 24);
  swift_unownedRetainStrong();
  v12 = *(v11 + 32);

  v13 = v12;

  *v9 = v13;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if (v13)
  {
    if (one-time initialization token for synchronousLoadOptions == -1)
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
  v14 = static Entity.synchronousLoadOptions;
  v15 = URL.absoluteString.getter();
  v17 = v16;
  swift_beginAccess();
  v18 = static RKARSystemCore.generateDecimatedMeshes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA011BodyTrackedC0CGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA011BodyTrackedC0CGMR);
  inited = swift_initStackObject();
  swift_weakInit();
  *(inited + 16) = v15;
  *(inited + 24) = v17;
  *(inited + 32) = v14;
  *(inited + 33) = v18;
  *(inited + 34) = 256;
  *(inited + 36) = 3;
  swift_weakAssign();
  swift_beginAccess();
  outlined init with copy of [String : String](v10 + 176, &v39, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  if (!v40)
  {
    outlined destroy of BodyTrackingComponent?(&v39, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
LABEL_10:
    type metadata accessor for Entity.LoadError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
    swift_allocError();
    v32 = v31;
    *v31 = URL.absoluteString.getter();
    v32[1] = v33;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return a1;
  }

  outlined init with take of ForceEffectBase(&v39, v41);
  v20 = v42;
  v21 = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  if (((*(v21 + 24))(a1, v20, v21) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v22 = swift_initStackObject();
  *(v22 + 32) = 1701869940;
  *(v22 + 16) = xmmword_1C189FFC0;
  *(v22 + 40) = 0xE400000000000000;
  *(v22 + 48) = 0xD000000000000016;
  v23 = MEMORY[0x1E69E6158];
  *(v22 + 56) = 0x80000001C18ED7C0;
  *(v22 + 72) = v23;
  *(v22 + 80) = 0x73746E65746E6F63;
  *(v22 + 88) = 0xEA0000000000664FLL;
  v24 = type metadata accessor for URL();
  *(v22 + 120) = v24;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v22 + 96));
  (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, a1, v24);
  *(v22 + 128) = 0x656D614E68746977;
  *(v22 + 136) = 0xE800000000000000;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  *(v22 + 144) = v38;
  *(v22 + 152) = a3;
  *(v22 + 168) = v26;
  *(v22 + 176) = 0xD000000000000015;
  *(v22 + 184) = 0x80000001C18ED680;
  v27 = static RKARSystemCore.generateDecimatedMeshes;
  *(v22 + 216) = MEMORY[0x1E69E6370];
  *(v22 + 192) = v27;

  a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v22);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v28 = v42;
  v29 = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  v30 = v44;
  (*(v29 + 32))(a1, v28, v29);
  if (v30)
  {
  }

  else
  {

    type metadata accessor for BodyTrackedEntity();
    v35 = swift_dynamicCastClass();
    if (v35)
    {
      a1 = v35;
      specialized Entity.LoadFinisher.setupAfterUSDLoadSync(_:)(v35);
      swift_setDeallocating();
      v36 = *(inited + 24);

      swift_weakDestroy();

      __swift_destroy_boxed_opaque_existential_1(v41);
      return a1;
    }

    type metadata accessor for Entity.LoadError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(v41);
  return a1;
}

uint64_t closure #1 in static Entity.loadBodyTrackedAsync(contentsOf:withName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v39 = a2;
  v40 = a7;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v14 - 8);
  v38 = v14;
  v15 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v35 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v34 = *(v36 - 8);
  v17 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v33 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 32) = 1701869940;
  *(inited + 16) = xmmword_1C18CF0B0;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0xD00000000000001BLL;
  v21 = MEMORY[0x1E69E6158];
  *(inited + 56) = 0x80000001C18EDFE0;
  *(inited + 72) = v21;
  *(inited + 80) = 0x73746E65746E6F63;
  *(inited + 88) = 0xEA0000000000664FLL;
  v22 = type metadata accessor for URL();
  *(inited + 120) = v22;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 96));
  (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, a3, v22);
  *(inited + 128) = 0x656D614E68746977;
  *(inited + 136) = 0xE800000000000000;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  *(inited + 144) = a4;
  *(inited + 152) = a5;
  *(inited + 168) = v24;
  *(inited + 176) = 0xD000000000000015;
  *(inited + 184) = 0x80000001C18ED680;
  swift_beginAccess();
  v25 = MEMORY[0x1E69E6370];
  *(inited + 192) = static RKARSystemCore.generateDecimatedMeshes;
  *(inited + 216) = v25;
  *(inited + 224) = 0x64616F4C74736F70;
  *(inited + 232) = 0xE800000000000000;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
  *(inited + 240) = specialized thunk for @escaping @callee_guaranteed (@guaranteed [String : Any]) -> (@error @owned Error);
  *(inited + 248) = 0;
  *(inited + 264) = v26;
  *(inited + 272) = 0x6C6C69666C7566;
  *(inited + 280) = 0xE700000000000000;
  v27 = swift_allocObject();
  v27[2] = v40;
  v27[3] = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  v27[4] = v19;
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for closure #1 in closure #1 in static Entity.loadBodyTrackedAsync(contentsOf:withName:);
  *(v28 + 24) = v27;
  *(inited + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit17BodyTrackedEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit17BodyTrackedEntityCs5Error_pGcMR);
  *(inited + 288) = partial apply for specialized thunk for @escaping @callee_guaranteed (@guaranteed Result<A, Error>) -> ();
  *(inited + 296) = v28;

  v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v30 = a8[3];
  v31 = a8[4];
  __swift_project_boxed_opaque_existential_1(a8, v30);
  (*(v31 + 40))(v29, v30, v31);
}

uint64_t (*static Entity.loadModel(named:in:)(uint64_t a1, uint64_t a2, void *a3))(uint64_t, uint64_t, id, uint64_t, uint64_t)
{
  v53 = a1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  Statistics = type metadata accessor for Entity.LoadStatistics();
  v11 = *(Statistics + 48);
  v12 = *(Statistics + 52);
  v13 = swift_allocObject();
  Date.init()();
  v14 = v13 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
  *v14 = 0;
  v49 = v14;
  *(v14 + 8) = 2;
  *(v13 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_loadRequestStats) = MEMORY[0x1E69E7CC0];
  *(v13 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_async) = 0;
  v15 = (v13 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName);
  *v15 = 0xD00000000000001BLL;
  v15[1] = 0x80000001C18ED7E0;
  if (a3)
  {
    v59 = a3;
  }

  else
  {
    v59 = [objc_opt_self() mainBundle];
  }

  v16 = a3;
  v17 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v18 = *(v17 + 24);
  swift_unownedRetainStrong();
  v19 = *(v18 + 32);

  v20 = v19;

  *v9 = v20;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  v22 = *(v6 + 8);
  v21 = (v6 + 8);
  v22(v9, v5);
  if (v18)
  {
    v52 = v13;
    if (one-time initialization token for synchronousLoadOptions == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_6:
  v23 = static Entity.synchronousLoadOptions;
  swift_beginAccess();
  v24 = static RKARSystemCore.generateDecimatedMeshes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA05ModelC0CGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA05ModelC0CGMR);
  inited = swift_initStackObject();
  swift_weakInit();
  v26 = v53;
  *(inited + 16) = v53;
  *(inited + 24) = a2;
  *(inited + 32) = v23;
  *(inited + 33) = v24;
  *(inited + 34) = 256;
  *(inited + 36) = 2;
  swift_weakAssign();
  swift_beginAccess();
  outlined init with copy of [String : String](v17 + 176, &v54, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  if (!v55)
  {

    outlined destroy of BodyTrackingComponent?(&v54, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
LABEL_12:
    type metadata accessor for Entity.LoadError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
    swift_allocError();
    *v38 = v26;
    v38[1] = a2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return v21;
  }

  v50 = v17;
  outlined init with take of ForceEffectBase(&v54, v56);
  v27 = v57;
  v28 = v58;
  __swift_project_boxed_opaque_existential_1(v56, v57);
  v21 = *(v28 + 16);

  v29 = v59;
  if ((v21(v26, a2, v59, v27, v28) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_1C189FFC0;
  *(v30 + 32) = 1701869940;
  v31 = MEMORY[0x1E69E6158];
  *(v30 + 40) = 0xE400000000000000;
  *(v30 + 48) = 0xD000000000000013;
  *(v30 + 56) = 0x80000001C18ED800;
  *(v30 + 72) = v31;
  *(v30 + 80) = 0x64656D616ELL;
  *(v30 + 88) = 0xE500000000000000;
  *(v30 + 96) = v26;
  *(v30 + 104) = a2;
  *(v30 + 120) = v31;
  *(v30 + 128) = 0x656C646E7562;
  *(v30 + 136) = 0xE600000000000000;
  v32 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSBundle, 0x1E696AAE8);
  *(v30 + 144) = v29;
  *(v30 + 168) = v32;
  *(v30 + 176) = 0xD000000000000015;
  *(v30 + 184) = 0x80000001C18ED680;
  v33 = static RKARSystemCore.generateDecimatedMeshes;
  *(v30 + 216) = MEMORY[0x1E69E6370];
  *(v30 + 192) = v33;

  v34 = v29;
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v30);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v35 = v57;
  v36 = v58;
  __swift_project_boxed_opaque_existential_1(v56, v57);
  v37 = v51;
  (*(v36 + 32))(v21, v35, v36);
  if (v37)
  {

LABEL_16:

    __swift_destroy_boxed_opaque_existential_1(v56);
    return v21;
  }

  type metadata accessor for ModelEntity();
  v39 = swift_dynamicCastClass();
  v40 = v52;
  if (!v39)
  {

    type metadata accessor for Entity.LoadError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_16;
  }

  v21 = v39;
  specialized Entity.LoadFinisher.setupAfterUSDLoadSync(_:)(v39, specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:));
  v42 = v49;
  *v49 = 1;
  *(v42 + 8) = 0;
  Entity.LoadStatistics.log()();

  swift_setDeallocating();
  v43 = OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_start;
  v44 = type metadata accessor for Date();
  (*(*(v44 - 8) + 8))(v40 + v43, v44);
  v45 = *(*v40 + 48);
  v46 = *(*v40 + 52);
  swift_deallocClassInstance();
  swift_setDeallocating();
  v47 = *(inited + 24);

  swift_weakDestroy();

  __swift_destroy_boxed_opaque_existential_1(v56);
  return v21;
}

uint64_t static Entity.__loadModelAsync(named:in:generateDecimatedMesh:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v16 = 0;
  v17 = 0;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v18 = 1;
  v19 = 0;
  v20 = 2;
  v21 = 0;
  outlined assign with take of __DownsamplingStrategy?(v10, v12);
  v14 = 0;
  v15 = a4;
  if (one-time initialization token for asynchronousLoadOptions != -1)
  {
    swift_once();
  }

  LOBYTE(v10[0]) = static Entity.asynchronousLoadOptions;
  v8 = specialized static Entity.loadModelAsync(named:in:options:asyncOptions:)(a1, a2, a3, v12);
  outlined destroy of Entity.__LoadOptions(v12);
  return v8;
}

uint64_t closure #1 in static Entity.loadModelAsync(named:in:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v48 = a8;
  v43[2] = a2;
  v44 = a7;
  v43[1] = a4;
  v14 = a2;
  v52 = a10;
  v47 = a9;
  v46 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v46 - 8);
  v16 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v45 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v49 = *(v18 - 8);
  v50 = v18;
  v19 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 32) = 1701869940;
  *(inited + 16) = xmmword_1C18A1E70;
  v24 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0xD000000000000018;
  *(inited + 56) = 0x80000001C18EDF00;
  *(inited + 72) = v24;
  *(inited + 80) = 0x64656D616ELL;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = a3;
  *(inited + 104) = a4;
  *(inited + 120) = v24;
  *(inited + 128) = 0x656C646E7562;
  *(inited + 136) = 0xE600000000000000;
  v25 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSBundle, 0x1E696AAE8);
  *(inited + 144) = a5;
  *(inited + 168) = v25;
  *(inited + 176) = 0xD000000000000015;
  *(inited + 184) = 0x80000001C18ED680;
  v26 = MEMORY[0x1E69E6370];
  *(inited + 192) = *(a6 + 48);
  *(inited + 216) = v26;
  *(inited + 224) = 0xD000000000000018;
  *(inited + 232) = 0x80000001C18EDE40;
  *(inited + 240) = *(a6 + 49);
  *(inited + 264) = v26;
  *(inited + 272) = 0x694C79726F6D656DLL;
  *(inited + 280) = 0xEB0000000074696DLL;
  v27 = *(a6 + 56);
  LOBYTE(v14) = *(a6 + 64);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  *(inited + 288) = v27;
  *(inited + 296) = v14;
  *(inited + 312) = v28;
  strcpy((inited + 320), "featuresToSkip");
  *(inited + 335) = -18;
  *(inited + 336) = *(a6 + 68);
  *(inited + 360) = &type metadata for Entity.__LoadOptions.LoadableFeatures;
  *(inited + 368) = 0x6C6C69666C7566;
  *(inited + 376) = 0xE700000000000000;
  outlined init with copy of Entity.__LoadOptions(a6, &v55);
  v29 = swift_allocObject();
  v30 = v58;
  *(v29 + 56) = v57;
  *(v29 + 72) = v30;
  *(v29 + 88) = v59;
  v31 = v56;
  *(v29 + 24) = v55;
  *(v29 + 16) = v44;
  v32 = v60;
  *(v29 + 40) = v31;
  *(v29 + 104) = v32;
  *(v29 + 112) = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  *(v29 + 120) = v22;
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for closure #1 in closure #1 in static Entity.loadModelAsync(contentsOf:withName:options:asyncOptions:);
  *(v33 + 24) = v29;
  *(inited + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit11ModelEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit11ModelEntityCs5Error_pGcMR);
  *(inited + 384) = partial apply for specialized thunk for @escaping @callee_guaranteed (@guaranteed Result<A, Error>) -> ();
  *(inited + 392) = v33;

  v34 = a5;

  v35 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  outlined init with copy of __REAssetService(v47, v54);
  v36 = swift_allocObject();
  v37 = v48;
  v36[2] = v48;
  outlined init with take of ForceEffectBase(v54, (v36 + 3));
  v36[8] = v35;
  v36[9] = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  v36[10] = v22;
  *&v57 = partial apply for doLoadModelAsync #1 () in closure #1 in static Entity.loadModelAsync(named:in:options:asyncOptions:);
  *(&v57 + 1) = v36;
  *&v55 = MEMORY[0x1E69E9820];
  *(&v55 + 1) = 1107296256;
  *&v56 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  *(&v56 + 1) = &block_descriptor_541;
  v38 = _Block_copy(&v55);
  v39 = v37;
  static DispatchQoS.unspecified.getter();
  v53 = MEMORY[0x1E69E7CC0];
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v41 = v45;
  v40 = v46;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v21, v41, v38);
  _Block_release(v38);
  (*(v51 + 8))(v41, v40);
  (*(v49 + 8))(v21, v50);
}

uint64_t closure #1 in closure #1 in closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6, void (*a7)(void), uint64_t (*a8)(uint64_t, void (*)(uint64_t, void), uint64_t))
{
  if (a2)
  {
    return a5(a1, 1);
  }

  outlined init with copy of Entity.__LoadOptions(a4, v14);
  specialized Entity.LoadFinisher.setupAfterUSDLoadAsync(_:options:_:)(a1, v14, a5, a6, a7, a8);
  return outlined destroy of BodyTrackingComponent?(v14, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
}

uint64_t doLoadModelAsync #1 () in closure #1 in static Entity.loadModelAsync(named:in:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[1] = a1;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = type metadata accessor for DispatchQoS();
  v14 = *(v21[0] - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v21[0]);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of __REAssetService(a2, v23);
  v18 = swift_allocObject();
  outlined init with take of ForceEffectBase(v23, (v18 + 2));
  v18[7] = a3;
  v18[8] = a4;
  v18[9] = a5;
  aBlock[4] = partial apply for closure #1 in doLoadModelAsync #1 () in closure #1 in static Entity.loadModelAsync(named:in:options:asyncOptions:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_547;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21[2] = MEMORY[0x1E69E7CC0];
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v17, v13, v19);
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v21[0]);
}

uint64_t closure #1 in doLoadModelAsync #1 () in closure #1 in static Entity.loadModelAsync(named:in:options:asyncOptions:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 40))(a2, v3, v4);
}

void closure #2 in static Entity.loadBodyTrackedAsync(named:in:)(void (*a1)(void **), uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Entity.LoadError(0);
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
  v7 = swift_allocError();
  *v8 = a3;
  v8[1] = a4;
  swift_storeEnumTagMultiPayload();
  v9 = v7;
  v10 = 1;

  a1(&v9);
}

unint64_t static Entity.loadModel(contentsOf:withName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Statistics = type metadata accessor for Entity.LoadStatistics();
  v8 = *(Statistics + 48);
  v9 = *(Statistics + 52);
  v10 = swift_allocObject();
  Date.init()();
  v11 = v10 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
  *v11 = 0;
  *(v11 + 8) = 2;
  *(v10 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_loadRequestStats) = MEMORY[0x1E69E7CC0];
  *(v10 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_async) = 0;
  v12 = (v10 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName);
  *v12 = 0xD000000000000026;
  v12[1] = 0x80000001C18ED820;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v20 = 0;
  v21 = 0;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v22 = 1;
  v23 = 0;
  v24 = 2;
  outlined assign with take of __DownsamplingStrategy?(v15, v17);
  v19 = 0;
  v25 = v10;

  v13 = specialized static Entity.loadModel(contentsOf:withName:loadOptions:)(a1, a2, a3, v17);
  if (!v3)
  {
    Entity.LoadStatistics.log()();
  }

  outlined destroy of Entity.__LoadOptions(v17);
  return v13;
}

unint64_t static Entity.loadModel(contentsOf:withName:reorderVertexCaching:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v15 = 0;
  v16 = 0;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v17 = 1;
  v18 = 0;
  v20 = 0;
  outlined assign with take of __DownsamplingStrategy?(v10, v12);
  v14 = 0;
  v19 = a4;
  v8 = specialized static Entity.loadModel(contentsOf:withName:loadOptions:)(a1, a2, a3, v12);
  outlined destroy of Entity.__LoadOptions(v12);
  return v8;
}

uint64_t static Entity.loadModelAsync(contentsOf:withName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = static RKARSystemCore.generateDecimatedMeshes;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v15 = 0;
  v16 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v17 = 1;
  v18 = 0;
  v19 = 2;
  v20 = 0;
  outlined assign with take of __DownsamplingStrategy?(v9, v11);
  v13 = 0;
  v14 = v6;
  if (one-time initialization token for asynchronousLoadOptions != -1)
  {
    swift_once();
  }

  LOBYTE(v9[0]) = static Entity.asynchronousLoadOptions;
  v7 = specialized static Entity.loadModelAsync(contentsOf:withName:options:asyncOptions:)(a1, a2, a3, v11, v9);
  outlined destroy of Entity.__LoadOptions(v11);
  return v7;
}

uint64_t static Entity.__loadModelAsync(contentsOf:withName:generateDecimatedMesh:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v16 = 0;
  v17 = 0;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v18 = 1;
  v19 = 0;
  v20 = 2;
  v21 = 0;
  outlined assign with take of __DownsamplingStrategy?(v10, v12);
  v14 = 0;
  v15 = a4;
  if (one-time initialization token for asynchronousLoadOptions != -1)
  {
    swift_once();
  }

  LOBYTE(v10[0]) = static Entity.asynchronousLoadOptions;
  v8 = specialized static Entity.loadModelAsync(contentsOf:withName:options:asyncOptions:)(a1, a2, a3, v12, v10);
  outlined destroy of Entity.__LoadOptions(v12);
  return v8;
}

uint64_t closure #1 in static Entity.loadModelAsync(contentsOf:withName:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v45 = a2;
  v46 = a7;
  v44 = a5;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v14 - 8);
  v43 = v14;
  v15 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v40 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v39 = *(v41 - 8);
  v17 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v38[1] = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C18A1E70;
  *(inited + 32) = 1701869940;
  v21 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0xD000000000000015;
  *(inited + 56) = 0x80000001C18EDEC0;
  *(inited + 72) = v21;
  *(inited + 80) = 0x73746E65746E6F63;
  *(inited + 88) = 0xEA0000000000664FLL;
  v22 = type metadata accessor for URL();
  *(inited + 120) = v22;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 96));
  (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, a3, v22);
  *(inited + 128) = 0x656D614E68746977;
  *(inited + 136) = 0xE800000000000000;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v25 = v44;
  *(inited + 144) = a4;
  *(inited + 152) = v25;
  *(inited + 168) = v24;
  *(inited + 176) = 0xD000000000000015;
  *(inited + 184) = 0x80000001C18ED680;
  v26 = MEMORY[0x1E69E6370];
  *(inited + 192) = *(a6 + 48);
  *(inited + 216) = v26;
  *(inited + 224) = 0xD000000000000018;
  *(inited + 232) = 0x80000001C18EDE40;
  *(inited + 240) = *(a6 + 49);
  *(inited + 264) = v26;
  *(inited + 272) = 0x694C79726F6D656DLL;
  *(inited + 280) = 0xEB0000000074696DLL;
  v27 = *(a6 + 56);
  LOBYTE(a4) = *(a6 + 64);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  *(inited + 288) = v27;
  *(inited + 296) = a4;
  *(inited + 312) = v28;
  strcpy((inited + 320), "featuresToSkip");
  *(inited + 335) = -18;
  *(inited + 336) = *(a6 + 68);
  *(inited + 360) = &type metadata for Entity.__LoadOptions.LoadableFeatures;
  *(inited + 368) = 0x6C6C69666C7566;
  *(inited + 376) = 0xE700000000000000;
  outlined init with copy of Entity.__LoadOptions(a6, v47);
  v29 = swift_allocObject();
  v30 = v47[3];
  *(v29 + 56) = v47[2];
  *(v29 + 72) = v30;
  *(v29 + 88) = v47[4];
  v31 = v47[1];
  *(v29 + 24) = v47[0];
  *(v29 + 16) = v46;
  v32 = v48;
  *(v29 + 40) = v31;
  *(v29 + 104) = v32;
  *(v29 + 112) = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  *(v29 + 120) = v19;
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for closure #1 in closure #1 in static Entity.loadModelAsync(contentsOf:withName:options:asyncOptions:);
  *(v33 + 24) = v29;
  *(inited + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit11ModelEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit11ModelEntityCs5Error_pGcMR);
  *(inited + 384) = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Result<ModelEntity, Error>) -> ();
  *(inited + 392) = v33;

  v34 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v35 = a8[3];
  v36 = a8[4];
  __swift_project_boxed_opaque_existential_1(a8, v35);
  (*(v36 + 40))(v34, v35, v36);
}

void closure #3 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(void (*a1)(void **))
{
  type metadata accessor for Entity.LoadError(0);
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
  v2 = swift_allocError();
  v4 = v3;
  *v3 = URL.absoluteString.getter();
  v4[1] = v5;
  swift_storeEnumTagMultiPayload();
  v6 = v2;
  v7 = 1;
  a1(&v6);
}

uint64_t static Entity.__loadAllAsync(contentsOf:)(uint64_t a1)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v1 = specialized static Entity.__loadAllAsync(contentsOf:downsamplingStrategy:)(a1, v3);
  outlined destroy of BodyTrackingComponent?(v3, &_s10RealityKit22__DownsamplingStrategy_pSgMd, &_s10RealityKit22__DownsamplingStrategy_pSgMR);
  return v1;
}

uint64_t closure #1 in static Entity.__loadAllAsync(contentsOf:downsamplingStrategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v40 = a7;
  v33 = a5;
  v34 = a6;
  v32 = a2;
  v37 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v37 - 8);
  v11 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v35 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchQoS();
  v36 = *(v38 - 8);
  v13 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  outlined init with copy of [String : String](a3, v43, &_s10RealityKit22__DownsamplingStrategy_pSgMd, &_s10RealityKit22__DownsamplingStrategy_pSgMR);
  (*(v17 + 16))(v19, v33, v16);
  v21 = (*(v17 + 80) + 64) & ~*(v17 + 80);
  v22 = (v18 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = v43[1];
  *(v23 + 16) = v43[0];
  *(v23 + 32) = v24;
  *(v23 + 48) = v44;
  *(v23 + 56) = a4;
  (*(v17 + 32))(v23 + v21, v19, v16);
  v25 = v34;
  *(v23 + v22) = v34;
  v26 = (v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v26 = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  v26[1] = v20;
  aBlock[4] = partial apply for doLoadAllEntitiesFromURLAsync #1 () in closure #1 in static Entity.__loadAllAsync(contentsOf:downsamplingStrategy:);
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_468;
  v27 = _Block_copy(aBlock);

  v28 = v25;
  static DispatchQoS.unspecified.getter();
  v41 = MEMORY[0x1E69E7CC0];
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v29 = v35;
  v30 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v15, v29, v27);
  _Block_release(v27);
  (*(v39 + 8))(v29, v30);
  (*(v36 + 8))(v15, v38);
}

uint64_t doLoadAllEntitiesFromURLAsync #1 () in closure #1 in static Entity.__loadAllAsync(contentsOf:downsamplingStrategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a6;
  v25 = a5;
  v29 = a4;
  v31 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v31 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v27 = *(v28 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v35 = 0u;
  memset(v36, 0, sizeof(v36));
  v37 = 1;
  v38 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  LOBYTE(aBlock) = 1;
  outlined assign with copy of __DownsamplingStrategy?(a1, &v36[8]);
  v17 = __SceneResourceCache.loadSceneResources(url:options:)(a3, &aBlock);
  (*(v15 + 16))(&v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v14);
  v18 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v15 + 32))(v19 + v18, &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  v20 = (v19 + ((v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v26;
  *v20 = v25;
  v20[1] = v21;
  v33[4] = partial apply for closure #1 in doLoadAllEntitiesFromURLAsync #1 () in closure #1 in static Entity.__loadAllAsync(contentsOf:downsamplingStrategy:);
  v33[5] = v19;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 1107296256;
  v33[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v33[3] = &block_descriptor_480;
  v22 = _Block_copy(v33);

  static DispatchQoS.unspecified.getter();
  v32 = MEMORY[0x1E69E7CC0];
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v23 = v31;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v13, v10, v22);
  _Block_release(v22);
  (*(v30 + 8))(v10, v23);
  (*(v27 + 8))(v13, v28);

  return outlined destroy of __REAssetBundle.LoadOptions(&aBlock);
}

void closure #1 in doLoadAllEntitiesFromURLAsync #1 () in closure #1 in static Entity.__loadAllAsync(contentsOf:downsamplingStrategy:)(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v80[2] = a4;
  v81 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v80 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v109 = v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v99 = v80 - v15;
  v85 = type metadata accessor for __SceneResourceCache.ImportedScene(0);
  v84 = *(v85 - 8);
  v16 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v18 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for DispatchPredicate();
  v19 = *(v92 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v91 = (v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(a1 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  if (!v22)
  {
    goto LABEL_38;
  }

  v82 = v18;
  v80[1] = a2;
  v113 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();
  v105 = v10;
  v24 = 0;
  v25 = 0;
  v90 = a1 + 32;
  v89 = *MEMORY[0x1E69E8020];
  v88 = (v19 + 104);
  v87 = (v19 + 8);
  v103 = (v11 + 48);
  v98 = (v11 + 32);
  v104 = (v11 + 8);
  v83 = (v11 + 16);
  v101 = v9;
  v86 = v22;
  while (1)
  {
    v27 = (v90 + 40 * v24);
    v28 = *v27;
    v29 = v27[1];
    v31 = v27[2];
    v30 = v27[3];

    swift_bridgeObjectRetain_n();
    v102 = v30;

    v32 = __SceneResource.makeRootEntity(withAnchoringComponent:hasAnchoringComponent:preferAnchorEntity:)(0, v111, 0);
    if (v25)
    {

      swift_bridgeObjectRelease_n();

      v79 = v25;
      v81(v25, 1);

      return;
    }

    *&v111[0] = v29;
    *(&v111[0] + 1) = v31;
    v33 = v32;
    swift_bridgeObjectRetain_n();
    v34 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    swift_beginAccess();
    v97 = v33;
    objc_setAssociatedObject(v33, &static __SceneResourceLoadResultLoadContext.loadContextForEntityKey, v34, 0x301);
    swift_endAccess();
    v108 = v31;
    swift_bridgeObjectRelease_n();
    swift_unknownObjectRelease();
    v35 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    v36 = *(v35 + 24);
    swift_unownedRetainStrong();
    v37 = *(v36 + 32);

    v38 = v37;

    v39 = v91;
    *v91 = v38;
    v40 = v92;
    (*v88)(v39, v89, v92);
    LOBYTE(v36) = _dispatchPreconditionTest(_:)();
    (*v87)(v39, v40);
    if ((v36 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v41 = static __RKSceneAssetLookupTable.shared;
    v42 = outlined init with copy of __SceneResourceCache.Entry.EntryHolder(v102 + 16, v111);
    v96 = v35;
    if ((v112 & 1) == 0)
    {
      break;
    }

    v43 = *(*&v111[0] + 16);
    if (v43)
    {
      v93 = v28;
      v94 = v24;
      v95 = 0;
      v107 = *(v85 + 24);
      v44 = (*(v84 + 80) + 32) & ~*(v84 + 80);
      v100 = *&v111[0];
      v45 = *&v111[0] + v44;
      v106 = *(v84 + 72);
      v46 = v109;
      v47 = v83;
      v48 = v104;
      v49 = v82;
      v50 = v105;
      do
      {
        outlined init with copy of LoadTrace(v45, v49, type metadata accessor for __SceneResourceCache.ImportedScene);
        v51 = *(v49 + v107);
        (*v47)(v46, v49, v50);

        outlined destroy of LoadTrace(v49, type metadata accessor for __SceneResourceCache.ImportedScene);
        v52 = v41[2];
        v53 = v41;
        isa = UUID._bridgeToObjectiveC()().super.isa;
        [v52 setObject:v51 forKey:isa];

        v46 = v109;
        v41 = v53;
        (*v48)(v46, v50);
        v45 += v106;
        --v43;
      }

      while (v43);

      v9 = v101;
      v25 = v95;
      v22 = v86;
      v24 = v94;
    }

    else
    {
    }

LABEL_34:
    v76 = v97;
    objc_setAssociatedObject(v97, "RealityKit.SceneResourceCacheEntry", v102, 0x301);

    v77 = type metadata accessor for Entity();
    v78 = v76[2];
    RENetworkComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    specialized static Entity.enumerateCore(entity:recursive:block:)(v76, 1, v77);
    static UuidRemapHelper.remapIdentifiersAndInteractions(root:)(v76);
    if (REShadowsGetEnableDefaultShadows())
    {
      MEMORY[0x1C68FCEC0](v76[2], 1);
    }

    ++v24;

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v26 = v113[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (v24 == v22)
    {
      v23 = v113;
LABEL_38:
      URL.absoluteString.getter();
      String.utf8CString.getter();

      REMetricLoadFile();

      v81(v23, 0);

      return;
    }
  }

  v106 = v41;
  v93 = v28;
  v94 = v24;
  v110[0] = v111[0];
  v110[1] = v111[1];
  v110[2] = v111[2];
  v110[3] = v111[3];
  MEMORY[0x1EEE9AC00](v42);
  v80[-2] = v110;
  v56 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in __REAssetBundle.getSceneDescriptors(), &v80[-4], v55);
  v57 = v56;
  v95 = 0;
  if (!(v56 >> 62))
  {
    v58 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v58)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

  v58 = __CocoaSet.count.getter();
  if (!v58)
  {
LABEL_33:

    outlined destroy of __REAssetBundle(v110);
    v25 = v95;
    v22 = v86;
    v24 = v94;
    goto LABEL_34;
  }

LABEL_15:
  v59 = 0;
  v60 = v57 & 0xC000000000000001;
  v107 = v57 & 0xFFFFFFFFFFFFFF8;
  v100 = v57;
  while (v60)
  {
    v61 = MEMORY[0x1C68F41F0](v59, v57);
    v62 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      goto LABEL_39;
    }

LABEL_21:
    v63 = __REAssetBundle.sceneAsset(for:)(v61);
    if (!v63)
    {
      goto LABEL_42;
    }

    v64 = v63;
    v65 = *(v61 + 16);
    RESceneDescriptorGetSceneIdentifier();
    v66 = String.init(cString:)();
    v68 = HIBYTE(v67) & 0xF;
    if ((v67 & 0x2000000000000000) == 0)
    {
      v68 = v66 & 0xFFFFFFFFFFFFLL;
    }

    if (v68)
    {
      UUID.init(uuidString:)();

      v69 = v105;
      if ((*v103)(v9, 1, v105) == 1)
      {

        outlined destroy of BodyTrackingComponent?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

      else
      {
        v70 = v60;
        v71 = v58;
        v72 = v99;
        (*v98)(v99, v9, v69);
        v73 = v106[2];
        v74 = UUID._bridgeToObjectiveC()().super.isa;
        [v73 setObject:v64 forKey:v74];

        v9 = v101;
        v75 = v72;
        v58 = v71;
        v60 = v70;
        v57 = v100;
        (*v104)(v75, v69);
      }
    }

    else
    {
    }

    ++v59;
    if (v62 == v58)
    {
      goto LABEL_33;
    }
  }

  if (v59 >= *(v107 + 16))
  {
    goto LABEL_40;
  }

  v61 = *(v57 + 8 * v59 + 32);

  v62 = v59 + 1;
  if (!__OFADD__(v59, 1))
  {
    goto LABEL_21;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

uint64_t SceneResourceLoadResult.makeEntity()()
{
  v2 = v1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v21[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v0;
  v9 = v0[1];
  v11 = v0[2];
  v10 = v0[3];

  v12 = v2;
  v13 = __SceneResource.makeRootEntity(withAnchoringComponent:hasAnchoringComponent:preferAnchorEntity:)(0, v21, 0);
  if (v12)
  {

    return v13;
  }

  v21[0] = v9;
  v21[1] = v11;
  swift_bridgeObjectRetain_n();
  v14 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  swift_beginAccess();
  objc_setAssociatedObject(v13, &static __SceneResourceLoadResultLoadContext.loadContextForEntityKey, v14, 0x301);
  swift_endAccess();
  swift_bridgeObjectRelease_n();
  swift_unknownObjectRelease();
  v15 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v16 = *(v15 + 24);
  swift_unownedRetainStrong();
  v17 = *(v16 + 32);

  v18 = v17;

  *v7 = v18;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if (v16)
  {
    __SceneResourceCache.Entry.registerWithSceneLookupTable()();
    objc_setAssociatedObject(v13, "RealityKit.SceneResourceCacheEntry", v10, 0x301);

    return v13;
  }

  __break(1u);
  return result;
}

uint64_t static Entity.generateMeshForStatic3DText(root:generatedTextAssets:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = v2;
    v5 = result;
    v6 = *(result + 16);

    REStatic3DTextComponentGetComponentType();
    if (!REEntityGetComponentByClass())
    {
      goto LABEL_4;
    }

    REMeshComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    if (REMeshComponentGetMesh())
    {
      goto LABEL_4;
    }

    if (!REStatic3DTextComponentGetText())
    {
      goto LABEL_4;
    }

    if (!REStatic3DTextComponentGetFont())
    {
      goto LABEL_4;
    }

    v19 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v19 + 120, v25);
    v20 = v26;
    v21 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    (*(v21 + 32))(v20, v21);
    REStatic3DTextComponentGetFontSize();
    REStatic3DTextComponentGetExtrusionDepth();
    REStatic3DTextComponentGetSegmentDensity();
    REStatic3DTextComponentGetTextFrameOrigin();
    REStatic3DTextComponentGetTextFrameSize();
    REStatic3DTextComponentGetLineBreakMode();
    REStatic3DTextComponentGetTextAlignment();
    REStatic3DTextComponentGetVerticalTextAlignment();
    v6 = REAssetManagerMeshMemoryAssetCreate3dText();
    __swift_destroy_boxed_opaque_existential_1(v25);
    if (!v6)
    {
      goto LABEL_4;
    }

    REAssetSetNetworkSharingMode();
    REMeshComponentSetMesh();
    RERelease();
    if (!a2)
    {
      goto LABEL_4;
    }

    swift_beginAccess();
    v8 = *(a2 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_31;
    }

    while (1)
    {
      v24 = *(v8 + 2);
      v23 = *(v8 + 3);
      if (v24 >= v23 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v8);
      }

      *(v8 + 2) = v24 + 1;
      *&v8[8 * v24 + 32] = v6;
      *(a2 + 16) = v8;
      swift_endAccess();

LABEL_4:

      v7 = *(v5 + 16);
      if (REEntityGetChildCount() < 1)
      {
      }

      v8 = 0;
      while (1)
      {
        v9 = *(v5 + 16);
        if (v8 >= REEntityGetChildCount())
        {
          break;
        }

        v10 = *(v5 + 16);
        Child = REEntityGetChild();
        if (!Child)
        {
          goto LABEL_30;
        }

        v12 = Child;
        v13 = REEntityGetSwiftObject();
        if (v13)
        {
          v6 = v13;
          type metadata accessor for Entity();
          swift_dynamicCastClassUnconditional();
        }

        else
        {
          if (REEntityIsBeingDestroyed())
          {
            goto LABEL_29;
          }

          v14 = specialized static Entity.entityInfoType(_:)();
          if (v14)
          {
            v15 = (*(v14 + 232))();
            v6 = *(v15 + 16);

            MEMORY[0x1C68F9740](v6, 0);
            *(v15 + 16) = v12;
            MEMORY[0x1C68F9740](v12, v15);
          }

          else
          {
            makeEntity(for:)(v12);
          }
        }

        v16 = *(v5 + 16);
        if (v8 >= REEntityGetChildCount())
        {
          goto LABEL_28;
        }

        ++v8;

        v6 = v3;
        static Entity.generateMeshForStatic3DText(root:generatedTextAssets:)(v17, a2);

        v18 = *(v5 + 16);
        if (v8 >= REEntityGetChildCount())
        {
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      *(a2 + 16) = v8;
    }
  }

  return result;
}

uint64_t static Entity.enumerateReferences(root:)(uint64_t a1)
{
  v2 = v1;
  v8 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  REReferenceComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {

    MEMORY[0x1C68F3650](v5);
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v7 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  specialized static Entity.enumerateCore(entity:recursive:block:)(a1, 1, v2, &v8);
  return v8;
}

void specialized static Entity.enumerateCore(entity:recursive:block:)(uint64_t a1, char a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  ChildCount = REEntityGetChildCount();
  if ((ChildCount - 0x1000000000000000) >> 61 == 7)
  {
    v7 = ChildCount;
    v8 = swift_slowAlloc();
    REEntityGetChildren();
    if ((v7 & 0x8000000000000000) == 0)
    {
      if (v7)
      {
        v9 = v8;
        do
        {
          v11 = *v9++;
          v10 = v11;
          if (!v11)
          {
            goto LABEL_22;
          }

          if (REEntityGetSwiftObject())
          {
            type metadata accessor for Entity();
            v12 = swift_dynamicCastClassUnconditional();
          }

          else
          {
            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
              goto LABEL_20;
            }

            v14 = specialized static Entity.entityInfoType(_:)();
            if (v14)
            {
              v13 = (*(v14 + 232))();
              v15 = *(v13 + 16);

              MEMORY[0x1C68F9740](v15, 0);
              *(v13 + 16) = v10;
              MEMORY[0x1C68F9740](v10, v13);

              goto LABEL_13;
            }

            v12 = makeEntity(for:)(v10);
          }

          v13 = v12;
LABEL_13:
          RENetworkComponentGetComponentType();
          REEntityGetOrAddComponentByClass();
          if (a2)
          {
            specialized static Entity.enumerateCore(entity:recursive:block:)(v13, 1, a3);
          }

          --v7;
        }

        while (v7);
      }

LABEL_23:
      JUMPOUT(0x1C6902A30);
    }
  }

  else
  {
LABEL_20:
    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
  goto LABEL_23;
}

void specialized static Entity.enumerateCore(entity:recursive:block:)(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 16);
  ChildCount = REEntityGetChildCount();
  if ((ChildCount - 0x1000000000000000) >> 61 == 7)
  {
    v9 = ChildCount;
    v10 = swift_slowAlloc();
    REEntityGetChildren();
    if ((v9 & 0x8000000000000000) == 0)
    {
      if (v9)
      {
        v11 = v10;
        do
        {
          v13 = *v11++;
          v12 = v13;
          if (!v13)
          {
            goto LABEL_26;
          }

          if (REEntityGetSwiftObject())
          {
            type metadata accessor for Entity();
            v14 = swift_dynamicCastClassUnconditional();
          }

          else
          {
            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
              goto LABEL_24;
            }

            v16 = specialized static Entity.entityInfoType(_:)();
            if (v16)
            {
              v15 = (*(v16 + 232))();
              v17 = *(v15 + 16);

              MEMORY[0x1C68F9740](v17, 0);
              *(v15 + 16) = v12;
              MEMORY[0x1C68F9740](v12, v15);

              goto LABEL_13;
            }

            v14 = makeEntity(for:)(v12);
          }

          v15 = v14;
LABEL_13:
          v18 = *(v15 + 16);
          REReferenceComponentGetComponentType();
          if (REEntityGetComponentByClass())
          {

            MEMORY[0x1C68F3650](v19);
            if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v20 = *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }

          if (a2)
          {
            specialized static Entity.enumerateCore(entity:recursive:block:)(v15, 1, a3, a4);
          }

          --v9;
        }

        while (v9);
      }

LABEL_27:
      JUMPOUT(0x1C6902A30);
    }
  }

  else
  {
LABEL_24:
    __break(1u);
  }

  __break(1u);
LABEL_26:
  __break(1u);
  goto LABEL_27;
}

uint64_t closure #1 in static Entity.loadReferences(root:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[13] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in static Entity.loadReferences(root:), v6, v5);
}

uint64_t closure #1 in static Entity.loadReferences(root:)()
{
  v38 = v0;
  v1 = v0[13];
  v2 = v0[10];

  if (v2 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v4 = 0;
    v27 = v0 + 2;
    v28 = v0;
    v5 = v2 & 0xC000000000000001;
    v31 = v0[10] + 32;
    v32 = v2 & 0xFFFFFFFFFFFFFF8;
    v29 = v2 & 0xC000000000000001;
    v30 = i;
    while (v5)
    {
      v6 = MEMORY[0x1C68F41F0](v4, v0[10]);
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_25;
      }

LABEL_12:
      v2 = *(v6 + 16);

      if (REEntityGetComponent())
      {
        ReferenceComponent.init(from:)(v35);

        v2 = v36;
        v8 = v37;

        if (v8 == 1)
        {
        }

        else
        {
          v9 = v0[12];
          v34 = v0[11];
          v10 = type metadata accessor for TaskPriority();
          v11 = *(v10 - 8);
          (*(v11 + 56))(v9, 1, 1, v10);
          v12 = swift_allocObject();
          v12[2] = 0;
          v13 = v12 + 2;
          v12[3] = 0;
          v12[4] = v6;
          outlined init with copy of [String : String](v9, v34, &_sScPSgMd, &_sScPSgMR);
          v33 = v11;
          LODWORD(v11) = (*(v11 + 48))(v34, 1, v10);

          v14 = v0[11];
          if (v11 == 1)
          {
            outlined destroy of BodyTrackingComponent?(v0[11], &_sScPSgMd, &_sScPSgMR);
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(v33 + 8))(v14, v10);
          }

          v0 = v28;
          if (*v13)
          {
            v15 = v12[3];
            v16 = *v13;
            swift_getObjectType();
            swift_unknownObjectRetain();
            v17 = dispatch thunk of Actor.unownedExecutor.getter();
            v19 = v18;
            swift_unknownObjectRelease();
          }

          else
          {
            v17 = 0;
            v19 = 0;
          }

          v20 = *v28[9];

          if (v19 | v17)
          {
            v21 = v27;
            *v27 = 0;
            v27[1] = 0;
            v28[4] = v17;
            v28[5] = v19;
          }

          else
          {
            v21 = 0;
          }

          i = v30;
          v2 = v28[12];
          v28[6] = 1;
          v28[7] = v21;
          v28[8] = v20;
          swift_task_create();

          outlined destroy of BodyTrackingComponent?(v2, &_sScPSgMd, &_sScPSgMR);
          v5 = v29;
        }
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_30;
      }
    }

    if (v4 >= *(v32 + 16))
    {
      goto LABEL_26;
    }

    v6 = *(v31 + 8 * v4);

    v7 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_12;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    if (v0[10] < 0)
    {
      v22 = v0[10];
    }
  }

LABEL_30:
  v24 = v0[11];
  v23 = v0[12];

  v25 = v0[1];

  return v25();
}

uint64_t closure #1 in closure #1 in static Entity.loadReferences(root:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return static ReferenceComponent.loadReference(at:)(a4);
}

uint64_t fetchTapTriggerTargetIdentifiers #1 (triggerSpecification:) in static Entity.addInputTargetComponentsAndCollisionShapesToTapTriggerTargets(for:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v15 = type metadata accessor for __RKEntityTriggerSpecification(0);
  v28 = *(v15 - 8);
  v16 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v28 - v20;
  outlined init with copy of LoadTrace(a1, &v28 - v20, type metadata accessor for __RKEntityTriggerSpecification);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v5 + 32))(v14, v21, v4);
    (*(v5 + 16))(v8, v14, v4);
    swift_beginAccess();
    specialized Set._Variant.insert(_:)(v11, v8);
    swift_endAccess();
    v27 = *(v5 + 8);
    v27(v11, v4);
    return (v27)(v14, v4);
  }

  else if (EnumCaseMultiPayload == 5)
  {
    v23 = *(*v21 + 16);
    if (v23)
    {
      v24 = *v21 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
      v25 = *(v28 + 72);
      do
      {
        outlined init with copy of LoadTrace(v24, v18, type metadata accessor for __RKEntityTriggerSpecification);
        fetchTapTriggerTargetIdentifiers #1 (triggerSpecification:) in static Entity.addInputTargetComponentsAndCollisionShapesToTapTriggerTargets(for:)(v18, a2);
        outlined destroy of LoadTrace(v18, type metadata accessor for __RKEntityTriggerSpecification);
        v24 += v25;
        --v23;
      }

      while (v23);
    }
  }

  else
  {
    return outlined destroy of LoadTrace(v21, type metadata accessor for __RKEntityTriggerSpecification);
  }
}

uint64_t static Entity.load(assetDescriptor:)(uint64_t *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (one-time initialization token for synchronousLoadOptions != -1)
  {
    swift_once();
  }

  v3 = static Entity.synchronousLoadOptions;
  swift_beginAccess();
  v4 = static RKARSystemCore.generateDecimatedMeshes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_ACGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_ACGMR);
  inited = swift_initStackObject();
  swift_weakInit();
  *(inited + 16) = 0xD000000000000014;
  *(inited + 24) = 0x80000001C18ED850;
  *(inited + 32) = v3;
  *(inited + 33) = v4;
  *(inited + 34) = 1;
  *(inited + 36) = 1;
  swift_weakAssign();
  v6 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v6 + 120, v21);
  v7 = v22;
  v8 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(v8 + 32))(v7, v8);
  v9 = REAssetHandleCreateWithAssetDescriptor();
  __swift_destroy_boxed_opaque_existential_1(v21);
  v10 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v10 + 120, v21);
  v11 = v22;
  v12 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(v12 + 32))(v11, v12);
  REAssetManagerCreateAssetRequest();
  __swift_destroy_boxed_opaque_existential_1(v21);
  v20 = 0;
  if (!REAssetLoadRequestSetLoadAndWaitForResourceSharingClients())
  {
    type metadata accessor for Entity.LoadError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
    swift_allocError();
    *v14 = 0xD000000000000046;
    v14[1] = 0x80000001C18ED870;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_8;
  }

  REAssetLoadRequestAddAsset();
  REAssetLoadRequestWaitForCompletion();
  v22 = MEMORY[0x1E69E6B70];
  v21[0] = v9;
  outlined init with copy of Any(v21, v19);
  swift_dynamicCast();
  __swift_destroy_boxed_opaque_existential_1(v21);
  RERetain();
  type metadata accessor for __SceneResource();
  *(swift_initStackObject() + 16) = v18;
  v13 = __SceneResource.makeRootEntity(withAnchoringComponent:hasAnchoringComponent:preferAnchorEntity:)(0, v21, 0);
  if (v1)
  {
    swift_setDeallocating();
    RERelease();
LABEL_8:
    RERelease();
    RERelease();

    goto LABEL_9;
  }

  v12 = v13;
  specialized Entity.LoadFinisher.setupAfterRealityLoadSync(_:)(v13);
  swift_setDeallocating();
  RERelease();
  RERelease();
  RERelease();
  swift_setDeallocating();
  v17 = *(inited + 24);

  swift_weakDestroy();
LABEL_9:
  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t static Entity.loadAsync(assetDescriptor:)(uint64_t *a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  v8 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v9 = *(v8 + 24);
  swift_unownedRetainStrong();
  v10 = *(v9 + 32);

  v11 = v10;

  *v6 = v11;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v14 = *(v3 + 8);
  v13 = v3 + 8;
  v14(v6, v2);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  type metadata accessor for LoadRequestDependencies();
  v2 = swift_allocObject();
  v15 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v2 + 24) = v16;
  v13 = 1;
  swift_beginAccess();
  *(v2 + 16) = v15;
  if (one-time initialization token for asynchronousLoadOptions != -1)
  {
LABEL_5:
    swift_once();
  }

  v17 = static Entity.asynchronousLoadOptions;
  swift_beginAccess();
  v18 = static RKARSystemCore.generateDecimatedMeshes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_ACGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_ACGMR);
  v19 = swift_allocObject();
  swift_weakInit();
  *(v19 + 16) = 0xD000000000000014;
  *(v19 + 24) = 0x80000001C18ED850;
  *(v19 + 32) = v17;
  *(v19 + 33) = v18;
  *(v19 + 34) = v13;
  *(v19 + 36) = v13;
  swift_weakAssign();
  v20 = swift_allocObject();
  *(v20 + 16) = v7;
  *(v20 + 24) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA6EntityCGMd, &_s10RealityKit11LoadRequestCyAA6EntityCGMR);
  v21 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit6EntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit6EntityCs5Error_pGSgGMR);
  v22 = swift_allocObject();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v22 + 16) = v23;
  *(v22 + 24) = 0;
  *(v22 + 32) = -1;
  *(v21 + 16) = v22;
  v24 = swift_allocObject();
  v24[2] = partial apply for closure #1 in static Entity.loadAsync(assetDescriptor:);
  v24[3] = v20;
  v24[4] = v22;
  v24[5] = v2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit6EntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit6EntityCs5Error_pGMR);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  v28 = Future.init(_:)();

  *(v21 + 24) = v28;
  return v21;
}

void closure #1 in static Entity.loadAsync(assetDescriptor:)(void (*a1)(void **), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v7 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v7 + 120, &aBlock);
  v8 = v33;
  v9 = v34;
  __swift_project_boxed_opaque_existential_1(&aBlock, v33);
  (*(v9 + 4))(v8, v9);
  v10 = REAssetHandleCreateWithAssetDescriptor();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v11 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v11 + 120, &aBlock);
  v12 = v33;
  v13 = v34;
  __swift_project_boxed_opaque_existential_1(&aBlock, v33);
  (*(v13 + 4))(v12, v13);
  AssetRequest = REAssetManagerCreateAssetRequest();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v39 = 0;
  v15 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v15 + 120, &aBlock);
  v16 = v33;
  v17 = v34;
  __swift_project_boxed_opaque_existential_1(&aBlock, v33);
  (*(v17 + 7))(v16, v17);
  v18 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v18 + 120, v36);
  v19 = v37;
  v20 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  (*(v20 + 56))(v19, v20);
  LODWORD(v18) = REAssetLoadRequestSetLoadAndWaitForResourceSharingClients();
  __swift_destroy_boxed_opaque_existential_1(v36);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  if (v18)
  {
    v21 = swift_allocObject();
    v21[2] = v10;
    v21[3] = AssetRequest;
    v21[4] = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
    v21[5] = v6;
    v21[6] = a4;
    v34 = partial apply for closure #1 in closure #1 in static Entity.loadAsync(assetDescriptor:);
    v35 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v31 = 1107296256;
    v32 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v33 = &block_descriptor_451;
    v22 = _Block_copy(&aBlock);

    REAssetLoadRequestSetCompletionHandler();
    _Block_release(v22);
    REAssetLoadRequestAddAsset();
  }

  else
  {

    v23 = v39;
    if (v39)
    {
      type metadata accessor for CFErrorRef(0);
      _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
      v24 = swift_allocError();
      *v25 = v23;
      aBlock = v24;
      LOBYTE(v31) = 1;
      v26 = v23;
      a1(&aBlock);
    }

    else
    {
      type metadata accessor for Entity.LoadError(0);
      _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
      v24 = swift_allocError();
      *v27 = 0xD000000000000046;
      v27[1] = 0x80000001C18ED870;
      swift_storeEnumTagMultiPayload();
      aBlock = v24;
      LOBYTE(v31) = 1;
      a1(&aBlock);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

uint64_t closure #1 in closure #1 in static Entity.loadAsync(assetDescriptor:)(char a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  if (a1)
  {
    v12 = MEMORY[0x1E69E6B70];
    v11[0] = a2;
    outlined init with copy of Any(v11, v18);
    swift_dynamicCast();
    v7 = v17;
    __swift_destroy_boxed_opaque_existential_1(v11);
    RERetain();
    type metadata accessor for __SceneResource();
    *(swift_initStackObject() + 16) = v7;
    v8 = __SceneResource.makeRootEntity(withAnchoringComponent:hasAnchoringComponent:preferAnchorEntity:)(0, v11, 0);
    memset(v11, 0, sizeof(v11));
    v12 = 1;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
    specialized Entity.LoadFinisher.setupAfterRealityLoadAsync(_:options:_:)(v8, v11, a4, a5, specialized Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:));
    swift_setDeallocating();
    RERelease();

    outlined destroy of BodyTrackingComponent?(v11, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
    RERelease();
    return RERelease();
  }

  else
  {
    type metadata accessor for Entity.LoadError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
    v9 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    a4(v9, 1);

    RERelease();

    return RERelease();
  }
}

uint64_t specialized Entity.LoadFinisher.setupAfterRealityLoad(_:generatedTextAssets:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Entity();
  specialized static Entity.addInputTargetComponentsAndCollisionShapesToTapTriggerTargets(for:)(a1);
  if (*(v3 + 34) == 1)
  {
    v7 = *(a1 + 16);
    RENetworkComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    specialized static Entity.enumerateCore(entity:recursive:block:)(a1, 1, v6);
    static UuidRemapHelper.remapIdentifiersAndInteractions(root:)(a1);
  }

  static Entity.generateMeshForStatic3DText(root:generatedTextAssets:)(a1, a2);
  if (*(v3 + 35) == 1)
  {
    v8 = *(a1 + 16);
    RENetworkComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
  }

  result = REShadowsGetEnableDefaultShadows();
  if (result)
  {
    v10 = *(a1 + 16);

    JUMPOUT(0x1C68FCEC0);
  }

  return result;
}

uint64_t specialized Entity.LoadFinisher.setupAfterRealityLoadSync(_:)(uint64_t a1)
{
  type metadata accessor for Entity.AssetArray();
  inited = swift_initStackObject();
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v4 = inited + 16;
  specialized Entity.LoadFinisher.setupAfterRealityLoad(_:generatedTextAssets:)(a1, inited);
  swift_beginAccess();
  v5 = *v4;
  if (*(*v4 + 16))
  {
    v6 = specialized Entity.LoadFinisher.makeLoadRequest()();
    v7 = *(v5 + 16);
    if (v7)
    {

      v8 = 32;
      do
      {
        v9 = *(v5 + v8);
        v10 = *(v6 + 16);
        REAssetLoadRequestAddAsset();
        v8 += 8;
        --v7;
      }

      while (v7);
    }

    v11 = *(v6 + 16);
    REAssetLoadRequestWaitForCompletion();
    if (REAssetLoadRequestGetState() != 1)
    {
      RequestCopyError = REAssetLoadRequestCopyError();
      if (RequestCopyError)
      {
        v13 = RequestCopyError;
        type metadata accessor for CFErrorRef(0);
        _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
        swift_allocError();
        *v14 = v13;
      }

      else
      {
        type metadata accessor for Entity.LoadError(0);
        _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
      }

      swift_willThrow();
    }
  }

  else
  {
    v15 = *(v1 + 16);
    v16 = *(v1 + 24);
    v17 = *(v1 + 36);
    String.utf8CString.getter();
    REMetricLoadFile();
  }
}

uint64_t specialized Entity.LoadFinisher.setupAfterRealityLoadAsync(_:options:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void), uint64_t a4, uint64_t (*a5)(uint64_t, void (*)(uint64_t, void), uint64_t))
{
  type metadata accessor for Entity.AssetArray();
  inited = swift_initStackObject();
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  specialized Entity.LoadFinisher.setupAfterRealityLoad(_:generatedTextAssets:)(a1, inited);
  swift_beginAccess();
  v12 = *(inited + 16);
  if (*(v12 + 16))
  {
    v13 = a5(a1, a3, a4);
    outlined init with copy of [String : String](a2, v29, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
    if (Request == 1)
    {
      outlined destroy of BodyTrackingComponent?(v29, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
    }

    else
    {
      v17 = v31;

      outlined destroy of Entity.__LoadOptions(v29);
      if (v17)
      {
        v18 = *(v13 + 16);
        Stats = REAssetLoadRequestGetStats();
        type metadata accessor for __AssetLoadRequest.Statistics();
        v20 = swift_allocObject();
        RERetain();
        *(v20 + 16) = Stats;
        v21 = OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_loadRequestStats;
        swift_beginAccess();

        MEMORY[0x1C68F3650](v22);
        if (*((*(v17 + v21) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v17 + v21) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v28 = *((*(v17 + v21) & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }

    v23 = *(v12 + 16);
    if (v23)
    {

      v24 = 32;
      do
      {
        v25 = *(v12 + v24);
        v26 = *(v13 + 16);
        REAssetLoadRequestAddAsset();
        v24 += 8;
        --v23;
      }

      while (v23);
    }

    if (swift_weakLoadStrong())
    {
      Request = type metadata accessor for __AssetLoadRequest();
      v29[0] = v13;

      LoadRequestDependencies.add(_:)(v29);

      return __swift_destroy_boxed_opaque_existential_1(v29);
    }
  }

  else
  {
    v14 = *(v5 + 16);
    v15 = *(v5 + 24);
    v16 = *(v5 + 36);
    String.utf8CString.getter();
    REMetricLoadFile();

    a3(a1, 0);
  }
}

uint64_t specialized Entity.LoadFinisher.setupAfterUSDLoad(_:)(uint64_t a1)
{
  specialized static Entity.addInputTargetComponentsAndCollisionShapesToTapTriggerTargets(for:)(a1);
  v4 = [objc_opt_self() defaultBody3DSkeletonDefinition];
  v5 = [v4 jointNames];

  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _s10RealityKit6EntityC20withUnsafeJointNames33_F26D63620DB78A19432B1EBEC9E8266ALLyxSaySSG_xSPySPys4Int8VGSgGSgKXEtKlFZyt_Tt2g504_s10a4Kit6c26C20withCharacterOptions33_hijklmn39ALLyxxSo08REEntityeF0azKXEKlFZxSPySPys4O19VGSgGSgKXEfU_yt_Tg5SiSo08REEntityS7Optionsaxs5Error_pRi_zRi0_zlyytIsglrzo_Tf1nnc_n(v6, *(v6 + 16), partial apply for specialized closure #1 in Entity.LoadFinisher.setupAfterUSDLoad(_:));

  if (!v2)
  {
    if (*(v1 + 34))
    {
      v8 = type metadata accessor for Entity();
      v9 = *(a1 + 16);
      RENetworkComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      specialized static Entity.enumerateCore(entity:recursive:block:)(a1, 1, v8);
      static UuidRemapHelper.remapIdentifiersAndInteractions(root:)(a1);
    }

    if (*(v1 + 35) == 1)
    {
      v10 = *(a1 + 16);
      RENetworkComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
    }

    result = REShadowsGetEnableDefaultShadows();
    if (result)
    {
      return MEMORY[0x1C68FCEC0](*(a1 + 16), 1);
    }
  }

  return result;
}

{
  specialized static Entity.addInputTargetComponentsAndCollisionShapesToTapTriggerTargets(for:)(a1);
  if (*(v1 + 34) == 1)
  {
    v3 = type metadata accessor for Entity();
    v4 = *(a1 + 16);
    RENetworkComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    specialized static Entity.enumerateCore(entity:recursive:block:)(a1, 1, v3);
    static UuidRemapHelper.remapIdentifiersAndInteractions(root:)(a1);
  }

  if (*(v1 + 35) == 1)
  {
    v5 = *(a1 + 16);
    RENetworkComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
  }

  result = REShadowsGetEnableDefaultShadows();
  if (result)
  {
    return MEMORY[0x1C68FCEC0](*(a1 + 16), 1);
  }

  return result;
}

uint64_t specialized closure #1 in Entity.LoadFinisher.setupAfterUSDLoad(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v6 = *(v5 + 16);
  REEntityCharacterSetup();
  v7 = *(a2 + 16);
  result = REEntityCharacterGetJointCount();
  if (result != *(a1 + 8))
  {
    type metadata accessor for Entity.LoadError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

uint64_t specialized Entity.LoadFinisher.setupAfterUSDLoadSync(_:)(uint64_t a1)
{
  v3 = v1;
  result = specialized Entity.LoadFinisher.setupAfterUSDLoad(_:)(a1);
  if (!v2)
  {
    type metadata accessor for Entity.AssetArray();
    v6 = swift_allocObject();
    *(v6 + 16) = MEMORY[0x1E69E7CC0];
    v7 = v6 + 16;
    specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:)(v6, a1);
    swift_beginAccess();
    if (!*(*v7 + 16))
    {
      v16 = *(v1 + 16);
      v17 = *(v1 + 24);
      v18 = static os_log_type_t.info.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
      v19 = static OS_os_log.default.getter();
      if (os_log_type_enabled(v19, v18))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v26 = v21;
        *v20 = 136315138;
        *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v26);
        _os_log_impl(&dword_1C1358000, v19, v18, "No assets were found in file %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x1C6902A30](v21, -1, -1);
        MEMORY[0x1C6902A30](v20, -1, -1);
      }

      v22 = *(v3 + 36);
      String.utf8CString.getter();
      REMetricLoadFile();
      goto LABEL_12;
    }

    v8 = specialized Entity.LoadFinisher.makeLoadRequest()();
    v9 = *v7;
    v10 = *(*v7 + 16);
    if (v10)
    {
      v11 = *v7;

      v12 = 32;
      do
      {
        v13 = *(v9 + v12);
        v14 = *(v8 + 16);
        REAssetLoadRequestAddAsset();
        v12 += 8;
        --v10;
      }

      while (v10);
    }

    v15 = *(v8 + 16);
    REAssetLoadRequestWaitForCompletion();
    if (REAssetLoadRequestGetState() == 1)
    {
LABEL_12:
    }

    RequestCopyError = REAssetLoadRequestCopyError();
    if (RequestCopyError)
    {
      v24 = RequestCopyError;
      type metadata accessor for CFErrorRef(0);
      _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
      swift_allocError();
      *v25 = v24;
    }

    else
    {
      type metadata accessor for Entity.LoadError(0);
      _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
    }

    swift_willThrow();
  }

  return result;
}

uint64_t specialized Entity.LoadFinisher.setupAfterUSDLoadSync(_:)(uint64_t a1, void (*a2)(void))
{
  v5 = v2;
  result = specialized Entity.LoadFinisher.setupAfterUSDLoad(_:)(a1);
  if (!v3)
  {
    type metadata accessor for Entity.AssetArray();
    v7 = swift_allocObject();
    *(v7 + 16) = MEMORY[0x1E69E7CC0];
    v8 = v7 + 16;
    a2();
    swift_beginAccess();
    if (!*(*v8 + 16))
    {
      v17 = *(v2 + 16);
      v18 = *(v2 + 24);
      v19 = static os_log_type_t.info.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
      v20 = static OS_os_log.default.getter();
      if (os_log_type_enabled(v20, v19))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v27 = v22;
        *v21 = 136315138;
        *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v27);
        _os_log_impl(&dword_1C1358000, v20, v19, "No assets were found in file %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v22);
        MEMORY[0x1C6902A30](v22, -1, -1);
        MEMORY[0x1C6902A30](v21, -1, -1);
      }

      v23 = *(v5 + 36);
      String.utf8CString.getter();
      REMetricLoadFile();
      goto LABEL_12;
    }

    v9 = specialized Entity.LoadFinisher.makeLoadRequest()();
    v10 = *v8;
    v11 = *(*v8 + 16);
    if (v11)
    {
      v12 = *v8;

      v13 = 32;
      do
      {
        v14 = *(v10 + v13);
        v15 = *(v9 + 16);
        REAssetLoadRequestAddAsset();
        v13 += 8;
        --v11;
      }

      while (v11);
    }

    v16 = *(v9 + 16);
    REAssetLoadRequestWaitForCompletion();
    if (REAssetLoadRequestGetState() == 1)
    {
LABEL_12:
    }

    RequestCopyError = REAssetLoadRequestCopyError();
    if (RequestCopyError)
    {
      v25 = RequestCopyError;
      type metadata accessor for CFErrorRef(0);
      _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
      swift_allocError();
      *v26 = v25;
    }

    else
    {
      type metadata accessor for Entity.LoadError(0);
      _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
    }

    swift_willThrow();
  }

  return result;
}

uint64_t specialized Entity.LoadFinisher.setupAfterUSDLoadAsync(_:options:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void), uint64_t a4)
{
  v5 = v4;
  specialized Entity.LoadFinisher.setupAfterUSDLoad(_:)(a1);
  type metadata accessor for Entity.AssetArray();
  v10 = swift_allocObject();
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  v11 = v10 + 16;
  specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:)(v10, a1);
  swift_beginAccess();
  if (*(*(v10 + 16) + 16))
  {
    v12 = specialized Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:)(a1, a3, a4);
    outlined init with copy of [String : String](a2, v36, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
    if (Request == 1)
    {
      outlined destroy of BodyTrackingComponent?(v36, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
    }

    else
    {
      v21 = v38;

      outlined destroy of Entity.__LoadOptions(v36);
      if (v21)
      {
        v22 = *(v12 + 16);
        Stats = REAssetLoadRequestGetStats();
        type metadata accessor for __AssetLoadRequest.Statistics();
        v24 = swift_allocObject();
        RERetain();
        *(v24 + 16) = Stats;
        v25 = OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_loadRequestStats;
        swift_beginAccess();

        MEMORY[0x1C68F3650](v26);
        if (*((*(v21 + v25) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v21 + v25) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v34 = *((*(v21 + v25) & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }

    v27 = *v11;
    v28 = *(*v11 + 16);
    if (v28)
    {
      v29 = *v11;

      v30 = 32;
      do
      {
        v31 = *(v27 + v30);
        v32 = *(v12 + 16);
        REAssetLoadRequestAddAsset();
        v30 += 8;
        --v28;
      }

      while (v28);
    }

    if (swift_weakLoadStrong())
    {
      Request = type metadata accessor for __AssetLoadRequest();
      v36[0] = v12;

      LoadRequestDependencies.add(_:)(v36);

      return __swift_destroy_boxed_opaque_existential_1(v36);
    }
  }

  else
  {
    v13 = *(v4 + 16);
    v14 = *(v4 + 24);
    v15 = static os_log_type_t.info.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    v16 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v16, v15))
    {
      v17 = swift_slowAlloc();
      v35 = v14;
      v18 = v13;
      v19 = swift_slowAlloc();
      v36[0] = v19;
      *v17 = 136315138;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v35, v36);
      _os_log_impl(&dword_1C1358000, v16, v15, "No assets were found in file %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1C6902A30](v19, -1, -1);
      MEMORY[0x1C6902A30](v17, -1, -1);
    }

    v20 = *(v5 + 36);
    String.utf8CString.getter();
    REMetricLoadFile();

    a3(a1, 0);
  }
}

uint64_t specialized Entity.LoadFinisher.setupAfterUSDLoadAsync(_:options:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void), uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t, void (*)(uint64_t, void), uint64_t))
{
  v9 = v6;
  specialized Entity.LoadFinisher.setupAfterUSDLoad(_:)(a1);
  type metadata accessor for Entity.AssetArray();
  v14 = swift_allocObject();
  *(v14 + 16) = MEMORY[0x1E69E7CC0];
  v15 = v14 + 16;
  a5();
  swift_beginAccess();
  if (*(*v15 + 16))
  {
    v16 = a6(a1, a3, a4);
    outlined init with copy of [String : String](a2, v38, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
    if (Request == 1)
    {
      outlined destroy of BodyTrackingComponent?(v38, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
    }

    else
    {
      v24 = v40;

      outlined destroy of Entity.__LoadOptions(v38);
      if (v24)
      {
        v25 = *(v16 + 16);
        Stats = REAssetLoadRequestGetStats();
        type metadata accessor for __AssetLoadRequest.Statistics();
        v27 = swift_allocObject();
        RERetain();
        *(v27 + 16) = Stats;
        v28 = OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_loadRequestStats;
        swift_beginAccess();

        MEMORY[0x1C68F3650](v29);
        if (*((*(v24 + v28) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v24 + v28) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v37 = *((*(v24 + v28) & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }

    v30 = *v15;
    v31 = *(*v15 + 16);
    if (v31)
    {
      v32 = *v15;

      v33 = 32;
      do
      {
        v34 = *(v30 + v33);
        v35 = *(v16 + 16);
        REAssetLoadRequestAddAsset();
        v33 += 8;
        --v31;
      }

      while (v31);
    }

    if (swift_weakLoadStrong())
    {
      Request = type metadata accessor for __AssetLoadRequest();
      v38[0] = v16;

      LoadRequestDependencies.add(_:)(v38);

      return __swift_destroy_boxed_opaque_existential_1(v38);
    }
  }

  else
  {
    v17 = *(v6 + 16);
    v18 = *(v6 + 24);
    v19 = static os_log_type_t.info.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    v20 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v20, v19))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v38[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v38);
      _os_log_impl(&dword_1C1358000, v20, v19, "No assets were found in file %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1C6902A30](v22, -1, -1);
      MEMORY[0x1C6902A30](v21, -1, -1);
    }

    v23 = *(v9 + 36);
    String.utf8CString.getter();
    REMetricLoadFile();

    a3(a1, 0);
  }
}

uint64_t specialized Entity.LoadFinisher.makeLoadRequest()()
{
  v1 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 120, &v3);
  return specialized __AssetLoadRequest.__allocating_init(assetService:shouldLoadOnPeers:shouldWaitForPeers:)(&v3, *(v0 + 32) != 2, (*(v0 + 32) & 0xFE) != 2);
}

uint64_t specialized Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = specialized Entity.LoadFinisher.makeLoadRequest()();
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = *(v3 + 36);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v8;
  *(v12 + 32) = v10;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3;
  *(v12 + 56) = a1;
  *(v12 + 64) = v11;
  aBlock[4] = partial apply for specialized closure #1 in Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_45;
  v13 = _Block_copy(aBlock);
  v14 = _Block_copy(v13);
  v15 = *(v7 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v19[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ();
  v19[5] = v16;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v19[3] = &block_descriptor_195;
  v17 = _Block_copy(v19);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v17);
  _Block_release(v13);

  return v7;
}

{
  v7 = specialized Entity.LoadFinisher.makeLoadRequest()();
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = *(v3 + 36);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v8;
  *(v12 + 32) = v10;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3;
  *(v12 + 56) = a1;
  *(v12 + 64) = v11;
  aBlock[4] = partial apply for specialized closure #1 in Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_391_0;
  v13 = _Block_copy(aBlock);
  v14 = _Block_copy(v13);
  v15 = *(v7 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v19[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
  v19[5] = v16;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v19[3] = &block_descriptor_398;
  v17 = _Block_copy(v19);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v17);
  _Block_release(v13);

  return v7;
}

{
  v7 = specialized Entity.LoadFinisher.makeLoadRequest()();
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = *(v3 + 36);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v8;
  *(v12 + 32) = v10;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3;
  *(v12 + 56) = a1;
  *(v12 + 64) = v11;
  aBlock[4] = partial apply for specialized closure #1 in Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_313;
  v13 = _Block_copy(aBlock);
  v14 = _Block_copy(v13);
  v15 = *(v7 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v19[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
  v19[5] = v16;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v19[3] = &block_descriptor_320;
  v17 = _Block_copy(v19);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v17);
  _Block_release(v13);

  return v7;
}

{
  v7 = specialized Entity.LoadFinisher.makeLoadRequest()();
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = *(v3 + 36);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v8;
  *(v12 + 32) = v10;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3;
  *(v12 + 56) = a1;
  *(v12 + 64) = v11;
  aBlock[4] = partial apply for specialized closure #1 in Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_251;
  v13 = _Block_copy(aBlock);
  v14 = _Block_copy(v13);
  v15 = *(v7 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v19[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
  v19[5] = v16;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v19[3] = &block_descriptor_258;
  v17 = _Block_copy(v19);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v17);
  _Block_release(v13);

  return v7;
}

void specialized closure #1 in Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t), uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a1)
  {
    String.utf8CString.getter();
    REMetricLoadFile();

    a5(a7, 0);
  }

  else
  {
    type metadata accessor for Entity.LoadError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
    v14 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    a5(v14, 1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    aBlock[4] = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    aBlock[3] = a9;
    v17 = _Block_copy(aBlock);
    v18 = _Block_copy(v17);
    v19 = *(v16 + 16);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    v22[4] = a11;
    v22[5] = v20;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 1107296256;
    v22[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v22[3] = a12;
    v21 = _Block_copy(v22);

    REAssetLoadRequestSetCompletionHandler();
    _Block_release(v21);

    _Block_release(v17);
  }
}

uint64_t specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:)(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:)(a1, a2, &unk_1F411D8A8, partial apply for closure #1 in Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:), _ss13OpaquePointerVIgy_ABytIegnr_TRTA_0, specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:));
}

{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:)(a1, a2, &unk_1F411E370, closure #1 in Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:)partial apply, thunk for @callee_guaranteed (@unowned OpaquePointer) -> ()partial apply, specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:));
}

{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:)(a1, a2, &unk_1F411DE98, closure #1 in Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:)partial apply, thunk for @callee_guaranteed (@unowned OpaquePointer) -> ()partial apply, specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:));
}

{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:)(a1, a2, &unk_1F411DBC8, closure #1 in Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:)partial apply, thunk for @callee_guaranteed (@unowned OpaquePointer) -> ()partial apply, specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:));
}

uint64_t specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a1;
  REEntityFindAssetDependencies();

  v12 = *(a2 + 16);
  if (REEntityGetChildCount() >= 1)
  {
    v13 = 0;
    do
    {
      v14 = *(a2 + 16);
      if (v13 >= REEntityGetChildCount())
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
      }

      v15 = *(a2 + 16);
      Child = REEntityGetChild();
      if (!Child)
      {
        goto LABEL_19;
      }

      v17 = Child;
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v18 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        if (REEntityIsBeingDestroyed())
        {
          goto LABEL_18;
        }

        v20 = specialized static Entity.entityInfoType(_:)();
        if (v20)
        {
          v19 = (*(v20 + 232))();
          v21 = *(v19 + 16);

          MEMORY[0x1C68F9740](v21, 0);
          *(v19 + 16) = v17;
          MEMORY[0x1C68F9740](v17, v19);

          goto LABEL_11;
        }

        v18 = makeEntity(for:)(v17);
      }

      v19 = v18;
LABEL_11:
      v22 = *(a2 + 16);
      if (v13 >= REEntityGetChildCount())
      {
        goto LABEL_17;
      }

      ++v13;
      a6(a1, v19);

      v23 = *(a2 + 16);
    }

    while (v13 < REEntityGetChildCount());
  }

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t closure #1 in Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
    *(a2 + 16) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  *&v4[8 * v7 + 32] = a1;
  *(a2 + 16) = v4;
  return swift_endAccess();
}

uint64_t Entity.LoadFinisher.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t __SceneResource.makeAnchorEntity(fileName:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for AnchoringComponent(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v30 - v12;
  v31 = 0;
  v14 = __SceneResource.makeRootEntity(withAnchoringComponent:hasAnchoringComponent:preferAnchorEntity:)(1, &v31, 1);
  if (!v2)
  {
    v15 = v14;
    type metadata accessor for AnchorEntity();
    v16 = swift_dynamicCastClass();
    if (!v16)
    {
      static os_log_type_t.fault.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
      v19 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)();

      type metadata accessor for SceneResourceLoadResult.InternalError(0);
      _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError, type metadata accessor for SceneResourceLoadResult.InternalError);
      swift_allocError();
      v21 = v20;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR);
      (*(*(v22 - 8) + 56))(v21, 1, 2, v22);
      swift_willThrow();

      return v3;
    }

    v3 = v16;
    v17 = v31;

    if (v17 == 1)
    {
      __SceneResource.findREAnchoringComponent(root:)(v15, v13);
      v18 = type metadata accessor for __REAnchoringType();
      if ((*(*(v18 - 8) + 48))(v13, 1, v18) == 1)
      {

        outlined destroy of BodyTrackingComponent?(v13, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
        return v3;
      }

      outlined destroy of BodyTrackingComponent?(v13, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1898160;
    *(inited + 32) = v15;
    v24 = __SceneResource.makeAnchorEntity(from:fileName:)(inited, a1, a2);
    swift_setDeallocating();
    v25 = *(inited + 16);
    swift_arrayDestroy();
    v26 = *(v24 + 16);
    REAnchoringComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    AnchoringComponent.init(from:)(v9);
    v27 = *(v3 + 16);
    REAnchoringComponentGetComponentType();
    v30 = REEntityGetOrAddComponentByClass();
    AnchoringComponent.__toCore(_:)(&v30);
    v28 = *(v3 + 16);
    REAnchorComponentGetComponentType();
    REEntityRemoveComponentByClass();

    outlined destroy of LoadTrace(v9, type metadata accessor for AnchoringComponent);
  }

  return v3;
}

uint64_t __SceneResource.findREAnchoringComponent(root:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  swift_beginAccess();
  if (static __REAnchoring.registration && (v11 = *(static __REAnchoring.registration + 3), v12 = *(a1 + 16), REEntityGetCustomComponent()) && RECustomComponentGetObject())
  {
    __REAnchoring.type.getter(v10);
    v13 = type metadata accessor for __REAnchoringType();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v10, 1, v13) != 1)
    {
      outlined destroy of BodyTrackingComponent?(v10, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
      if (static __REAnchoring.registration && (v15 = *(static __REAnchoring.registration + 3), v16 = *(a1 + 16), REEntityGetCustomComponent()) && RECustomComponentGetObject())
      {
        return __REAnchoring.type.getter(a2);
      }

      else
      {
        return (*(v14 + 56))(a2, 1, 1, v13);
      }
    }
  }

  else
  {
    v18 = type metadata accessor for __REAnchoringType();
    (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  }

  outlined destroy of BodyTrackingComponent?(v10, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);

  v19 = *(a1 + 16);
  if (REEntityGetChildCount() < 1)
  {
LABEL_25:

    v32 = type metadata accessor for __REAnchoringType();
    return (*(*(v32 - 8) + 56))(a2, 1, 1, v32);
  }

  v20 = 0;
  while (1)
  {
    v21 = *(a1 + 16);
    result = REEntityGetChildCount();
    if (v20 >= result)
    {
      break;
    }

    v22 = *(a1 + 16);
    result = REEntityGetChild();
    if (!result)
    {
      goto LABEL_32;
    }

    v23 = result;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v24 = swift_dynamicCastClassUnconditional();
LABEL_16:
      v25 = v24;
      goto LABEL_20;
    }

    result = REEntityIsBeingDestroyed();
    if (result)
    {
      goto LABEL_31;
    }

    v26 = specialized static Entity.entityInfoType(_:)();
    if (!v26)
    {
      v24 = makeEntity(for:)(v23);
      goto LABEL_16;
    }

    v25 = (*(v26 + 232))();
    v27 = *(v25 + 16);

    MEMORY[0x1C68F9740](v27, 0);
    *(v25 + 16) = v23;
    MEMORY[0x1C68F9740](v23, v25);

LABEL_20:
    v28 = *(a1 + 16);
    result = REEntityGetChildCount();
    if (v20 >= result)
    {
      goto LABEL_30;
    }

    __SceneResource.findREAnchoringComponent(root:)(v25);

    v29 = type metadata accessor for __REAnchoringType();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v7, 1, v29) != 1)
    {

      outlined init with take of RealityFileLoadInformation(v7, a2, type metadata accessor for __REAnchoringType);
      return (*(v30 + 56))(a2, 0, 1, v29);
    }

    ++v20;
    outlined destroy of BodyTrackingComponent?(v7, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
    v31 = *(a1 + 16);
    if (v20 >= REEntityGetChildCount())
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t __SceneResource.makeAnchorEntity(from:fileName:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v5 = type metadata accessor for __REAnchoringType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v42 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v43 = v6;
  v21 = v6;
  v22 = a1;
  v23 = *(v21 + 56);
  v47 = v5;
  v48 = &v39 - v24;
  v23(v20);
  v41 = a3;
  v39 = v9;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v26 = 0;
    v45 = v22 & 0xFFFFFFFFFFFFFF8;
    v46 = v22 & 0xC000000000000001;
    v27 = (v43 + 48);
    v44 = i;
    while (v46)
    {
      v28 = v22;
      v22 = MEMORY[0x1C68F41F0](v26, v22);
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_12;
      }

LABEL_7:
      __SceneResource.findREAnchoringComponent(root:)(v22, v18);

      v30 = v48;
      outlined destroy of BodyTrackingComponent?(v48, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
      outlined init with take of __REAnchoringType?(v18, v30);
      outlined init with copy of [String : String](v30, v15, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
      LODWORD(v30) = (*v27)(v15, 1, v47);
      outlined destroy of BodyTrackingComponent?(v15, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
      if (v30 == 1)
      {
        v22 = v28;
        ++v26;
        if (v29 != v44)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    if (v26 >= *(v45 + 16))
    {
      goto LABEL_13;
    }

    v28 = v22;
    v22 = *(v22 + 8 * v26 + 32);

    v29 = v26 + 1;
    if (!__OFADD__(v26, 1))
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:
  v31 = v42;
  outlined init with copy of [String : String](v48, v42, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  if ((*(v43 + 48))(v31, 1, v47) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v31, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of __SceneResource.makeAnchorEntity(from:fileName:));
    v33 = specialized AnchorEntity.__allocating_init(world:)(v32);
  }

  else
  {
    v34 = v39;
    outlined init with take of RealityFileLoadInformation(v31, v39, type metadata accessor for __REAnchoringType);
    v35._countAndFlagsBits = 0x7974696C616572;
    v35._object = 0xE700000000000000;
    v36 = v40;
    v37 = v41;
    if (String.hasSuffix(_:)(v35))
    {
    }

    else
    {
      v36 = 0;
      v37 = 0xE000000000000000;
    }

    v33 = __REAnchoringType.createAnchorEntity(realityAssetFileName:)(v36, v37);

    outlined destroy of LoadTrace(v34, type metadata accessor for __REAnchoringType);
  }

  outlined destroy of BodyTrackingComponent?(v48, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  return v33;
}

uint64_t __SceneResourceLoadResult.__makeEntity()(uint64_t (*a1)(uint64_t))
{
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + 32);

  v4 = a1(v3);

  return v4;
}

uint64_t SceneResourceLoadResult.makeAnchorEntity()()
{
  v2 = v1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v0;
  v9 = v0[1];
  v11 = v0[2];
  v10 = v0[3];

  v12 = v2;
  v13 = __SceneResource.makeAnchorEntity(fileName:)(v9, v11);
  if (v12)
  {

    return v13;
  }

  v20[1] = v9;
  v20[2] = v11;
  swift_bridgeObjectRetain_n();
  v14 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  swift_beginAccess();
  objc_setAssociatedObject(v13, &static __SceneResourceLoadResultLoadContext.loadContextForEntityKey, v14, 0x301);
  swift_endAccess();
  swift_bridgeObjectRelease_n();
  swift_unknownObjectRelease();
  v15 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v16 = *(v15 + 24);
  swift_unownedRetainStrong();
  v17 = *(v16 + 32);

  v18 = v17;

  *v7 = v18;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if (v16)
  {
    __SceneResourceCache.Entry.registerWithSceneLookupTable()();
    objc_setAssociatedObject(v13, "RealityKit.SceneResourceCacheEntry", v10, 0x301);

    return v13;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for SceneResourceEntityMaker.makeAnchorEntity() in conformance UncachedSceneResourceLoadResult()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    v3 = *v0;
    return __SceneResource.makeAnchorEntity(fileName:)(v2, v1);
  }

  else
  {
    type metadata accessor for SceneResourceLoadResult.InternalError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError, type metadata accessor for SceneResourceLoadResult.InternalError);
    swift_allocError();
    v6 = v5;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR);
    (*(*(v7 - 8) + 56))(v6, 1, 2, v7);
    return swift_willThrow();
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RealityFileLoadInformation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static URL.== infix(_:_:)())
  {
    v6 = *(a3 + 20);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 8);
    v9 = (a2 + v6);
    v10 = v9[1];
    if (v8)
    {
      if (v10)
      {
        v11 = *v7 == *v9 && v8 == v10;
        if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v10)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t closure #1 in static Entity.finishUSDLoad(forEntity:withOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v16 - v11;
  (*(v8 + 16))(&v16 - v11, a1, v7, v10);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v12, v7);
  specialized Entity.LoadFinisher.setupAfterUSDLoadAsync(_:options:_:)(a3, a4, partial apply for closure #1 in closure #1 in static Entity.finishUSDLoad(forEntity:withOptions:), v14, specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:), specialized Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:));
}

uint64_t closure #1 in closure #1 in static Entity.finishUSDLoad(forEntity:withOptions:)(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t static Entity.load(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[23] = a3;
  v4[24] = v3;
  v4[21] = a1;
  v4[22] = a2;
  type metadata accessor for MainActor();
  v4[25] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[26] = v6;
  v4[27] = v5;

  return MEMORY[0x1EEE6DFA0](static Entity.load(named:in:), v6, v5);
}

uint64_t static Entity.load(named:in:)()
{
  v10 = v0;
  swift_beginAccess();
  *(v0 + 16) = 0u;
  v1 = static RKARSystemCore.generateDecimatedMeshes;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0;
  *(v0 + 104) = 0u;
  *(v0 + 65) = 0;
  *(v0 + 72) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 80) = 1;
  *(v0 + 84) = 0;
  *(v0 + 88) = 2;
  *(v0 + 96) = 0;
  outlined assign with take of __DownsamplingStrategy?(v0 + 104, v0 + 16);
  *(v0 + 56) = 0;
  *(v0 + 64) = v1;
  if (one-time initialization token for asynchronousLoadOptions != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v0 + 168);
  v5 = *(v0 + 176);
  v9 = static Entity.asynchronousLoadOptions;
  v6 = static Entity.__loadAsync(named:in:options:asyncOptions:)(v4, v5, v2, v0 + 16, &v9);
  *(v0 + 224) = v6;
  outlined destroy of Entity.__LoadOptions(v0 + 16);
  v7 = swift_task_alloc();
  *(v0 + 232) = v7;
  *v7 = v0;
  v7[1] = static Entity.load(named:in:);

  return _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v6);
}

{
  v1 = v0[25];

  v2 = v0[1];
  v3 = v0[31];

  return v2(v3);
}

{
  v1 = v0[28];
  v2 = v0[25];

  v3 = v0[1];
  v4 = v0[30];

  return v3();
}

uint64_t static Entity.load(named:in:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v7 = v4[26];
    v8 = v4[27];
    v9 = static Entity.load(named:in:);
  }

  else
  {
    v10 = v4[28];

    v4[31] = a1;
    v7 = v4[26];
    v8 = v4[27];
    v9 = static Entity.load(named:in:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t static Entity.loadModel(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  type metadata accessor for MainActor();
  v3[24] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[25] = v5;
  v3[26] = v4;

  return MEMORY[0x1EEE6DFA0](static Entity.loadModel(named:in:), v5, v4);
}

uint64_t static Entity.loadModel(named:in:)()
{
  swift_beginAccess();
  *(v0 + 16) = 0u;
  v1 = static RKARSystemCore.generateDecimatedMeshes;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0;
  *(v0 + 104) = 0u;
  *(v0 + 65) = 0;
  *(v0 + 72) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 80) = 1;
  *(v0 + 84) = 0;
  *(v0 + 88) = 2;
  *(v0 + 96) = 0;
  outlined assign with take of __DownsamplingStrategy?(v0 + 104, v0 + 16);
  *(v0 + 56) = 0;
  *(v0 + 64) = v1;
  if (one-time initialization token for asynchronousLoadOptions != -1)
  {
    swift_once();
  }

  v2 = specialized static Entity.loadModelAsync(named:in:options:asyncOptions:)(*(v0 + 168), *(v0 + 176), *(v0 + 184), v0 + 16);
  *(v0 + 216) = v2;
  outlined destroy of Entity.__LoadOptions(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 224) = v3;
  *v3 = v0;
  v3[1] = static Entity.loadModel(named:in:);

  return _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA05ModelC0C_Tt0g5(v2);
}

{
  v1 = v0[24];

  v2 = v0[1];
  v3 = v0[30];

  return v2(v3);
}

{
  v1 = v0[27];
  v2 = v0[24];

  v3 = v0[1];
  v4 = v0[29];

  return v3();
}

uint64_t static Entity.loadModel(named:in:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v7 = v4[25];
    v8 = v4[26];
    v9 = static Entity.loadModel(named:in:);
  }

  else
  {
    v10 = v4[27];

    v4[30] = a1;
    v7 = v4[25];
    v8 = v4[26];
    v9 = static Entity.loadModel(named:in:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t Entity.init(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = Entity.init(named:in:);

  return (specialized Entity.init(named:in:))(a1, a2, a3);
}

uint64_t Entity.init(named:in:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  v8 = *(v6 + 8);
  if (!v1)
  {
    v7 = a1;
  }

  return v8(v7);
}

uint64_t Entity.init(named:in:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[32] = a4;
  v5[33] = v4;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  v5[34] = type metadata accessor for MainActor();
  v5[35] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[36] = v7;
  v5[37] = v6;

  return MEMORY[0x1EEE6DFA0](Entity.init(named:in:options:), v7, v6);
}

uint64_t Entity.init(named:in:options:)()
{
  outlined init with copy of [String : String](*(v0 + 256), v0 + 104, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
  if (*(v0 + 128) == 1)
  {
    *(v0 + 192) = 0u;
    *(v0 + 224) = 0;
    *(v0 + 208) = 0u;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 80) = 1;
    *(v0 + 84) = 0;
    *(v0 + 88) = 2;
    *(v0 + 96) = 0;
    outlined assign with take of __DownsamplingStrategy?(v0 + 192, v0 + 16);
    *(v0 + 56) = 0;
    if (*(v0 + 128) != 1)
    {
      outlined destroy of BodyTrackingComponent?(v0 + 104, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
    }
  }

  else
  {
    v1 = *(v0 + 152);
    *(v0 + 48) = *(v0 + 136);
    *(v0 + 64) = v1;
    *(v0 + 80) = *(v0 + 168);
    *(v0 + 96) = *(v0 + 184);
    v2 = *(v0 + 120);
    *(v0 + 16) = *(v0 + 104);
    *(v0 + 32) = v2;
  }

  if (one-time initialization token for asynchronousLoadOptions != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 264);
  *(v0 + 392) = static Entity.asynchronousLoadOptions;
  v4 = *(v3 + 264);
  v12 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 304) = v6;
  *v6 = v0;
  v6[1] = Entity.init(named:in:options:);
  v7 = *(v0 + 264);
  v8 = *(v0 + 240);
  v9 = *(v0 + 248);
  v10 = *(v0 + 232);

  return v12(v10, v8, v9, v0 + 16, v0 + 392);
}

{
  v1 = v0[39];
  v2 = v0[34];
  v0[41] = (*(v0[33] + 232))();

  Entity.copy(to:recursive:)(v3, 1);
  v0[42] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[43] = v5;
  v0[44] = v4;

  return MEMORY[0x1EEE6DFA0](Entity.init(named:in:options:), v5, v4);
}

{
  v2 = v0[33];
  v1 = v0[34];
  v3 = static Entity.enumerateReferences(root:)(v0[41]);
  v0[45] = v3;
  v0[46] = static MainActor.shared.getter();
  v4 = swift_task_alloc();
  v0[47] = v4;
  *(v4 + 16) = v3;
  v5 = *(MEMORY[0x1E69E88A0] + 4);
  v6 = swift_task_alloc();
  v0[48] = v6;
  *v6 = v0;
  v6[1] = Entity.init(named:in:options:);

  return MEMORY[0x1EEE6DD58]();
}

{
  v1 = v0[42];

  v2 = v0[36];
  v3 = v0[37];

  return MEMORY[0x1EEE6DFA0](Entity.init(named:in:options:), v2, v3);
}

{
  v1 = v0[35];

  v2 = v0[39];
  v4 = v0[31];
  v3 = v0[32];
  if (v0[12])
  {
    Entity.LoadStatistics.log()();

    outlined destroy of BodyTrackingComponent?(v3, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v0[32], &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
  }

  v5 = v0[41];
  outlined destroy of Entity.__LoadOptions((v0 + 2));

  v6 = v0[1];
  v7 = v0[41];

  return v6(v7);
}

{
  v1 = v0[35];
  v2 = v0[31];
  v3 = v0[32];

  outlined destroy of BodyTrackingComponent?(v3, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
  outlined destroy of Entity.__LoadOptions((v0 + 2));
  v4 = v0[1];
  v5 = v0[40];

  return v4();
}

uint64_t Entity.init(named:in:options:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 304);
  v5 = *(*v2 + 240);
  v10 = *v2;
  v3[39] = a1;
  v3[40] = v1;

  v6 = v3[36];
  v7 = v3[37];
  if (v1)
  {
    v8 = Entity.init(named:in:options:);
  }

  else
  {
    v8 = Entity.init(named:in:options:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

void Entity.init(named:in:options:)()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = v2[46];
    v5 = v2[47];
    v7 = v2[45];

    v8 = v2[43];
    v9 = v2[44];

    MEMORY[0x1EEE6DFA0](Entity.init(named:in:options:), v8, v9);
  }
}

uint64_t _s10RealityKit6EntityC0A10FoundationE06doLoadC11FromUSDData33_F26D63620DB78A19432B1EBEC9E8266ALL4from18resourceIdentifier4type7options12loadFinisher04postF07fulfilly0D04DataV_S2SAC02__F7OptionsVAcDE0fV0AFLLCy_xGySDySSypGKcSgys6ResultOyxs5Error_pGctACRbzlFZAC_Tt6g5(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v65 = a8;
  v66 = a3;
  v61 = a5;
  v62 = a6;
  v67 = a4;
  v63 = a1;
  v64 = a2;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v70 = *(v13 - 8);
  v14 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v68 = *(v17 - 8);
  v69 = v17;
  v18 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v22 = *(v21 + 24);
  swift_unownedRetainStrong();
  v23 = *(v22 + 32);

  v24 = v23;

  swift_beginAccess();
  outlined init with copy of [String : String](v21 + 176, &v74, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  v71 = v21;
  if (*(&v75 + 1))
  {
    v66 = a11;
    v67 = a12;
    v59 = v24;
    v60 = v20;
    v57 = v13;
    v58 = v16;
    v56 = a9;
    outlined init with take of ForceEffectBase(&v74, v80);
    v25 = *(a7 + 80);
    if (v25)
    {
      v26 = v25 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
      *v26 = 1;
      *(v26 + 8) = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C18A1E70;
    *(inited + 32) = 1701869940;
    v28 = MEMORY[0x1E69E6158];
    v29 = v61;
    v30 = v62;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = v29;
    *(inited + 56) = v30;
    v31 = MEMORY[0x1E6969080];
    *(inited + 72) = v28;
    *(inited + 80) = 1635017060;
    v33 = v63;
    v32 = v64;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v33;
    *(inited + 104) = v32;
    *(inited + 120) = v31;
    *(inited + 128) = 0x656D614E68746977;
    *(inited + 136) = 0xE800000000000000;
    *(inited + 144) = 0x64656D616E6E75;
    *(inited + 152) = 0xE700000000000000;
    *(inited + 168) = v28;
    *(inited + 176) = 0xD000000000000015;
    *(inited + 184) = 0x80000001C18ED680;
    v34 = MEMORY[0x1E69E6370];
    *(inited + 192) = *(a7 + 48);
    *(inited + 216) = v34;
    *(inited + 224) = 0xD000000000000018;
    *(inited + 232) = 0x80000001C18EDE40;
    *(inited + 240) = *(a7 + 49);
    *(inited + 264) = v34;
    *(inited + 272) = 0x694C79726F6D656DLL;
    *(inited + 280) = 0xEB0000000074696DLL;
    v35 = *(a7 + 56);
    v36 = *(a7 + 64);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    *(inited + 288) = v35;
    *(inited + 296) = v36;
    *(inited + 312) = v37;
    strcpy((inited + 320), "featuresToSkip");
    *(inited + 335) = -18;
    *(inited + 336) = *(a7 + 68);
    *(inited + 360) = &type metadata for Entity.__LoadOptions.LoadableFeatures;
    *(inited + 368) = 0x6C6C69666C7566;
    *(inited + 376) = 0xE700000000000000;
    outlined init with copy of Entity.__LoadOptions(a7, &v74);
    v38 = swift_allocObject();
    v39 = v77;
    *(v38 + 56) = v76;
    *(v38 + 72) = v39;
    *(v38 + 88) = v78;
    v40 = v75;
    *(v38 + 24) = v74;
    *(v38 + 16) = v65;
    v41 = v79;
    *(v38 + 40) = v40;
    v42 = v66;
    v43 = v67;
    *(v38 + 104) = v41;
    *(v38 + 112) = v42;
    *(v38 + 120) = v43;
    v44 = swift_allocObject();
    *(v44 + 16) = partial apply for specialized closure #2 in static Entity.doLoadEntityFromUSDData<A>(from:resourceIdentifier:type:options:loadFinisher:postLoad:fulfill:);
    *(v44 + 24) = v38;
    *(inited + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit6EntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit6EntityCs5Error_pGcMR);
    *(inited + 384) = partial apply for specialized thunk for @escaping @callee_guaranteed (@guaranteed Result<A, Error>) -> ();
    *(inited + 392) = v44;

    outlined copy of Data._Representation(v33, v32);
    v45 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
    swift_arrayDestroy();
    v46 = v56;
    if (v56)
    {
      v47 = swift_allocObject();
      *(v47 + 16) = v46;
      *(v47 + 24) = a10;
      *(&v75 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
      *&v74 = thunk for @escaping @callee_guaranteed (@guaranteed [String : Any]) -> (@error @owned Error)partial apply;
      *(&v74 + 1) = v47;
      outlined init with take of Any(&v74, v73);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v45;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v73, 0x64616F4C74736F70, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
      v45 = v72;
    }

    v49 = v81;
    v50 = v82;
    __swift_project_boxed_opaque_existential_1(v80, v81);
    (*(v50 + 40))(v45, v49, v50);

    return __swift_destroy_boxed_opaque_existential_1(v80);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v74, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
    v51 = swift_allocObject();
    v51[2] = a11;
    v51[3] = a12;
    v52 = v67;
    v51[4] = v66;
    v51[5] = v52;
    *&v76 = partial apply for specialized closure #1 in static Entity.doLoadEntityFromUSDData<A>(from:resourceIdentifier:type:options:loadFinisher:postLoad:fulfill:);
    *(&v76 + 1) = v51;
    *&v74 = MEMORY[0x1E69E9820];
    *(&v74 + 1) = 1107296256;
    *&v75 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v75 + 1) = &block_descriptor_635;
    v53 = _Block_copy(&v74);

    static DispatchQoS.unspecified.getter();
    v80[0] = MEMORY[0x1E69E7CC0];
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v20, v16, v53);

    _Block_release(v53);

    (*(v70 + 8))(v16, v13);
    (*(v68 + 8))(v20, v69);
  }
}

uint64_t _s10RealityKit6EntityC0A10FoundationE06doLoadC11FromUSDData33_F26D63620DB78A19432B1EBEC9E8266ALL4from18resourceIdentifier4type7options12loadFinisher04postF07fulfilly0D04DataV_S2SAC02__F7OptionsVAcDE0fV0AFLLCy_xGySDySSypGKcSgys6ResultOyxs5Error_pGctACRbzlFZAA06AnchorC0C_Tt6g5(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v65 = a8;
  v66 = a3;
  v61 = a5;
  v62 = a6;
  v67 = a4;
  v63 = a1;
  v64 = a2;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v70 = *(v13 - 8);
  v14 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v68 = *(v17 - 8);
  v69 = v17;
  v18 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v22 = *(v21 + 24);
  swift_unownedRetainStrong();
  v23 = *(v22 + 32);

  v24 = v23;

  swift_beginAccess();
  outlined init with copy of [String : String](v21 + 176, &v74, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  v71 = v21;
  if (*(&v75 + 1))
  {
    v66 = a11;
    v67 = a12;
    v59 = v24;
    v60 = v20;
    v57 = v13;
    v58 = v16;
    v56 = a9;
    outlined init with take of ForceEffectBase(&v74, v80);
    v25 = *(a7 + 80);
    if (v25)
    {
      v26 = v25 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
      *v26 = 1;
      *(v26 + 8) = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C18A1E70;
    *(inited + 32) = 1701869940;
    v28 = MEMORY[0x1E69E6158];
    v29 = v61;
    v30 = v62;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = v29;
    *(inited + 56) = v30;
    v31 = MEMORY[0x1E6969080];
    *(inited + 72) = v28;
    *(inited + 80) = 1635017060;
    v33 = v63;
    v32 = v64;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v33;
    *(inited + 104) = v32;
    *(inited + 120) = v31;
    *(inited + 128) = 0x656D614E68746977;
    *(inited + 136) = 0xE800000000000000;
    *(inited + 144) = 0x64656D616E6E75;
    *(inited + 152) = 0xE700000000000000;
    *(inited + 168) = v28;
    *(inited + 176) = 0xD000000000000015;
    *(inited + 184) = 0x80000001C18ED680;
    v34 = MEMORY[0x1E69E6370];
    *(inited + 192) = *(a7 + 48);
    *(inited + 216) = v34;
    *(inited + 224) = 0xD000000000000018;
    *(inited + 232) = 0x80000001C18EDE40;
    *(inited + 240) = *(a7 + 49);
    *(inited + 264) = v34;
    *(inited + 272) = 0x694C79726F6D656DLL;
    *(inited + 280) = 0xEB0000000074696DLL;
    v35 = *(a7 + 56);
    v36 = *(a7 + 64);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    *(inited + 288) = v35;
    *(inited + 296) = v36;
    *(inited + 312) = v37;
    strcpy((inited + 320), "featuresToSkip");
    *(inited + 335) = -18;
    *(inited + 336) = *(a7 + 68);
    *(inited + 360) = &type metadata for Entity.__LoadOptions.LoadableFeatures;
    *(inited + 368) = 0x6C6C69666C7566;
    *(inited + 376) = 0xE700000000000000;
    outlined init with copy of Entity.__LoadOptions(a7, &v74);
    v38 = swift_allocObject();
    v39 = v77;
    *(v38 + 56) = v76;
    *(v38 + 72) = v39;
    *(v38 + 88) = v78;
    v40 = v75;
    *(v38 + 24) = v74;
    *(v38 + 16) = v65;
    v41 = v79;
    *(v38 + 40) = v40;
    v42 = v66;
    v43 = v67;
    *(v38 + 104) = v41;
    *(v38 + 112) = v42;
    *(v38 + 120) = v43;
    v44 = swift_allocObject();
    *(v44 + 16) = partial apply for specialized closure #2 in static Entity.doLoadEntityFromUSDData<A>(from:resourceIdentifier:type:options:loadFinisher:postLoad:fulfill:);
    *(v44 + 24) = v38;
    *(inited + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit12AnchorEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit12AnchorEntityCs5Error_pGcMR);
    *(inited + 384) = partial apply for specialized thunk for @escaping @callee_guaranteed (@guaranteed Result<A, Error>) -> ();
    *(inited + 392) = v44;

    outlined copy of Data._Representation(v33, v32);
    v45 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
    swift_arrayDestroy();
    v46 = v56;
    if (v56)
    {
      v47 = swift_allocObject();
      *(v47 + 16) = v46;
      *(v47 + 24) = a10;
      *(&v75 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
      *&v74 = thunk for @escaping @callee_guaranteed (@guaranteed [String : Any]) -> (@error @owned Error)partial apply;
      *(&v74 + 1) = v47;
      outlined init with take of Any(&v74, v73);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v45;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v73, 0x64616F4C74736F70, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
      v45 = v72;
    }

    v49 = v81;
    v50 = v82;
    __swift_project_boxed_opaque_existential_1(v80, v81);
    (*(v50 + 40))(v45, v49, v50);

    return __swift_destroy_boxed_opaque_existential_1(v80);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v74, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
    v51 = swift_allocObject();
    v51[2] = a11;
    v51[3] = a12;
    v52 = v67;
    v51[4] = v66;
    v51[5] = v52;
    *&v76 = partial apply for specialized closure #1 in static Entity.doLoadEntityFromUSDData<A>(from:resourceIdentifier:type:options:loadFinisher:postLoad:fulfill:);
    *(&v76 + 1) = v51;
    *&v74 = MEMORY[0x1E69E9820];
    *(&v74 + 1) = 1107296256;
    *&v75 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v75 + 1) = &block_descriptor_417;
    v53 = _Block_copy(&v74);

    static DispatchQoS.unspecified.getter();
    v80[0] = MEMORY[0x1E69E7CC0];
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v20, v16, v53);

    _Block_release(v53);

    (*(v70 + 8))(v16, v13);
    (*(v68 + 8))(v20, v69);
  }
}

uint64_t _s10RealityKit6EntityC0A10FoundationE06doLoadC11FromUSDData33_F26D63620DB78A19432B1EBEC9E8266ALL4from18resourceIdentifier4type7options12loadFinisher04postF07fulfilly0D04DataV_S2SAC02__F7OptionsVAcDE0fV0AFLLCy_xGySDySSypGKcSgys6ResultOyxs5Error_pGctACRbzlFZAA011BodyTrackedC0C_Tt6g5(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v65 = a8;
  v66 = a3;
  v61 = a5;
  v62 = a6;
  v67 = a4;
  v63 = a1;
  v64 = a2;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v70 = *(v13 - 8);
  v14 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v68 = *(v17 - 8);
  v69 = v17;
  v18 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v22 = *(v21 + 24);
  swift_unownedRetainStrong();
  v23 = *(v22 + 32);

  v24 = v23;

  swift_beginAccess();
  outlined init with copy of [String : String](v21 + 176, &v74, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  v71 = v21;
  if (*(&v75 + 1))
  {
    v66 = a11;
    v67 = a12;
    v59 = v24;
    v60 = v20;
    v57 = v13;
    v58 = v16;
    v56 = a9;
    outlined init with take of ForceEffectBase(&v74, v80);
    v25 = *(a7 + 80);
    if (v25)
    {
      v26 = v25 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
      *v26 = 1;
      *(v26 + 8) = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C18A1E70;
    *(inited + 32) = 1701869940;
    v28 = MEMORY[0x1E69E6158];
    v29 = v61;
    v30 = v62;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = v29;
    *(inited + 56) = v30;
    v31 = MEMORY[0x1E6969080];
    *(inited + 72) = v28;
    *(inited + 80) = 1635017060;
    v33 = v63;
    v32 = v64;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v33;
    *(inited + 104) = v32;
    *(inited + 120) = v31;
    *(inited + 128) = 0x656D614E68746977;
    *(inited + 136) = 0xE800000000000000;
    *(inited + 144) = 0x64656D616E6E75;
    *(inited + 152) = 0xE700000000000000;
    *(inited + 168) = v28;
    *(inited + 176) = 0xD000000000000015;
    *(inited + 184) = 0x80000001C18ED680;
    v34 = MEMORY[0x1E69E6370];
    *(inited + 192) = *(a7 + 48);
    *(inited + 216) = v34;
    *(inited + 224) = 0xD000000000000018;
    *(inited + 232) = 0x80000001C18EDE40;
    *(inited + 240) = *(a7 + 49);
    *(inited + 264) = v34;
    *(inited + 272) = 0x694C79726F6D656DLL;
    *(inited + 280) = 0xEB0000000074696DLL;
    v35 = *(a7 + 56);
    v36 = *(a7 + 64);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    *(inited + 288) = v35;
    *(inited + 296) = v36;
    *(inited + 312) = v37;
    strcpy((inited + 320), "featuresToSkip");
    *(inited + 335) = -18;
    *(inited + 336) = *(a7 + 68);
    *(inited + 360) = &type metadata for Entity.__LoadOptions.LoadableFeatures;
    *(inited + 368) = 0x6C6C69666C7566;
    *(inited + 376) = 0xE700000000000000;
    outlined init with copy of Entity.__LoadOptions(a7, &v74);
    v38 = swift_allocObject();
    v39 = v77;
    *(v38 + 56) = v76;
    *(v38 + 72) = v39;
    *(v38 + 88) = v78;
    v40 = v75;
    *(v38 + 24) = v74;
    *(v38 + 16) = v65;
    v41 = v79;
    *(v38 + 40) = v40;
    v42 = v66;
    v43 = v67;
    *(v38 + 104) = v41;
    *(v38 + 112) = v42;
    *(v38 + 120) = v43;
    v44 = swift_allocObject();
    *(v44 + 16) = partial apply for specialized closure #2 in static Entity.doLoadEntityFromUSDData<A>(from:resourceIdentifier:type:options:loadFinisher:postLoad:fulfill:);
    *(v44 + 24) = v38;
    *(inited + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit17BodyTrackedEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit17BodyTrackedEntityCs5Error_pGcMR);
    *(inited + 384) = partial apply for specialized thunk for @escaping @callee_guaranteed (@guaranteed Result<A, Error>) -> ();
    *(inited + 392) = v44;

    outlined copy of Data._Representation(v33, v32);
    v45 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
    swift_arrayDestroy();
    v46 = v56;
    if (v56)
    {
      v47 = swift_allocObject();
      *(v47 + 16) = v46;
      *(v47 + 24) = a10;
      *(&v75 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
      *&v74 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed [String : Any]) -> (@error @owned Error);
      *(&v74 + 1) = v47;
      outlined init with take of Any(&v74, v73);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v45;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v73, 0x64616F4C74736F70, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
      v45 = v72;
    }

    v49 = v81;
    v50 = v82;
    __swift_project_boxed_opaque_existential_1(v80, v81);
    (*(v50 + 40))(v45, v49, v50);

    return __swift_destroy_boxed_opaque_existential_1(v80);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v74, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
    v51 = swift_allocObject();
    v51[2] = a11;
    v51[3] = a12;
    v52 = v67;
    v51[4] = v66;
    v51[5] = v52;
    *&v76 = partial apply for specialized closure #1 in static Entity.doLoadEntityFromUSDData<A>(from:resourceIdentifier:type:options:loadFinisher:postLoad:fulfill:);
    *(&v76 + 1) = v51;
    *&v74 = MEMORY[0x1E69E9820];
    *(&v74 + 1) = 1107296256;
    *&v75 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v75 + 1) = &block_descriptor_291;
    v53 = _Block_copy(&v74);

    static DispatchQoS.unspecified.getter();
    v80[0] = MEMORY[0x1E69E7CC0];
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v20, v16, v53);

    _Block_release(v53);

    (*(v70 + 8))(v16, v13);
    (*(v68 + 8))(v20, v69);
  }
}

void specialized closure #1 in static Entity.doLoadEntityFromUSDData<A>(from:resourceIdentifier:type:options:loadFinisher:postLoad:fulfill:)(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Entity.LoadError(0);
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
  v7 = swift_allocError();
  *v8 = a3;
  v8[1] = a4;
  swift_storeEnumTagMultiPayload();

  a1(v7, 1);
}

uint64_t specialized closure #2 in static Entity.doLoadEntityFromUSDData<A>(from:resourceIdentifier:type:options:loadFinisher:postLoad:fulfill:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  if (a2)
  {
    return a5(a1, 1);
  }

  outlined init with copy of Entity.__LoadOptions(a4, v10);
  specialized Entity.LoadFinisher.setupAfterUSDLoadAsync(_:options:_:)(a1, v10, a5, a6);
  return outlined destroy of BodyTrackingComponent?(v10, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
}

uint64_t _s10RealityKit6EntityC0A10FoundationE06doLoadC8FromData33_F26D63620DB78A19432B1EBEC9E8266ALL4from5named18resourceIdentifier7options12asyncOptions9loadTrace0W8Finisher7fulfilly0D00H0V_SSSgSSAC02__fV0VAC07__AsyncfV0VAD0fX0VzAcDE0fY0AFLLCy_xGys6ResultOyxs5Error_pGctACRbzlFZ0efcgaH0L_yyKACRbzlFyyYbcfU_AC_Ttg5(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  outlined init with copy of __REAssetService(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27SceneResourceLoadResultBase_pMd, &_s17RealityFoundation27SceneResourceLoadResultBase_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24SceneResourceEntityMaker_pMd, &_s17RealityFoundation24SceneResourceEntityMaker_pMR);
  swift_dynamicCast();
  v8 = v14;
  v9 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v10 = (*(v9 + 8))(v8, v9);
  __swift_destroy_boxed_opaque_existential_1(v13);
  outlined init with copy of Entity.__LoadOptions(a3, v12);
  specialized Entity.LoadFinisher.setupAfterRealityLoadAsync(_:options:_:)(v10, v12, a4, a5, specialized Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:));

  return outlined destroy of BodyTrackingComponent?(v12, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
}

uint64_t _s10RealityKit6EntityC0A10FoundationE06doLoadC8FromData33_F26D63620DB78A19432B1EBEC9E8266ALL4from5named18resourceIdentifier7options12asyncOptions9loadTrace0W8Finisher7fulfilly0D00H0V_SSSgSSAC02__fV0VAC07__AsyncfV0VAD0fX0VzAcDE0fY0AFLLCy_xGys6ResultOyxs5Error_pGctACRbzlFZ0efcgaH0L_yyKACRbzlFyyYbcfU_AA06AnchorC0C_Ttg5(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  outlined init with copy of __REAssetService(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27SceneResourceLoadResultBase_pMd, &_s17RealityFoundation27SceneResourceLoadResultBase_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24SceneResourceEntityMaker_pMd, &_s17RealityFoundation24SceneResourceEntityMaker_pMR);
  swift_dynamicCast();
  v8 = v14;
  v9 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v10 = (*(v9 + 16))(v8, v9);
  __swift_destroy_boxed_opaque_existential_1(v13);
  outlined init with copy of Entity.__LoadOptions(a3, v12);
  specialized Entity.LoadFinisher.setupAfterRealityLoadAsync(_:options:_:)(v10, v12, a4, a5, specialized Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:));

  return outlined destroy of BodyTrackingComponent?(v12, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
}

uint64_t specialized postLoad #1 <A>(data:) in doLoadEntityFromUSDData #1 <A>() in static Entity.doLoadEntityFromData<A>(from:named:resourceIdentifier:options:asyncOptions:loadTrace:loadFinisher:fulfill:)(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000);
  if ((v3 & 1) == 0)
  {
    goto LABEL_16;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v2, v13);
  if (!swift_dynamicCast())
  {
    goto LABEL_16;
  }

  if (v11 == 0x64616F4C74736F50 && v12 == 0xEC00000061746144)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (*(a1 + 16))
  {
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(0x797469746E65, 0xE600000000000000);
    if (v6)
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v5, v13);
      type metadata accessor for Entity();
      if (swift_dynamicCast())
      {
        if (*(a1 + 16))
        {
          v7 = specialized __RawDictionaryStorage.find<A>(_:)(0x646574726F706D69, 0xEE0073656E656353);
          if (v8)
          {
            outlined init with copy of Any(*(a1 + 56) + 32 * v7, v13);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
            if (swift_dynamicCast())
            {

              specialized static Entity.applyHackForRealityIOUSDImports(rootEntity:)(v9);
              specialized static Entity.addInputTargetComponentsAndCollisionShapesToTapTriggerTargets(for:)(v11);
            }
          }
        }
      }
    }
  }

LABEL_16:
  type metadata accessor for Entity.LoadError(0);
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

{
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000);
  if ((v3 & 1) == 0)
  {
    goto LABEL_16;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v2, v12);
  if (!swift_dynamicCast())
  {
    goto LABEL_16;
  }

  if (v10 == 0x64616F4C74736F50 && v11 == 0xEC00000061746144)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (*(a1 + 16))
  {
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(0x797469746E65, 0xE600000000000000);
    if (v6)
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v5, v12);
      type metadata accessor for AnchorEntity();
      if (swift_dynamicCast())
      {
        if (*(a1 + 16))
        {
          v7 = specialized __RawDictionaryStorage.find<A>(_:)(0x646574726F706D69, 0xEE0073656E656353);
          if (v8)
          {
            outlined init with copy of Any(*(a1 + 56) + 32 * v7, v12);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
            if (swift_dynamicCast())
            {
            }
          }
        }
      }
    }
  }

LABEL_16:
  type metadata accessor for Entity.LoadError(0);
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t specialized closure #1 in static Entity.doLoadEntityFromData<A>(from:named:resourceIdentifier:options:asyncOptions:loadTrace:loadFinisher:fulfill:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  _s10RealityKit6EntityC0A10FoundationE06doLoadC11FromUSDData33_F26D63620DB78A19432B1EBEC9E8266ALL4from18resourceIdentifier4type7options12loadFinisher04postF07fulfilly0D04DataV_S2SAC02__F7OptionsVAcDE0fV0AFLLCy_xGySDySSypGKcSgys6ResultOyxs5Error_pGctACRbzlFZAC_Tt6g5(a2, a3, a4, a5, 0xD000000000000011, 0x80000001C18EDF60, a6, a7, partial apply for specialized postLoad #1 <A>(data:) in doLoadEntityFromUSDData #1 <A>() in static Entity.doLoadEntityFromData<A>(from:named:resourceIdentifier:options:asyncOptions:loadTrace:loadFinisher:fulfill:), v16, a8, a9);
}

{
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  _s10RealityKit6EntityC0A10FoundationE06doLoadC11FromUSDData33_F26D63620DB78A19432B1EBEC9E8266ALL4from18resourceIdentifier4type7options12loadFinisher04postF07fulfilly0D04DataV_S2SAC02__F7OptionsVAcDE0fV0AFLLCy_xGySDySSypGKcSgys6ResultOyxs5Error_pGctACRbzlFZAA06AnchorC0C_Tt6g5(a2, a3, a4, a5, 0xD000000000000017, 0x80000001C18EDE80, a6, a7, partial apply for specialized postLoad #1 <A>(data:) in doLoadEntityFromUSDData #1 <A>() in static Entity.doLoadEntityFromData<A>(from:named:resourceIdentifier:options:asyncOptions:loadTrace:loadFinisher:fulfill:), v16, a8, a9);
}

void specialized closure #2 in static Entity.doLoadEntityFromData<A>(from:named:resourceIdentifier:options:asyncOptions:loadTrace:loadFinisher:fulfill:)(void (*a1)(void *, uint64_t), uint64_t a2, void *a3)
{
  type metadata accessor for CFErrorRef(0);
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
  v5 = swift_allocError();
  *v6 = a3;
  v7 = a3;
  a1(v5, 1);
}

uint64_t closure #1 in static Entity.loadAsync(from:named:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14)
{
  v39 = a8;
  v38 = a7;
  v36 = a4;
  v45 = a3;
  v34[1] = a2;
  v40 = a14;
  v37 = a12;
  v35 = a9;
  v41 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v41 - 8);
  v18 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v20 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v42 = *(v43 - 8);
  v21 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v23 = v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  outlined init with copy of Entity.__LoadOptions(a11, v48);
  v25 = swift_allocObject();
  v26 = v48[3];
  *(v25 + 104) = v48[2];
  *(v25 + 120) = v26;
  *(v25 + 136) = v48[4];
  v27 = v48[1];
  *(v25 + 72) = v48[0];
  *(v25 + 16) = v36;
  *(v25 + 24) = a5;
  v28 = v38;
  *(v25 + 32) = a6;
  *(v25 + 40) = v28;
  v29 = v35;
  *(v25 + 48) = v39;
  *(v25 + 56) = v29;
  *(v25 + 64) = a10;
  *(v25 + 152) = v49;
  *(v25 + 88) = v27;
  *(v25 + 160) = v37;
  v30 = v40;
  *(v25 + 168) = a13;
  *(v25 + 176) = v30;
  *(v25 + 184) = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  *(v25 + 192) = v24;
  aBlock[4] = partial apply for closure #1 in closure #1 in static Entity.loadAsync(from:named:options:asyncOptions:);
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_602;
  v31 = _Block_copy(aBlock);

  outlined copy of Data._Representation(a5, a6);

  static DispatchQoS.unspecified.getter();
  v46 = MEMORY[0x1E69E7CC0];
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v32 = v41;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v23, v20, v31);
  _Block_release(v31);
  (*(v44 + 8))(v20, v32);
  (*(v42 + 8))(v23, v43);
}

uint64_t closure #1 in closure #1 in static Entity.loadAsync(from:named:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v54 = a8;
  v55 = a6;
  v56 = a7;
  v43 = a4;
  v44 = a5;
  v41[2] = a1;
  v47 = a13;
  v46 = a12;
  v42 = a11;
  v49 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v49 - 8);
  v15 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v50 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v52 = *(v17 - 8);
  v53 = v17;
  v18 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v45 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LoadTrace(0);
  v20 = swift_projectBox();
  swift_beginAccess();
  v21 = specialized static __ServiceLocator.shared.getter();
  v22 = *(*(v21 + 168) + 16);
  swift_beginAccess();
  v23 = *(v21 + 24);
  swift_unownedRetainStrong();
  v24 = *(v23 + 32);

  v48 = v22;
  v25 = v24;

  v26 = *(*(v21 + 168) + 32);
  memset(v67, 0, 73);
  v66 = 0u;
  v67[73] = 1;
  v68 = 0;
  v69 = 0;
  v65[0] = 1;
  v67[75] = a9 != 2;
  v27 = v54;
  v67[74] = (a9 & 0xFE) != 2;
  v70 = *(v54 + 80);

  outlined assign with copy of __DownsamplingStrategy?(v27, &v67[8]);
  v41[3] = a2;
  v41[4] = a3;
  __SceneResourceCache.loadSceneResource(from:named:resourceIdentifier:loadOptions:)(v43, v44, v55, v56, v65, v62);
  v28 = v63;
  v29 = v64;
  __swift_project_boxed_opaque_existential_1(v62, v63);
  *(v20 + 16) = (*(v29 + 16))(v28, v29) & 1;
  outlined init with copy of __REAssetService(v62, v61);
  outlined init with copy of Entity.__LoadOptions(v27, v59);
  v30 = swift_allocObject();
  outlined init with take of ForceEffectBase(v61, v30 + 16);
  *(v30 + 56) = v42;
  v31 = v59[3];
  *(v30 + 96) = v59[2];
  *(v30 + 112) = v31;
  *(v30 + 128) = v59[4];
  v32 = v60;
  v33 = v59[1];
  *(v30 + 64) = v59[0];
  *(v30 + 80) = v33;
  v34 = v46;
  v35 = v47;
  *(v30 + 144) = v32;
  *(v30 + 152) = v34;
  *(v30 + 160) = v35;
  v58[4] = _s10RealityKit6EntityC0A10FoundationE06doLoadC8FromData33_F26D63620DB78A19432B1EBEC9E8266ALL4from5named18resourceIdentifier7options12asyncOptions9loadTrace0W8Finisher7fulfilly0D00H0V_SSSgSSAC02__fV0VAC07__AsyncfV0VAD0fX0VzAcDE0fY0AFLLCy_xGys6ResultOyxs5Error_pGctACRbzlFZ0efcgaH0L_yyKACRbzlFyyYbcfU_AC_Ttg5TA;
  v58[5] = v30;
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 1107296256;
  v58[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v58[3] = &block_descriptor_626;
  v36 = _Block_copy(v58);

  v44 = v26;
  v37 = v45;
  static DispatchQoS.unspecified.getter();
  v57 = MEMORY[0x1E69E7CC0];
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v38 = v49;
  v39 = v50;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v37, v39, v36);
  _Block_release(v36);

  (*(v51 + 8))(v39, v38);
  (*(v52 + 8))(v37, v53);

  __swift_destroy_boxed_opaque_existential_1(v62);
  outlined destroy of __REAssetBundle.LoadOptions(v65);
  return swift_endAccess();
}

uint64_t closure #1 in static Entity.loadAnchorAsync(from:named:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14)
{
  v39 = a8;
  v38 = a7;
  v36 = a4;
  v45 = a3;
  v34[1] = a2;
  v40 = a14;
  v37 = a12;
  v35 = a9;
  v41 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v41 - 8);
  v18 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v20 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v42 = *(v43 - 8);
  v21 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v23 = v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  outlined init with copy of Entity.__LoadOptions(a11, v48);
  v25 = swift_allocObject();
  v26 = v48[3];
  *(v25 + 104) = v48[2];
  *(v25 + 120) = v26;
  *(v25 + 136) = v48[4];
  v27 = v48[1];
  *(v25 + 72) = v48[0];
  *(v25 + 16) = v36;
  *(v25 + 24) = a5;
  v28 = v38;
  *(v25 + 32) = a6;
  *(v25 + 40) = v28;
  v29 = v35;
  *(v25 + 48) = v39;
  *(v25 + 56) = v29;
  *(v25 + 64) = a10;
  *(v25 + 152) = v49;
  *(v25 + 88) = v27;
  *(v25 + 160) = v37;
  v30 = v40;
  *(v25 + 168) = a13;
  *(v25 + 176) = v30;
  *(v25 + 184) = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  *(v25 + 192) = v24;
  aBlock[4] = partial apply for closure #1 in closure #1 in static Entity.loadAnchorAsync(from:named:options:asyncOptions:);
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_360;
  v31 = _Block_copy(aBlock);

  outlined copy of Data._Representation(a5, a6);

  static DispatchQoS.unspecified.getter();
  v46 = MEMORY[0x1E69E7CC0];
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v32 = v41;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v23, v20, v31);
  _Block_release(v31);
  (*(v44 + 8))(v20, v32);
  (*(v42 + 8))(v23, v43);
}

uint64_t closure #1 in closure #1 in static Entity.loadAnchorAsync(from:named:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v54 = a8;
  v55 = a6;
  v56 = a7;
  v43 = a4;
  v44 = a5;
  v41[2] = a1;
  v47 = a13;
  v46 = a12;
  v42 = a11;
  v49 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v49 - 8);
  v15 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v50 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v52 = *(v17 - 8);
  v53 = v17;
  v18 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v45 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LoadTrace(0);
  v20 = swift_projectBox();
  swift_beginAccess();
  v21 = specialized static __ServiceLocator.shared.getter();
  v22 = *(*(v21 + 168) + 16);
  swift_beginAccess();
  v23 = *(v21 + 24);
  swift_unownedRetainStrong();
  v24 = *(v23 + 32);

  v48 = v22;
  v25 = v24;

  v26 = *(*(v21 + 168) + 32);
  memset(v67, 0, 73);
  v66 = 0u;
  v67[73] = 1;
  v68 = 0;
  v69 = 0;
  v65[0] = 1;
  v67[75] = a9 != 2;
  v27 = v54;
  v67[74] = (a9 & 0xFE) != 2;
  v70 = *(v54 + 80);

  outlined assign with copy of __DownsamplingStrategy?(v27, &v67[8]);
  v41[3] = a2;
  v41[4] = a3;
  __SceneResourceCache.loadSceneResource(from:named:resourceIdentifier:loadOptions:)(v43, v44, v55, v56, v65, v62);
  v28 = v63;
  v29 = v64;
  __swift_project_boxed_opaque_existential_1(v62, v63);
  *(v20 + 16) = (*(v29 + 16))(v28, v29) & 1;
  outlined init with copy of __REAssetService(v62, v61);
  outlined init with copy of Entity.__LoadOptions(v27, v59);
  v30 = swift_allocObject();
  outlined init with take of ForceEffectBase(v61, v30 + 16);
  *(v30 + 56) = v42;
  v31 = v59[3];
  *(v30 + 96) = v59[2];
  *(v30 + 112) = v31;
  *(v30 + 128) = v59[4];
  v32 = v60;
  v33 = v59[1];
  *(v30 + 64) = v59[0];
  *(v30 + 80) = v33;
  v34 = v46;
  v35 = v47;
  *(v30 + 144) = v32;
  *(v30 + 152) = v34;
  *(v30 + 160) = v35;
  v58[4] = _s10RealityKit6EntityC0A10FoundationE06doLoadC8FromData33_F26D63620DB78A19432B1EBEC9E8266ALL4from5named18resourceIdentifier7options12asyncOptions9loadTrace0W8Finisher7fulfilly0D00H0V_SSSgSSAC02__fV0VAC07__AsyncfV0VAD0fX0VzAcDE0fY0AFLLCy_xGys6ResultOyxs5Error_pGctACRbzlFZ0efcgaH0L_yyKACRbzlFyyYbcfU_AA06AnchorC0C_Ttg5TA;
  v58[5] = v30;
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 1107296256;
  v58[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v58[3] = &block_descriptor_384;
  v36 = _Block_copy(v58);

  v44 = v26;
  v37 = v45;
  static DispatchQoS.unspecified.getter();
  v57 = MEMORY[0x1E69E7CC0];
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v38 = v49;
  v39 = v50;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v37, v39, v36);
  _Block_release(v36);

  (*(v51 + 8))(v39, v38);
  (*(v52 + 8))(v37, v53);

  __swift_destroy_boxed_opaque_existential_1(v62);
  outlined destroy of __REAssetBundle.LoadOptions(v65);
  return swift_endAccess();
}

uint64_t closure #1 in static Entity.loadBodyTrackedAsync(from:named:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;

  _s10RealityKit6EntityC0A10FoundationE06doLoadC11FromUSDData33_F26D63620DB78A19432B1EBEC9E8266ALL4from18resourceIdentifier4type7options12loadFinisher04postF07fulfilly0D04DataV_S2SAC02__F7OptionsVAcDE0fV0AFLLCy_xGySDySSypGKcSgys6ResultOyxs5Error_pGctACRbzlFZAA011BodyTrackedC0C_Tt6g5(a4, a5, a6, a7, 0xD00000000000001CLL, 0x80000001C18EDE60, a8, a9, postLoad #1 (data:) in closure #1 in static Entity.loadBodyTrackedAsync(from:named:options:asyncOptions:), 0, thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply, v16);
}

uint64_t postLoad #1 (data:) in closure #1 in static Entity.loadAnchorAsync(named:in:)(uint64_t a1, void (*a2)(void))
{
  if (!*(a1 + 16))
  {
    goto LABEL_12;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_12;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v4, v12);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (v10 == 0x64616F4C74736F50 && v11 == 0xEC00000061746144)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if (*(a1 + 16))
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(0x797469746E65, 0xE600000000000000);
    if (v8)
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v7, v12);
      a2(0);
      if (swift_dynamicCast())
      {
      }
    }
  }

LABEL_12:
  type metadata accessor for Entity.LoadError(0);
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t closure #1 in static Entity.loadModelAsync(from:named:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v51 = a6;
  v52 = a4;
  v53 = a5;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v56 = *(v13 - 8);
  v57 = v13;
  v14 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v54 = *(v17 - 8);
  v55 = v17;
  v18 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;

  v22 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v23 = *(v22 + 24);
  swift_unownedRetainStrong();
  v24 = *(v23 + 32);

  v25 = v24;

  swift_beginAccess();
  outlined init with copy of [String : String](v22 + 176, &v59, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  v58 = v22;
  if (*(&v60 + 1))
  {
    v50 = v21;
    v51 = v25;
    v49[0] = v20;
    v49[1] = v16;
    outlined init with take of ForceEffectBase(&v59, v65);
    v26 = *(a8 + 80);
    if (v26)
    {
      v27 = v26 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
      *v27 = 1;
      *(v27 + 8) = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 32) = 1701869940;
    *(inited + 16) = xmmword_1C18A1E70;
    v29 = MEMORY[0x1E69E6158];
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = 0xD000000000000016;
    *(inited + 56) = 0x80000001C18EDE20;
    *(inited + 72) = v29;
    *(inited + 80) = 1635017060;
    v30 = MEMORY[0x1E6969080];
    v32 = v52;
    v31 = v53;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v32;
    *(inited + 104) = v31;
    *(inited + 120) = v30;
    *(inited + 128) = 0x656D614E68746977;
    *(inited + 136) = 0xE800000000000000;
    *(inited + 144) = 0x64656D616E6E75;
    *(inited + 152) = 0xE700000000000000;
    *(inited + 168) = v29;
    *(inited + 176) = 0xD000000000000015;
    *(inited + 184) = 0x80000001C18ED680;
    v33 = MEMORY[0x1E69E6370];
    *(inited + 192) = *(a8 + 48);
    *(inited + 216) = v33;
    *(inited + 224) = 0xD000000000000018;
    *(inited + 232) = 0x80000001C18EDE40;
    *(inited + 240) = *(a8 + 49);
    *(inited + 264) = v33;
    *(inited + 272) = 0x694C79726F6D656DLL;
    *(inited + 280) = 0xEB0000000074696DLL;
    v34 = *(a8 + 56);
    v35 = *(a8 + 64);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    *(inited + 288) = v34;
    *(inited + 296) = v35;
    *(inited + 312) = v36;
    strcpy((inited + 320), "featuresToSkip");
    *(inited + 335) = -18;
    *(inited + 336) = *(a8 + 68);
    *(inited + 360) = &type metadata for Entity.__LoadOptions.LoadableFeatures;
    *(inited + 368) = 0x6C6C69666C7566;
    *(inited + 376) = 0xE700000000000000;
    outlined init with copy of Entity.__LoadOptions(a8, &v59);
    v37 = swift_allocObject();
    v38 = v62;
    *(v37 + 56) = v61;
    *(v37 + 72) = v38;
    *(v37 + 88) = v63;
    v39 = v60;
    *(v37 + 24) = v59;
    *(v37 + 16) = a9;
    v40 = v64;
    *(v37 + 40) = v39;
    *(v37 + 104) = v40;
    *(v37 + 112) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TextureResource, Error>) -> ();
    *(v37 + 120) = v50;
    v41 = swift_allocObject();
    *(v41 + 16) = partial apply for specialized closure #2 in static Entity.doLoadEntityFromUSDData<A>(from:resourceIdentifier:type:options:loadFinisher:postLoad:fulfill:);
    *(v41 + 24) = v37;
    *(inited + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit11ModelEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit11ModelEntityCs5Error_pGcMR);
    *(inited + 384) = partial apply for specialized thunk for @escaping @callee_guaranteed (@guaranteed Result<A, Error>) -> ();
    *(inited + 392) = v41;

    outlined copy of Data._Representation(v32, v31);
    v42 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
    swift_arrayDestroy();
    v43 = v66;
    v44 = v67;
    __swift_project_boxed_opaque_existential_1(v65, v66);
    (*(v44 + 40))(v42, v43, v44);

    __swift_destroy_boxed_opaque_existential_1(v65);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v59, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
    v45 = swift_allocObject();
    v45[2] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TextureResource, Error>) -> ();
    v45[3] = v21;
    v45[4] = v51;
    v45[5] = a7;
    *&v61 = partial apply for specialized closure #1 in static Entity.doLoadEntityFromUSDData<A>(from:resourceIdentifier:type:options:loadFinisher:postLoad:fulfill:);
    *(&v61 + 1) = v45;
    *&v59 = MEMORY[0x1E69E9820];
    *(&v59 + 1) = 1107296256;
    *&v60 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v60 + 1) = &block_descriptor_232;
    v46 = _Block_copy(&v59);

    static DispatchQoS.unspecified.getter();
    v65[0] = MEMORY[0x1E69E7CC0];
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v47 = v57;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v20, v16, v46);

    _Block_release(v46);

    (*(v56 + 8))(v16, v47);
    (*(v54 + 8))(v20, v55);
  }
}

uint64_t Entity.init(from:named:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[24] = a4;
  v5[25] = v4;
  v5[22] = a2;
  v5[23] = a3;
  v5[21] = a1;
  v5[26] = type metadata accessor for MainActor();
  v5[27] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[28] = v7;
  v5[29] = v6;

  return MEMORY[0x1EEE6DFA0](Entity.init(from:named:), v7, v6);
}

uint64_t Entity.init(from:named:)()
{
  *(v0 + 16) = 0u;
  *(v0 + 136) = 0;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 65) = 0;
  *(v0 + 72) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 80) = 1;
  *(v0 + 84) = 0;
  *(v0 + 88) = 2;
  *(v0 + 96) = 0;
  outlined assign with take of __DownsamplingStrategy?(v0 + 104, v0 + 16);
  *(v0 + 56) = 0;
  swift_beginAccess();
  *(v0 + 64) = static RKARSystemCore.generateDecimatedMeshes;
  if (one-time initialization token for asynchronousLoadOptions != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  *(v0 + 328) = static Entity.asynchronousLoadOptions;
  v2 = *(v1 + 280);
  v11 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 240) = v4;
  *v4 = v0;
  v4[1] = Entity.init(from:named:);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 176);
  v8 = *(v0 + 184);
  v9 = *(v0 + 168);

  return v11(v9, v7, v8, v5, v0 + 16, v0 + 328);
}

{
  v1 = v0[31];
  v2 = v0[26];
  v0[33] = (*(v0[25] + 232))();

  Entity.copy(to:recursive:)(v3, 1);
  v0[34] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[35] = v5;
  v0[36] = v4;

  return MEMORY[0x1EEE6DFA0](Entity.init(from:named:), v5, v4);
}

{
  v2 = v0[25];
  v1 = v0[26];
  v3 = static Entity.enumerateReferences(root:)(v0[33]);
  v0[37] = v3;
  v0[38] = static MainActor.shared.getter();
  v4 = swift_task_alloc();
  v0[39] = v4;
  *(v4 + 16) = v3;
  v5 = *(MEMORY[0x1E69E88A0] + 4);
  v6 = swift_task_alloc();
  v0[40] = v6;
  *v6 = v0;
  v6[1] = Entity.init(from:named:);

  return MEMORY[0x1EEE6DD58]();
}

{
  v1 = v0[34];

  v2 = v0[28];
  v3 = v0[29];

  return MEMORY[0x1EEE6DFA0](Entity.init(from:named:), v2, v3);
}

{
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[27];
  v5 = v0[21];
  v4 = v0[22];

  outlined consume of Data._Representation(v5, v4);
  outlined destroy of Entity.__LoadOptions((v0 + 2));

  v6 = v0[1];
  v7 = v0[33];

  return v6(v7);
}

{
  v1 = v0[27];
  v2 = v0[21];
  v3 = v0[22];

  outlined consume of Data._Representation(v2, v3);
  outlined destroy of Entity.__LoadOptions((v0 + 2));
  v4 = v0[1];
  v5 = v0[32];

  return v4();
}

uint64_t Entity.init(from:named:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 240);
  v5 = *(*v2 + 192);
  v10 = *v2;
  v3[31] = a1;
  v3[32] = v1;

  v6 = v3[28];
  v7 = v3[29];
  if (v1)
  {
    v8 = Entity.init(from:named:);
  }

  else
  {
    v8 = Entity.init(from:named:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

void Entity.init(from:named:)()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = v2[38];
    v5 = v2[39];
    v7 = v2[37];

    v8 = v2[35];
    v9 = v2[36];

    MEMORY[0x1EEE6DFA0](Entity.init(from:named:), v8, v9);
  }
}

uint64_t Entity.init(from:named:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[33] = a5;
  v6[34] = v5;
  v6[31] = a3;
  v6[32] = a4;
  v6[29] = a1;
  v6[30] = a2;
  v6[35] = type metadata accessor for MainActor();
  v6[36] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[37] = v8;
  v6[38] = v7;

  return MEMORY[0x1EEE6DFA0](Entity.init(from:named:options:), v8, v7);
}

uint64_t Entity.init(from:named:options:)()
{
  outlined init with copy of [String : String](*(v0 + 264), v0 + 104, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
  if (*(v0 + 128) == 1)
  {
    *(v0 + 192) = 0u;
    *(v0 + 224) = 0;
    *(v0 + 208) = 0u;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 80) = 1;
    *(v0 + 84) = 0;
    *(v0 + 88) = 2;
    *(v0 + 96) = 0;
    outlined assign with take of __DownsamplingStrategy?(v0 + 192, v0 + 16);
    *(v0 + 56) = 0;
    if (*(v0 + 128) != 1)
    {
      outlined destroy of BodyTrackingComponent?(v0 + 104, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
    }
  }

  else
  {
    v1 = *(v0 + 152);
    *(v0 + 48) = *(v0 + 136);
    *(v0 + 64) = v1;
    *(v0 + 80) = *(v0 + 168);
    *(v0 + 96) = *(v0 + 184);
    v2 = *(v0 + 120);
    *(v0 + 16) = *(v0 + 104);
    *(v0 + 32) = v2;
  }

  if (one-time initialization token for asynchronousLoadOptions != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 272);
  *(v0 + 400) = static Entity.asynchronousLoadOptions;
  v4 = *(v3 + 280);
  v13 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 312) = v6;
  *v6 = v0;
  v6[1] = Entity.init(from:named:options:);
  v7 = *(v0 + 272);
  v8 = *(v0 + 248);
  v9 = *(v0 + 256);
  v11 = *(v0 + 232);
  v10 = *(v0 + 240);

  return v13(v11, v10, v8, v9, v0 + 16, v0 + 400);
}

{
  v1 = v0[40];
  v2 = v0[35];
  v0[42] = (*(v0[34] + 232))();

  Entity.copy(to:recursive:)(v3, 1);
  v0[43] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[44] = v5;
  v0[45] = v4;

  return MEMORY[0x1EEE6DFA0](Entity.init(from:named:options:), v5, v4);
}

{
  v2 = v0[34];
  v1 = v0[35];
  v3 = static Entity.enumerateReferences(root:)(v0[42]);
  v0[46] = v3;
  v0[47] = static MainActor.shared.getter();
  v4 = swift_task_alloc();
  v0[48] = v4;
  *(v4 + 16) = v3;
  v5 = *(MEMORY[0x1E69E88A0] + 4);
  v6 = swift_task_alloc();
  v0[49] = v6;
  *v6 = v0;
  v6[1] = Entity.init(from:named:options:);

  return MEMORY[0x1EEE6DD58]();
}

{
  v1 = v0[43];

  v2 = v0[37];
  v3 = v0[38];

  return MEMORY[0x1EEE6DFA0](Entity.init(from:named:options:), v2, v3);
}

{
  v1 = v0[36];

  v2 = v0[40];
  v3 = v0[33];
  v5 = v0[29];
  v4 = v0[30];
  if (v0[12])
  {
    Entity.LoadStatistics.log()();

    outlined consume of Data._Representation(v5, v4);
    outlined destroy of BodyTrackingComponent?(v3, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v0[33], &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);

    outlined consume of Data._Representation(v5, v4);
  }

  v6 = v0[42];
  outlined destroy of Entity.__LoadOptions((v0 + 2));

  v7 = v0[1];
  v8 = v0[42];

  return v7(v8);
}

{
  v1 = v0[36];
  v2 = v0[33];
  v4 = v0[29];
  v3 = v0[30];

  outlined consume of Data._Representation(v4, v3);
  outlined destroy of BodyTrackingComponent?(v2, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
  outlined destroy of Entity.__LoadOptions((v0 + 2));
  v5 = v0[1];
  v6 = v0[41];

  return v5();
}

uint64_t Entity.init(from:named:options:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 312);
  v5 = *(*v2 + 256);
  v10 = *v2;
  v3[40] = a1;
  v3[41] = v1;

  v6 = v3[37];
  v7 = v3[38];
  if (v1)
  {
    v8 = Entity.init(from:named:options:);
  }

  else
  {
    v8 = Entity.init(from:named:options:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

void Entity.init(from:named:options:)()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = v2[47];
    v5 = v2[48];
    v7 = v2[46];

    v8 = v2[44];
    v9 = v2[45];

    MEMORY[0x1EEE6DFA0](Entity.init(from:named:options:), v8, v9);
  }
}

uint64_t Entity.init(fromData:withName:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[31] = a5;
  v6[32] = v5;
  v6[29] = a1;
  v6[30] = a2;

  v6[33] = type metadata accessor for MainActor();
  v6[34] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[35] = v8;
  v6[36] = v7;

  return MEMORY[0x1EEE6DFA0](Entity.init(fromData:withName:options:), v8, v7);
}

uint64_t Entity.init(fromData:withName:options:)()
{
  outlined init with copy of [String : String](*(v0 + 248), v0 + 104, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
  if (*(v0 + 128) == 1)
  {
    *(v0 + 192) = 0u;
    *(v0 + 224) = 0;
    *(v0 + 208) = 0u;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 80) = 1;
    *(v0 + 84) = 0;
    *(v0 + 88) = 2;
    *(v0 + 96) = 0;
    outlined assign with take of __DownsamplingStrategy?(v0 + 192, v0 + 16);
    *(v0 + 56) = 0;
    if (*(v0 + 128) != 1)
    {
      outlined destroy of BodyTrackingComponent?(v0 + 104, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
    }
  }

  else
  {
    v1 = *(v0 + 152);
    *(v0 + 48) = *(v0 + 136);
    *(v0 + 64) = v1;
    *(v0 + 80) = *(v0 + 168);
    *(v0 + 96) = *(v0 + 184);
    v2 = *(v0 + 120);
    *(v0 + 16) = *(v0 + 104);
    *(v0 + 32) = v2;
  }

  if (one-time initialization token for asynchronousLoadOptions != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 256);
  *(v0 + 384) = static Entity.asynchronousLoadOptions;
  v4 = *(v3 + 280);
  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 296) = v6;
  *v6 = v0;
  v6[1] = Entity.init(fromData:withName:options:);
  v7 = *(v0 + 256);
  v9 = *(v0 + 232);
  v8 = *(v0 + 240);

  return (v11)(v9, v8, 0, 0, v0 + 16, v0 + 384);
}

{
  v1 = v0[38];
  v2 = v0[33];
  v0[40] = (*(v0[32] + 232))();

  Entity.copy(to:recursive:)(v3, 1);
  v0[41] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[42] = v5;
  v0[43] = v4;

  return MEMORY[0x1EEE6DFA0](Entity.init(fromData:withName:options:), v5, v4);
}

{
  v2 = v0[32];
  v1 = v0[33];
  v3 = static Entity.enumerateReferences(root:)(v0[40]);
  v0[44] = v3;
  v0[45] = static MainActor.shared.getter();
  v4 = swift_task_alloc();
  v0[46] = v4;
  *(v4 + 16) = v3;
  v5 = *(MEMORY[0x1E69E88A0] + 4);
  v6 = swift_task_alloc();
  v0[47] = v6;
  *v6 = v0;
  v6[1] = Entity.init(fromData:withName:options:);

  return MEMORY[0x1EEE6DD58]();
}

{
  v1 = v0[41];

  v2 = v0[35];
  v3 = v0[36];

  return MEMORY[0x1EEE6DFA0](Entity.init(fromData:withName:options:), v2, v3);
}

{
  v1 = v0[34];

  v2 = v0[38];
  v3 = v0[30];
  v4 = v0[31];
  v5 = v0[29];
  if (v0[12])
  {
    Entity.LoadStatistics.log()();

    outlined consume of Data._Representation(v5, v3);
    outlined destroy of BodyTrackingComponent?(v4, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v0[31], &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);

    outlined consume of Data._Representation(v5, v3);
  }

  v6 = v0[40];
  outlined destroy of Entity.__LoadOptions((v0 + 2));

  v7 = v0[1];
  v8 = v0[40];

  return v7(v8);
}

{
  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[29];

  outlined consume of Data._Representation(v4, v2);
  outlined destroy of BodyTrackingComponent?(v3, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
  outlined destroy of Entity.__LoadOptions((v0 + 2));
  v5 = v0[1];
  v6 = v0[39];

  return v5();
}

uint64_t Entity.init(fromData:withName:options:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 296);
  v9 = *v2;
  v3[38] = a1;
  v3[39] = v1;

  v5 = v3[35];
  v6 = v3[36];
  if (v1)
  {
    v7 = Entity.init(fromData:withName:options:);
  }

  else
  {
    v7 = Entity.init(fromData:withName:options:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

void Entity.init(fromData:withName:options:)()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = v2[45];
    v5 = v2[46];
    v7 = v2[44];

    v8 = v2[42];
    v9 = v2[43];

    MEMORY[0x1EEE6DFA0](Entity.init(fromData:withName:options:), v8, v9);
  }
}

uint64_t static Entity.precompileShaderGraphMaterials(from:)(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1[10] = a1;
  type metadata accessor for MainActor();
  v1[11] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[12] = v2;
  v1[13] = v3;
  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](static Entity.precompileShaderGraphMaterials(from:), v2, v3);
}

uint64_t static Entity.precompileShaderGraphMaterials(from:)()
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = v0[10];
  v2 = specialized static __ServiceLocator.shared.getter();
  v0[14] = v2;
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, (v0 + 2));
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v5 = *(v4 + 32);

  v0[15] = v5(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v0[2] = 0;
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  v9 = RERealityFileMountFileAtURL();
  v0[16] = v9;

  if (v9)
  {
    v0[2] = 0;
    v10 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE6DFA0](static Entity.precompileShaderGraphMaterials(from:), 0, 0);
  }

  else
  {
    v11 = v0[11];

    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(v0[2]);
    v12 = v0[2];
    if (v12)
    {
      type metadata accessor for CFErrorRef(0);
      _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
      swift_allocError();
      *v13 = v12;
    }

    else
    {
      v14 = v0[10];
      _StringGuts.grow(_:)(34);

      v15 = URL.path.getter();
      MEMORY[0x1C68F3410](v15);

      MEMORY[0x1C68F3410](46, 0xE100000000000000);
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v16 = 0xD00000000000001FLL;
      *(v16 + 8) = 0x80000001C18E1F00;
      *(v16 + 16) = 4;
    }

    swift_willThrow();
    v17 = v0[14];

    v18 = v0[1];
    v19 = *MEMORY[0x1E69E9840];

    return v18();
  }
}

{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  *(v0 + 136) = RERealityFilePrewarmShaderGraphMaterialsCache();
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](static Entity.precompileShaderGraphMaterials(from:), v3, v4);
}

{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);

  if (v1 == 1)
  {
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v5 = *(v0 + 112);
    RERealityFileUnmount();

    v6 = *(v0 + 8);
    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = *(v0 + 16);
    if (v8)
    {
      type metadata accessor for CFErrorRef(0);
      _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
      swift_allocError();
      *v9 = v8;
    }

    else
    {
      v10 = *(v0 + 80);
      _StringGuts.grow(_:)(68);
      MEMORY[0x1C68F3410](0xD000000000000041, 0x80000001C18ED8C0);
      v11 = URL.path.getter();
      MEMORY[0x1C68F3410](v11);

      MEMORY[0x1C68F3410](46, 0xE100000000000000);
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v12 = 0;
      *(v12 + 8) = 0xE000000000000000;
      *(v12 + 16) = 4;
    }

    v14 = *(v0 + 120);
    v13 = *(v0 + 128);
    swift_willThrow();
    RERealityFileUnmount();
    v15 = *(v0 + 112);

    v6 = *(v0 + 8);
    v16 = *MEMORY[0x1E69E9840];
  }

  return v6();
}

uint64_t Entity.__LoadOptions.init(mipmapLoadBehavior:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1 < 1)
  {
    v8 = 0;
    v4 = 0uLL;
    v6 = 0u;
    v7 = 0u;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
  }

  else
  {
    v8 = &protocol witness table for __Downsampling.SkipHighResolution;
    *(&v7 + 1) = &type metadata for __Downsampling.SkipHighResolution;
    *&v6 = v3;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v4 = 0uLL;
  }

  *a2 = v4;
  *(a2 + 16) = v4;
  *(a2 + 32) = 0;
  *(a2 + 64) = 1;
  *(a2 + 68) = 0;
  *(a2 + 72) = 2;
  *(a2 + 80) = 0;
  result = outlined assign with take of __DownsamplingStrategy?(&v6, a2);
  *(a2 + 40) = 0;
  return result;
}

uint64_t Entity.init(named:in:mipmapLoadBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  *(v5 + 208) = a3;
  *(v5 + 216) = v4;
  *(v5 + 192) = a1;
  *(v5 + 200) = a2;
  *(v5 + 224) = *a4;
  type metadata accessor for MainActor();
  *(v5 + 240) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 248) = v7;
  *(v5 + 256) = v6;

  return MEMORY[0x1EEE6DFA0](Entity.init(named:in:mipmapLoadBehavior:), v7, v6);
}

uint64_t Entity.init(named:in:mipmapLoadBehavior:)()
{
  v10 = v0;
  v1 = *(v0 + 208);
  v9 = *(v0 + 224);
  Entity.__LoadOptions.init(mipmapLoadBehavior:)(&v9, v0 + 16);
  outlined init with copy of Entity.__LoadOptions(v0 + 16, v0 + 104);
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 264) = v3;
  *v3 = v0;
  v3[1] = Entity.init(named:in:mipmapLoadBehavior:);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  v7 = *(v0 + 192);
  v6 = *(v0 + 200);

  return Entity.init(named:in:options:)(v7, v6, v4, v0 + 104);
}

{
  v1 = v0[30];
  v2 = v0[26];

  outlined destroy of Entity.__LoadOptions((v0 + 2));
  v3 = v0[1];
  v4 = v0[35];

  return v3(v4);
}

{
  v1 = v0[30];
  v2 = v0[26];

  outlined destroy of Entity.__LoadOptions((v0 + 2));
  v3 = v0[1];
  v4 = v0[34];

  return v3();
}

uint64_t Entity.init(named:in:mipmapLoadBehavior:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;
  *(*v2 + 272) = v1;

  if (v1)
  {
    v7 = v4[31];
    v8 = v4[32];
    v9 = Entity.init(named:in:mipmapLoadBehavior:);
  }

  else
  {
    v4[35] = a1;
    v7 = v4[31];
    v8 = v4[32];
    v9 = Entity.init(named:in:mipmapLoadBehavior:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t Entity.init(contentsOf:mipmapLoadBehavior:)(uint64_t a1, _OWORD *a2)
{
  *(v3 + 192) = a1;
  *(v3 + 200) = v2;
  v5 = type metadata accessor for URL();
  *(v3 + 208) = v5;
  v6 = *(v5 - 8);
  *(v3 + 216) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = *a2;
  type metadata accessor for MainActor();
  *(v3 + 248) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 256) = v9;
  *(v3 + 264) = v8;

  return MEMORY[0x1EEE6DFA0](Entity.init(contentsOf:mipmapLoadBehavior:), v9, v8);
}

uint64_t Entity.init(contentsOf:mipmapLoadBehavior:)()
{
  v10 = v0;
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 192);
  v9 = *(v0 + 232);
  Entity.__LoadOptions.init(mipmapLoadBehavior:)(&v9, v0 + 16);
  (*(v2 + 16))(v1, v4, v3);
  outlined init with copy of Entity.__LoadOptions(v0 + 16, v0 + 104);
  v5 = swift_task_alloc();
  *(v0 + 272) = v5;
  *v5 = v0;
  v5[1] = Entity.init(contentsOf:mipmapLoadBehavior:);
  v6 = *(v0 + 224);
  v7 = *(v0 + 200);

  return Entity.init(contentsOf:withName:options:)(v6, 0, 0, v0 + 104);
}

{
  v1 = v0[31];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  v5 = v0[24];

  (*(v3 + 8))(v5, v4);
  outlined destroy of Entity.__LoadOptions((v0 + 2));

  v6 = v0[1];
  v7 = v0[36];

  return v6(v7);
}

{
  v1 = v0[31];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  v5 = v0[24];

  (*(v3 + 8))(v5, v4);
  outlined destroy of Entity.__LoadOptions((v0 + 2));

  v6 = v0[1];
  v7 = v0[35];

  return v6();
}

uint64_t Entity.init(contentsOf:mipmapLoadBehavior:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 272);
  v6 = *v2;
  *(*v2 + 280) = v1;

  if (v1)
  {
    v7 = v4[32];
    v8 = v4[33];
    v9 = Entity.init(contentsOf:mipmapLoadBehavior:);
  }

  else
  {
    v4[36] = a1;
    v7 = v4[32];
    v8 = v4[33];
    v9 = Entity.init(contentsOf:mipmapLoadBehavior:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12PhysicsJoint_pMd, &_s17RealityFoundation12PhysicsJoint_pMR);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 40 * a3;
      v15 = (v9 + 32 + 40 * a2);
      if (result != v15 || result >= v15 + 40 * v14)
      {
        result = memmove(result, v15, 40 * v14);
      }

      v16 = *(v9 + 16);
      v11 = __OFADD__(v16, v12);
      v17 = v16 + v12;
      if (!v11)
      {
        *(v9 + 16) = v17;
        goto LABEL_10;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  if (a3 < 1)
  {
    return outlined destroy of BodyTrackingComponent?(a4, &_ss15CollectionOfOneVy17RealityFoundation12PhysicsJoint_pGMd, &_ss15CollectionOfOneVy17RealityFoundation12PhysicsJoint_pGMR);
  }

  result = outlined init with copy of __REAssetService(a4, v10);
  if (a3 == 1)
  {
    return outlined destroy of BodyTrackingComponent?(a4, &_ss15CollectionOfOneVy17RealityFoundation12PhysicsJoint_pGMd, &_ss15CollectionOfOneVy17RealityFoundation12PhysicsJoint_pGMR);
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t partial apply for closure #1 in static Entity.loadReferences(root:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return closure #1 in static Entity.loadReferences(root:)(a1, a2, v6);
}

uint64_t partial apply for closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 39) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 95) & 0xFFFFFFFFFFFFFFF8;
  return closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(a1, a2, *(v2 + 16), *(v2 + 24), v2 + v6, *(v2 + v7), *(v2 + v8), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 16), v2 + v9, *(v2 + v10), v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8), *(v2 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t outlined init with copy of LoadTrace(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for RealityFileLoadInformation(0) - 8);
  v6 = (*(v5 + 80) + 136) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + 40, *(v2 + 128), v2 + v6, *(v2 + v7), *(v2 + v8), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t outlined destroy of LoadTrace(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for __RKEntityTrigger);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for AnimationResource);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for __RKEntityAction);
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, a4, type metadata accessor for __RKEntityAction);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, a4, type metadata accessor for AnimationResource);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, a4, type metadata accessor for Entity);
}

uint64_t specialized static Entity.enumerateCore(entity:recursive:block:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v145 = a3;
  v148 = a2;
  v129 = type metadata accessor for Data.Deallocator();
  v8 = *(v129 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v11 = &v121[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v121[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v141 = &v121[-v17];
  v18 = type metadata accessor for UUID();
  v128 = *(v18 - 8);
  v19 = v128[8];
  MEMORY[0x1EEE9AC00](v18);
  v133 = &v121[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v134 = &v121[-v22];
  MEMORY[0x1EEE9AC00](v23);
  v126 = &v121[-v24];
  MEMORY[0x1EEE9AC00](v25);
  v137 = &v121[-v26];
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v121[-v28];
  v30 = *(a1 + 16);

  v147 = a5;

  ChildCount = REEntityGetChildCount();
  if ((ChildCount - 0x1000000000000000) >> 61 != 7)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:

    __break(1u);
LABEL_70:
    type metadata accessor for Entity();
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v32 = ChildCount;
  v127 = swift_slowAlloc();
  REEntityGetChildren();
  if (v32 < 0)
  {
    goto LABEL_68;
  }

  v144 = v29;
  v132 = v15;
  v125 = v11;
  if (v32)
  {
    v33 = 0;
    v124 = (v8 + 104);
    v123 = (v8 + 8);
    v122 = *MEMORY[0x1E6969010];
    v140 = (v128 + 4);
    v138 = (v128 + 2);
    v135 = (v128 + 7);
    v131 = (v128 + 6);
    v139 = (v128 + 1);
    v34 = v127;
    v146 = v18;
    v130 = a4;
    do
    {
      v36 = *v34++;
      v35 = v36;
      if (!v36)
      {
        goto LABEL_69;
      }

      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v37 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        if (REEntityIsBeingDestroyed())
        {
          goto LABEL_65;
        }

        v39 = specialized static Entity.entityInfoType(_:)();
        if (v39)
        {
          v38 = (*(v39 + 232))();
          v40 = *(v38 + 16);

          MEMORY[0x1C68F9740](v40, 0);
          *(v38 + 16) = v35;
          MEMORY[0x1C68F9740](v35, v38);

          goto LABEL_13;
        }

        v37 = makeEntity(for:)(v35);
      }

      v38 = v37;
LABEL_13:
      swift_beginAccess();
      if (!static __RKEntityInteractionsComponent.registration || (v41 = *(static __RKEntityInteractionsComponent.registration + 3), v42 = *(v38 + 16), !REEntityGetCustomComponent()) || (Object = RECustomComponentGetObject()) == 0)
      {
        v44 = MEMORY[0x1E69E7CC0];
        goto LABEL_19;
      }

      v44 = *(Object + 16);
      if (v44)
      {
        v45 = *(Object + 16);

        goto LABEL_19;
      }

      v99 = *Object;
      if (!*Object)
      {
        goto LABEL_61;
      }

      v143 = v33;
      v100 = strlen(v99);
      v101 = v125;
      (*v124)(v125, v122, v129);
      Data.Deallocator._deallocator.getter();
      if (v100)
      {
        v102 = type metadata accessor for __DataStorage();
        v103 = *(v102 + 48);
        v104 = *(v102 + 52);
        swift_allocObject();

        v105 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
        v106 = __DataStorage._capacity.modify();
        *v107 |= 0x8000000000000000;
        v106(v149, 0);
        v100 = specialized Data._Representation.init(_:count:)(v105, v100);
        v109 = v108;
      }

      else
      {
        v115 = Data.Deallocator._deallocator.getter();
        v115(v99, 0);

        v109 = 0xC000000000000000;
      }

      (*v123)(v101, v129);
      v116 = type metadata accessor for JSONDecoder();
      v117 = *(v116 + 48);
      v118 = *(v116 + 52);
      swift_allocObject();
      JSONDecoder.init()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit34__RKEntityInteractionSpecificationVGMd, &_sSay10RealityKit34__RKEntityInteractionSpecificationVGMR);
      lazy protocol witness table accessor for type [__RKEntityInteractionSpecification] and conformance <A> [A]();
      v33 = v143;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      if (v33)
      {

        outlined consume of Data._Representation(v100, v109);

        v33 = 0;
LABEL_61:
        v44 = MEMORY[0x1E69E7CC0];
        v18 = v146;
        goto LABEL_19;
      }

      outlined consume of Data._Representation(v100, v109);
      v44 = v149[0];
      v18 = v146;
LABEL_19:
      if (*(v44 + 16))
      {
        v46 = v33;
        swift_beginAccess();

        v47 = *(a4 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v150 = *(a4 + 16);
        v49 = v150;
        *(a4 + 16) = 0x8000000000000000;
        v50 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
        v52 = v49[2];
        v53 = (v51 & 1) == 0;
        v54 = __OFADD__(v52, v53);
        v55 = v52 + v53;
        if (v54)
        {
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v56 = v51;
        if (v49[3] >= v55)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v119 = v50;
            specialized _NativeDictionary.copy()();
            v50 = v119;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v55, isUniquelyReferenced_nonNull_native);
          v50 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
          if ((v56 & 1) != (v57 & 1))
          {
            goto LABEL_70;
          }
        }

        v18 = v146;
        v58 = v150;
        if (v56)
        {
          v59 = v150[7];
          v60 = *(v59 + 8 * v50);
          *(v59 + 8 * v50) = v44;
        }

        else
        {
          v150[(v50 >> 6) + 8] |= 1 << v50;
          *(v58[6] + 8 * v50) = v38;
          *(v58[7] + 8 * v50) = v44;
          v61 = v58[2];
          v54 = __OFADD__(v61, 1);
          v62 = v61 + 1;
          if (v54)
          {
            goto LABEL_66;
          }

          v58[2] = v62;
        }

        *(a4 + 16) = v58;
        swift_endAccess();
        v33 = v46;
      }

      else
      {
      }

      v63 = *(v38 + 16);
      swift_beginAccess();
      if (static __RKEntityUUIDComponent.registration)
      {
        v64 = *(static __RKEntityUUIDComponent.registration + 4);
        if (REEntityGetCustomComponent())
        {
          v65 = RECustomComponentGetObject();
          if (v65)
          {
            v142 = v34;
            v143 = v32;
            v66 = *(v65 + 1);
            v67 = v65[7];
            v68 = v65[6];
            v69 = v65[5];
            v70 = v65[4];
            v71 = v65[3];
            v72 = v65[2];
            v73 = v65[1];
            v74 = *v65;
            v75 = v137;
            UUID.init(uuid:)();
            v76 = *v140;
            v77 = v144;
            (*v140)(v144, v75, v18);
            v78 = v147;
            swift_beginAccess();
            v79 = *(v78 + 16);
            if (*(v79 + 16) && (v80 = specialized __RawDictionaryStorage.find<A>(_:)(v77), (v81 & 1) != 0))
            {
              v82 = *(v79 + 56) + v128[9] * v80;
              v83 = v126;
              v136 = v128[2];
              v136(v126, v82, v18);
              v84 = v141;
              v76(v141, v83, v18);
            }

            else
            {
              v85 = v141;
              UUID.init()();
              v86 = v147;
              v87 = a4;
              v88 = v18;
              v89 = v134;
              v136 = *v138;
              v136(v134, v85, v88);
              v90 = *(v86 + 16);
              v91 = swift_isUniquelyReferenced_nonNull_native();
              v150 = *(v86 + 16);
              v92 = v89;
              v18 = v88;
              a4 = v87;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v92, v77, v91);
              v84 = v85;
              *(v86 + 16) = v150;
            }

            swift_endAccess();
            (*v135)(v84, 0, 1, v18);
            if (static __RKEntityUUIDComponent.registration)
            {
              v93 = v84;
              v94 = *(v38 + 16);
              v95 = *(static __RKEntityUUIDComponent.registration + 4);
              v96 = v18;
              v97 = v132;
              outlined init with copy of [String : String](v93, v132, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              if ((*v131)(v97, 1, v96) == 1)
              {
                outlined destroy of BodyTrackingComponent?(v97, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                CustomComponent = REEntityGetCustomComponent();
                v34 = v142;
                v32 = v143;
                if (CustomComponent)
                {
                  REEntityRemoveComponentByClass();
                }

                outlined destroy of BodyTrackingComponent?(v141, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                v18 = v146;
                a4 = v130;
                goto LABEL_55;
              }

              v76(v133, v97, v96);
              v110 = REEntityGetCustomComponent();
              v18 = v96;
              v34 = v142;
              v32 = v143;
              if (v110)
              {
                a4 = v130;
                goto LABEL_52;
              }

              v111 = REEntityAddComponentByClass();
              a4 = v130;
              if (v111)
              {
LABEL_52:
                if (RECustomComponentGetObject())
                {
                  v112 = v134;
                  v113 = v133;
                  v136(v134, v133, v18);
                  __RKEntityUUIDComponent.uuid.setter(v112);
                  outlined destroy of BodyTrackingComponent?(v141, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                  (*v139)(v113, v18);
                  goto LABEL_55;
                }
              }

              outlined destroy of BodyTrackingComponent?(v141, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              (*v139)(v133, v96);
              goto LABEL_55;
            }

            outlined destroy of BodyTrackingComponent?(v84, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v34 = v142;
            v32 = v143;
LABEL_55:
            (*v139)(v144, v18);
          }
        }
      }

      if (v148)
      {

        v114 = v147;

        specialized static Entity.enumerateCore(entity:recursive:block:)(v38, 1, v145, a4, v114);
      }

      --v32;
    }

    while (v32);
  }

  MEMORY[0x1C6902A30](v127, -1, -1);
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12PhysicsJoint_pMd, &_s17RealityFoundation12PhysicsJoint_pMR);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a4;
  v5 = a3;
  v8 = a2;
  v13 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v10 = v6 + 4;
  v7 = &v6[a1 + 4];
  a5(0);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v5, v12);
  v12 = v5 - v12;
  if (v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    v11 = v13 >> 62;
    if (!(v13 >> 62))
    {
      result = v6[2];
      v16 = result - v8;
      if (!__OFSUB__(result, v8))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = __CocoaSet.count.getter();
    v16 = result - v8;
    if (!__OFSUB__(result, v8))
    {
LABEL_6:
      v17 = &v7[v5];
      v18 = &v10[v8];
      if (v17 != v18 || v17 >= &v18[8 * v16])
      {
        memmove(v17, v18, 8 * v16);
      }

      if (v11)
      {
        result = __CocoaSet.count.getter();
      }

      else
      {
        result = v6[2];
      }

      if (!__OFADD__(result, v12))
      {
        v6[2] = result + v12;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v5 > 0)
  {
    *v7 = v9;

    if (v5 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t specialized static RealityFileLoadInformationResolver.urlContainsPathExtension(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = URL.pathComponents.getter();
  v6 = result;
  v7 = (result + 40);
  v8 = -*(result + 16);
  v9 = -1;
  while (1)
  {
    v10 = v8 + v9;
    if (v8 + v9 == -1)
    {
LABEL_5:

      return v10 != -1;
    }

    if (++v9 >= *(v6 + 16))
    {
      break;
    }

    v11 = v7 + 2;
    v13 = *(v7 - 1);
    v12 = *v7;

    MEMORY[0x1C68F3410](a2, a3);
    v14._countAndFlagsBits = 46;
    v14._object = 0xE100000000000000;
    LOBYTE(v13) = String.hasSuffix(_:)(v14);

    v7 = v11;
    if (v13)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static Entity.loadModelAsync(named:in:options:asyncOptions:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v70 = a4;
  v72 = a1;
  Trace = type metadata accessor for LoadTrace(0);
  v7 = *(*(Trace - 8) + 64);
  MEMORY[0x1EEE9AC00](Trace - 8);
  v9 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    v15 = a3;
  }

  else
  {
    v15 = [objc_opt_self() mainBundle];
  }

  v16 = a3;
  v17 = specialized static __ServiceLocator.shared.getter();
  v18 = *(*(v17 + 168) + 16);
  swift_beginAccess();
  v19 = *(v17 + 24);
  swift_unownedRetainStrong();
  v20 = *(v19 + 32);

  v68 = v18;
  v21 = v20;

  *v14 = v21;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  v22 = v21;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  v24 = *(v11 + 8);
  v23 = v11 + 8;
  v24(v14, v10);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_9;
  }

  v69 = v22;
  v14 = *(*(v17 + 168) + 24);
  *&v74 = 0;
  *(&v74 + 1) = 0xE000000000000000;

  _StringGuts.grow(_:)(17);

  *&v74 = v72;
  *(&v74 + 1) = a2;
  MEMORY[0x1C68F3410](0x7562206D6F726620, 0xED000020656C646ELL);
  v25 = [v15 bundleIdentifier];
  v71 = v15;
  if (v25)
  {
    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
  }

  else
  {
    v29 = 0x80000001C18ED640;
    v27 = 0xD000000000000010;
  }

  MEMORY[0x1C68F3410](v27, v29);

  v23 = 2;
  LoadTracer.beginLoad(loadType:logMsgTarget:)(2, v74, *(&v74 + 1), v9);

  type metadata accessor for LoadRequestDependencies();
  v15 = swift_allocObject();
  v30 = MEMORY[0x1E69E7CC0];
  v15[2] = MEMORY[0x1E69E7CC0];
  v66[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  v15[3] = v31;
  swift_beginAccess();
  v15[2] = v30;
  if (one-time initialization token for asynchronousLoadOptions != -1)
  {
    goto LABEL_19;
  }

LABEL_9:
  v67 = v9;
  v32 = static Entity.asynchronousLoadOptions;
  v33 = *(v70 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA05ModelC0CGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA05ModelC0CGMR);
  v34 = swift_allocObject();
  swift_weakInit();
  v35 = v72;
  *(v34 + 16) = v72;
  *(v34 + 24) = a2;
  *(v34 + 32) = v32;
  *(v34 + 33) = v33;
  *(v34 + 34) = 256;
  *(v34 + 36) = v23;
  swift_weakAssign();
  swift_beginAccess();
  outlined init with copy of [String : String](v17 + 176, &v74, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  if (!*(&v75 + 1))
  {

    outlined destroy of BodyTrackingComponent?(&v74, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
LABEL_16:
    v57 = swift_allocObject();
    *(v57 + 16) = v35;
    *(v57 + 24) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR);
    v46 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit11ModelEntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit11ModelEntityCs5Error_pGSgGMR);
    v58 = swift_allocObject();
    v59 = swift_allocObject();
    *(v59 + 16) = 0;
    *(v58 + 16) = v59;
    *(v58 + 24) = 0;
    *(v58 + 32) = -1;
    *(v46 + 16) = v58;
    v60 = swift_allocObject();
    v60[2] = partial apply for closure #2 in static Entity.loadModelAsync(named:in:options:asyncOptions:);
    v60[3] = v57;
    v60[4] = v58;
    v60[5] = v15;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit11ModelEntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit11ModelEntityCs5Error_pGMR);
    v62 = *(v61 + 48);
    v63 = *(v61 + 52);
    swift_allocObject();

    *(v46 + 24) = Future.init(_:)();
    v64 = v67;
    specialized LoadTracer.subscribe<A>(to:with:)(v46, v67);

    outlined destroy of LoadTrace(v64, type metadata accessor for LoadTrace);
    return v46;
  }

  v66[1] = v14;
  outlined init with take of ForceEffectBase(&v74, v80);
  v37 = v81;
  v36 = v82;
  __swift_project_boxed_opaque_existential_1(v80, v81);
  v38 = *(v36 + 16);

  if ((v38(v35, a2, v71, v37, v36) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v80);
    v35 = v72;
    goto LABEL_16;
  }

  v39 = *(v70 + 80);
  if (v39)
  {
    v40 = v39 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
    *v40 = 1;
    *(v40 + 8) = 0;
  }

  outlined init with copy of Entity.__LoadOptions(v70, &v74);
  outlined init with copy of __REAssetService(v80, v73);
  v41 = swift_allocObject();
  v42 = v77;
  *(v41 + 72) = v76;
  *(v41 + 88) = v42;
  *(v41 + 104) = v78;
  v43 = v75;
  *(v41 + 40) = v74;
  *(v41 + 16) = v72;
  *(v41 + 24) = a2;
  *(v41 + 32) = v71;
  v44 = v79;
  *(v41 + 56) = v43;
  *(v41 + 120) = v44;
  *(v41 + 128) = v34;
  *(v41 + 136) = v69;
  outlined init with take of ForceEffectBase(v73, v41 + 144);
  v45 = v68;
  *(v41 + 184) = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR);
  v46 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit11ModelEntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit11ModelEntityCs5Error_pGSgGMR);
  v47 = swift_allocObject();
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(v47 + 16) = v48;
  *(v47 + 24) = 0;
  *(v47 + 32) = -1;
  *(v46 + 16) = v47;
  v49 = swift_allocObject();
  v49[2] = partial apply for closure #1 in static Entity.loadModelAsync(named:in:options:asyncOptions:);
  v49[3] = v41;
  v49[4] = v47;
  v49[5] = v15;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit11ModelEntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit11ModelEntityCs5Error_pGMR);
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v53 = v45;
  v54 = v69;

  v55 = v71;

  *(v46 + 24) = Future.init(_:)();
  v56 = v67;
  specialized LoadTracer.subscribe<A>(to:with:)(v46, v67);

  outlined destroy of LoadTrace(v56, type metadata accessor for LoadTrace);
  __swift_destroy_boxed_opaque_existential_1(v80);
  return v46;
}

uint64_t specialized static Entity.loadModelAsync(contentsOf:withName:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v70 = a3;
  v69 = a2;
  v74 = a1;
  v77 = type metadata accessor for URL();
  v7 = *(v77 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v73) = *a5;
  v14 = specialized static __ServiceLocator.shared.getter();
  v15 = *(*(v14 + 168) + 16);
  swift_beginAccess();
  v16 = *(v14 + 24);
  swift_unownedRetainStrong();
  v17 = *(v16 + 32);

  v75 = v15;
  v18 = v17;

  *v13 = v18;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9);
  v19 = v18;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v13, v9);
  if (v16)
  {
    v71 = v8;
    type metadata accessor for LoadRequestDependencies();
    v21 = swift_allocObject();
    v22 = MEMORY[0x1E69E7CC0];
    *(v21 + 16) = MEMORY[0x1E69E7CC0];
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v21 + 24) = v23;
    swift_beginAccess();
    *(v21 + 16) = v22;
    v24 = v74;
    v25 = URL.absoluteString.getter();
    v27 = v26;
    v68 = a4;
    LOBYTE(v22) = *(a4 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA05ModelC0CGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA05ModelC0CGMR);
    v28 = swift_allocObject();
    swift_weakInit();
    *(v28 + 16) = v25;
    *(v28 + 24) = v27;
    *(v28 + 32) = v73;
    *(v28 + 33) = v22;
    *(v28 + 34) = 256;
    *(v28 + 36) = 2;
    swift_weakAssign();
    swift_beginAccess();
    outlined init with copy of [String : String](v14 + 176, &v79, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
    if (*(&v80 + 1))
    {
      v73 = v19;
      outlined init with take of ForceEffectBase(&v79, v85);
      v29 = v86;
      v30 = v87;
      __swift_project_boxed_opaque_existential_1(v85, v86);
      v31 = *(v30 + 24);

      if (v31(v24, v29, v30))
      {
        v67 = v21;
        v32 = v68;
        v33 = *(v68 + 80);
        if (v33)
        {
          v34 = v33 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
          *v34 = 1;
          *(v34 + 8) = 0;
        }

        (*(v7 + 16))(v76, v24, v77);
        outlined init with copy of Entity.__LoadOptions(v32, &v79);
        outlined init with copy of __REAssetService(v85, v78);
        v35 = (*(v7 + 80) + 16) & ~*(v7 + 80);
        v36 = (v71 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
        v37 = (v36 + 23) & 0xFFFFFFFFFFFFFFF8;
        v38 = (v37 + 95) & 0xFFFFFFFFFFFFFFF8;
        v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
        v40 = swift_allocObject();
        (*(v7 + 32))(v40 + v35, v76, v77);
        v41 = (v40 + v36);
        v42 = v70;
        *v41 = v69;
        v41[1] = v42;
        v43 = v40 + v37;
        v44 = v80;
        *v43 = v79;
        *(v43 + 16) = v44;
        *(v43 + 80) = v84;
        v45 = v83;
        *(v43 + 48) = v82;
        *(v43 + 64) = v45;
        *(v43 + 32) = v81;
        *(v40 + v38) = v28;
        outlined init with take of ForceEffectBase(v78, v40 + v39);
        *(v40 + ((v39 + 47) & 0xFFFFFFFFFFFFFFF8)) = v73;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR);
        v46 = swift_allocObject();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit11ModelEntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit11ModelEntityCs5Error_pGSgGMR);
        v47 = swift_allocObject();
        v48 = swift_allocObject();
        *(v48 + 16) = 0;
        *(v47 + 16) = v48;
        *(v47 + 24) = 0;
        *(v47 + 32) = -1;
        *(v46 + 16) = v47;
        v49 = swift_allocObject();
        v49[2] = partial apply for closure #1 in static Entity.loadModelAsync(contentsOf:withName:options:asyncOptions:);
        v49[3] = v40;
        v50 = v67;
        v49[4] = v47;
        v49[5] = v50;
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit11ModelEntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit11ModelEntityCs5Error_pGMR);
        v52 = *(v51 + 48);
        v53 = *(v51 + 52);
        swift_allocObject();

        v54 = Future.init(_:)();

        *(v46 + 24) = v54;
        __swift_destroy_boxed_opaque_existential_1(v85);
        return v46;
      }

      __swift_destroy_boxed_opaque_existential_1(v85);
      v55 = v21;
      v19 = v73;
    }

    else
    {

      outlined destroy of BodyTrackingComponent?(&v79, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
      v55 = v21;
    }

    v56 = v76;
    v57 = v77;
    (*(v7 + 16))(v76, v24, v77);
    v58 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v59 = swift_allocObject();
    (*(v7 + 32))(v59 + v58, v56, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR);
    v46 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit11ModelEntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit11ModelEntityCs5Error_pGSgGMR);
    v60 = swift_allocObject();
    v61 = swift_allocObject();
    *(v61 + 16) = 0;
    *(v60 + 16) = v61;
    *(v60 + 24) = 0;
    *(v60 + 32) = -1;
    *(v46 + 16) = v60;
    v62 = swift_allocObject();
    v62[2] = partial apply for closure #2 in static Entity.loadBodyTrackedAsync(contentsOf:withName:);
    v62[3] = v59;
    v62[4] = v60;
    v62[5] = v55;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit11ModelEntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit11ModelEntityCs5Error_pGMR);
    v64 = *(v63 + 48);
    v65 = *(v63 + 52);
    swift_allocObject();

    v66 = Future.init(_:)();

    *(v46 + 24) = v66;
    return v46;
  }

  __break(1u);
  return result;
}

uint64_t specialized static Entity.finishUSDLoad(forEntity:withOptions:)(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v2[16] = type metadata accessor for MainActor();
  v2[17] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[18] = v4;
  v2[19] = v3;

  return MEMORY[0x1EEE6DFA0](specialized static Entity.finishUSDLoad(forEntity:withOptions:), v4, v3);
}

uint64_t specialized static Entity.finishUSDLoad(forEntity:withOptions:)()
{
  v1 = v0[14];
  type metadata accessor for LoadRequestDependencies();
  v2 = swift_allocObject();
  v0[20] = v2;
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v2 + 24) = v4;
  swift_beginAccess();
  *(v2 + 16) = v3;
  v5 = *(v1 + 16);
  REEntityGetName();
  v6 = String.init(cString:)();
  v8 = v7;
  if (one-time initialization token for asynchronousLoadOptions != -1)
  {
    swift_once();
  }

  v9 = v0[16];
  v10 = static Entity.asynchronousLoadOptions;
  v20 = *(v0 + 7);
  swift_beginAccess();
  v11 = static RKARSystemCore.generateDecimatedMeshes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_ACGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_ACGMR);
  inited = swift_initStackObject();
  v0[21] = inited;
  swift_weakInit();
  *(inited + 16) = v6;
  *(inited + 24) = v8;
  *(inited + 32) = v10;
  *(inited + 33) = v11;
  *(inited + 34) = 1;
  *(inited + 36) = 1;
  swift_weakAssign();
  v13 = static MainActor.shared.getter();
  v0[22] = v13;
  v14 = swift_task_alloc();
  v0[23] = v14;
  *(v14 + 16) = inited;
  *(v14 + 24) = v20;
  v15 = *(MEMORY[0x1E69E8920] + 4);
  v16 = swift_task_alloc();
  v0[24] = v16;
  *v16 = v0;
  v16[1] = specialized static Entity.finishUSDLoad(forEntity:withOptions:);
  v17 = MEMORY[0x1E69E85E0];
  v18 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v16, v13, v17, 0xD000000000000025, 0x80000001C18EDD80, partial apply for closure #1 in static Entity.finishUSDLoad(forEntity:withOptions:), v14, v18);
}

{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v10 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = v2[18];
    v5 = v2[19];
    v6 = specialized static Entity.finishUSDLoad(forEntity:withOptions:);
  }

  else
  {
    v7 = v2[22];
    v8 = v2[23];

    v4 = v2[18];
    v5 = v2[19];
    v6 = specialized static Entity.finishUSDLoad(forEntity:withOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[17];

  swift_setDeallocating();
  v4 = *(v2 + 24);

  swift_weakDestroy();

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[17];

  swift_setDeallocating();
  v6 = *(v4 + 24);

  swift_weakDestroy();

  v7 = v0[1];
  v8 = v0[25];

  return v7();
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = __CocoaSet.count.getter();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t specialized static Entity.applyHackForRealityIOUSDImports(rootEntity:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18AnchoringComponentVSgMd, &_s10RealityKit18AnchoringComponentVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v28 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1898160;
  *(inited + 32) = a1;

  v10 = 0;
  v29 = 0;
  do
  {
    while (1)
    {
      v11 = inited >> 62;
      if (inited >> 62)
      {
        result = __CocoaSet.count.getter();
        if (!result)
        {
          goto LABEL_58;
        }

        result = __CocoaSet.count.getter();
        if (!result)
        {
          goto LABEL_59;
        }
      }

      else if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
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
        return result;
      }

      if ((inited & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1C68F41F0](0, inited);
        v13 = inited & 0xFFFFFFFFFFFFFF8;
        if (!v11)
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v12 = *(inited + 32);

        v13 = inited & 0xFFFFFFFFFFFFFF8;
        if (!v11)
        {
LABEL_7:
          result = *(v13 + 16);
          if (!result)
          {
            goto LABEL_56;
          }

          goto LABEL_16;
        }
      }

      result = __CocoaSet.count.getter();
      if (!result)
      {
        goto LABEL_56;
      }

      result = __CocoaSet.count.getter();
      if (result < 1)
      {
        goto LABEL_57;
      }

      result = __CocoaSet.count.getter();
LABEL_16:
      v14 = result - 1;
      if (__OFSUB__(result, 1))
      {
        goto LABEL_55;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v34 = inited;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_24;
        }

        v16 = inited & 0xFFFFFFFFFFFFFF8;
        if (v14 <= *((inited & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v11)
        {
LABEL_24:
          __CocoaSet.count.getter();
          goto LABEL_25;
        }

        v16 = inited & 0xFFFFFFFFFFFFFF8;
      }

      v17 = *(v16 + 16);
LABEL_25:
      inited = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v34 = inited;
LABEL_26:
      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0, type metadata accessor for Entity);
      v34 = inited;
      swift_beginAccess();
      v18 = objc_getAssociatedObject(v12, &static __SceneResourceLoadResultLoadContext.loadContextForEntityKey);
      swift_endAccess();
      if (v18)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v30 = 0u;
        v31 = 0u;
      }

      v32[0] = v30;
      v32[1] = v31;
      if (*(&v31 + 1))
      {
        if ((swift_dynamicCast() & 1) != 0 && v33)
        {

          if (v29)
          {
            goto LABEL_49;
          }

          v29 = v12;
        }
      }

      else
      {
        outlined destroy of BodyTrackingComponent?(v32, &_sypSgMd, &_sypSgMR);
      }

      v19 = type metadata accessor for AnchoringComponent(0);
      v20 = v12[2];

      if (REEntityGetComponent())
      {
        AnchoringComponent.init(from:)(v7);
        v21 = 0;
      }

      else
      {
        v21 = 1;
      }

      v22 = *(v19 - 8);
      v23 = *(v22 + 56);
      v23(v7, v21, 1, v19);

      LODWORD(v22) = (*(v22 + 48))(v7, 1, v19);
      outlined destroy of BodyTrackingComponent?(v7, &_s10RealityKit18AnchoringComponentVSgMd, &_s10RealityKit18AnchoringComponentVSgMR);
      if (v22 != 1)
      {
        if (v10 >= 1)
        {
          goto LABEL_49;
        }

        v10 = 1;
      }

      specialized Array.append<A>(contentsOf:)(v12);
      inited = v34;
      if (v34 >> 62)
      {
        break;
      }

      result = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_45;
      }
    }

    result = __CocoaSet.count.getter();
  }

  while (result);
LABEL_45:

  if (v10 != 1)
  {
  }

  v24 = v29;
  if (v29)
  {
    v25 = v28;
    v23(v28, 1, 1, v19);

    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA09AnchoringD0V_TtB5(v25, 0, v24);
    outlined destroy of BodyTrackingComponent?(v25, &_s10RealityKit18AnchoringComponentVSgMd, &_s10RealityKit18AnchoringComponentVSgMR);
    v26 = *(v24 + 16);

    v27 = *(v24 + 16);

    if (v26 != v27)
    {
      __break(1u);
LABEL_49:
    }
  }

  return result;
}

void specialized static Entity.addInputTargetComponentsAndCollisionShapesToTapTriggerTargets(for:)(uint64_t a1)
{
  v2 = type metadata accessor for __RKEntityTriggerSpecification(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for __RKEntityInteractionSpecification(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for Data.Deallocator();
  v11 = *(v97 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v95 = v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for UUID();
  v14 = *(v103 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v103);
  MEMORY[0x1EEE9AC00](v16);
  v98 = v91 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v102 = v91 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v23 = v91 - v22;
  if (!a1)
  {
    return;
  }

  v91[0] = v7;
  v101 = v21;
  v108 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1898160;
  *(inited + 32) = a1;
  v91[1] = a1;
  swift_retain_n();
  swift_beginAccess();
  swift_beginAccess();
  v96 = 0;
  v25 = (v14 + 32);
  v94 = v14;
  v26 = (v14 + 8);
  v93 = *MEMORY[0x1E6969010];
  v92 = (v11 + 104);
  v27 = MEMORY[0x1E69E7CC8];
  v100 = v25;
  v99 = v26;
  do
  {
    while (1)
    {
      v28 = inited >> 62;
      if (inited >> 62)
      {
        if (!__CocoaSet.count.getter())
        {
          goto LABEL_75;
        }

        if (!__CocoaSet.count.getter())
        {
          goto LABEL_76;
        }
      }

      else if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      if ((inited & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1C68F41F0](0, inited);
        v30 = inited & 0xFFFFFFFFFFFFFF8;
        if (!v28)
        {
          goto LABEL_8;
        }
      }

      else
      {
        if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_69;
        }

        v29 = *(inited + 32);

        v30 = inited & 0xFFFFFFFFFFFFFF8;
        if (!v28)
        {
LABEL_8:
          v31 = *(v30 + 16);
          if (!v31)
          {
            goto LABEL_72;
          }

          goto LABEL_17;
        }
      }

      if (!__CocoaSet.count.getter())
      {
        goto LABEL_72;
      }

      if (__CocoaSet.count.getter() < 1)
      {
        goto LABEL_73;
      }

      v31 = __CocoaSet.count.getter();
LABEL_17:
      v32 = v31 - 1;
      if (__OFSUB__(v31, 1))
      {
        goto LABEL_70;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v107 = inited;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v28)
        {
          goto LABEL_25;
        }

        v34 = inited & 0xFFFFFFFFFFFFFF8;
        if (v32 <= *((inited & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v28)
        {
LABEL_25:
          __CocoaSet.count.getter();
          goto LABEL_26;
        }

        v34 = inited & 0xFFFFFFFFFFFFFF8;
      }

      v35 = *(v34 + 16);
LABEL_26:
      inited = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v107 = inited;
LABEL_27:
      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0, type metadata accessor for Entity);
      v107 = inited;
      if (static __RKEntityUUIDComponent.registration)
      {
        v36 = *(v29 + 16);
        v37 = *(static __RKEntityUUIDComponent.registration + 4);
        if (REEntityGetCustomComponent())
        {
          Object = RECustomComponentGetObject();
          if (Object)
          {
            v39 = *(Object + 1);
            v40 = Object[7];
            v41 = Object[6];
            v42 = Object[5];
            v43 = Object[4];
            v44 = Object[3];
            v45 = Object[2];
            v46 = Object[1];
            v47 = *Object;
            v48 = v102;
            UUID.init(uuid:)();
            v49 = v48;
            v50 = v103;
            (*v25)(v23, v49, v103);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v106 = v27;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v23, isUniquelyReferenced_nonNull_native);
            v27 = v106;
            (*v26)(v23, v50);
          }
        }
      }

      if (!static __RKEntityInteractionsComponent.registration)
      {
        goto LABEL_39;
      }

      v52 = *(static __RKEntityInteractionsComponent.registration + 3);
      v53 = *(v29 + 16);
      if (!REEntityGetCustomComponent())
      {
        goto LABEL_39;
      }

      v54 = RECustomComponentGetObject();
      if (!v54)
      {
        goto LABEL_39;
      }

      if (*(v54 + 16))
      {

        goto LABEL_40;
      }

      v56 = *v54;
      if (*v54)
      {
        v57 = strlen(*v54);
        v58 = v95;
        (*v92)(v95, v93, v97);
        v59 = specialized Data.init(bytesNoCopy:count:deallocator:)(v56, v57, v58);
        v61 = v60;
        v62 = type metadata accessor for JSONDecoder();
        v63 = *(v62 + 48);
        v64 = *(v62 + 52);
        swift_allocObject();
        JSONDecoder.init()();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit34__RKEntityInteractionSpecificationVGMd, &_sSay10RealityKit34__RKEntityInteractionSpecificationVGMR);
        lazy protocol witness table accessor for type [__RKEntityInteractionSpecification] and conformance <A> [A]();
        v65 = v96;
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        if (v65)
        {

          outlined consume of Data._Representation(v59, v61);

          v96 = 0;
          v55 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v96 = 0;

          outlined consume of Data._Representation(v59, v61);
          v55 = v106;
        }

        v25 = v100;
        v26 = v99;
      }

      else
      {
LABEL_39:
        v55 = MEMORY[0x1E69E7CC0];
      }

LABEL_40:
      specialized Array.append<A>(contentsOf:)(v55);
      specialized Array.append<A>(contentsOf:)(v29);
      inited = v107;
      if (v107 >> 62)
      {
        break;
      }

      if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
      {
        goto LABEL_46;
      }
    }
  }

  while (__CocoaSet.count.getter() > 0);
LABEL_46:

  v66 = swift_allocObject();
  *(v66 + 16) = MEMORY[0x1E69E7CD0];
  v67 = v66 + 16;
  v68 = *(v108 + 16);
  if (v68)
  {
    v69 = v108 + ((*(v91[0] + 80) + 32) & ~*(v91[0] + 80));
    v70 = *(v91[0] + 72);
    v71 = v94;
    do
    {
      outlined init with copy of LoadTrace(v69, v10, type metadata accessor for __RKEntityInteractionSpecification);
      outlined init with copy of LoadTrace(v10, v5, type metadata accessor for __RKEntityTriggerSpecification);
      outlined destroy of LoadTrace(v10, type metadata accessor for __RKEntityInteractionSpecification);
      fetchTapTriggerTargetIdentifiers #1 (triggerSpecification:) in static Entity.addInputTargetComponentsAndCollisionShapesToTapTriggerTargets(for:)(v5, v66);
      outlined destroy of LoadTrace(v5, type metadata accessor for __RKEntityTriggerSpecification);
      v69 += v70;
      --v68;
    }

    while (v68);
  }

  else
  {

    v71 = v94;
  }

  swift_beginAccess();
  v72 = *v67;
  v73 = *v67 + 56;
  v74 = 1 << *(*v67 + 32);
  v75 = -1;
  if (v74 < 64)
  {
    v75 = ~(-1 << v74);
  }

  v76 = v75 & *(*v67 + 56);
  v77 = (v74 + 63) >> 6;
  v97 = v71 + 16;
  v102 = v72;

  for (i = 0; v76; v71 = v94)
  {
LABEL_61:
    while (1)
    {
      v81 = __clz(__rbit64(v76));
      v76 &= v76 - 1;
      v82 = v103;
      v83 = v98;
      (*(v71 + 16))(v98, *(v102 + 6) + *(v71 + 72) * (v81 | (i << 6)), v103);
      v84 = v101;
      (*(v71 + 32))(v101, v83, v82);
      if (*(v27 + 16))
      {
        break;
      }

      v79 = *v99;
LABEL_56:
      v79(v101, v103);
      if (!v76)
      {
        goto LABEL_57;
      }
    }

    v85 = specialized __RawDictionaryStorage.find<A>(_:)(v84);
    v79 = *v99;
    if ((v86 & 1) == 0)
    {
      goto LABEL_56;
    }

    v87 = *(*(v27 + 56) + 8 * v85);

    v79(v84, v103);
    v88 = lazy protocol witness table accessor for type InputTargetComponent.DirectInputType.DirectInputOption and conformance InputTargetComponent.DirectInputType.DirectInputOption();
    v105 = MEMORY[0x1C68F39B0](2, &type metadata for InputTargetComponent.DirectInputType.DirectInputOption, v88);
    specialized Set._Variant.insert(_:)(&v104, 0);
    specialized Set._Variant.insert(_:)(&v104, 1);
    v89 = v105;

    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation011InputTargetD0V_TtB5(0x300000001, v89, 0, v87);

    v90 = *(v87 + 16);

    if (v90 != *(v87 + 16))
    {
      goto LABEL_74;
    }

    Entity.generateCollisionShapes(recursive:static:)(1, 0);
  }

LABEL_57:
  while (1)
  {
    v80 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v80 >= v77)
    {

      return;
    }

    v76 = *(v73 + 8 * v80);
    ++i;
    if (v76)
    {
      i = v80;
      goto LABEL_61;
    }
  }

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
}